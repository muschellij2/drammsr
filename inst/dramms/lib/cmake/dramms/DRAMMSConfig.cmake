##############################################################################
# @file  DRAMMSConfig.cmake
# @brief CMake package configuration file of BASIS.
#
# @note The DRAMMSConfig.cmake file is automatically generated
#       by BASIS from the template file Config.cmake.in which is part of the
#       BASIS installation.
#
# Copyright (c) 2011, 2012 University of Pennsylvania. All rights reserved.<br />
# See http://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
#
# Contact: SBIA Group <sbia-software at uphs.upenn.edu>
#
# @ingroup BasisConfig
##############################################################################

# ============================================================================
# namespace
# ============================================================================

# prefix used for variable names
set (NS "DRAMMS_")

# allow caller to change namespace - used by projects with modules
if (${NS}CONFIG_PREFIX)
  set (NS "${${NS}CONFIG_PREFIX}")
endif ()

# ----------------------------------------------------------------------------
macro (basis_set_config NAME)
  set (${NS}${NAME} ${ARGN})
endmacro ()

# ----------------------------------------------------------------------------
macro (basis_copy_config NAME SRC)
  set (${NS}${NAME} ${${NS}${SRC}})
endmacro ()

# ----------------------------------------------------------------------------
macro (basis_append_config NAME)
  list (APPEND ${NS}${NAME} ${ARGN})
endmacro ()

# ----------------------------------------------------------------------------
macro (basis_remove_duplicates_config NAME)
  if (${NS}${NAME})
    list (REMOVE_DUPLICATES ${NS}${NAME})
  endif ()
endmacro ()

# ============================================================================
# general
# ============================================================================

## @brief Installation prefix or root of build tree.
basis_set_config (INSTALL_PREFIX "${CMAKE_CURRENT_LIST_DIR}/../../../")
get_filename_component (${NS}INSTALL_PREFIX "${${NS}INSTALL_PREFIX}" ABSOLUTE)

## @brief Project use file to be included by other projects.
basis_set_config (USE_FILE "${CMAKE_CURRENT_LIST_DIR}/DRAMMSUse.cmake")

## @brief Directory of example files.
basis_set_config (EXAMPLE_DIR "")

# ============================================================================
# libraries
# ============================================================================

## @brief Directory of header files.
basis_set_config (INCLUDE_DIR "${${NS}INSTALL_PREFIX}/include")

## @brief Directory of header files including dependencies.
basis_set_config    (INCLUDE_DIRS) # to have a set recognized by Doxygen filter
basis_copy_config   (INCLUDE_DIRS INCLUDE_DIR)
basis_append_config (INCLUDE_DIRS "")

## @brief Directory of libraries.
basis_set_config (LIBRARY_DIR "${${NS}INSTALL_PREFIX}/lib")

## @brief Directory of libraries including dependencies.
basis_set_config    (LIBRARY_DIRS) # to have a set() recognized by Doxygen filter
basis_copy_config   (LIBRARY_DIRS LIBRARY_DIR)
basis_append_config (LIBRARY_DIRS "")

## @brief Search path for Python modules.
basis_set_config (PYTHONPATH "${${NS}INSTALL_PREFIX}/lib/python")

## @brief Search path for Jython modules.
basis_set_config (JYTHONPATH "${${NS}INSTALL_PREFIX}/lib/jython")

## @brief Search path for Perl modules.
basis_set_config (PERL5LIB "${${NS}INSTALL_PREFIX}/lib/perl")

## @brief Search path for MATLAB modules.
basis_set_config (MATLABPATH "${${NS}INSTALL_PREFIX}/lib/matlab")

## @brief Search path for Bash modules.
#
# See the import() function of the BASIS Bash utilities.
basis_set_config (BASHPATH "${${NS}INSTALL_PREFIX}/lib/bash")

# ============================================================================
# exports
# ============================================================================

## @brief Absolute path of exports file to be included by other projects.
basis_set_config (EXPORTS_FILE "${CMAKE_CURRENT_LIST_DIR}/DRAMMSExports.cmake")

## @brief Absolute path of custom exports file to be included by other projects.
basis_set_config (CUSTOM_EXPORTS_FILE "${CMAKE_CURRENT_LIST_DIR}/DRAMMSCustomExports.cmake")

# ============================================================================
# modules
# ============================================================================

## @brief List of project modules.
basis_set_config (MODULES "")

## @brief List of built project modules.
basis_set_config (MODULES_ENABLED "")

## @brief List of modules requested by external package using the
#         @c COMPONENTS argument of
#         <a href="http://www.cmake.org/cmake/help/cmake-2-8-docs.html#command:find_package">
#         find_package()</a>.
if (${NS}FIND_COMPONENTS)
  basis_set_config (MODULES_REQUESTED "${${NS}FIND_COMPONENTS}")
endif()
if(NOT ${NS}MODULES_REQUESTED)
  basis_set_config (MODULES_REQUESTED "${${NS}MODULES_ENABLED}")
endif()

foreach (${NS}MODULE IN LISTS ${NS}MODULES_REQUESTED)
  # check if requested module is available
  list (FIND ${NS}MODULES_ENABLED ${NS}MODULE IDX)
  if (IDX EQUAL -1)
    message (FATAL_ERROR "Requested module ${${NS}MODULE} of package DRAMMS"
                         " was not enabled when building DRAMMS. Rebuild"
                         " the DRAMMS package with MODULE_${${NS}MODULE}"
                         " set to ON and try again.")
  endif ()
  # include configuration files of modules
  set (${${NS}MODULE}_CONFIG_PREFIX "${NS}${MODULE}_")
  include ("lib/cmake/dramms/DRAMMS${${NS}MODULE}Config.cmake")
  unset (${${NS}MODULE}_CONFIG_PREFIX)
  # append include directories
  if (${NS}${${NS}MODULE}_INCLUDE_DIRS)
    basis_append_config (INCLUDE_DIRS ${${NS}${${NS}MODULE}_INCLUDE_DIRS})
  elseif (${NS}${M}_INCLUDE_DIR)
    basis_append_config (INCLUDE_DIRS ${${NS}${${NS}MODULE}_INCLUDE_DIR})
  endif ()
  # append library directories
  if (${NS}${${NS}MODULE}_LIBRARY_DIRS)
    basis_append_config (LIBRARY_DIRS ${${NS}${${NS}MODULE}_LIBRARY_DIRS})
  elseif (${NS}${${NS}MODULE}_LIBARY_DIR)
    basis_append_config (LIBRARY_DIRS ${${NS}${${NS}MODULE}_LIBRARY_DIR})
  endif ()
endforeach ()
unset (${NS}MODULE)

basis_remove_duplicates_config (INCLUDE_DIR)
basis_remove_duplicates_config (INCLUDE_DIRS)
basis_remove_duplicates_config (LIBRARY_DIR)
basis_remove_duplicates_config (LIBRARY_DIRS)

# ============================================================================
# dependencies
# ============================================================================

# NiftiCLib
set (NiftiCLib_DIR "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle")
# DRAMMSFastPD
set (DRAMMSFastPD_DIR "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/lib")

