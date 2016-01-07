#! /usr/bin/env python

##############################################################################
# @file  get_python_lib.py
# @brief Auxiliary Python script to get installation directory for site packages.
#
# Copyright (c) 2012 University of Pennsylvania. All rights reserved.
# See http://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
#
# Contact: SBIA Group <sbia-software at uphs.upenn.edu>
##############################################################################

try:
    # this uses the same as packages which use easy_install for the installation
    # and returns also the proper site-packages directory on Ubuntu
    from setuptools.command.easy_install import easy_install

    class easy_install_default(easy_install):
        def __init__(self):
            from distutils.dist import Distribution
            dist = Distribution()
            self.distribution = dist
            self.initialize_options()
            self._dry_run = None
            self.verbose = dist.verbose
            self.force = None
            self.help = 0
            self.finalized = 0

    e = easy_install_default()
    import distutils.errors
    try:
        e.finalize_options()
    except distutils.errors.DistutilsError:
        pass

    print e.install_dir.rstrip('/\\')
except:
    # however, if the setuptools are not installed, fall back to the distutils
    import distutils.sysconfig
    print distutils.sysconfig.get_python_lib().rstrip('/\\')
