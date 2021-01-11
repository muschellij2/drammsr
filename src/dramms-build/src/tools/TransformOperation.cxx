/**
 * @file  TransformOperation.cxx
 * @brief This program performs operations on a given transformation.
 *
 * The input to this program can be either a deformable transformation represented
 * by a displacement vector field or an affine transformation represented by a
 * 4x4 matrix. Most operations, however, require the input of a deformation field
 * as they do not apply to affine transformation matrices.
 *
 * Copyright (c) 2012-2014 University of Pennsylvania. All rights reserved.<br />
 * Copyright (c) 2014-2016 Massachusetts General Hospital, Harvard Medical School.<br />
 * Copyright (c) 2016-     Boston Childrens Hospital, Harvard Medical Schoo. <br />
 * See http://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
 *
 * Contact: Yangming Ou <yangming.ou@mgh.harvard.edu>
 * Contact: SBIA Group <sbia-software at uphs.upenn.edu>
 * 
 */

#include <iostream>
#include <vector>
#include <limits>
#include "common/imageio.h"
#include "common/utilities.h"
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <dramms/basis.h>


// acceptable in .cxx file
using namespace std;
using namespace basis;
using namespace dramms;


// ===========================================================================
// operations
// ===========================================================================

// ---------------------------------------------------------------------------
Fvector3d PrintDisplacementQuantities(Image* deffield)
{
	const int N = deffield->GetNumberOfComponents();
	cout << "The voxel-wise displacement vector has " <<  N << " components." << endl;

    float         maxmag; // maximum magnitude of displacement
    vector<float> min(N); // minimum displacement
    vector<float> max(N); // maximum displacement
    Fvector3d     maxAbs;
    float         m, M;

    maxmag = numeric_limits<float>::min();
    for (int n = 0; n < N; n++) {
        min[n] = + numeric_limits<float>::max();
        max[n] = - numeric_limits<float>::max();
    }

    Ivector3d         posmaxmag; // coordinate of maximum magnitude of displacement
    posmaxmag.x=0; posmaxmag.y=0; posmaxmag.z=0;
    vector<Ivector3d> posmin(N); // coordinate of minimum displacement
    vector<Ivector3d> posmax(N); // coordinate of maximum displacement

    vector<float> v;
    for (int k = 0; k < deffield->region.nz; k++) {
        for (int j = 0; j < deffield->region.ny; j++) {
            for (int i = 0; i < deffield->region.nx; i++) {
                deffield->get(i, j, k, v);
                float mag2 = 0.0f;
                for (int n = 0; n < N; n++) mag2 += v[n] * v[n];
                if (mag2 > maxmag) {
                    maxmag = mag2;
                    posmaxmag.x = i;
                    posmaxmag.y = j;
                    posmaxmag.z = k;
                }

                for (int n = 0; n < N; n++) {
                    if (v[n] < min[n]) {
                        min[n] = v[n];
                        posmin[n].x = i;
                        posmin[n].y = j;
                        posmin[n].z = k;
                    }
                    if (v[n] > max[n]) {
                        max[n] = v[n];
                        posmax[n].x = i;
                        posmax[n].y = j;
                        posmax[n].z = k;
                    }
                }
            }
        }
    }
    if (maxmag == numeric_limits<float>::min()) maxmag = 0.0f;
    maxmag = sqrt(maxmag);

    cout << "Voxel (" << setfill(' ') << setw(3) << posmaxmag.x << ", ";
    cout << setfill(' ') << setw(3) << posmaxmag.y << ", ";
    cout << setfill(' ') << setw(3) << posmaxmag.z;
    cout << ") has strongest displacement of magnitude " << maxmag << endl;
    for (int n = 0; n < N; n++) {
        cout << "Voxel (";
        cout << setfill(' ') << setw(3) << posmin[n].x << ", ";
        cout << setfill(' ') << setw(3) << posmin[n].y << ", ";
        cout << setfill(' ') << setw(3) << posmin[n].z;
        cout << ") has strongest negative ";
        if      (n == 0) cout << "x";
        else if (n == 1) cout << "y";
        else if (n == 2) cout << "z";
        cout << " displacement of ";
        cout << min[n] << endl;
    }
    for (int n = 0; n < N; n++) {
        cout << "Voxel (";
        cout << setfill(' ') << setw(3) << posmax[n].x << ", ";
        cout << setfill(' ') << setw(3) << posmax[n].y << ", ";
        cout << setfill(' ') << setw(3) << posmax[n].z;
        cout << ") has strongest positive ";
        if      (n == 0) cout << "x";
        else if (n == 1) cout << "y";
        else if (n == 2) cout << "z";
        cout << " displacement of ";
        cout << max[n] << endl;
    }

    m = fabs(min[0]);
    M = fabs(max[0]);
    maxAbs.x = M > m? M: m;
    m = fabs(min[1]);
    M = fabs(max[1]);
    maxAbs.y = M > m? M: m;
    if ( N<3 ) maxAbs.z = 0;
    else {
	m = fabs(min[2]);
    	M = fabs(max[2]);
    	maxAbs.z = M > m? M: m;
	} 

    return maxAbs;
}

