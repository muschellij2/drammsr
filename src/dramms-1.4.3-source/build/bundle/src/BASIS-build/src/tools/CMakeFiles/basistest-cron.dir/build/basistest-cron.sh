#! /bin/bash
__FILE__="$(cd -P -- "$(dirname -- "$BASH_SOURCE")" && pwd -P)/$(basename -- "$BASH_SOURCE")"; if [[ -n "$SGE_ROOT" ]] && [[ $__FILE__ =~ $SGE_ROOT/.* ]] && [[ -n "${BASIS_DIR}" ]] && [[ -f "${BASIS_DIR}/bin/basistest-cron.sh" ]]; then __FILE__="${BASIS_DIR}/bin/basistest-cron.sh"; fi; i=0; lnk="$__FILE__"; while [[ -h "$lnk" ]] && [[ $i -lt 100 ]]; do dir=`dirname -- "$lnk"`; lnk=`readlink -- "$lnk"`; lnk=`cd "$dir" && cd $(dirname -- "$lnk") && pwd`/`basename -- "$lnk"`; let i++; done; [[ $i -lt 100 ]] && __FILE__="$lnk"; unset -v i dir lnk; __DIR__="$(dirname -- "$__FILE__")"; BASIS_BASH_UTILITIES="$__DIR__/../bash/basis/basis.sh"; BASHPATH="$__DIR__/.:$__DIR__/../bash:$BASHPATH" # <-- added by BASIS
##############################################################################
# @file  basistest-cron.sh
# @brief Script intended to be run as cron job to perform automated testing.
#
# This script sets up the environment for the actual master script which
# handles the automated testing. Further, it uses qsub to submit testing jobs
# to the configured SGE queue, with the SGE options as set in this script.
#
# Edit this script to change the settings of the automated testing.
# The default settings are the ones used for the cron job running on the
# cluster of our lab as the 'swtest' user.
#
# The configuration of automated tests is done in the configuration file
# for the basistest-master.sh. See value of conf variable below.
#
# Copyright (c) 2011 University of Pennsylvania. All rights reserved.<br />
# See http://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
#
# Contact: SBIA Group <sbia-software at uphs.upenn.edu>
#
# @ingroup Tools
##############################################################################

. ${BASIS_BASH_UTILITIES} || exit 1

# ============================================================================
# constants
# ============================================================================

exedir  _EXEC_DIR  && readonly _EXEC_DIR
exename _EXEC_NAME && readonly _EXEC_NAME

# ============================================================================
# settings
# ============================================================================

## @brief Whether to use SGE or not.
sge=1

## @brief SGE queue; set to '' to not specify any.
queue='centos5'

## @brief Mail address for SGE notifications; set to '' to disable notifications.
mail=''

## @brief Output file for test log; used for -o and -e option of qsub.
log='/sbia/home/swtest/var/log/basistest-$JOB_ID.log'

## @brief Maximum number of days for which log files should be kept.
max_log_mtime=7

## @brief Configuration file; configure the automated tests here, see <tt>basistestd -h</td>.
conf='/sbia/home/swtest/etc/basistest.conf'

## @brief Schedule file; note that this file is created/updated by the testing daemon.
schedule='/sbia/home/swtest/var/run/basistest.schedule'

## @brief CTest script.
#
# Has to be given with full path because SGE copies the slave script which
# looks for the CTest script relative to its own location.
ctest="${_EXEC_DIR}/../../share/basis/cmake-modules/basistest.ctest"

## @brief Testing master script.
master="${_EXEC_DIR}/basistest-master"

## @brief Test execution command.
#
# Note: We use a fixed site name for the tests. This allows the test job to be
#       run on any compute node with the same system installation without
#       having CDash list submissions from these different notes as separate.
#       In particular, the numbers of how many tests are now succeeding compared
#       to previous runs, or how many are now failing would otherwise be confusing
#       when the tests are not regularly run at one and the same site, but
#       different sites which represent the same operating system and configuration.
slave="${_EXEC_DIR}/basistest-slave -v -S ${ctest} --args site=sbia-cluster-centos5,shared-source,shared-build"

