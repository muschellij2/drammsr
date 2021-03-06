.. raw:: html

   <!--

   ============================================================================

      DO NOT EDIT THIS FILE! It was generated using Sphinx from:

      Origin:   $URL: https://sbia-svn.uphs.upenn.edu/projects/DRAMMS/branches/dramms-1.4/doc/tools/combine.rst $
      Revision: $Rev: 2057 $

   ============================================================================

   -->

.. title:: Combine Two Transformations in the DRAMMS package



Combine Two Transformations
===========================

**Concatenating** two deformations (one A->B and the other B->C) leads to a deformation A->C: ::

    dramms-combine -c in_def_A2B.nii.gz  in_def_B2C.nii.gz  out_def_A2C.nii.gz

**Concatenating** an affine transformation (A->B) and a deformation B->C produces a deformation A->C (note: please specific space A and space B by the ``-f`` and ``-t`` options): ::
    
    dramms-combine -c -f A.nii.gz -t B.nii.gz  in_affine_A2B.mat  in_def_B2C.nii.gz  out_def_A2C.nii.gz
	


**Add** two affine matrices or two deformations (assuming they share the same source space, and the same target space): ::

    dramms-combine -a in_def_1.nii.gz  in_def_2.nii.gz  out_def_1add2.nii.gz
    dramms-combine -a in_affine_1.mat  in_affine_2.mat  out_affine.mat	
    
**Subtract** two deformations (assuming they share the same source space, and the same target space): ::

    dramms-combine -s in_def_1.nii.gz  in_def_2.nii.gz  out_def_1minus2.nii.gz
    
**Average** two deformations (assuming they share the same source space, and the same target space): ::

    dramms-combine -m in_def_1.nii.gz  in_def_2.nii.gz  out_def_mean.nii.gz


