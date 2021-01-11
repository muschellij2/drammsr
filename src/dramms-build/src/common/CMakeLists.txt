##############################################################################
# @file  CMakeLists.txt
# @brief Build configuration of software.
#
# Copyright (c) 2011-2013 University of Pennsylvania. All rights reserved.
# Copyright (c) 2014-2016 Massachusetts General Hospital, Harvard Medical Schoo. All rights reserved.
# Copyright (c) 2016-     Boston Childrens Hospital, Harvard Medical School. All rights reserved.
#
# See https://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
#
# Contact: SBIA Group <sbia-software at uphs.upenn.edu>
##############################################################################

basis_add_library(common STATIC
    general.cxx
    cres.cxx
    matrix.cxx
    mvcd.cxx
    image.cxx
    imageio.cxx
    utilities.cxx)

basis_target_link_libraries(common niftiio basis)
