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
include utils/CMakeFiles/nifti_tool.dir/depend.make

# Include the progress variables for this target.
include utils/CMakeFiles/nifti_tool.dir/progress.make

# Include the compile flags for this target's objects.
include utils/CMakeFiles/nifti_tool.dir/flags.make

utils/CMakeFiles/nifti_tool.dir/nifti_tool.o: utils/CMakeFiles/nifti_tool.dir/flags.make
utils/CMakeFiles/nifti_tool.dir/nifti_tool.o: /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/utils/nifti_tool.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object utils/CMakeFiles/nifti_tool.dir/nifti_tool.o"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/nifti_tool.dir/nifti_tool.o   -c /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/utils/nifti_tool.c

utils/CMakeFiles/nifti_tool.dir/nifti_tool.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nifti_tool.dir/nifti_tool.i"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/utils/nifti_tool.c > CMakeFiles/nifti_tool.dir/nifti_tool.i

utils/CMakeFiles/nifti_tool.dir/nifti_tool.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nifti_tool.dir/nifti_tool.s"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/utils/nifti_tool.c -o CMakeFiles/nifti_tool.dir/nifti_tool.s

utils/CMakeFiles/nifti_tool.dir/nifti_tool.o.requires:
.PHONY : utils/CMakeFiles/nifti_tool.dir/nifti_tool.o.requires

utils/CMakeFiles/nifti_tool.dir/nifti_tool.o.provides: utils/CMakeFiles/nifti_tool.dir/nifti_tool.o.requires
	$(MAKE) -f utils/CMakeFiles/nifti_tool.dir/build.make utils/CMakeFiles/nifti_tool.dir/nifti_tool.o.provides.build
.PHONY : utils/CMakeFiles/nifti_tool.dir/nifti_tool.o.provides

utils/CMakeFiles/nifti_tool.dir/nifti_tool.o.provides.build: utils/CMakeFiles/nifti_tool.dir/nifti_tool.o

# Object files for target nifti_tool
nifti_tool_OBJECTS = \
"CMakeFiles/nifti_tool.dir/nifti_tool.o"

# External object files for target nifti_tool
nifti_tool_EXTERNAL_OBJECTS =

utils/nifti_tool: utils/CMakeFiles/nifti_tool.dir/nifti_tool.o
utils/nifti_tool: niftilib/libniftiio.a
utils/nifti_tool: znzlib/libznz.a
utils/nifti_tool: /usr/local/lib/libz.a
utils/nifti_tool: utils/CMakeFiles/nifti_tool.dir/build.make
utils/nifti_tool: utils/CMakeFiles/nifti_tool.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable nifti_tool"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nifti_tool.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
utils/CMakeFiles/nifti_tool.dir/build: utils/nifti_tool
.PHONY : utils/CMakeFiles/nifti_tool.dir/build

utils/CMakeFiles/nifti_tool.dir/requires: utils/CMakeFiles/nifti_tool.dir/nifti_tool.o.requires
.PHONY : utils/CMakeFiles/nifti_tool.dir/requires

utils/CMakeFiles/nifti_tool.dir/clean:
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils && $(CMAKE_COMMAND) -P CMakeFiles/nifti_tool.dir/cmake_clean.cmake
.PHONY : utils/CMakeFiles/nifti_tool.dir/clean

utils/CMakeFiles/nifti_tool.dir/depend:
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib/utils /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build/utils/CMakeFiles/nifti_tool.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : utils/CMakeFiles/nifti_tool.dir/depend

