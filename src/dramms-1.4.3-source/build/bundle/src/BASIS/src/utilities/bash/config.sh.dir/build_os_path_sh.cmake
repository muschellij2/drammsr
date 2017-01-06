##############################################################################
# @file  configure_script.cmake.in
# @brief Build script module.
#
# @note This file is generated by BASIS from the template file
#       configure_script.cmake.in which is part of the BASIS installation.
#
# This script is configured using CMake's configure_sript() function instead
# of providing its arguments using the -D option of CMake before the -P option
# such that build command can be made dependent on the configured build script.
# It calls the function basis_configure_script() twice, once to configure
# the script file for use in the build tree, and once for installation (optional).
#
# Copyright (c) 2012 University of Pennsylvania. All rights reserved.
# See http://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
#
# Contact: SBIA Group <sbia-software at uphs.upenn.edu>
##############################################################################

cmake_minimum_required (VERSION 2.8.4)

include ("/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS/src/cmake/CommonTools.cmake") # basis_configure_script()

# settings
set (SOURCE_FILE          "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS/src/utilities/bash/os/path.sh")
set (OUTPUT_FILE          "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/lib/bash/basis/os/path.sh")
set (INSTALL_FILE         "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS/src/utilities/bash/config.sh.dir/build/basis/os/path.sh")
set (DESTINATION          "/Users/johnmuschelli/Dropbox/Packages/drammsr/inst/dramms/lib/bash/basis/os")
set (BUILD_LINK_DEPENDS   "")
set (INSTALL_LINK_DEPENDS "")
set (CACHE_FILE           "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS/src/utilities/bash/config.sh.dir/cache.cmake")
set (CONFIG_FILE          "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/config/BasisScriptConfig.cmake;/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/config/ScriptConfig.cmake")
set (LANGUAGE             "BASH")
set (OPTIONS              "")
# configure ("build") script - always touch files to update build timestamp
basis_configure_script (
  "${SOURCE_FILE}" "${OUTPUT_FILE}"
  LINK_DEPENDS "${BUILD_LINK_DEPENDS}"
  CACHE_FILE   "${CACHE_FILE}"
  CONFIG_FILE  "${CONFIG_FILE}"
  LANGUAGE     "${LANGUAGE}"
  ${OPTIONS}
)
if (INSTALL_FILE AND DESTINATION)
  basis_configure_script (
    "${SOURCE_FILE}" "${INSTALL_FILE}"
    DESTINATION  "${DESTINATION}"
    LINK_DEPENDS "${INSTALL_LINK_DEPENDS}"
    CACHE_FILE   "${CACHE_FILE}"
    CONFIG_FILE  "${CONFIG_FILE}"
    LANGUAGE     "${LANGUAGE}"
    ${OPTIONS}
  )
endif ()
