#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "dramms.basis" for configuration "Release"
set_property(TARGET dramms.basis APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.basis PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "basis.utilities_cxx"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libbasis.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.basis )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.basis "${_IMPORT_PREFIX}/lib/libbasis.a" )

# Import target "dramms.common" for configuration "Release"
set_property(TARGET dramms.common APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.common PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "basis.utilities_cxx;dramms.basis;niftiio"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libcommon.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.common )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.common "${_IMPORT_PREFIX}/lib/libcommon.a" )

# Import target "dramms.CheckTwoImages" for configuration "Release"
set_property(TARGET dramms.CheckTwoImages APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.CheckTwoImages PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/CheckTwoImages"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.CheckTwoImages )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.CheckTwoImages "${_IMPORT_PREFIX}/lib/CheckTwoImages" )

# Import target "dramms.GenerateGaborListFile" for configuration "Release"
set_property(TARGET dramms.GenerateGaborListFile APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.GenerateGaborListFile PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/GenerateGaborListFile"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.GenerateGaborListFile )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.GenerateGaborListFile "${_IMPORT_PREFIX}/lib/GenerateGaborListFile" )

# Import target "dramms.GenerateImageListFile" for configuration "Release"
set_property(TARGET dramms.GenerateImageListFile APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.GenerateImageListFile PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/GenerateImageListFile"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.GenerateImageListFile )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.GenerateImageListFile "${_IMPORT_PREFIX}/lib/GenerateImageListFile" )

# Import target "dramms.CalculateImageSimilarity" for configuration "Release"
set_property(TARGET dramms.CalculateImageSimilarity APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.CalculateImageSimilarity PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/CalculateImageSimilarity"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.CalculateImageSimilarity )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.CalculateImageSimilarity "${_IMPORT_PREFIX}/lib/CalculateImageSimilarity" )

# Import target "dramms.CombineFeatureLists" for configuration "Release"
set_property(TARGET dramms.CombineFeatureLists APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.CombineFeatureLists PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/CombineFeatureLists"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.CombineFeatureLists )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.CombineFeatureLists "${_IMPORT_PREFIX}/lib/CombineFeatureLists" )

# Import target "dramms.CombineTransforms" for configuration "Release"
set_property(TARGET dramms.CombineTransforms APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.CombineTransforms PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dramms-combine"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.CombineTransforms )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.CombineTransforms "${_IMPORT_PREFIX}/bin/dramms-combine" )

# Import target "dramms.CalculateGaborTextures" for configuration "Release"
set_property(TARGET dramms.CalculateGaborTextures APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.CalculateGaborTextures PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/CalculateGaborTextures"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.CalculateGaborTextures )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.CalculateGaborTextures "${_IMPORT_PREFIX}/lib/CalculateGaborTextures" )

# Import target "dramms.MatchHistograms" for configuration "Release"
set_property(TARGET dramms.MatchHistograms APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.MatchHistograms PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/MatchHistograms"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.MatchHistograms )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.MatchHistograms "${_IMPORT_PREFIX}/lib/MatchHistograms" )

# Import target "dramms.ApplyTransform" for configuration "Release"
set_property(TARGET dramms.ApplyTransform APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.ApplyTransform PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dramms-warp"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.ApplyTransform )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.ApplyTransform "${_IMPORT_PREFIX}/bin/dramms-warp" )

# Import target "dramms.CalculateJacobianMap" for configuration "Release"
set_property(TARGET dramms.CalculateJacobianMap APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.CalculateJacobianMap PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dramms-jacobian"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.CalculateJacobianMap )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.CalculateJacobianMap "${_IMPORT_PREFIX}/bin/dramms-jacobian" )

# Import target "dramms.CalculateRavensMaps" for configuration "Release"
set_property(TARGET dramms.CalculateRavensMaps APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.CalculateRavensMaps PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dramms-ravens"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.CalculateRavensMaps )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.CalculateRavensMaps "${_IMPORT_PREFIX}/bin/dramms-ravens" )

# Import target "dramms.ImageOperation" for configuration "Release"
set_property(TARGET dramms.ImageOperation APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.ImageOperation PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dramms-imgop"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.ImageOperation )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.ImageOperation "${_IMPORT_PREFIX}/bin/dramms-imgop" )

# Import target "dramms.TransformOperation" for configuration "Release"
set_property(TARGET dramms.TransformOperation APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.TransformOperation PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dramms-defop"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.TransformOperation )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.TransformOperation "${_IMPORT_PREFIX}/bin/dramms-defop" )

# Import target "dramms.ConvertDeformation" for configuration "Release"
set_property(TARGET dramms.ConvertDeformation APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.ConvertDeformation PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dramms-convert"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.ConvertDeformation )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.ConvertDeformation "${_IMPORT_PREFIX}/bin/dramms-convert" )

# Import target "dramms.ConvertImage" for configuration "Release"
set_property(TARGET dramms.ConvertImage APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.ConvertImage PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/ConvertImage"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.ConvertImage )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.ConvertImage "${_IMPORT_PREFIX}/lib/ConvertImage" )

# Import target "dramms.Deform2D" for configuration "Release"
set_property(TARGET dramms.Deform2D APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.Deform2D PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/Deform2D"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.Deform2D )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.Deform2D "${_IMPORT_PREFIX}/lib/Deform2D" )

# Import target "dramms.Deform3D" for configuration "Release"
set_property(TARGET dramms.Deform3D APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dramms.Deform3D PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/Deform3D"
  )

list(APPEND _IMPORT_CHECK_TARGETS dramms.Deform3D )
list(APPEND _IMPORT_CHECK_FILES_FOR_dramms.Deform3D "${_IMPORT_PREFIX}/lib/Deform3D" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
