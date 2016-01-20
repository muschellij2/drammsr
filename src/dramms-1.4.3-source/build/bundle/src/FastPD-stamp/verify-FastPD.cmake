message(STATUS "verifying file...
     file='/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/FastPD_DemoVersion.zip'")

set(verified 0)

# If an expected md5 checksum exists, compare against it:
#
if(NOT "e8b7aa455bad254fe16434f1c601b66e" STREQUAL "")
  execute_process(COMMAND ${CMAKE_COMMAND} -E md5sum "/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/FastPD_DemoVersion.zip"
    OUTPUT_VARIABLE ov
    OUTPUT_STRIP_TRAILING_WHITESPACE
    RESULT_VARIABLE rv)

  if(NOT rv EQUAL 0)
    message(FATAL_ERROR "error: computing md5sum of '/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/FastPD_DemoVersion.zip' failed")
  endif()

  string(REGEX MATCH "^([0-9A-Fa-f]+)" md5_actual "${ov}")

  string(TOLOWER "${md5_actual}" md5_actual)
  string(TOLOWER "e8b7aa455bad254fe16434f1c601b66e" md5)

  if(NOT "${md5}" STREQUAL "${md5_actual}")
    message(FATAL_ERROR "error: md5sum of '/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/FastPD_DemoVersion.zip' does not match expected value
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
