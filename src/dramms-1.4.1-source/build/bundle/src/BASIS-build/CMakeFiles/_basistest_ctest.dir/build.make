# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build

# Utility rule file for _basistest_ctest.

# Include the progress variables for this target.
include CMakeFiles/_basistest_ctest.dir/progress.make

CMakeFiles/_basistest_ctest: lib/basistest.ctest
CMakeFiles/_basistest_ctest: src/tools/CMakeFiles/basistest_ctest.dir/build/basistest.ctest

lib/basistest.ctest: src/tools/CMakeFiles/basistest_ctest.dir/build.cmake
lib/basistest.ctest: /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS/src/cmake/CommonTools.cmake
lib/basistest.ctest: src/tools/CMakeFiles/basistest_ctest.dir/cache.cmake
lib/basistest.ctest: config/BasisScriptConfig.cmake
lib/basistest.ctest: config/ScriptConfig.cmake
lib/basistest.ctest: /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS/src/tools/basistest.ctest.in
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Building script lib/basistest.ctest..."
	/opt/local/bin/cmake -P /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/src/tools/CMakeFiles/basistest_ctest.dir/build.cmake

src/tools/CMakeFiles/basistest_ctest.dir/build/basistest.ctest: lib/basistest.ctest

_basistest_ctest: CMakeFiles/_basistest_ctest
_basistest_ctest: lib/basistest.ctest
_basistest_ctest: src/tools/CMakeFiles/basistest_ctest.dir/build/basistest.ctest
_basistest_ctest: CMakeFiles/_basistest_ctest.dir/build.make
.PHONY : _basistest_ctest

# Rule to build all files generated by this target.
CMakeFiles/_basistest_ctest.dir/build: _basistest_ctest
.PHONY : CMakeFiles/_basistest_ctest.dir/build

CMakeFiles/_basistest_ctest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/_basistest_ctest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/_basistest_ctest.dir/clean

CMakeFiles/_basistest_ctest.dir/depend:
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.1-source/build/bundle/src/BASIS-build/CMakeFiles/_basistest_ctest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/_basistest_ctest.dir/depend

