/**
 * @file  CalculateJacobianMap.cxx
 * @brief Calculate jacobian determinante map.
 *
 * Copyright (c) 2011, 2012 University of Pennsylvania. All rights reserved.<br />
 * See http://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
 *
 * Contact: SBIA Group <sbia-software at uphs.upenn.edu>
 */

#include <string>
#include <iostream> // cout, cerr, endl
#include <math.h>   // M_PI, exp(), pow(), sqrt(),...
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

#include <common/mvcd.h>
#include <common/imageio.h>
#include <common/cres.h>
#include <common/matrix.h>
#include <common/general.h>
#include <common/utilities.h>

#include <dramms/basis.h> // exename(), print_contact()


// acceptable in .cxx file
using namespace std;
using namespace basis;
using namespace dramms;


#define		CC		1
#define 	MI		2
#define		NMI		3
#define		SSD		4


// ===========================================================================
// help
// ===========================================================================

// ---------------------------------------------------------------------------
void print_help()
{
    string exec_name = exename();
	cout << "-------------------------------------------------" << endl;
	cout << "This program calculates similarity metrics (CC/MI/NMI/SSD) of two input images. " << endl;
	cout << "-------------------------------------------------" << endl << endl;
	cout << "Usage:" << endl;
	cout << "  " << exec_name << " <input image 1> <input image 2>" << endl;
	cout << endl;
	cout << "Required arguments:" << endl;
	cout << "  <input image 1>    file of the first input image." << endl;
	cout << "  <input image 2>    file of the second input image." << endl;
	cout << endl;
	cout << "Optional arguments:" << endl;
	cout << "  -C   : output correlation coefficient (CC)" <<endl;
	cout << "  -M   : output mutual information (MI)" << endl;
	cout << "  -N   : output normalized mutual information (NMI)" << endl;
	cout << "  -D   : output sum of squared difference (SSD)" << endl;
	cout << "  -I   : calculate CC/MI/NMI/SSD only in the intersection of two images (default: off, in which case the CC/MI/NMI/SSD are calculated in the whole image)";
	cout << endl;
	cout << "Example: " << endl;
	cout << "  " << exec_name <<" A.img B.nii.gz -M" << endl;
	cout << "  " << exec_name <<" A.img B.nii.gz -C -I" << endl;
	cout << endl;
    print_contact();
}

// -------------------------------------------------
float get5percentileintensity(Image *image)
{
	float  thre;
	int    nbins=256;

        float min, max;
        GetIntensityRange(image, min, max);

	float  binwidth = (max-min)/static_cast<int>(nbins-1);
	// compute normalized cumulative histogram
        float* histo = ComputeHistogram(image, nbins, false, min, max);
        if (histo == NULL) {
               BASIS_THROW(runtime_error, "Failed to allocate memory for histogram!");
        }
	histo[0]=0;
        CumulateHistogram(NormalizeHistogram(histo, nbins), nbins);

	int index=FindAdaptiveThreshold(histo, nbins);
	if (index<0) index=0;
	thre = min + static_cast<int>(index)*binwidth;
	//cout << "max = " << max << ", min = " << min << ", index = " << index << ", thre = " << thre << endl;

	return thre;
}

