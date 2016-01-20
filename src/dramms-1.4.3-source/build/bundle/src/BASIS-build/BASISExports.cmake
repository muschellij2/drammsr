# Generated by CMake 2.8.7

IF("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   MESSAGE(FATAL_ERROR "CMake >= 2.6.0 required")
ENDIF("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
CMAKE_POLICY(PUSH)
CMAKE_POLICY(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
SET(CMAKE_IMPORT_FILE_VERSION 1)

# Create imported target basis.utilities_cxx
ADD_LIBRARY(basis.utilities_cxx STATIC IMPORTED)

# Create imported target basis.basis
ADD_LIBRARY(basis.basis STATIC IMPORTED)

# Create imported target basis.testlib
ADD_LIBRARY(basis.testlib STATIC IMPORTED)

# Create imported target basis.testmain
ADD_LIBRARY(basis.testmain STATIC IMPORTED)

# Create imported target basis.testdriver
ADD_EXECUTABLE(basis.testdriver IMPORTED)

# Import target "basis.utilities_cxx" for configuration "Release"
SET_PROPERTY(TARGET basis.utilities_cxx APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(basis.utilities_cxx PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/lib/libutilities.a"
  )

# Import target "basis.basis" for configuration "Release"
SET_PROPERTY(TARGET basis.basis APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(basis.basis PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "basis.utilities_cxx"
  IMPORTED_LOCATION_RELEASE "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/lib/libbasis.a"
  )

# Import target "basis.testlib" for configuration "Release"
SET_PROPERTY(TARGET basis.testlib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(basis.testlib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "basis.utilities_cxx;basis.basis"
  IMPORTED_LOCATION_RELEASE "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/lib/libtest.a"
  )

# Import target "basis.testmain" for configuration "Release"
SET_PROPERTY(TARGET basis.testmain APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(basis.testmain PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "basis.utilities_cxx;basis.basis;basis.testlib"
  IMPORTED_LOCATION_RELEASE "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/lib/libtestmain.a"
  )

# Import target "basis.testdriver" for configuration "Release"
SET_PROPERTY(TARGET basis.testdriver APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(basis.testdriver PROPERTIES
  IMPORTED_LOCATION_RELEASE "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/lib/testdriver"
  )

# Commands beyond this point should not need to know the version.
SET(CMAKE_IMPORT_FILE_VERSION)
CMAKE_POLICY(POP)