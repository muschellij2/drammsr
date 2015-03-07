# Install script for directory: /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/johnmuschelli/Dropbox/Packages/drammsr/inst/dramms")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/doc/basis" TYPE FILE OPTIONAL RENAME "COPYING" FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/COPYING.txt")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bash/basis" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/src/utilities/bash/CMakeFiles/utilities_bash.dir/build/basis/config.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bash/basis" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/src/utilities/bash/CMakeFiles/utilities_bash.dir/build/basis/core.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bash/basis/os" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/src/utilities/bash/CMakeFiles/utilities_bash.dir/build/basis/os/path.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bash/basis" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/src/utilities/bash/CMakeFiles/utilities_bash.dir/build/basis/utilities.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bash/basis" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/src/utilities/bash/CMakeFiles/utilities_bash.dir/build/basis/shflags.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bash/basis" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/src/utilities/bash/CMakeFiles/utilities_bash.dir/build/basis/shtap.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/basis/cmake-modules" TYPE FILE RENAME "basistest.ctest" FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/src/tools/CMakeFiles/basistest_ctest.dir/build/basistest.ctest")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/basis" TYPE PROGRAM RENAME "basistest-svn" FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/src/tools/CMakeFiles/basistest-svn.dir/build/basistest-svn.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/basis" TYPE PROGRAM RENAME "basistest-slave" FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/src/tools/CMakeFiles/basistest-slave.dir/build/basistest-slave.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/basis" TYPE PROGRAM RENAME "basistest-master" FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/src/tools/CMakeFiles/basistest-master.dir/build/basistest-master.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/basis" TYPE PROGRAM RENAME "basistest-cron" FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/src/tools/CMakeFiles/basistest-cron.dir/build/basistest-cron.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/basis" TYPE PROGRAM RENAME "basistest" FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/src/tools/CMakeFiles/basistest.dir/build/basistest.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bash/basis" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/CMakeFiles/basis_sh.dir/build/basis/basis.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  # -----------------------------------------------------------------------
  # basis_install_directory(): /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS/include
  set (BASIS_INSTALL_DIRECTORY_FILES)
  set (BASIS_INSTALL_DIRECTORY_SOURCE      "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS/include")
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
      COMMAND "/opt/local/bin/cmake" -E compare_files
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
        COMMAND "/opt/local/bin/cmake" -E copy_if_different
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
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  # -----------------------------------------------------------------------
  # basis_install_directory(): /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/include
  set (BASIS_INSTALL_DIRECTORY_FILES)
  set (BASIS_INSTALL_DIRECTORY_SOURCE      "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/include")
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
      COMMAND "/opt/local/bin/cmake" -E compare_files
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
        COMMAND "/opt/local/bin/cmake" -E copy_if_different
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
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISExports.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISExports.cmake"
         "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/CMakeFiles/Export/lib/cmake/dramms/BASISExports.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISExports-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISExports.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/CMakeFiles/Export/lib/cmake/dramms/BASISExports.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/CMakeFiles/Export/lib/cmake/dramms/BASISExports-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISExports.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISExports.cmake"
         "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/CMakeFiles/Export/lib/cmake/dramms/BASISExports.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISExports-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISExports.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/CMakeFiles/Export/lib/cmake/dramms/BASISExports.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/CMakeFiles/Export/lib/cmake/dramms/BASISExports-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/CMakeFiles/Export/lib/cmake/dramms/BASISCustomExports.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/config/BASISConfig.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/BASISConfigVersion.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/BASISUse.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/src/cmake_install.cmake")
  include("/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/data/cmake_install.cmake")
  include("/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/uninstall/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

file(WRITE "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/${CMAKE_INSTALL_MANIFEST}" "")
foreach(file ${CMAKE_INSTALL_MANIFEST_FILES})
  file(APPEND "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
endforeach()
