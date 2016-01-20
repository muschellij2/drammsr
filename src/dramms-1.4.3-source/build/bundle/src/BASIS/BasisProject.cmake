##############################################################################
# @file  BasisProject.cmake
# @brief Meta-data of this BASIS project.
#
# This file defines project meta-data by calling the basis_project() function.
# This meta-data is used by BASIS to setup the project. Moreover, if the
# project is a module of another BASIS project, the dependencies to other
# modules have to be specified here such that the top-level project can analyze
# the inter-module dependencies.
#
# @sa http://www.rad.upenn.edu/sbia/software/basis/standard/modules/
#
# However, not only dependencies to other modules can be specified here,
# but also dependencies on external packages. A more flexible alternative to
# resolve external dependencies is to add the corresponding basis_find_package()
# statements to the Depends.cmake file. This should, however, only be done
# if specifying the dependencies as arguments to the basis_project() function
# cannot be used to resolve the dependencies properly. If you only need to
# make use of additional variables set by the package configuration file
# of the external package or the corresponding Find<Package>.cmake module,
# add the related CMake code to the Settings.cmake file instead.
#
# Example:
# @code
# basis_project (
#   # ------------------------------------------------------------------------
#   # meta-data
#   NAME             MyProject
#   PROVIDER         PackageProvider
#   VERSION          1.1.5
#   DESCRIPTION      "This is the description of the project named"
#                    " MyProject which follows BASIS."
#   AUTHOR           "Max Muster"
#   COPYRIGHT        "2012 University of Pennsylvania"
#   LICENSE          "See COPYING file."
#   CONTACT          "SBIA Group <sbia-software at uphs.upenn.edu>"
#   # ------------------------------------------------------------------------
#   # dependencies
#   DEPENDS          NiftiCLib PythonInterp
#   OPTIONAL_DEPENDS MPI
#   TEST_DEPENDS     Perl
# )
# @endcode
#
# Copyright (c) 2011, 2012, 2013 University of Pennsylvania. All rights reserved.<br />
# See http://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
#
# Contact: SBIA Group <sbia-software at uphs.upenn.edu>
#
# @ingroup BasisSettings
##############################################################################

# Note: The #<*dependency> patterns are required by the basisproject tool
#       and should be kept on a separate line as last commented argument of
#       the corresponding options of the basis_project() command.

basis_project (
  # --------------------------------------------------------------------------
  # meta-data
  NAME        BASIS
  PROVIDER    SBIA
  VERSION     2.1.4
  DESCRIPTION "This package implements and supports the development of "
              "software which follows the SBIA Build system And Software "
              "Implementation Standard (BASIS)."
  AUTHORS     "Andreas Schuh"
  COPYRIGHT   "2011, 2012, 2013 University of Pennsylvania"
  LICENSE     "See http://www.rad.upenn.edu/sbia/software/license.html or COPYING file."
  CONTACT     "SBIA Group <sbia-software at uphs.upenn.edu>"
  # --------------------------------------------------------------------------
  # dependencies
  DEPENDS
    #<dependency>
  OPTIONAL_DEPENDS
    PythonInterp
    JythonInterp
    Perl
    MATLAB{matlab}
    BASH
    Doxygen
    Sphinx{build}
    ITK # TODO required by basistest-driver, get rid of this dependency
    #<optional-dependency>
  TEST_DEPENDS
    #<test-dependency>
  OPTIONAL_TEST_DEPENDS
    MATLAB{mex}
    MATLAB{mcc}
    #<optional-test-dependency>
)
