##############################################################################
# @file  basis.sh
# @brief BASIS utilities of BASIS package.
#
# @note The basis.sh module was automatically created by BASIS from the
#       template file basis.sh.in which is part of BASIS.
#
# This module sources the modules of the project-independent BASIS Bash Utilities
# which are part of the BASIS installation. Hence, it is sufficient to only
# source this module.
#
# @note In Bash, there is no concept of namespaces. Hence, the utility functions
#       are all defined by the utilities.sh module which is part of the BASIS
#       installation. See the documentation of this module for conflicts that
#       may be caused by this lack of namespaces and how to circumvent these.
#       This module is mainly intended for use in executable scripts, not modules.
#
# Copyright (c) 2011, 2012, 2013 University of Pennsylvania. All rights reserved.<br />
# See http://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
#
# Contact: SBIA Group <sbia-software at uphs.upenn.edu>
#
# @ingroup BasisBashUtilities
##############################################################################

[ "${_BASIS_BASIS_INCLUDED}" == 'true' ] || {
_BASIS_BASIS_INCLUDED='true'


# ============================================================================
# configuration of utilities
# ============================================================================

# the functions of the utilities.sh module make use of the following constants
# these constants need to be set before sourcing utilities.sh as otherwise
# this module will initialize them and set them to readonly

## @addtogroup BasisBashUtilities
# @{


## @brief Project name.
readonly PROJECT='BASIS'
## @brief Project version.
readonly VERSION='2.1.4'
## @brief Major project version.
readonly VERSION_MAJOR='2'
## @brief Minor project version.
readonly VERSION_MINOR='1'
## @brief Project patch number.
readonly VERSION_PATCH='0'
## @brief Project release.
readonly RELEASE='v2.1'
## @brief Default copyright of executables.
COPYRIGHT='2011, 2012, 2013 University of Pennsylvania'
## @brief Default license of executables.
LICENSE='See http://www.rad.upenn.edu/sbia/software/license.html or COPYING file.'
## @brief Default contact to use for help output of executables.
CONTACT='SBIA Group <sbia-software at uphs.upenn.edu>'

# if the following variables are not set, they are initialized to the
# default values configured in the basis.utilitis module and then marked
# as readonly by this module. otherwise, mark variables as readonly here
[ -n "${COPYRIGHT}" ] && readonly COPYRIGHT
[ -n "${LICENSE}"   ] && readonly LICENSE
[ -n "${CONTACT}"   ] && readonly CONTACT


## @}
# end of Doxygen group

readonly _BASIS_TARGET_UID_PREFIX='basis'
readonly _BASIS_EXECUTABLE_TARGETS_BASE="`cd -P -- \`dirname -- "${BASH_SOURCE}"\` && pwd`"
_BASIS_BASH_LIBRARY_DIR='..'
if [ "${_BASIS_BASH_LIBRARY_DIR:0:1}" != '/' ]; then
    _BASIS_BASH_LIBRARY_DIR="${_BASIS_EXECUTABLE_TARGETS_BASE}/${_BASIS_BASH_LIBRARY_DIR}"
fi
readonly _BASIS_BASH_LIBRARY_DIR

# ============================================================================
# source implementations of utility functions
# ============================================================================

# source project-independent utility functions
if [ -z "${BASIS_BASHPATH}" ]; then
    _path=''
    _paths="${BASHPATH}:" # ATTENTION: Trailing ':' required to terminate while loop!
    while [ -n "${_paths}" ]; do
        _path="${_paths%%:*}"
        [ "${_path:0:1}" == '/' ] && [ -f "${_path}/basis/utilities.sh" ] && break
        _path=''
        _paths="${_paths#*:}"
    done
    if [ -n "${_path}" ]; then
        BASIS_BASHPATH="${_path}"
    else
        BASIS_BASHPATH="${_BASIS_BASH_LIBRARY_DIR}"
    fi
fi
if [ ! -f "${BASIS_BASHPATH}/basis/utilities.sh" ]; then
    echo "Module basis.utilities not found at ${BASIS_BASHPATH}!" 1>&2
    echo "Specify path using the BASHPATH or BASIS_BASHPATH environment variable." 1>&2
    exit 1
fi
. "${BASIS_BASHPATH}/basis/utilities.sh"
if [[ $? -ne 0 ]]; then
    echo "Failed to import basis.utilities module!" 1>&2
    exit 1
fi

# ============================================================================
# initialize executable target information
# ============================================================================

# ----------------------------------------------------------------------------
# @brief Initialize executable target information.
#
# This function initializes the structures of information about the executable
# build targets. If this function is executed another time, it does nothing
# because the structures are initialized already. In order to reduce the start
# time of applications that do not make use of this module, the initialization
# is only performed on demand.
#
# The initialization is done in get_target_uid() as this function is always
# called first before any lookup of information.
#
# @returns Nothing.
#
# @retval 0 On success.
# @retval 1 On failure.
_basis_executabletargetinfo_initialize()
{
    [ $# -eq 0 ] || return 1
    [[ "${_BASIS_EXECUTABLETARGETINFO_INITIALIZED}" == true ]] && return 0

    _basis_executabletargetinfo_add 'basis.testdriver'       LOCATION '../../basis/testdriver'
    _basis_executabletargetinfo_add 'basis.basistest-svn'    LOCATION '../../basis/basistest-svn'
    _basis_executabletargetinfo_add 'basis.basistest-slave'  LOCATION '../../basis/basistest-slave'
    _basis_executabletargetinfo_add 'basis.basistest-master' LOCATION '../../basis/basistest-master'
    _basis_executabletargetinfo_add 'basis.basistest-cron'   LOCATION '../../basis/basistest-cron'
    _basis_executabletargetinfo_add 'basis.basistest'        LOCATION '../../basis/basistest'

    _BASIS_EXECUTABLETARGETINFO_INITIALIZED='true'
    return 0
}

# ============================================================================
# aliases (optional)
# ============================================================================

if [ "${basis_use_executable_aliases}" == 'true' ]; then
    # define aliases of build target names to executable file paths
    alias 'basis.testdriver'=`get_executable_path 'basis.testdriver'`
    alias 'basis.basistest-svn'=`get_executable_path 'basis.basistest-svn'`
    alias 'basis.basistest-slave'=`get_executable_path 'basis.basistest-slave'`
    alias 'basis.basistest-master'=`get_executable_path 'basis.basistest-master'`
    alias 'basis.basistest-cron'=`get_executable_path 'basis.basistest-cron'`
    alias 'basis.basistest'=`get_executable_path 'basis.basistest'`

    # define short aliases for this project's targets
    alias 'testdriver'='basis.testdriver'
    alias 'basistest-svn'='basis.basistest-svn'
    alias 'basistest-slave'='basis.basistest-slave'
    alias 'basistest-master'='basis.basistest-master'
    alias 'basistest-cron'='basis.basistest-cron'
    alias 'basistest'='basis.basistest'

    # enable expansion of aliases also in non-interactive shells
    shopt -s expand_aliases
fi


} # _BASIS_BASIS_INCLUDED
