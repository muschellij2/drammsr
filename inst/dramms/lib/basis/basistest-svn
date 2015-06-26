#! /bin/bash
__FILE__="$(cd -P -- "$(dirname -- "$BASH_SOURCE")" && pwd -P)/$(basename -- "$BASH_SOURCE")"; if [[ -n "$SGE_ROOT" ]] && [[ $__FILE__ =~ $SGE_ROOT/.* ]] && [[ -n "${BASIS_DIR}" ]] && [[ -f "${BASIS_DIR}/bin/basistest-svn.sh" ]]; then __FILE__="${BASIS_DIR}/bin/basistest-svn.sh"; fi; i=0; lnk="$__FILE__"; while [[ -h "$lnk" ]] && [[ $i -lt 100 ]]; do dir=`dirname -- "$lnk"`; lnk=`readlink -- "$lnk"`; lnk=`cd "$dir" && cd $(dirname -- "$lnk") && pwd`/`basename -- "$lnk"`; let i++; done; [[ $i -lt 100 ]] && __FILE__="$lnk"; unset -v i dir lnk; __DIR__="$(dirname -- "$__FILE__")"; BASIS_BASH_UTILITIES="$__DIR__/../bash/basis/basis.sh"; BASHPATH="$__DIR__/.:$__DIR__/../bash:$BASHPATH" # <-- added by BASIS
##############################################################################
# @file  basistest-svn.sh
# @brief Wrapper script for Subversion svn command.
#
# This script is used as wrapper for the svn command to enable automated
# software testing at our lab. In general, anonymous access to the Subversion
# repositories is not permitted. Only the svnuser is allowed to do so.
# Hence, a wrapper script was implemented which is only readable by the
# svnuser where the password is hard code. Moreover, only the svnuser can
# execute this script. The swtest user on the other side is allowed to run
# this script as svnuser via sudoers list.
#
# Copyright (c) 2011 University of Pennsylvania. All rights reserved.<br />
# See http://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
#
# Contact: SBIA Group <sbia-software at uphs.upenn.edu>
# @ingroup Tools
##############################################################################

. ${BASIS_BASH_UTILITIES} || exit 1

args=()
verbose=0

while [ $# -gt 0 ]; do
    case "$1" in
        --verbose|-v)
            (( verbose++ ))
            ;;

        --help|-h)
            exename exec_name
            echo "Usage:"
            echo "  ${exec_name} [svn options/arguments]"
            echo "  ${exec_name} [options]"
            echo
            echo "Description:"
            echo "  This command is used as a wrapper for the svn command to enable"
            echo "  automated software testing at SBIA where anonymous Subversion"
            echo "  access is generally not permitted."
            echo
            echo "Options:"
            echo "  --help, -h    Print help and exit."
            echo "  --helpshort   Print short help and exit."
            echo "  --version     Print version information and exit."
            echo
            print_contact
            exit 0
            ;;

        --helpshort)
            exename exec_name
            echo "Usage:"
            echo "  ${exec_name} [svn options/arguments]"
            echo "  ${exec_name} [options]"
            echo
            echo "Options:"
            echo "  --help, -h    Print help and exit."
            echo "  --helpshort   Print short help and exit."
            echo "  --version     Print version information and exit."
            echo
            print_contact
            exit 0
            ;;

        --version)
            print_version ''
            exit 0
            ;;
        *)
            args=("${args[@]}" "$1")
            ;;
    esac
    shift
done

# simply call the wrapper script with the password encoded as svnuser
cmd=(sudo -u svnuser /bin/sh /sbia/home/svn/bin/svnwrap "${args[@]}")
if [ $verbose -gt 0 ]; then
    echo "$ ${cmd[@]}"
fi
exec "${cmd[@]}"
