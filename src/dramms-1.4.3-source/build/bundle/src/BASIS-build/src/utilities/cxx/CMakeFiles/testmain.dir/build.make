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

# Include any dependencies generated for this target.
include src/utilities/cxx/CMakeFiles/testmain.dir/depend.make

# Include the progress variables for this target.
include src/utilities/cxx/CMakeFiles/testmain.dir/progress.make

# Include the compile flags for this target's objects.
include src/utilities/cxx/CMakeFiles/testmain.dir/flags.make

src/utilities/cxx/CMakeFiles/testmain.dir/test_main.cxx.o: src/utilities/cxx/CMakeFiles/testmain.dir/flags.make
src/utilities/cxx/CMakeFiles/testmain.dir/test_main.cxx.o: /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS/src/utilities/cxx/test_main.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/utilities/cxx/CMakeFiles/testmain.dir/test_main.cxx.o"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/utilities/cxx && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/testmain.dir/test_main.cxx.o -c /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS/src/utilities/cxx/test_main.cxx

src/utilities/cxx/CMakeFiles/testmain.dir/test_main.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testmain.dir/test_main.cxx.i"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/utilities/cxx && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS/src/utilities/cxx/test_main.cxx > CMakeFiles/testmain.dir/test_main.cxx.i

src/utilities/cxx/CMakeFiles/testmain.dir/test_main.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testmain.dir/test_main.cxx.s"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/utilities/cxx && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS/src/utilities/cxx/test_main.cxx -o CMakeFiles/testmain.dir/test_main.cxx.s

src/utilities/cxx/CMakeFiles/testmain.dir/test_main.cxx.o.requires:
.PHONY : src/utilities/cxx/CMakeFiles/testmain.dir/test_main.cxx.o.requires

src/utilities/cxx/CMakeFiles/testmain.dir/test_main.cxx.o.provides: src/utilities/cxx/CMakeFiles/testmain.dir/test_main.cxx.o.requires
	$(MAKE) -f src/utilities/cxx/CMakeFiles/testmain.dir/build.make src/utilities/cxx/CMakeFiles/testmain.dir/test_main.cxx.o.provides.build
.PHONY : src/utilities/cxx/CMakeFiles/testmain.dir/test_main.cxx.o.provides

src/utilities/cxx/CMakeFiles/testmain.dir/test_main.cxx.o.provides.build: src/utilities/cxx/CMakeFiles/testmain.dir/test_main.cxx.o

# Object files for target testmain
testmain_OBJECTS = \
"CMakeFiles/testmain.dir/test_main.cxx.o"

# External object files for target testmain
testmain_EXTERNAL_OBJECTS =

lib/libtestmain.a: src/utilities/cxx/CMakeFiles/testmain.dir/test_main.cxx.o
lib/libtestmain.a: src/utilities/cxx/CMakeFiles/testmain.dir/build.make
lib/libtestmain.a: src/utilities/cxx/CMakeFiles/testmain.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library ../../../lib/libtestmain.a"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/utilities/cxx && $(CMAKE_COMMAND) -P CMakeFiles/testmain.dir/cmake_clean_target.cmake
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/utilities/cxx && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testmain.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/utilities/cxx/CMakeFiles/testmain.dir/build: lib/libtestmain.a
.PHONY : src/utilities/cxx/CMakeFiles/testmain.dir/build

src/utilities/cxx/CMakeFiles/testmain.dir/requires: src/utilities/cxx/CMakeFiles/testmain.dir/test_main.cxx.o.requires
.PHONY : src/utilities/cxx/CMakeFiles/testmain.dir/requires

src/utilities/cxx/CMakeFiles/testmain.dir/clean:
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/utilities/cxx && $(CMAKE_COMMAND) -P CMakeFiles/testmain.dir/cmake_clean.cmake
.PHONY : src/utilities/cxx/CMakeFiles/testmain.dir/clean

src/utilities/cxx/CMakeFiles/testmain.dir/depend:
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS/src/utilities/cxx /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/utilities/cxx /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/BASIS-build/src/utilities/cxx/CMakeFiles/testmain.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/utilities/cxx/CMakeFiles/testmain.dir/depend

