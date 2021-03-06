.. raw:: html

   <!--

   ============================================================================

      DO NOT EDIT THIS FILE! It was generated using Sphinx from:

      Origin:   $URL: https://sbia-svn.uphs.upenn.edu/projects/DRAMMS/branches/dramms-1.4/doc/index.rst $
      Revision: $Rev: 2199 $

   ============================================================================

   -->

.. title:: DRAMMS Image Registration Software: Homepage

.. meta::
   :description: DRAMMS Homepage. DRAMMS is a publicly-available, open-source, generic medical image registration software.
   :keywords: DRAMMS Software, DRAMMS Registration, DRAMMS Download, DRAMMS Homepage, DRAMMS Webpage, DRAMMS Source Code, Image Registration Software, Image Registration Tool, Image Registration Toolkit, Medical Image Registration, Deformable Registration, Non-rigid Registration, Gabor Attribute, Attribute Matching, Mutual-Saliency, Registration with Outliers, Deformable Registration via Attribute Matching and Mutual-Saliency Weighting, DRAMMS SBIA, DRAMMS Christos Davatzikos, DRAMMS Yangming Ou, DRAMMS Andreas Schuh.


.. raw:: latex

    \pagestyle{headings}


Overview
========

**Deformable Registration via Attribute Matching and Mutual-Saliency Weighting (DRAMMS)**
[`MedIA2011 <http://www.sciencedirect.com/science/article/pii/S1361841510000940>`__], 
is a software package designed for **2D, 3D, 3.5D, 4D (spatial-temporal)** and **population-wise** image registration tasks. 

Some typical applications of DRAMMS include,

- **Cross-subject** registration of the same organ (can be brain, breast, cardiac, etc); 
- **Multi-modality** registration (MRI, CT, histology);
- **4D Longitudinal** registration (pediatric brain growth, cancer development, mouse brain development, etc); 
- **Unbiased atlas construction (population-wise registration)**, which registers images of a population at the same time and finds a mean geometry and mean intensity of this population (e.g., age-specific atlases for neuro-development trajectory);
- Registration under **missing correspondences** (e.g., vascular lesions, tumors, histological cuts).
- **Motion Correction**
- **Voxel/Tensor-based Morphometry (VBM/TBM)** (e.g., group contrast, growth patterns, regression)

DRAMMS was implemented as a Unix command-line tool runnable in Ubuntu, CentOS, Mac and similar platforms. It is fully automatic and easy to use --- users input two images, and DRAMMS will output the registered image and the associated deformation. No need for pre-segmentation of structures, or prior knowledge, or human initialization/interventions.


.. toctree::
    :hidden:

    self
    about
    download
    changelog
    installation
    manual
    tutorials
    faq
    publications
    people
