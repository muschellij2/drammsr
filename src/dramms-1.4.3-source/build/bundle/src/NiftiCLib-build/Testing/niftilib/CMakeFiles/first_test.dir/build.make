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
CMAKE_SOURCE_DIR = /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build

# Include any dependencies generated for this target.
include Testing/niftilib/CMakeFiles/first_test.dir/depend.make

# Include the progress variables for this target.
include Testing/niftilib/CMakeFiles/first_test.dir/progress.make

# Include the compile flags for this target's objects.
include Testing/niftilib/CMakeFiles/first_test.dir/flags.make

Testing/niftilib/CMakeFiles/first_test.dir/nifti_test.o: Testing/niftilib/CMakeFiles/first_test.dir/flags.make
Testing/niftilib/CMakeFiles/first_test.dir/nifti_test.o: /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/Testing/niftilib/nifti_test.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object Testing/niftilib/CMakeFiles/first_test.dir/nifti_test.o"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/niftilib && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/first_test.dir/nifti_test.o   -c /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/Testing/niftilib/nifti_test.c

Testing/niftilib/CMakeFiles/first_test.dir/nifti_test.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/first_test.dir/nifti_test.i"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/niftilib && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/Testing/niftilib/nifti_test.c > CMakeFiles/first_test.dir/nifti_test.i

Testing/niftilib/CMakeFiles/first_test.dir/nifti_test.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/first_test.dir/nifti_test.s"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/niftilib && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/Testing/niftilib/nifti_test.c -o CMakeFiles/first_test.dir/nifti_test.s

Testing/niftilib/CMakeFiles/first_test.dir/nifti_test.o.requires:
.PHONY : Testing/niftilib/CMakeFiles/first_test.dir/nifti_test.o.requires

Testing/niftilib/CMakeFiles/first_test.dir/nifti_test.o.provides: Testing/niftilib/CMakeFiles/first_test.dir/nifti_test.o.requires
	$(MAKE) -f Testing/niftilib/CMakeFiles/first_test.dir/build.make Testing/niftilib/CMakeFiles/first_test.dir/nifti_test.o.provides.build
.PHONY : Testing/niftilib/CMakeFiles/first_test.dir/nifti_test.o.provides

Testing/niftilib/CMakeFiles/first_test.dir/nifti_test.o.provides.build: Testing/niftilib/CMakeFiles/first_test.dir/nifti_test.o

# Object files for target first_test
first_test_OBJECTS = \
"CMakeFiles/first_test.dir/nifti_test.o"

# External object files for target first_test
first_test_EXTERNAL_OBJECTS =

Testing/niftilib/first_test: Testing/niftilib/CMakeFiles/first_test.dir/nifti_test.o
Testing/niftilib/first_test: niftilib/libniftiio.a
Testing/niftilib/first_test: znzlib/libznz.a
Testing/niftilib/first_test: /usr/local/lib/libz.a
Testing/niftilib/first_test: Testing/niftilib/CMakeFiles/first_test.dir/build.make
Testing/niftilib/first_test: Testing/niftilib/CMakeFiles/first_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable first_test"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/niftilib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/first_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Testing/niftilib/CMakeFiles/first_test.dir/build: Testing/niftilib/first_test
.PHONY : Testing/niftilib/CMakeFiles/first_test.dir/build

Testing/niftilib/CMakeFiles/first_test.dir/requires: Testing/niftilib/CMakeFiles/first_test.dir/nifti_test.o.requires
.PHONY : Testing/niftilib/CMakeFiles/first_test.dir/requires

Testing/niftilib/CMakeFiles/first_test.dir/clean:
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/niftilib && $(CMAKE_COMMAND) -P CMakeFiles/first_test.dir/cmake_clean.cmake
.PHONY : Testing/niftilib/CMakeFiles/first_test.dir/clean

Testing/niftilib/CMakeFiles/first_test.dir/depend:
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/Testing/niftilib /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/niftilib /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/Testing/niftilib/CMakeFiles/first_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Testing/niftilib/CMakeFiles/first_test.dir/depend
