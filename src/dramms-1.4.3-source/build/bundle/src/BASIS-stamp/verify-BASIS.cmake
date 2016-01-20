message(STATUS "verifying file...
     file='/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/basis-2.1.4-source.tar.gz'")

set(verified 0)

# If an expected md5 checksum exists, compare against it:
#
if(NOT "ca7f1b64a2d7e0da2f7c7697831df5de" STREQUAL "")
  execute_process(COMMAND ${CMAKE_COMMAND} -E md5sum "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/basis-2.1.4-source.tar.gz"
    OUTPUT_VARIABLE ov
    OUTPUT_STRIP_TRAILING_WHITESPACE
    RESULT_VARIABLE rv)

  if(NOT rv EQUAL 0)
    message(FATAL_ERROR "error: computing md5sum of '/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/basis-2.1.4-source.tar.gz' failed")
  endif()

  string(REGEX MATCH "^([0-9A-Fa-f]+)" md5_actual "${ov}")

  string(TOLOWER "${md5_actual}" md5_actual)
  string(TOLOWER "ca7f1b64a2d7e0da2f7c7697831df5de" md5)

  if(NOT "${md5}" STREQUAL "${md5_actual}")
    message(FATAL_ERROR "error: md5sum of '/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/basis-2.1.4-source.tar.gz' does not match expected value
  md5_expected: ${md5}
    md5_actual: ${md5_actual}
")
  endif()

  set(verified 1)
endif()

if(verified)
  message(STATUS "verifying file... done")
else()
  message(STATUS "verifying file... warning: did not verify file - no URL_MD5 checksum argument? corrupt file?")
endif()
