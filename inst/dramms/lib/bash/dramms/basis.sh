##############################################################################
# @file  basis.sh
# @brief BASIS utilities of DRAMMS package.
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

[ "${_DRAMMS_DRAMMS_INCLUDED}" == 'true' ] || {
_DRAMMS_DRAMMS_INCLUDED='true'


# ============================================================================
# configuration of utilities
# ============================================================================

# the functions of the utilities.sh module make use of the following constants
# these constants need to be set before sourcing utilities.sh as otherwise
# this module will initialize them and set them to readonly

## @addtogroup BasisBashUtilities
# @{


## @brief Project name.
readonly PROJECT='DRAMMS'
## @brief Project version.
readonly VERSION='1.4.3'
## @brief Major project version.
readonly VERSION_MAJOR='1'
## @brief Minor project version.
readonly VERSION_MINOR='4'
## @brief Project patch number.
readonly VERSION_PATCH='0'
## @brief Project release.
readonly RELEASE='v1.4'
## @brief Default copyright of executables.
COPYRIGHT='2011--2014 University of Pennsylvania. Since Jan. 2014, revisions were done while Yangming Ou is working at the A. A. Martinos Biomedical Imaging Center, Massachusetts General Hospital, Harvard Medical School.'
## @brief Default license of executables.
LICENSE='See http://www.cbica.upenn.edu/sbia/software/license.html or COPYING file.'
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

readonly _BASIS_TARGET_UID_PREFIX='dramms'
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

    _basis_executabletargetinfo_add 'dramms.CheckTwoImages'           LOCATION '../../CheckTwoImages'
    _basis_executabletargetinfo_add 'dramms.GenerateGaborListFile'    LOCATION '../../GenerateGaborListFile'
    _basis_executabletargetinfo_add 'dramms.GenerateImageListFile'    LOCATION '../../GenerateImageListFile'
    _basis_executabletargetinfo_add 'dramms.CalculateImageSimilarity' LOCATION '../../CalculateImageSimilarity'
    _basis_executabletargetinfo_add 'dramms.CombineFeatureLists'      LOCATION '../../CombineFeatureLists'
    _basis_executabletargetinfo_add 'dramms.CombineTransforms'        LOCATION '../../../bin/dramms-combine'
    _basis_executabletargetinfo_add 'dramms.CalculateGaborTextures'   LOCATION '../../CalculateGaborTextures'
    _basis_executabletargetinfo_add 'dramms.MatchHistograms'          LOCATION '../../MatchHistograms'
    _basis_executabletargetinfo_add 'dramms.ApplyTransform'           LOCATION '../../../bin/dramms-warp'
    _basis_executabletargetinfo_add 'dramms.CalculateJacobianMap'     LOCATION '../../../bin/dramms-jacobian'
    _basis_executabletargetinfo_add 'dramms.CalculateRavensMaps'      LOCATION '../../../bin/dramms-ravens'
    _basis_executabletargetinfo_add 'dramms.ImageOperation'           LOCATION '../../../bin/dramms-imgop'
    _basis_executabletargetinfo_add 'dramms.TransformOperation'       LOCATION '../../../bin/dramms-defop'
    _basis_executabletargetinfo_add 'dramms.ConvertDeformation'       LOCATION '../../../bin/dramms-convert'
    _basis_executabletargetinfo_add 'dramms.ConvertImage'             LOCATION '../../ConvertImage'
    _basis_executabletargetinfo_add 'dramms.Deform2D'                 LOCATION '../../Deform2D'
    _basis_executabletargetinfo_add 'dramms.Deform3D'                 LOCATION '../../Deform3D'
    _basis_executabletargetinfo_add 'dramms.dramms'                   LOCATION '../../../bin/dramms'
    _basis_executabletargetinfo_add 'basis.testdriver'                LOCATION '../../basis/testdriver'
    _basis_executabletargetinfo_add 'basis.basistest-svn'             LOCATION '../../basis/basistest-svn'
    _basis_executabletargetinfo_add 'basis.basistest-slave'           LOCATION '../../basis/basistest-slave'
    _basis_executabletargetinfo_add 'basis.basistest-master'          LOCATION '../../basis/basistest-master'
    _basis_executabletargetinfo_add 'basis.basistest-cron'            LOCATION '../../basis/basistest-cron'
    _basis_executabletargetinfo_add 'basis.basistest'                 LOCATION '../../basis/basistest'

    _BASIS_EXECUTABLETARGETINFO_INITIALIZED='true'
    return 0
}

