

  Web:   https://www.nitrc.org/projects/dramms
         http://www.cbica.upenn.edu/sbia/

  Email: yangming.ou@mgh.harvard.edu
         sbia-software at uphs.upenn.edu

  Copyright (c) 2011 -- 2013 University of Pennsylvania. All rights reserved.
  Copyright (c) 2014 -- 2016 Massachusetts General Hospital, Harvard Medical School. All rights reserved.
  Copyright (c) 2016 --      Boston Childrens Hospital, Harvard Medical Schoo. All rights reserved.
  See https://www.nitrc.org/projects/dramms.
  See http://www.cbica.upenn.edu/sbia/software/license.html or COPYING file.



INTRODUCTION
============

  Deformable Registration via Attribute Matching and Mutual-Saliency Weighting (DRAMMS)
  is a software package designed for 2D-to-2D and 3D-to-3D image registration tasks.

  Some typical applications of DRAMMS include:
  - Cross-subject registration of the same organ (can be brain, breast, cardiac, etc)
  - Mono- and Multi-modality registration (MRI, CT, histology)
  - Longitudinal registration (pediatric brain growth, cancer development, mouse brain development, etc)
  - Registration under missing correspondences (e.g., vascular lesions, tumors, histological cuts)

  DRAMMS is implemented as a Unix command-line tool. It is fully automatic and easy to use.
  Users input two images and DRAMMS will output the registered image along with the associated deformation.
  No need for pre-segmentation of structures, prior knowledge, or human initialization/interventions.


  Please cite the following references if DRAMMS is used in your research. We appreciate it!

  [1] Yangming Ou, Aristeidis Sotiras, Nikos Paragios, Christos Davatzikos.
      DRAMMS: Deformable registration via attribute matching and mutual-saliency weighting.
      Medical Image Analysis 15(4): 622-639 (2011).

  [2] Yangming Ou, Christos Davatzikos.
      DRAMMS: Deformable Registration via Attribute Matching and Mutual-Saliency Weighting.
      IPMI 2009: 50-62.


  [3]  Yangming Ou, Hamed Akbari, Michele Bilello, Xiao Da, Christos Davatzikos.
       Comparative Evaluation of Registration Algorithms for Different Brain Databases with Varying Difficulty: Results and Insights. 
       IEEE Transactions on Medical Imaging, In Press. DOI: 10.1109/TMI.2014.2330355, (2014).


PACKAGE OVERVIEW
================

  Source Package
  --------------

  - BasisProject.cmake   Meta-data used by BASIS to configure the project.
  - CMakeLists.txt       Root CMake configuration file.
  - build/               Contains CMake configuration file for bundle build.
  - config/              Package configuration files.
  - doc/                 Software documentation such as the software manual.
  - src/                 Source code files.
  - test/                Implementation of software tests and corresponding data.

  - AUTHORS.txt          A list of the people who contributed to this software.
  - COPYING.txt          The copyright and license notices.
  - ChangeLog.txt        History of changes and releases.
  - INSTALL.txt          Build and installation instructions.
  - README.txt           This readme file.


  Binary Package
  --------------

  Please refer to the INSTALL file for details on where the built executables
  and libraries, the auxiliary data, and the documentation files are installed.



LICENSING
=========

  See http://www.cbica.upenn.edu/sbia/software/license.html or COPYING file.



INSTALLATION
============

  See http://www.cbica.upenn.edu/sbia/software/dramms/installation.html or INSTALL file.



MANUAL
=============

  See the software manual page,

  [4] http://www.cbica.upenn.edu/sbia/software/dramms/manual.html

  or download the manual pdf file,

  [5] http://www.cbica.upenn.edu/sbia/software/dramms/_downloads/DRAMMS_Software_Manual.pdf



DEMOS
=============

  We provid some demos of using DRAMMS in brain, breast, cardiac and prostate images:

  [6] http://www.cbica.upenn.edu/sbia/software/dramms/tutorials.html


