# Install script for directory: /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS/src/cmake/uninstall

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms" TYPE FILE RENAME "BASISUninstall.cmake" FILES "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/cmake_uninstall.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
    set (UNINSTALLER "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/basis/uninstall-basis")
    message ("-- Installing: ${UNINSTALLER}")
    file (WRITE "${UNINSTALLER}" "")
    if (UNIX)
      file (APPEND "${UNINSTALLER}" "#! /bin/sh
")
    endif ()
    file (APPEND "${UNINSTALLER}" "\"/opt/local/bin/cmake\" -P \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISUninstall.cmake\"")
    if (UNIX)
      execute_process (COMMAND /bin/chmod +x "${UNINSTALLER}")
    endif ()
    list (APPEND CMAKE_INSTALL_MANIFEST_FILES "${UNINSTALLER}")
    
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
    set (INSTALL_MANIFEST_FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dramms/BASISInstallManifest.txt")
    list (APPEND CMAKE_INSTALL_MANIFEST_FILES "${INSTALL_MANIFEST_FILE}")
    message ("-- Installing: ${INSTALL_MANIFEST_FILE}")
    file (WRITE "${INSTALL_MANIFEST_FILE}" "")
    foreach (F ${CMAKE_INSTALL_MANIFEST_FILES})
      file (APPEND "${INSTALL_MANIFEST_FILE}" "${F}
")
    endforeach ()
    
endif()