// -------------------------------------------------
float computeCorrelationCoefficient(Image *source, Image *target, int intersection)
{
	double sumIntensityA = 0.0;
	double sumIntensityB = 0.0;
	double sumIntensityAxB = 0.0;
	double sumIntensityAsquared = 0.0;
	double sumIntensityBsquared = 0.0;
	double denominator, numerator;
	double cc;
   
	int i,j,k;
	int totalNumVoxels=0;
	
	Fvector3d resampleRatio;
	resampleRatio.x = static_cast<double>(source->region.nx) / static_cast<double>(target->region.nx) ;
	resampleRatio.y = static_cast<double>(source->region.ny) / static_cast<double>(target->region.ny) ;
	resampleRatio.z = static_cast<double>(source->region.nz) / static_cast<double>(target->region.nz) ;

	float threS=0;
	float threT=0;
	if (intersection) {
		threS = get5percentileintensity(source);
		threT = get5percentileintensity(target);
		}
	   //cout<<"threS=" << threS << ", threT=" << threT << endl;
	
	   // calculate denominator and numerator
	   double intensity;
	   for (k=0; k<target->region.nz; k++)
		 for (i=0; i<target->region.nx; i++)
		   for (j=0; j<target->region.ny; j++)
			 {
			 // resample image1 into target space
			 intensity = source->value(static_cast<float>(i) * resampleRatio.x,
                                       static_cast<float>(j) * resampleRatio.y,
                                       static_cast<float>(k) * resampleRatio.z);
			
			 if ( (intersection==1&&intensity>threS&&target->img.uc[k][i][j]>threT) || (intersection==0) ) {
				 sumIntensityA        += intensity;
				 sumIntensityB        += static_cast<double>(target->img.uc[k][i][j]);
				 sumIntensityAxB      += static_cast<double>(intensity*target->img.uc[k][i][j]);
				 sumIntensityAsquared += static_cast<double>(intensity*intensity);
				 sumIntensityBsquared += static_cast<double>(target->img.uc[k][i][j]*target->img.uc[k][i][j]);

				 totalNumVoxels++;
			 }
			 }
	  //cout<<"totalNumVoxels=" << totalNumVoxels << endl;
	  //cout<<"sumIntensityA=" << sumIntensityA << endl;
 	  //cout<<"sumIntensityB=" << sumIntensityB << endl;
	  //cout<<"sumIntensityAxB=" << sumIntensityAxB << endl;
	  //cout<<"sumIntensityAsquared=" << sumIntensityAsquared << endl;
	  //cout<<"sumIntensityBsquared=" << sumIntensityBsquared << endl;
	  totalNumVoxels = target->region.nx * target->region.ny * target->region.nz;		
	  numerator          = static_cast<double>(totalNumVoxels)*sumIntensityAxB - sumIntensityA*sumIntensityB;
	  denominator        = sqrt( static_cast<double>(totalNumVoxels)*sumIntensityAsquared - sumIntensityA*sumIntensityA ) * sqrt( static_cast<double>(totalNumVoxels)*sumIntensityBsquared - sumIntensityB*sumIntensityB );
	  //cout << "numerator=" << numerator << endl;
	  //cout << "denominator=" << denominator << endl;
	  if (denominator!=0.0)
		cc = numerator/denominator;
	  
	  printf("\nCC = %f\n\n", cc);
	  
	  return cc;
}



// -------------------------------------------------
float computeMutualInformation(Image *source, Image *target, int intersection)
{
	  int numBins=64; //default
	  float interval = 256.0/static_cast<float>(numBins);
	  float hist1[numBins], hist2[numBins], jointHist[numBins][numBins];
	  int i,j,k;
	  int totalNumVoxelsforeground=0;
	  
	  Fvector3d resampleRatio;
	  resampleRatio.x = static_cast<float>(source->region.nx) / static_cast<float>(target->region.nx) ;
	  resampleRatio.y = static_cast<float>(source->region.ny) / static_cast<float>(target->region.ny) ;
	  resampleRatio.z = static_cast<float>(source->region.nz) / static_cast<float>(target->region.nz) ;
	

        float threS=0;
        float threT=0;
        if (intersection) {
                threS = get5percentileintensity(source);
                threT = get5percentileintensity(target);
                }

	   // initialize histograms
	   for (i=0; i<numBins; i++)
		 {
		 hist1[i] = 0.0;
		 hist2[i] = 0.0;
		 for (j=0; j<numBins; j++)
		   jointHist[i][j] = 0.0;
		 }
		 
		 
	   // calculate histogram
	   float intensity;
	   for (k=0; k<target->region.nz; k++)
		 for (i=0; i<target->region.nx; i++)
		   for (j=0; j<target->region.ny; j++)
			 {
			 // resample image1 into image2 space
			 intensity = source->value(static_cast<float>(i) * resampleRatio.x,
                                       static_cast<float>(j) * resampleRatio.y,
                                       static_cast<float>(k) * resampleRatio.z);

			 if ( (intersection==1&&intensity>threS&&target->img.uc[k][i][j]>threT) || (intersection==0) ) {
				 hist1[static_cast<int>(intensity/interval)] += 1.0;
				 hist2[static_cast<int>(static_cast<float>(target->img.uc[k][i][j])/interval)] += 1.0;
				 jointHist[static_cast<int>(intensity/interval)][static_cast<int>(static_cast<float>(target->img.uc[k][i][j])/interval)] += 1.0;
  				 totalNumVoxelsforeground++;
			 }
			 }
			 
	  // calculate entropies
	  int totalNumVoxels = target->region.nx * target->region.ny * target->region.nz;
	  float entropy1 = 0.0;
	  float entropy2 = 0.0;
	  float jointEntropy = 0.0;
	  hist1[0] += (totalNumVoxels-totalNumVoxelsforeground);
	  hist2[0] += (totalNumVoxels-totalNumVoxelsforeground);
	  jointHist[0][0] += (totalNumVoxels-totalNumVoxelsforeground);
	  for (i=0; i<numBins; i++)
		{
		hist1[i] /= static_cast<float>(totalNumVoxels);
		hist2[i] /= static_cast<float>(totalNumVoxels);
		
		if (hist1[i]>0.0)
			entropy1 -= hist1[i]*log(hist1[i]);
		if (hist2[i]>0.0)
			entropy2 -= hist2[i]*log(hist2[i]);
			
			
		for (j=0; j<numBins; j++)
		  {
		  jointHist[i][j] /= static_cast<float>(totalNumVoxels);
		  if (jointHist[i][j]>0.0)
			jointEntropy -= jointHist[i][j]*log(jointHist[i][j]);
		  }
		}
		
	  
	  // calculate MI and normalized MI
	  float mi = entropy1 + entropy2 - jointEntropy;
	  
	  printf("\nentropy1 = %f, entropy2 = %f, jointEntropy = %f\n", entropy1, entropy2, jointEntropy);
	  printf("\nMI_unnormalized = %f\n", mi);
	  
	  return mi;
}




