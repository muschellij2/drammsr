# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "/Applications/CMake 2.8-7.app/Contents/bin/cmake"

# The command to remove a file.
RM = "/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = "/Applications/CMake 2.8-7.app/Contents/bin/ccmake"

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build

# Utility rule file for headers_check.

# Include the progress variables for this target.
include CMakeFiles/headers_check.dir/progress.make

CMakeFiles/headers_check: include/BASISPublicHeaders.cmake.tmp
	"/Applications/CMake 2.8-7.app/Contents/bin/cmake" -D PROJECT_INCLUDE_DIRS=/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS/include -D BINARY_INCLUDE_DIR=/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/include -D CMAKE_FILE=/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/include/BASISPublicHeaders.cmake -D REFERENCE_FILE=/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/include/BASISPublicHeaders.cmake.tmp -D "ERRORMSG=You have either added, removed, or renamed a public header file with a .in suffix in the file name. Therefore, the build system needs to be re-configured. Either try to build again which will trigger CMake and re-configure the build system or run CMake manually." -D REMOVE_FILES_IF_DIFFERENT=TRUE -P /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS/src/cmake/CheckPublicHeaders.cmake
	"/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E remove /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/include/BASISPublicHeaders.cmake.tmp

include/BASISPublicHeaders.cmake.tmp:
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Checking if public header files were added or removed"
	"/Applications/CMake 2.8-7.app/Contents/bin/cmake" -D PROJECT_INCLUDE_DIRS=/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS/include -D BINARY_INCLUDE_DIR=/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/include -D "EXTENSIONS=.h;.hh;.hpp;.hxx;.inl;.txx;.inc" -D CMAKE_FILE=/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/include/BASISPublicHeaders.cmake.tmp -D PREVIEW=TRUE -P /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS/src/cmake/ConfigureIncludeFiles.cmake

headers_check: CMakeFiles/headers_check
headers_check: include/BASISPublicHeaders.cmake.tmp
headers_check: CMakeFiles/headers_check.dir/build.make
.PHONY : headers_check

# Rule to build all files generated by this target.
CMakeFiles/headers_check.dir/build: headers_check
.PHONY : CMakeFiles/headers_check.dir/build

CMakeFiles/headers_check.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/headers_check.dir/cmake_clean.cmake
.PHONY : CMakeFiles/headers_check.dir/clean

CMakeFiles/headers_check.dir/depend:
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/CMakeFiles/headers_check.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/headers_check.dir/depend
