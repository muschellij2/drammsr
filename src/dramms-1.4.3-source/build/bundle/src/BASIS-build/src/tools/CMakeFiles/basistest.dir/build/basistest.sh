#! /bin/bash
__FILE__="$(cd -P -- "$(dirname -- "$BASH_SOURCE")" && pwd -P)/$(basename -- "$BASH_SOURCE")"; if [[ -n "$SGE_ROOT" ]] && [[ $__FILE__ =~ $SGE_ROOT/.* ]] && [[ -n "${BASIS_DIR}" ]] && [[ -f "${BASIS_DIR}/bin/basistest.sh" ]]; then __FILE__="${BASIS_DIR}/bin/basistest.sh"; fi; i=0; lnk="$__FILE__"; while [[ -h "$lnk" ]] && [[ $i -lt 100 ]]; do dir=`dirname -- "$lnk"`; lnk=`readlink -- "$lnk"`; lnk=`cd "$dir" && cd $(dirname -- "$lnk") && pwd`/`basename -- "$lnk"`; let i++; done; [[ $i -lt 100 ]] && __FILE__="$lnk"; unset -v i dir lnk; __DIR__="$(dirname -- "$__FILE__")"; BASIS_BASH_UTILITIES="$__DIR__/../bash/basis/basis.sh"; BASHPATH="$__DIR__/.:$__DIR__/../bash:$BASHPATH" # <-- added by BASIS
##############################################################################
# @file  basistest.sh
# @brief Common wrapper for the basistest subcommands.
#
# Copyright (c) 2011, 2012 University of Pennsylvania. All rights reserved.<br />
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

exename _EXEC_NAME && readonly _EXEC_NAME

# ============================================================================
# help
# ============================================================================

# ----------------------------------------------------------------------------
## @brief Print help.
function print_help
{
    print_synopsis
    echo
    cat - << EOF-DESCRIPTION
Description:
  This executable is a wrapper for the basistest subcommands. The name of the
  subcommand to execute must be given as first argument.
EOF-DESCRIPTION
    echo
    print_options
    echo
    print_contact
}

# ----------------------------------------------------------------------------
## @brief Print usage information.
function print_helpshort
{
    print_synopsis
    echo
    print_options
    echo
    print_contact
}

# ----------------------------------------------------------------------------
## @brief Print synopsis, i.e., usage section.
function print_synopsis
{
    cat - << EOF-SYNOPSIS
Usage:
  ${_EXEC_NAME} [<cmd>] [options] [options of subcommand]
  ${_EXEC_NAME} help <cmd>
EOF-SYNOPSIS
}

# ----------------------------------------------------------------------------
## @brief Print options.
function print_options
{
    cat - << EOF-OPTIONS
Optional arguments:
  <cmd>         Recognized subcommands are cron, master, slave, and svn. (default: slave)
  -h, --help    Print help and exit
  --helpshort   Print short help and exit.
EOF-OPTIONS
}

# ============================================================================
# options
# ============================================================================

cmd='slave' # subcommand to run
verbose=0   # verbosity of output messages

if [ -n "$1" ]; then
    if match "$1" '^(cron|master|slave|svn)$'; then
        cmd="$1"
        shift
    elif [ "$1" == "help" ]; then
        if [ -n "$2" ]; then
            if match "$2" '^(cron|master|slave|svn)$'; then
                cmd="$2"
                shift
            else
                echo "Unknown command: $2" 1>&2
                exit 1
            fi
        else
            echo "Missing subcommand! See ${_EXEC_NAME} --help." 1>&2
            exit 1
        fi
        execute "basistest-${cmd}" '--help'
        exit $?
    elif [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
        print_help
        exit 0
    elif [ "$1" == "--helpshort" ]; then
        print_helpshort
        exit 0
    elif [ "$1" == "--version" ]; then
        print_version ''
        exit 0
    fi
fi

# ============================================================================
# main
# ============================================================================

[ -n "${cmd}" ] || { echo "Missing subcommand! See ${_EXEC_NAME} --help."; exit 1; }
execute "basistest-${cmd}" "$@"