// -------------------------------------------------
float computeNormalizedMutualInformation(Image *source, Image *target, int intersection)
{
	  int numBins=64; //default
	  float interval = 256.0/static_cast<float>(numBins);
	  float hist1[numBins], hist2[numBins], jointHist[numBins][numBins];
	  int i,j,k;
	  int totalNumVoxelsforeground=0;
	  
	  
	  Fvector3d resampleRatio;
	  resampleRatio.x = static_cast<float>(source->region.nx) / static_cast<float>(target->region.nx) ;
	  resampleRatio.y = static_cast<float>(source->region.ny) / static_cast<float>(target->region.ny) ;
	  resampleRatio.z = static_cast<float>(source->region.nz) / static_cast<float>(target->region.nz) ;
	

        float threS=0;
        float threT=0;
        if (intersection) {
                threS = get5percentileintensity(source);
                threT = get5percentileintensity(target);
                }


	   // initialize histograms
	   for (i=0; i<numBins; i++)
		 {
		 hist1[i] = 0.0;
		 hist2[i] = 0.0;
		 for (j=0; j<numBins; j++)
		   jointHist[i][j] = 0.0;
		 }
		 
		 
	   // calculate histogram
	   float intensity;
	   for (k=0; k<target->region.nz; k++)
		 for (i=0; i<target->region.nx; i++)
		   for (j=0; j<target->region.ny; j++)
			 {
			 // resample image1 into image2 space
			 intensity = source->value(static_cast<float>(i) * resampleRatio.x,
                                       static_cast<float>(j) * resampleRatio.y,
                                       static_cast<float>(k) * resampleRatio.z);

			 if ( (intersection==1&&intensity>threS&&target->img.uc[k][i][j]>threT) || (intersection==0) ) {
				 hist1[static_cast<int>(intensity/interval)] += 1.0;
				 hist2[static_cast<int>(static_cast<float>(target->img.uc[k][i][j])/interval)] += 1.0;
				 jointHist[static_cast<int>(intensity/interval)][static_cast<int>(static_cast<float>(target->img.uc[k][i][j])/interval)] += 1.0;
				 totalNumVoxelsforeground++;
			 }
			 }
			 
	  // calculate entropies
	  int totalNumVoxels = target->region.nx * target->region.ny * target->region.nz;
	  float entropy1 = 0.0;
	  float entropy2 = 0.0;
	  float jointEntropy = 0.0;
	  hist1[0] += (totalNumVoxels-totalNumVoxelsforeground);
          hist2[0] += (totalNumVoxels-totalNumVoxelsforeground);
	  jointHist[0][0] += (totalNumVoxels-totalNumVoxelsforeground);
	  for (i=0; i<numBins; i++)
		{
		hist1[i] /= static_cast<float>(totalNumVoxels);
		hist2[i] /= static_cast<float>(totalNumVoxels);
		
		if (hist1[i]>0.0)
			entropy1 -= hist1[i]*log(hist1[i]);
		if (hist2[i]>0.0)
			entropy2 -= hist2[i]*log(hist2[i]);
			
			
		for (j=0; j<numBins; j++)
		  {
		  jointHist[i][j] /= static_cast<float>(totalNumVoxels);
		  if (jointHist[i][j]>0.0)
			jointEntropy -= jointHist[i][j]*log(jointHist[i][j]);
		  }
		}
		
	  
	  float normmi = (entropy1+entropy2)/jointEntropy;
	  printf("\nentropy1 = %f, entropy2 = %f, jointEntropy = %f\n", entropy1, entropy2, jointEntropy);
	  printf("\nMI_normalized = %f\n\n", normmi); 
	  
	  return normmi;
}




