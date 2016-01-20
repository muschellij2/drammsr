# Install script for directory: /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/Users/johnmuschelli/Dropbox/Packages/drammsr/inst/dramms")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/doc/basis" TYPE FILE OPTIONAL RENAME "COPYING" FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/COPYING.txt")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bash/basis" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/utilities/bash/CMakeFiles/utilities_bash.dir/build/basis/config.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bash/basis" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/utilities/bash/CMakeFiles/utilities_bash.dir/build/basis/core.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bash/basis/os" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/utilities/bash/CMakeFiles/utilities_bash.dir/build/basis/os/path.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bash/basis" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/utilities/bash/CMakeFiles/utilities_bash.dir/build/basis/utilities.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bash/basis" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/utilities/bash/CMakeFiles/utilities_bash.dir/build/basis/shflags.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bash/basis" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/utilities/bash/CMakeFiles/utilities_bash.dir/build/basis/shtap.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/basis/cmake-modules" TYPE FILE RENAME "basistest.ctest" FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/tools/CMakeFiles/basistest_ctest.dir/build/basistest.ctest")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/basis" TYPE PROGRAM RENAME "basistest-svn" FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/tools/CMakeFiles/basistest-svn.dir/build/basistest-svn.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/basis" TYPE PROGRAM RENAME "basistest-slave" FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/tools/CMakeFiles/basistest-slave.dir/build/basistest-slave.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/basis" TYPE PROGRAM RENAME "basistest-master" FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/tools/CMakeFiles/basistest-master.dir/build/basistest-master.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/basis" TYPE PROGRAM RENAME "basistest-cron" FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/tools/CMakeFiles/basistest-cron.dir/build/basistest-cron.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/basis" TYPE PROGRAM RENAME "basistest" FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/tools/CMakeFiles/basistest.dir/build/basistest.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bash/basis" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/CMakeFiles/basis_sh.dir/build/basis/basis.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  # -----------------------------------------------------------------------
  # basis_install_directory(): /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS/include
  set (BASIS_INSTALL_DIRECTORY_FILES)
  set (BASIS_INSTALL_DIRECTORY_SOURCE      "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS/include")
  set (BASIS_INSTALL_DIRECTORY_DESTINATION "$ENV{DESTDIR}/Users/johnmuschelli/Dropbox/Packages/drammsr/inst/dramms/include")
  set (BASIS_INSTALL_DIRECTORY_MATCH       "")
  set (BASIS_INSTALL_DIRECTORY_EXCLUDE     ".*\\.in|CMakeLists.txt$|/.svn/|/.git/|.DS_Store$|.*~$")
  file (GLOB_RECURSE BASIS_INSTALL_DIRECTORY_ALL_FILES "${BASIS_INSTALL_DIRECTORY_SOURCE}/*")
  foreach (BASIS_INSTALL_DIRECTORY_FILE IN LISTS BASIS_INSTALL_DIRECTORY_ALL_FILES)
    if (NOT BASIS_INSTALL_DIRECTORY_MATCH                                            OR
            BASIS_INSTALL_DIRECTORY_FILE MATCHES "${BASIS_INSTALL_DIRECTORY_MATCH}" AND
        NOT BASIS_INSTALL_DIRECTORY_FILE MATCHES "${BASIS_INSTALL_DIRECTORY_EXCLUDE}")
      list (APPEND BASIS_INSTALL_DIRECTORY_FILES "${BASIS_INSTALL_DIRECTORY_FILE}")
   endif ()
  endforeach ()
  foreach (BASIS_INSTALL_DIRECTORY_FILE IN LISTS BASIS_INSTALL_DIRECTORY_FILES)
    file (RELATIVE_PATH BASIS_INSTALL_DIRECTORY_FILE "${BASIS_INSTALL_DIRECTORY_SOURCE}" "${BASIS_INSTALL_DIRECTORY_FILE}")
    execute_process (
      COMMAND "/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E compare_files
                  "${BASIS_INSTALL_DIRECTORY_SOURCE}/${BASIS_INSTALL_DIRECTORY_FILE}"
                  "${BASIS_INSTALL_DIRECTORY_DESTINATION}/${BASIS_INSTALL_DIRECTORY_FILE}"
      RESULT_VARIABLE RC
      OUTPUT_QUIET
      ERROR_QUIET
    )
    if (RC EQUAL 0)
      message (STATUS "Up-to-date: ${BASIS_INSTALL_DIRECTORY_DESTINATION}/${BASIS_INSTALL_DIRECTORY_FILE}")
    else ()
      message (STATUS "Installing: ${BASIS_INSTALL_DIRECTORY_DESTINATION}/${BASIS_INSTALL_DIRECTORY_FILE}")
      execute_process (
        COMMAND "/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E copy_if_different
            "${BASIS_INSTALL_DIRECTORY_SOURCE}/${BASIS_INSTALL_DIRECTORY_FILE}"
            "${BASIS_INSTALL_DIRECTORY_DESTINATION}/${BASIS_INSTALL_DIRECTORY_FILE}"
        RESULT_VARIABLE RC
        OUTPUT_QUIET
        ERROR_QUIET
      )
      if (RC EQUAL 0)
        list (APPEND CMAKE_INSTALL_MANIFEST_FILES "${BASIS_INSTALL_DIRECTORY_DESTINATION}/${BASIS_INSTALL_DIRECTORY_FILE}")
      else ()
        message (STATUS "Failed to install ${BASIS_INSTALL_DIRECTORY_DESTINATION}/${BASIS_INSTALL_DIRECTORY_FILE}")
      endif ()
    endif ()
  endforeach ()
  # -----------------------------------------------------------------------
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  # -----------------------------------------------------------------------
  # basis_install_directory(): /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/include
  set (BASIS_INSTALL_DIRECTORY_FILES)
  set (BASIS_INSTALL_DIRECTORY_SOURCE      "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/include")
  set (BASIS_INSTALL_DIRECTORY_DESTINATION "$ENV{DESTDIR}/Users/johnmuschelli/Dropbox/Packages/drammsr/inst/dramms/include")
  set (BASIS_INSTALL_DIRECTORY_MATCH       "")
  set (BASIS_INSTALL_DIRECTORY_EXCLUDE     "/basis/basis\\.h$|.*\\.cmake|.*\\.cmake.*|CMakeLists.txt$|/.svn/|/.git/|.DS_Store$|.*~$")
  file (GLOB_RECURSE BASIS_INSTALL_DIRECTORY_ALL_FILES "${BASIS_INSTALL_DIRECTORY_SOURCE}/*")
  foreach (BASIS_INSTALL_DIRECTORY_FILE IN LISTS BASIS_INSTALL_DIRECTORY_ALL_FILES)
    if (NOT BASIS_INSTALL_DIRECTORY_MATCH                                            OR
            BASIS_INSTALL_DIRECTORY_FILE MATCHES "${BASIS_INSTALL_DIRECTORY_MATCH}" AND
        NOT BASIS_INSTALL_DIRECTORY_FILE MATCHES "${BASIS_INSTALL_DIRECTORY_EXCLUDE}")
      list (APPEND BASIS_INSTALL_DIRECTORY_FILES "${BASIS_INSTALL_DIRECTORY_FILE}")
   endif ()
  endforeach ()
  foreach (BASIS_INSTALL_DIRECTORY_FILE IN LISTS BASIS_INSTALL_DIRECTORY_FILES)
    file (RELATIVE_PATH BASIS_INSTALL_DIRECTORY_FILE "${BASIS_INSTALL_DIRECTORY_SOURCE}" "${BASIS_INSTALL_DIRECTORY_FILE}")
    execute_process (
      COMMAND "/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E compare_files
                  "${BASIS_INSTALL_DIRECTORY_SOURCE}/${BASIS_INSTALL_DIRECTORY_FILE}"
                  "${BASIS_INSTALL_DIRECTORY_DESTINATION}/${BASIS_INSTALL_DIRECTORY_FILE}"
      RESULT_VARIABLE RC
      OUTPUT_QUIET
      ERROR_QUIET
    )
    if (RC EQUAL 0)
      message (STATUS "Up-to-date: ${BASIS_INSTALL_DIRECTORY_DESTINATION}/${BASIS_INSTALL_DIRECTORY_FILE}")
    else ()
      message (STATUS "Installing: ${BASIS_INSTALL_DIRECTORY_DESTINATION}/${BASIS_INSTALL_DIRECTORY_FILE}")
      execute_process (
        COMMAND "/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E copy_if_different
            "${BASIS_INSTALL_DIRECTORY_SOURCE}/${BASIS_INSTALL_DIRECTORY_FILE}"
            "${BASIS_INSTALL_DIRECTORY_DESTINATION}/${BASIS_INSTALL_DIRECTORY_FILE}"
        RESULT_VARIABLE RC
        OUTPUT_QUIET
        ERROR_QUIET
      )
      if (RC EQUAL 0)
        list (APPEND CMAKE_INSTALL_MANIFEST_FILES "${BASIS_INSTALL_DIRECTORY_DESTINATION}/${BASIS_INSTALL_DIRECTORY_FILE}")
      else ()
        message (STATUS "Failed to install ${BASIS_INSTALL_DIRECTORY_DESTINATION}/${BASIS_INSTALL_DIRECTORY_FILE}")
      endif ()
    endif ()
  endforeach ()
  # -----------------------------------------------------------------------
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISExports.cmake")
    FILE(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISExports.cmake"
         "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/CMakeFiles/Export/lib/cmake/dramms/BASISExports.cmake")
    IF(EXPORT_FILE_CHANGED)
      FILE(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISExports-*.cmake")
      IF(OLD_CONFIG_FILES)
        MESSAGE(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISExports.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        FILE(REMOVE ${OLD_CONFIG_FILES})
      ENDIF(OLD_CONFIG_FILES)
    ENDIF(EXPORT_FILE_CHANGED)
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/CMakeFiles/Export/lib/cmake/dramms/BASISExports.cmake")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/CMakeFiles/Export/lib/cmake/dramms/BASISExports-release.cmake")
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISExports.cmake")
    FILE(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISExports.cmake"
         "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/CMakeFiles/Export/lib/cmake/dramms/BASISExports.cmake")
    IF(EXPORT_FILE_CHANGED)
      FILE(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISExports-*.cmake")
      IF(OLD_CONFIG_FILES)
        MESSAGE(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISExports.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        FILE(REMOVE ${OLD_CONFIG_FILES})
      ENDIF(OLD_CONFIG_FILES)
    ENDIF(EXPORT_FILE_CHANGED)
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/CMakeFiles/Export/lib/cmake/dramms/BASISExports.cmake")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/CMakeFiles/Export/lib/cmake/dramms/BASISExports-release.cmake")
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/CMakeFiles/Export/lib/cmake/dramms/BASISCustomExports.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/config/BASISConfig.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/BASISConfigVersion.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/BASISUse.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/cmake_install.cmake")
  INCLUDE("/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/data/cmake_install.cmake")
  INCLUDE("/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/uninstall/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
