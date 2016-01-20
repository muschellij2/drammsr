# Generated by BASIS

if ("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.8)
  message (FATAL_ERROR "CMake >= 2.8.4 required")
endif ()
cmake_policy (PUSH)
cmake_policy (VERSION 2.8.4)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set (CMAKE_IMPORT_FILE_VERSION 1)

# Create import target "basis.utilities_bash"
add_library (basis.utilities_bash UNKNOWN IMPORTED)
set_target_properties (basis.utilities_bash PROPERTIES BASIS_TYPE "SCRIPT_LIBRARY")

# Create import target "basis.basistest_ctest"
add_library (basis.basistest_ctest UNKNOWN IMPORTED)
set_target_properties (basis.basistest_ctest PROPERTIES BASIS_TYPE "SCRIPT_MODULE")

# Create import target "basis.basistest-svn"
add_executable (basis.basistest-svn IMPORTED)
set_target_properties (basis.basistest-svn PROPERTIES BASIS_TYPE "SCRIPT_EXECUTABLE")

# Create import target "basis.basistest-slave"
add_executable (basis.basistest-slave IMPORTED)
set_target_properties (basis.basistest-slave PROPERTIES BASIS_TYPE "SCRIPT_EXECUTABLE")

# Create import target "basis.basistest-master"
add_executable (basis.basistest-master IMPORTED)
set_target_properties (basis.basistest-master PROPERTIES BASIS_TYPE "SCRIPT_EXECUTABLE")

# Create import target "basis.basistest-cron"
add_executable (basis.basistest-cron IMPORTED)
set_target_properties (basis.basistest-cron PROPERTIES BASIS_TYPE "SCRIPT_EXECUTABLE")

# Create import target "basis.basistest"
add_executable (basis.basistest IMPORTED)
set_target_properties (basis.basistest PROPERTIES BASIS_TYPE "SCRIPT_EXECUTABLE")

# Create import target "basis.basis_sh"
add_library (basis.basis_sh UNKNOWN IMPORTED)
set_target_properties (basis.basis_sh PROPERTIES BASIS_TYPE "SCRIPT_LIBRARY")

# Import target "basis.utilities_bash" for configuration "Release"
set_property (TARGET basis.utilities_bash APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (basis.utilities_bash PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "BASH"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/lib/bash"
  )

# Import target "basis.basistest_ctest" for configuration "Release"
set_property (TARGET basis.basistest_ctest APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (basis.basistest_ctest PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "UNKNOWN"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/lib/basistest.ctest"
  )

# Import target "basis.basistest-svn" for configuration "Release"
set_property (TARGET basis.basistest-svn APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (basis.basistest-svn PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "BASH"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/lib/basistest-svn"
  )

# Import target "basis.basistest-slave" for configuration "Release"
set_property (TARGET basis.basistest-slave APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (basis.basistest-slave PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "BASH"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/lib/basistest-slave"
  )

# Import target "basis.basistest-master" for configuration "Release"
set_property (TARGET basis.basistest-master APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (basis.basistest-master PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "BASH"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/lib/basistest-master"
  )

# Import target "basis.basistest-cron" for configuration "Release"
set_property (TARGET basis.basistest-cron APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (basis.basistest-cron PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "BASH"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/lib/basistest-cron"
  )

# Import target "basis.basistest" for configuration "Release"
set_property (TARGET basis.basistest APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (basis.basistest PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "BASH"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/bin/basistest"
  )

# Import target "basis.basis_sh" for configuration "Release"
set_property (TARGET basis.basis_sh APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (basis.basis_sh PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "BASH"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "basis.utilities_bash"
  IMPORTED_LOCATION_RELEASE "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/lib/bash"
  )

# Cleanup temporary variables.
set (_IMPORT_PREFIX)

# Commands beyond this point should not need to know the version.
set (CMAKE_IMPORT_FILE_VERSION)
cmake_policy (POP)