// -------------------------------------------------
float computeSumSquaredDifference(Image *source, Image *target, int intersection)
{
	  int i,j,k;
	  
	  Fvector3d resampleRatio;
	  resampleRatio.x = static_cast<float>(source->region.nx) / static_cast<float>(target->region.nx) ;
	  resampleRatio.y = static_cast<float>(source->region.ny) / static_cast<float>(target->region.ny) ;
	  resampleRatio.z = static_cast<float>(source->region.nz) / static_cast<float>(target->region.nz) ;
	

        float threS=0;
        float threT=0;
        if (intersection) {
                threS = get5percentileintensity(source);
                threT = get5percentileintensity(target);
                }


	   float intensity;
	   float ssd=0;
	   float diff;
	   for (k=0; k<target->region.nz; k++)
		 for (i=0; i<target->region.nx; i++)
		   for (j=0; j<target->region.ny; j++)
			 {
			 // resample image1 into image2 space
			 intensity = source->value(static_cast<float>(i) * resampleRatio.x,
                                       static_cast<float>(j) * resampleRatio.y,
                                       static_cast<float>(k) * resampleRatio.z);

			 if ( (intersection==1&&intensity>threS&&target->img.uc[k][i][j]>threT) || (intersection==0) ) {
				 diff = static_cast<float>(intensity - target->img.uc[k][i][j]);
				 ssd += diff*diff;
			 }
			 }
			 
	  printf("\nSSD = %f\n\n", ssd);
	  return ssd;
}


// ===========================================================================
// main
// ===========================================================================

// ---------------------------------------------------------------------------
int main(int argc,char *argv[])
{
    if (argc == 1) {
        print_help();
        exit(1);
    }

  int metric=CC; // default
  int intersection=0; // by default, calculate similarity in the whole image. 
  
  int c=-1;
  while((c=getopt(argc,argv,"CMNDIv")) != -1)
    {
      switch(c)
	{
	case 'C':
		metric=CC;
		break;
	
	case 'M':
		metric=MI;
		break;
		
	case 'N':
		metric=NMI;
		break;
		
	case 'D':
		metric=SSD;
		break;
	
	case 'I':
		intersection=1;
		break;
		
    case 'v':
        // ignore
        break;

    case 'h':
        print_help();
        exit(0);

	default:
        // error message printed by getopt() already
        exit(EXIT_FAILURE);
		break;
	}
    }

  
  
  argc -= optind;
  argv += optind;

    if (argc < 2) {
        cerr << "Not all required arguments specified!" << endl;
        cerr << "See help (-h option) for a list of required arguments." << endl;
        exit(1);
    }
    if (argc > 2) {
        cerr << "Too many arguments specified!" << endl;
        cerr << "See help (-h option) for usage information." << endl;
        exit(1);
    }

  Image* imageA = ReadNiftiImage(argv[0], DT_UNSIGNED_CHAR);
  Image* imageB = ReadNiftiImage(argv[1], DT_UNSIGNED_CHAR);
  
  switch (metric)
	{
	case CC:
		computeCorrelationCoefficient(imageA, imageB, intersection);
		break;
		
	case MI:
		computeMutualInformation(imageA, imageB, intersection);
		break;
		
	case NMI:
		computeNormalizedMutualInformation(imageA, imageB, intersection);
		break;
		
	case SSD:
		computeSumSquaredDifference(imageA, imageB, intersection);
		break;
	}
	
	
  delete imageA;
  delete imageB;
}



