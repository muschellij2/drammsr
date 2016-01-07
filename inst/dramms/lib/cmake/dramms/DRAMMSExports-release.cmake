#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
SET(CMAKE_IMPORT_FILE_VERSION 1)

# Compute the installation prefix relative to this file.
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)

# Import target "dramms.basis" for configuration "Release"
SET_PROPERTY(TARGET dramms.basis APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.basis PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "basis.utilities_cxx"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libbasis.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.basis )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.basis "${_IMPORT_PREFIX}/lib/libbasis.a" )

# Import target "dramms.common" for configuration "Release"
SET_PROPERTY(TARGET dramms.common APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.common PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "basis.utilities_cxx;dramms.basis;niftiio"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libcommon.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.common )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.common "${_IMPORT_PREFIX}/lib/libcommon.a" )

# Import target "dramms.CheckTwoImages" for configuration "Release"
SET_PROPERTY(TARGET dramms.CheckTwoImages APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.CheckTwoImages PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/CheckTwoImages"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.CheckTwoImages )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.CheckTwoImages "${_IMPORT_PREFIX}/lib/CheckTwoImages" )

# Import target "dramms.GenerateGaborListFile" for configuration "Release"
SET_PROPERTY(TARGET dramms.GenerateGaborListFile APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.GenerateGaborListFile PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/GenerateGaborListFile"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.GenerateGaborListFile )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.GenerateGaborListFile "${_IMPORT_PREFIX}/lib/GenerateGaborListFile" )

# Import target "dramms.GenerateImageListFile" for configuration "Release"
SET_PROPERTY(TARGET dramms.GenerateImageListFile APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.GenerateImageListFile PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/GenerateImageListFile"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.GenerateImageListFile )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.GenerateImageListFile "${_IMPORT_PREFIX}/lib/GenerateImageListFile" )

# Import target "dramms.CalculateImageSimilarity" for configuration "Release"
SET_PROPERTY(TARGET dramms.CalculateImageSimilarity APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.CalculateImageSimilarity PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/CalculateImageSimilarity"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.CalculateImageSimilarity )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.CalculateImageSimilarity "${_IMPORT_PREFIX}/lib/CalculateImageSimilarity" )

# Import target "dramms.CombineFeatureLists" for configuration "Release"
SET_PROPERTY(TARGET dramms.CombineFeatureLists APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.CombineFeatureLists PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/CombineFeatureLists"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.CombineFeatureLists )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.CombineFeatureLists "${_IMPORT_PREFIX}/lib/CombineFeatureLists" )

# Import target "dramms.CombineTransforms" for configuration "Release"
SET_PROPERTY(TARGET dramms.CombineTransforms APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.CombineTransforms PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dramms-combine"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.CombineTransforms )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.CombineTransforms "${_IMPORT_PREFIX}/bin/dramms-combine" )

# Import target "dramms.CalculateGaborTextures" for configuration "Release"
SET_PROPERTY(TARGET dramms.CalculateGaborTextures APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.CalculateGaborTextures PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/CalculateGaborTextures"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.CalculateGaborTextures )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.CalculateGaborTextures "${_IMPORT_PREFIX}/lib/CalculateGaborTextures" )

# Import target "dramms.MatchHistograms" for configuration "Release"
SET_PROPERTY(TARGET dramms.MatchHistograms APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.MatchHistograms PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/MatchHistograms"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.MatchHistograms )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.MatchHistograms "${_IMPORT_PREFIX}/lib/MatchHistograms" )

# Import target "dramms.ApplyTransform" for configuration "Release"
SET_PROPERTY(TARGET dramms.ApplyTransform APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.ApplyTransform PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dramms-warp"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.ApplyTransform )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.ApplyTransform "${_IMPORT_PREFIX}/bin/dramms-warp" )

# Import target "dramms.CalculateJacobianMap" for configuration "Release"
SET_PROPERTY(TARGET dramms.CalculateJacobianMap APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.CalculateJacobianMap PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dramms-jacobian"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.CalculateJacobianMap )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.CalculateJacobianMap "${_IMPORT_PREFIX}/bin/dramms-jacobian" )

# Import target "dramms.CalculateRavensMaps" for configuration "Release"
SET_PROPERTY(TARGET dramms.CalculateRavensMaps APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.CalculateRavensMaps PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dramms-ravens"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.CalculateRavensMaps )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.CalculateRavensMaps "${_IMPORT_PREFIX}/bin/dramms-ravens" )

# Import target "dramms.ImageOperation" for configuration "Release"
SET_PROPERTY(TARGET dramms.ImageOperation APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.ImageOperation PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dramms-imgop"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.ImageOperation )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.ImageOperation "${_IMPORT_PREFIX}/bin/dramms-imgop" )

# Import target "dramms.TransformOperation" for configuration "Release"
SET_PROPERTY(TARGET dramms.TransformOperation APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.TransformOperation PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dramms-defop"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.TransformOperation )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.TransformOperation "${_IMPORT_PREFIX}/bin/dramms-defop" )

# Import target "dramms.ConvertDeformation" for configuration "Release"
SET_PROPERTY(TARGET dramms.ConvertDeformation APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.ConvertDeformation PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dramms-convert"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.ConvertDeformation )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.ConvertDeformation "${_IMPORT_PREFIX}/bin/dramms-convert" )

# Import target "dramms.ConvertImage" for configuration "Release"
SET_PROPERTY(TARGET dramms.ConvertImage APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.ConvertImage PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/ConvertImage"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.ConvertImage )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.ConvertImage "${_IMPORT_PREFIX}/lib/ConvertImage" )

# Import target "dramms.Deform2D" for configuration "Release"
SET_PROPERTY(TARGET dramms.Deform2D APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.Deform2D PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/Deform2D"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.Deform2D )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.Deform2D "${_IMPORT_PREFIX}/lib/Deform2D" )

# Import target "dramms.Deform3D" for configuration "Release"
SET_PROPERTY(TARGET dramms.Deform3D APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(dramms.Deform3D PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/Deform3D"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS dramms.Deform3D )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_dramms.Deform3D "${_IMPORT_PREFIX}/lib/Deform3D" )

# Loop over all imported files and verify that they actually exist
FOREACH(target ${_IMPORT_CHECK_TARGETS} )
  FOREACH(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    IF(NOT EXISTS "${file}" )
      MESSAGE(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    ENDIF()
  ENDFOREACH()
  UNSET(_IMPORT_CHECK_FILES_FOR_${target})
ENDFOREACH()
UNSET(_IMPORT_CHECK_TARGETS)

# Cleanup temporary variables.
SET(_IMPORT_PREFIX)

# Commands beyond this point should not need to know the version.
SET(CMAKE_IMPORT_FILE_VERSION)