# ============================================================================
# aliases (optional)
# ============================================================================

if [ "${basis_use_executable_aliases}" == 'true' ]; then
    # define aliases of build target names to executable file paths
    alias 'dramms.CheckTwoImages'=`get_executable_path 'dramms.CheckTwoImages'`
    alias 'dramms.GenerateGaborListFile'=`get_executable_path 'dramms.GenerateGaborListFile'`
    alias 'dramms.GenerateImageListFile'=`get_executable_path 'dramms.GenerateImageListFile'`
    alias 'dramms.CalculateImageSimilarity'=`get_executable_path 'dramms.CalculateImageSimilarity'`
    alias 'dramms.CombineFeatureLists'=`get_executable_path 'dramms.CombineFeatureLists'`
    alias 'dramms.CombineTransforms'=`get_executable_path 'dramms.CombineTransforms'`
    alias 'dramms.CalculateGaborTextures'=`get_executable_path 'dramms.CalculateGaborTextures'`
    alias 'dramms.MatchHistograms'=`get_executable_path 'dramms.MatchHistograms'`
    alias 'dramms.ApplyTransform'=`get_executable_path 'dramms.ApplyTransform'`
    alias 'dramms.CalculateJacobianMap'=`get_executable_path 'dramms.CalculateJacobianMap'`
    alias 'dramms.CalculateRavensMaps'=`get_executable_path 'dramms.CalculateRavensMaps'`
    alias 'dramms.ImageOperation'=`get_executable_path 'dramms.ImageOperation'`
    alias 'dramms.TransformOperation'=`get_executable_path 'dramms.TransformOperation'`
    alias 'dramms.ConvertDeformation'=`get_executable_path 'dramms.ConvertDeformation'`
    alias 'dramms.ConvertImage'=`get_executable_path 'dramms.ConvertImage'`
    alias 'dramms.Deform2D'=`get_executable_path 'dramms.Deform2D'`
    alias 'dramms.Deform3D'=`get_executable_path 'dramms.Deform3D'`
    alias 'dramms.dramms'=`get_executable_path 'dramms.dramms'`
    alias 'basis.testdriver'=`get_executable_path 'basis.testdriver'`
    alias 'basis.basistest-svn'=`get_executable_path 'basis.basistest-svn'`
    alias 'basis.basistest-slave'=`get_executable_path 'basis.basistest-slave'`
    alias 'basis.basistest-master'=`get_executable_path 'basis.basistest-master'`
    alias 'basis.basistest-cron'=`get_executable_path 'basis.basistest-cron'`
    alias 'basis.basistest'=`get_executable_path 'basis.basistest'`

    # define short aliases for this project's targets
    alias 'CheckTwoImages'='dramms.CheckTwoImages'
    alias 'GenerateGaborListFile'='dramms.GenerateGaborListFile'
    alias 'GenerateImageListFile'='dramms.GenerateImageListFile'
    alias 'CalculateImageSimilarity'='dramms.CalculateImageSimilarity'
    alias 'CombineFeatureLists'='dramms.CombineFeatureLists'
    alias 'CombineTransforms'='dramms.CombineTransforms'
    alias 'CalculateGaborTextures'='dramms.CalculateGaborTextures'
    alias 'MatchHistograms'='dramms.MatchHistograms'
    alias 'ApplyTransform'='dramms.ApplyTransform'
    alias 'CalculateJacobianMap'='dramms.CalculateJacobianMap'
    alias 'CalculateRavensMaps'='dramms.CalculateRavensMaps'
    alias 'ImageOperation'='dramms.ImageOperation'
    alias 'TransformOperation'='dramms.TransformOperation'
    alias 'ConvertDeformation'='dramms.ConvertDeformation'
    alias 'ConvertImage'='dramms.ConvertImage'
    alias 'Deform2D'='dramms.Deform2D'
    alias 'Deform3D'='dramms.Deform3D'
    alias 'dramms'='dramms.dramms'

    # enable expansion of aliases also in non-interactive shells
    shopt -s expand_aliases
fi


} # _DRAMMS_DRAMMS_INCLUDED