// ===========================================================================
// command-line parsing
// ===========================================================================

// ---------------------------------------------------------------------------
class RecordOperationVisitor : public TCLAP::Visitor
{
public:
    RecordOperationVisitor() : _op('\0'), _ops(NULL) {}
    RecordOperationVisitor(char op, vector<char>* ops) : _op(op), _ops(ops) {}

    void visit()
    {
        assert(_ops != NULL && _op != '\0');
        if (_ops && _op != '\0') _ops->push_back(_op);
    }

protected:
    char          _op;  ///< Identification of operation to perform.
    vector<char>* _ops; ///< Operations to perform.
}; // class RecordOperationVisitor

// ===========================================================================
// main
// ===========================================================================

// ---------------------------------------------------------------------------
int main(int argc, char* argv[])
{
    bool ok = true; // program execution so far successful

    vector<char> ops; // operations to perform

    // -----------------------------------------------------------------------
    // operation visitors
    const string operations = "cmdisr"; // one unique character for each
                                    // implemented operation

    map<char, RecordOperationVisitor> record_operation_visitor;
    for (string::const_iterator op = operations.begin(); op != operations.end(); ++op) {
        record_operation_visitor[*op] = RecordOperationVisitor(*op, &ops);
    }

    // -----------------------------------------------------------------------
    // define command-line arguments
    MultiStringArg coord("c", "coord",
            "Print (interpolated) displacement at a specified (sub-)voxel position. NOTE: perhaps counter-intuitively, this program takes the coordinate in the TARGET space as input, and outputs the coordinate of the corresponding voxel in the SOURCE space.", false, "<float>,<float>[,<float>]", 1, false,
            &record_operation_visitor['c']);

    MultiSwitchArg invert("i", "invert",
            "Invert transformation. In case of a deformation field, the inverse"
            " will only be an approximation to the exact solution to this problem.",
            0, &record_operation_visitor['i']);

	MultiStringArg multiply("m", "multiply",
            "Multiply the components of the input deformation by a user-specified number.",
            false, "<float>", 1, false,
            &record_operation_visitor['m']);

	MultiSwitchArg square("s", "square",
	    "square the components of the input deformation in each dimension.",
	    0, &record_operation_visitor['s']);
	

	MultiSwitchArg sqrt("r", "sqrt",
	    "calculate the square root of the components of the input deformation in each dimension.",
	    0, &record_operation_visitor['r']);

	MultiStringArg divide("d", "divide",
            "Divide the components of the input deformation by a user-specified number.",
            false, "<float>", 1, false,
            &record_operation_visitor['d']);
	
    PositionalArg input_file("input_file",
            "Input transformation file. The input transformation can either be"
            " an affine transformation represented by a 4x4 matrix or a"
            " deformable transformation represented by a displacement vector field.",
            true, "", "<input_file>");

    PositionalArg output_file("output_file",
            "Output transformation file. If not specified, the input file is overwritten.",
            false, "", "<output_file>");

    MultiSwitchArg verbose("v", "verbose", "Increase verbosity of output messages.");

    // -----------------------------------------------------------------------
    // parse command-line
    try {
        vector<string> examples;

        examples.push_back("EXENAME def.nii"
                           "\nReports different quantities of the deformation "
                           " such as the maximum displacement.");

        examples.push_back("EXENAME affine.xfm"
                           "\nPrints the affine transformation matrix.");

        examples.push_back("EXENAME -c 23.4,42,33 def.nii"
                           "\nReports the displacement of the voxel at [23.4, 42, 33].");

        examples.push_back("EXENAME -i affine.xfm inv_affine.xfm"
                           "\nComputes the inverse affine transformation.");

        examples.push_back("EXENAME -i def.nii invdef.nii"
                           "\nComputes the inverse deformation field.");
						   
		examples.push_back("EXENAME -m 0.5 def.nii def_out.nii.gz"
                           "\nMultiply the components of transformation by 0.5.");

        CmdLine cmd(
                // program identification
                "TransformOperation", PROJECT,
                // program description
                "This program performs certain operations on a given transformation."
                "\n"
                "The input to this program can be either a deformable transformation represented"
                " by a displacement vector field or an affine transformation represented by a"
                " 4x4 matrix. Not all operations can be applied to both types of transformations,"
                " however. Most operations require the input of a deformation field."
                "\n"
                "For general image operations such as masking image values, extracting"
                " an image region, or smoothing an image, please refer to the"
                " ImageOperation program which can also process deformation fields.",
                // example usage
                examples,
                // version information
                RELEASE, "2012-2014 University of Pennsylvania");

        // the constructor of the CmdLine class has already added the standard
        // options for help output and version information

        cmd.add(coord);
        cmd.add(invert);
	cmd.add(multiply);
	cmd.add(square);
	cmd.add(sqrt);
	cmd.add(divide);
        cmd.add(verbose);
        cmd.add(input_file);
        cmd.add(output_file);

        if (argc == 1) {
            cmd.print_help();
            exit(EXIT_FAILURE);
        }

        cmd.parse(argc, argv);

    } catch (CmdLineException& e) {
        // invalid command-line specification
        cerr << e.what() << endl;
        exit(EXIT_FAILURE);
    }

    // -----------------------------------------------------------------------
    // read transformation
    Image*           deformation = NULL;
    Image::Transform transform;

    if (ReadTransform(input_file.getValue().c_str(), deformation, transform) < 1) {
        cerr << "Failed to read transformation from file " << input_file.getValue() << endl;
        exit(EXIT_FAILURE);
    }

    // -----------------------------------------------------------------------
    // perform operations
    bool modified = false; // whether the transformation has been modified

    try {
        // if no operation was specified, simply print quantities of transformation
        if (ops.empty()) {
            if (deformation) {
                Fvector3d maxAbs = PrintDisplacementQuantities(deformation);
            } else {
                cout.precision(5);
                for (int r = 0; r < 4; r++) {
                    if (r == 0) cout << "[[";
                    else        cout << " [";
                    for (int c = 0; c < 4; c++) {
                        if (c > 0) cout << ", ";
                        cout << fixed << transform.m[r][c];
                    }
                    if (r < 4) cout << "]"  << endl;
                    else       cout << "]]" << endl;
                }
            }
        } else {
            map<char, int> argidx; // index of argument for given operation
            for (vector<char>::const_iterator op = ops.begin(); ok && op != ops.end(); ++op) {
                if (argidx.find(*op) == argidx.end()) argidx[*op] = 0;
                switch (*op) {
                    // -------------------------------------------------------
                    // print displacement at (sub-)voxel position
                    case 'c':
                        {
                            if (deformation == NULL) {
                                cerr << "Cannot apply operation -" << *op << " on affine transformation!" << endl;
                                ok = false;
                                break;
                            }

                            string arg = coord.getValue()[argidx[*op]];
                            float i = 0, j = 0, k = 0;
                            sscanf(arg.c_str(), "%f,%f,%f", &i, &j, &k);
			    if ( (i<0)||(i>deformation->region.nx-1)||(j<0)||(j>deformation->region.ny-1)||(k<0)||(k>deformation->region.nz-1) ) {
				    cerr << "The query point is outside the image domain. Please double check. Note, the deformation is defined in the target, or template, space. So an input coordinate is considered in the target image space; and it should not exceed the size of the target image." << endl;
				    ok=false;
				    break;
			
				}
                            vector<float> v;
                            deformation->get(j, i, k, v);
                            cout << fixed << setprecision(3);
                            cout << "The voxel (" << i << ", " << j;
                            if (v.size() > 2) cout << ", " << k;
                            cout << ") is displaced by (" << v[1] << ", " << v[0];
                            if (v.size() > 2) cout << ", " << v[2];
                            cout << ") voxels to the voxel coordinates (";
                            cout << (i + v[1]) << ", " << (j + v[0]);
                            if (v.size() > 2) cout << ", " << (k + v[2]);
                            cout << ")" << endl;
                        }
                        break;
                    // -------------------------------------------------------
                    // invert transformation
                    case 'i':
                        {
                            if (deformation) {
				Fvector3d maxAbs = PrintDisplacementQuantities(deformation);
                                Image* inverse_deformation = InvertTransformChen(deformation, maxAbs);
                                if (inverse_deformation == NULL) {
                                    cerr << "Failed to allocate memory for inverse deformation field!" << endl;
                                    ok = false;
                                    break;
                                }
                                delete deformation;
                                deformation = inverse_deformation;
                            } else {
                                transform = InvertTransform(transform);
                            }

                            modified = true;
                        }
                        break;
		    // -------------------------------------------------------
                    // multiply transformation by a user-specified number
                    case 'm':
                        {
							string arg = multiply.getValue()[argidx[*op]];
                            float factor = 1;
                            sscanf(arg.c_str(), "%f", &factor);
							if (factor==0) {
								cerr << "The transformation cannot be divided by 0" << endl;
								break;
								}
							cout<<"The input transformation will be multiplied by " << factor << endl;
                            if (deformation) {
								Image* new_deformation = MultiplyTransform(deformation, factor);
                                if (new_deformation == NULL) {
                                    cerr << "Failed to allocate memory for the multiplied deformation field!" << endl;
                                    ok = false;
                                    break;
                                }
                                delete deformation;
                                deformation = new_deformation;
                            } else {
                                transform = MultiplyTransform(transform, factor);
                            }
                            modified = true;
                        }
                        break;
		    // ----------------------------------------------------
		    // square a deformation in each component
		    case 's':
			{
			    if (deformation) {
                                Image* squared_deformation = SquareDeformation(deformation);
                                if (squared_deformation == NULL) {
                                    cerr << "Failed to allocate memory for the squared deformation field!" << endl;
                                    ok = false;
                                    break;
                                }
                                delete deformation;
                                deformation = squared_deformation;
                            } else {
                                cerr << "the SQUARE operator only applies to deformation, not affine transformation." << endl;
                            }

                            modified = true;
			}		
			break;
			// -------------------------------------------------------
		    // sqrt of a deformation in each component
		    case 'r':
			{
			    if (deformation) {
                                Image* sqrt_deformation = SqrtDeformation(deformation);
                                if (sqrt_deformation == NULL) {
                                    cerr << "Failed to allocate memory for the sqrt deformation field!" << endl;
                                    ok = false;
                                    break;
                                }
                                delete deformation;
                                deformation = sqrt_deformation;
                            } else {
                                cerr << "the SQRT operator only applies to deformation, not affine transformation." << endl;
                            }

                            modified = true;
			}		
			break;
			// ------------------------------------------------------
                    // divide transformation by a user-specified number
                    case 'd':
                        {
							string arg = divide.getValue()[argidx[*op]];
                            float factor = 1;
                            sscanf(arg.c_str(), "%f", &factor);
							cout<<"The input transformation will be divided by " << factor << endl;
                            if (deformation) {
								Image* new_deformation = DivideTransform(deformation, factor);
                                if (new_deformation == NULL) {
                                    cerr << "Failed to allocate memory for the multiplied deformation field!" << endl;
                                    ok = false;
                                    break;
                                }
                                delete deformation;
                                deformation = new_deformation;
                            } else {
                                transform = DivideTransform(transform, factor);
                            }
                            modified = true;
                        }
                        break;
                    // -------------------------------------------------------
                    // invalid operation
                    default:
                        ASSERT(false, "Invalid operation code: " << *op);
                        // ignore error if build in Release configuration
                };
                // next time this operation is encountered, use the next argument
                argidx[*op]++;
            }
        }
    } catch (exception& e) {
        cerr << "Caught exception: " << e.what() << endl;
        ok = false;
    }

    // -----------------------------------------------------------------------
    // write output transformation
    if (ok) {
        string filename = output_file.getValue();
        // if no output file was specified, overwrite input transformation
        // in case an operation which actually modified it has been applied
        if (filename.empty() && modified) filename = input_file.getValue();
        // if no output file specified and nothing has been changed, no write
        if (!filename.empty()) {
            if (deformation) {
                ok = WriteImage(filename.c_str(), deformation);
            } else {
                ok = WriteAffineTransform(filename.c_str(), transform);
            }
            if (!ok) {
                cerr << "Failed to write resulting transformation to file " << filename << "!" << endl;
            }
        }
    }

    // -----------------------------------------------------------------------
    // clean up
    if (deformation) delete deformation;

    exit(ok ? EXIT_SUCCESS : EXIT_FAILURE);
}
