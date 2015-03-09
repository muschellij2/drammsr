##############################################################################
# @file  BASISConfigVersion.cmake
# @brief Package configuration version file.
#
# @note The BASISConfigVersion.cmake file is automatically
#       generated by BASIS from the template file ConfigVersion.cmake.in
#       which is part of BASIS.
#
# This file supports the usage of the package by other projects. It is loaded
# by the find_package() CMake command used by other projects to find this
# package in order to verify that the version of the package found is
# compatible with the version requested.
#
# @par Input variables
# <table border="0">
#   <tr>
#     @tp @b PACKAGE_FIND_NAME @endtp
#     <td>The package name, i.e., "BASIS".</td>
#   </tr>
#   <tr>
#     @tp @b BASIS_FIND_VERSION @endtp
#     <td>Full requested version string.</td>
#   </tr>
#   <tr>
#     @tp @b BASIS_FIND_VERSION_MAJOR @endtp
#     <td>Major version if requested, else 0.</td>
#   </tr>
#   <tr>
#     @tp @b BASIS_FIND_VERSION_MINOR @endtp
#     <td>Minor version if requested, else 0.</td>
#   </tr>
#   <tr>
#     @tp @b BASIS_FIND_VERSION_PATCH @endtp
#     <td>Patch version if requested, else 0.</td>
#   </tr>
#   <tr>
#     @tp @b BASIS_FIND_VERSION_TWEAK @endtp
#     <td>Tweak version if requested, else 0.</td>
#   </tr>
#   <tr>
#     @tp @b BASIS_FIND_VERSION_COUNT @endtp
#     <td>Number of version components, 0 to 4.</td>
#   </tr>
# </table>
#
# @par Output variables
# <table border="0">
#   <tr>
#     @tp @b PACKAGE_VERSION @endtp
#     <td>Full provided version string.</td>
#   </tr>
#   <tr>
#     @tp @b PACKAGE_VERSION_EXACT @endtp
#     <td>True if version is exact match.</td>
#   </tr>
#   <tr>
#     @tp @b PACKAGE_VERSION_COMPATIBLE @endtp
#     <td>True if version is compatible.</td>
#   </tr>
#   <tr>
#     @tp @b PACKAGE_VERSION_UNSUITABLE @endtp
#     <td>True if unsuitable as any version.</td>
#   </tr>
# </table>
#
# @sa http://www.cmake.org/Wiki/CMake_2.6_Notes
#
# Copyright (c) 2011, 2012 University of Pennsylvania. All rights reserved.<br />
# See http://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
#
# Contact: SBIA Group <sbia-software at uphs.upenn.edu>
#
# @ingroup BasisConfig
##############################################################################

# ============================================================================
# version
# ============================================================================

## @brief Version of the found package.
set (PACKAGE_VERSION "2.1.4")

# ============================================================================
# check compatibility
# ============================================================================

# Perform compatibility check here using the input CMake variables.
# See example in http://www.cmake.org/Wiki/CMake_2.6_Notes.

## @brief Whether this package version is compatible with the requested version.
set (PACKAGE_VERSION_COMPATIBLE TRUE)
## @brief Whether this package version is unsuitable with the requested version.
set (PACKAGE_VERSION_UNSUITABLE FALSE)

## @brief Whether this package version is the requested version.
if ("${PACKAGE_FIND_VERSION_MAJOR}" EQUAL "2")
  if ("${PACKAGE_FIND_VERSION_MINOR}" EQUAL "1")
    set (PACKAGE_VERSION_EXACT TRUE)
  endif ()
endif ()
