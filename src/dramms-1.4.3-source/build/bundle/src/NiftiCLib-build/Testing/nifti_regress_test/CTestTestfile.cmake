# CMake generated Testfile for 
# Source directory: /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/Testing/nifti_regress_test
# Build directory: /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/nifti_regress_test
# 
# This file includes the relevent testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(fetch_data "sh" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/Testing/nifti_regress_test/cmake_testscripts/fetch_data_test.sh" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/nifti_regress_test")
ADD_TEST(nifti_ver "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "-nifti_ver")
ADD_TEST(nifti_tool_ver "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "-ver")
ADD_TEST(nifti_help "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "-help")
ADD_TEST(nifti_nifti_hist "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "-nifti_hist")
ADD_TEST(nifti_hist "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "-hist")
ADD_TEST(nifti_disp_hdr "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "-disp_hdr" "-infiles" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/nifti_regress_test/nifti_regress_data/anat0.nii")
ADD_TEST(nifti_disp_nim "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "-disp_nim" "-infiles" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/nifti_regress_test/nifti_regress_data/anat0.nii")
ADD_TEST(nifti_disp_ext "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "-disp_ext" "-infiles" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/nifti_regress_test/nifti_regress_data/anat0.nii")
ADD_TEST(nifti_modhdr_exts "sh" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/Testing/nifti_regress_test/cmake_testscripts/mod_header_test.sh" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/nifti_regress_test/nifti_regress_data")
ADD_TEST(nifti_bricks_test "sh" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/Testing/nifti_regress_test/cmake_testscripts/bricks_test.sh" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/nifti_regress_test/nifti_regress_data")
ADD_TEST(nifti_dts_test "sh" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/Testing/nifti_regress_test/cmake_testscripts/dts_test.sh" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/nifti_regress_test/nifti_regress_data")
ADD_TEST(nifti_dci_test "sh" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/Testing/nifti_regress_test/cmake_testscripts/dci_test.sh" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/nifti_regress_test/nifti_regress_data")
ADD_TEST(nifti_comment_test "sh" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/Testing/nifti_regress_test/cmake_testscripts/comment_test.sh" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/nifti_regress_test/nifti_regress_data")
ADD_TEST(nifti_header_check "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "-check_hdr" "-infiles" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/nifti_regress_test/nifti_regress_data/anat0.nii")
ADD_TEST(nifti_nim_check "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "-check_nim" "-infiles" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/nifti_regress_test/nifti_regress_data/anat0.nii")
ADD_TEST(nifti_dsets_test "sh" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/Testing/nifti_regress_test/cmake_testscripts/dsets_test.sh" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/nifti_regress_test/nifti_regress_data")
ADD_TEST(nifti_newfiles_test "sh" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/Testing/nifti_regress_test/cmake_testscripts/newfiles_test.sh" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/nifti_tool" "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/nifti_regress_test/nifti_regress_data")
