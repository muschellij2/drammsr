#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "basis.utilities_cxx" for configuration "Release"
set_property(TARGET basis.utilities_cxx APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(basis.utilities_cxx PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/basis/libutilities.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS basis.utilities_cxx )
list(APPEND _IMPORT_CHECK_FILES_FOR_basis.utilities_cxx "${_IMPORT_PREFIX}/lib/basis/libutilities.a" )

# Import target "basis.basis" for configuration "Release"
set_property(TARGET basis.basis APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(basis.basis PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "basis.utilities_cxx"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/basis/libbasis.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS basis.basis )
list(APPEND _IMPORT_CHECK_FILES_FOR_basis.basis "${_IMPORT_PREFIX}/lib/basis/libbasis.a" )

# Import target "basis.testlib" for configuration "Release"
set_property(TARGET basis.testlib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(basis.testlib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "basis.utilities_cxx;basis.basis"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/basis/libtest.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS basis.testlib )
list(APPEND _IMPORT_CHECK_FILES_FOR_basis.testlib "${_IMPORT_PREFIX}/lib/basis/libtest.a" )

# Import target "basis.testmain" for configuration "Release"
set_property(TARGET basis.testmain APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(basis.testmain PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "basis.utilities_cxx;basis.basis;basis.testlib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/basis/libtestmain.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS basis.testmain )
list(APPEND _IMPORT_CHECK_FILES_FOR_basis.testmain "${_IMPORT_PREFIX}/lib/basis/libtestmain.a" )

# Import target "basis.testdriver" for configuration "Release"
set_property(TARGET basis.testdriver APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(basis.testdriver PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/basis/testdriver"
  )

list(APPEND _IMPORT_CHECK_TARGETS basis.testdriver )
list(APPEND _IMPORT_CHECK_FILES_FOR_basis.testdriver "${_IMPORT_PREFIX}/lib/basis/testdriver" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
