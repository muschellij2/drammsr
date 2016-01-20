##############################################################################
# @file  CTestConfig.cmake
# @brief Dashboard configuration file.
#
# Copyright (c) <year> University of Pennsylvania. All rights reserved.<br />
# See http://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
#
# Contact: SBIA Group <sbia-software at uphs.upenn.edu>
##############################################################################

# set CTest/CDash project name
set (CTEST_PROJECT_NAME "<project>")

# start time of Nightly test model
#
# All Nightly tests which are executed within a time window of 24 hours
# starting at the specified start time, will replace previous submissions
# made within the same time frame such that for each time frame of 24 hours
# only one result of test executions is present on the dashboard.
# The execution of the Nightly tests is usually triggered automatically
# via a scheduled cron job that is run once every 24 hours.
#
# Use the Continuous or Experimental test models if you want to execute
# tests manually.
set (CTEST_NIGHTLY_START_TIME "2:00:00 UTC")

# dashboard submission to SBIA CDash server
#
# Note: By default, CTest does not support HTTPS as submission method.
#       In order to enable it, CTest (and hence CMake) has to be build
#       manually with the option CMAKE_USE_OPENSSL enabled.
set (CTEST_DROP_METHOD     "http")
set (CTEST_DROP_SITE       "sbia-portal.uphs.upenn.edu")
set (CTEST_DROP_LOCATION   "/cdash/submit.php?project=${CTEST_PROJECT_NAME}")
set (CTEST_DROP_SITE_CDASH TRUE)

# launchers
#
# See CTest.cmake module.
set (CTEST_USE_LAUNCHERS 0)
