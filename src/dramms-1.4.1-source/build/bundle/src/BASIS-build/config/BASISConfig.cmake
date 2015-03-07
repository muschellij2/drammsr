##############################################################################
# @file  BASISConfig.cmake
# @brief CMake package configuration file.
#
# @note The BASISConfig.cmake file is automatically generated
#       by BASIS from the template file Config.cmake.in which is part of
#       the BASIS package.
#
# Variables in this file have to be prefixed by the name of this package.
# In the default package configuration file of BASIS, which can be included
# here using the \@BASIS_CONFIG\@ variable, this prefix is defined as @c NS
# variable. Moreover, the macro basis_set_config() should be used for
# convenience to set any configuration variable, e.g.,
#
# @code
# basis_set_config (INCLUDE_DIR "\@INCLUDE_DIR_CONFIG\@")
# @endcode
#
# where the variable @c INCLUDE_DIR_CONFIG is set in the ConfigSettings.cmake
# file of the BASIS installation. Note that this statement will set the
# variable ${NS}INCLUDE_DIR, where by default @c NS is the package name
# followed by an underscore (_).
#
# See the Config.cmake.in file of BASIS for details.
#
# Copyright (c) 2011, 2012 University of Pennsylvania. All rights reserved.<br />
# See http://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
#
# Contact: SBIA Group <sbia-software at uphs.upenn.edu>
#
# @ingroup BasisConfig
##############################################################################

## @addtogroup BasisConfig
# @{


# ============================================================================
# namespace
# ============================================================================

# prefix used for variable names
set (NS "BASIS_")

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
basis_set_config (USE_FILE "${CMAKE_CURRENT_LIST_DIR}/BASISUse.cmake")

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
basis_set_config (LIBRARY_DIR "${${NS}INSTALL_PREFIX}/lib/basis")

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
basis_set_config (EXPORTS_FILE "${CMAKE_CURRENT_LIST_DIR}/BASISExports.cmake")

## @brief Absolute path of custom exports file to be included by other projects.
basis_set_config (CUSTOM_EXPORTS_FILE "${CMAKE_CURRENT_LIST_DIR}/BASISCustomExports.cmake")

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
    message (FATAL_ERROR "Requested module ${${NS}MODULE} of package BASIS"
                         " was not enabled when building BASIS. Rebuild"
                         " the BASIS package with MODULE_${${NS}MODULE}"
                         " set to ON and try again.")
  endif ()
  # include configuration files of modules
  set (${${NS}MODULE}_CONFIG_PREFIX "${NS}${MODULE}_")
  include ("lib/cmake/dramms/BASIS${${NS}MODULE}Config.cmake")
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



# ============================================================================
# BASIS configuration
# ============================================================================

# ----------------------------------------------------------------------------
# default settings
basis_set_config (PACKAGE_VENDOR "SBIA")
basis_set_config (COPYRIGHT      "2011, 2012, 2013 University of Pennsylvania")
basis_set_config (CONTACT        "SBIA Group <sbia-software at uphs.upenn.edu>")

# ----------------------------------------------------------------------------
# CMake modules

## @brief Absolute path to CMake modules.
basis_set_config (MODULE_PATH "${${NS}INSTALL_PREFIX}/share/basis/cmake-modules")

# ----------------------------------------------------------------------------
# project template

## @brief Top directory of project template.
basis_set_config (TEMPLATE_DIR "${${NS}INSTALL_PREFIX}/share/basis/template-1.7")

# ----------------------------------------------------------------------------
# utilities

## @brief List of enabled BASIS utilities.
basis_set_config (UTILITIES_ENABLED "CXX;BASH")

## @brief Python interpreter used to build/configure BASIS Python modules.
basis_set_config (PYTHON_EXECUTABLE "")
## @brief Jython interpreter used to build/configure BASIS Jython modules.
basis_set_config (JYTHON_EXECUTABLE "")
## @brief Perl interpreter used to build/configure BASIS Perl modules.
basis_set_config (PERL_EXECUTABLE "/opt/local/bin/perl")
## @brief Bash executable used to build/configure BASIS Bash modules.
basis_set_config (BASH_EXECUTABLE "/bin/bash")

## @brief Absolute path to C++ utilities files.
basis_set_config (CXX_TEMPLATES_DIR "${${NS}INSTALL_PREFIX}/share/basis/utilities")
## @brief Absolute path to Python utilities files.
basis_set_config (PYTHON_TEMPLATES_DIR "${${NS}INSTALL_PREFIX}/share/basis/utilities")
## @brief Absolute path to Python utilities files.
basis_set_config (JYTHON_TEMPLATES_DIR "${${NS}INSTALL_PREFIX}/")
## @brief Absolute path to Perl utilities files.
basis_set_config (PERL_TEMPLATES_DIR "${${NS}INSTALL_PREFIX}/share/basis/utilities")
## @brief Absolute path to MATLAB utilities files.
basis_set_config (MATLAB_TEMPLATES_DIR "${${NS}INSTALL_PREFIX}/share/basis/utilities")
## @brief Absolute path to Bash utilities files.
basis_set_config (BASH_TEMPLATES_DIR "${${NS}INSTALL_PREFIX}/share/basis/utilities")

## @brief C++ utilities library.
basis_set_config (CXX_UTILITIES_LIBRARY    "basis.utilities_cxx")
## @brief Python utilities library.
basis_set_config (PYTHON_UTILITIES_LIBRARY "utilities_python")
## @brief Jython utilities library.
basis_set_config (JYTHON_UTILITIES_LIBRARY "")
## @brief Perl utilities library.
basis_set_config (PERL_UTILITIES_LIBRARY   "utilities_perl")
## @brief MATLAB utilities library.
basis_set_config (MATLAB_UTILITIES_LIBRARY "")
## @brief Bash utilities library.
basis_set_config (BASH_UTILITIES_LIBRARY   "basis.utilities_bash")

## @brief Unit testing library.
basis_set_config (TEST_LIBRARY      "basis.testlib")
## @brief Implementation of main() function of unit test driver.
basis_set_config (TEST_MAIN_LIBRARY "basis.testmain")

## @brief Main libraries.
basis_set_config (LIBRARIES
  ${${NS}UTILITIES_LIBRARY}
  ${${NS}TEST_LIBRARY}
)

# ----------------------------------------------------------------------------
# Sphinx

## @brief Path of Sphinx extensions.
basis_set_config (SPHINX_EXTENSIONS_PATH "${${NS}INSTALL_PREFIX}/lib/python/basis/sphinx/ext/")
## @brief Path of Sphinx HTML themes.
basis_set_config (SPHINX_HTML_THEME_PATH "${${NS}INSTALL_PREFIX}/share/basis/sphinx-themes")

# ----------------------------------------------------------------------------
# CMake tools

include ("${${NS}MODULE_PATH}/BasisTools.cmake")
include ("${${NS}MODULE_PATH}/BasisSettings.cmake" NO_POLICY_SCOPE)


## @}
# end of Doxygen group - keep at end of file
