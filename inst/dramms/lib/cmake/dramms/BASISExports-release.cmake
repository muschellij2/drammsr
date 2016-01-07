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

# Import target "basis.utilities_cxx" for configuration "Release"
SET_PROPERTY(TARGET basis.utilities_cxx APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(basis.utilities_cxx PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/basis/libutilities.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS basis.utilities_cxx )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_basis.utilities_cxx "${_IMPORT_PREFIX}/lib/basis/libutilities.a" )

# Import target "basis.basis" for configuration "Release"
SET_PROPERTY(TARGET basis.basis APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(basis.basis PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "basis.utilities_cxx"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/basis/libbasis.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS basis.basis )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_basis.basis "${_IMPORT_PREFIX}/lib/basis/libbasis.a" )

# Import target "basis.testlib" for configuration "Release"
SET_PROPERTY(TARGET basis.testlib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(basis.testlib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "basis.utilities_cxx;basis.basis"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/basis/libtest.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS basis.testlib )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_basis.testlib "${_IMPORT_PREFIX}/lib/basis/libtest.a" )

# Import target "basis.testmain" for configuration "Release"
SET_PROPERTY(TARGET basis.testmain APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(basis.testmain PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "basis.utilities_cxx;basis.basis;basis.testlib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/basis/libtestmain.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS basis.testmain )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_basis.testmain "${_IMPORT_PREFIX}/lib/basis/libtestmain.a" )

# Import target "basis.testdriver" for configuration "Release"
SET_PROPERTY(TARGET basis.testdriver APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(basis.testdriver PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/basis/testdriver"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS basis.testdriver )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_basis.testdriver "${_IMPORT_PREFIX}/lib/basis/testdriver" )

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