# ============================================================================
# main
# ============================================================================

verbose=0
dry='false'

while [ $# -gt 0 ]; do
    case "$1" in
        -h|--help)
            echo "Usage:"
            echo "  ${_EXEC_NAME}"
            echo
            echo "Description:"
            echo "  This command should be run regularly by a cron job. It contains"
            echo "  all the fixed settings for the execution of the basistest master"
            echo "  command, which is simply executed by this command."
            echo
            echo "Optional arguments:"
            echo "  --dry   Dry run, i.e., do not actually invoke the test execution command."
            echo
            print_contact
            exit 0
            ;;

        --helpshort)
            echo "Usage:"
            echo "  ${_EXEC_NAME}"
            echo
            print_contact
            exit 0
            ;;

        --version)
            print_version ''
            exit 0
            ;;

        --dry)
            dry='true';
            ;;

        -v|--verbose)
            (( verbose++ ))
            ;;

        *)
            echo "Invalid argument $1! See ${_EXEC_NAME} --help." 1>&2
            exit 1
            ;;
    esac
    shift
done

# prepend test command by qsub command
if [ ${sge} -ne 0 ]; then
    tmpslave=$(mktemp -t 'basistest-XXXXXX')
    echo "#! /usr/bin/env bash" >> "${tmpslave}"
    echo "# temporarily generated by basistest-cron for submission to SGE" >> "${tmpslave}"
    echo "${slave} \"\$@\"" >> "${tmpslave}"
    if [ ${verbose} -gt 0 ]; then
        echo "Wrote temporary SGE submission script ${tmpslave} with command:"
        echo "    ${slave} \"\$@\""
    fi
    submit='qsub -cwd'
    if [ ! -z "${queue}" ]; then submit="${submit} -l ${queue}"; fi
    if [ ! -z "${mail}" ];  then submit="${submit} -M ${mail} -m b -m e -m a"; fi
    if [ ! -z "${log}" ];   then submit="${submit} -o ${log} -j y"; fi
    slave="${submit} ${tmpslave}"
fi

# remove log files that are older than max_log_mtime (days)
if [ ! -z "${log}" ]; then
log_path=${log//\$JOB_ID/\*}
    log_dir=`dirname "${log_path}"`
    log_dir_ok='false'
    if [[ $(uname) == 'Darwin' ]]; then
        if [[ "${log_dir}" =~ ^/sbia/home/swtest/var/ ]]; then
            log_dir_ok='true'
        fi
    else
        if [[ "${log_dir}" =~ '^/sbia/home/swtest/var/' ]]; then
            log_dir_ok='true'
        fi
    fi
    if [ "${log_dir_ok}" == 'true' ]; then
        log_name=`basename "${log_path}"`
        if [ ${verbose} -gt 0 ]; then
            echo "Removing old log files using command"
            echo "    find \"${log_dir}\" -name \"${log_name}\" -mtime \"+${max_log_mtime}\" -exec rm -f '{}' ';'"
        fi
        find "${log_dir}" -name "${log_name}" -mtime "+${max_log_mtime}" -exec rm -f '{}' ';'
    else
        echo "WARNING: Attempting to delete old log files from directory other than /sbia/home/swtest/var/." 1>&2
        echo "WARNING: Skipping removal of any files. Update basistest-cron.sh to account for changed location of log files!" 1>&2
    fi
fi

# run actual testing master
cmd=(${master} -c "${conf}" -s "${schedule}" -t "${slave}")
[ ${dry} == 'true' ] && cmd=("${cmd[@]}" --dry)
[ ${verbose} -gt 0 ] && cmd=("${cmd[@]}" -v) && echo "$ ${cmd[@]}"
"${cmd[@]}"

# remove SGE submission script (SGE copied it already)
[ -n "${tmpslave}" ] && rm -f "${tmpslave}"
