# Install script for directory: /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS/src/cmake/uninstall

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE RENAME "BASISUninstall.cmake" FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/cmake_uninstall.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
    set (UNINSTALLER "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/basis/uninstall-basis")
    message ("-- Installing: ${UNINSTALLER}")
    file (WRITE "${UNINSTALLER}" "")
    if (UNIX)
      file (APPEND "${UNINSTALLER}" "#! /bin/sh
")
    endif ()
    file (APPEND "${UNINSTALLER}" "\"/Applications/CMake 2.8-7.app/Contents/bin/cmake\" -P \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISUninstall.cmake\"")
    if (UNIX)
      execute_process (COMMAND /bin/chmod +x "${UNINSTALLER}")
    endif ()
    list (APPEND CMAKE_INSTALL_MANIFEST_FILES "${UNINSTALLER}")
    
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
    set (INSTALL_MANIFEST_FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISInstallManifest.txt")
    list (APPEND CMAKE_INSTALL_MANIFEST_FILES "${INSTALL_MANIFEST_FILE}")
    message ("-- Installing: ${INSTALL_MANIFEST_FILE}")
    file (WRITE "${INSTALL_MANIFEST_FILE}" "")
    foreach (F ${CMAKE_INSTALL_MANIFEST_FILES})
      file (APPEND "${INSTALL_MANIFEST_FILE}" "${F}
")
    endforeach ()
    
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

