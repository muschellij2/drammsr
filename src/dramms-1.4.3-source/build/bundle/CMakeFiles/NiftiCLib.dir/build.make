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
CMAKE_SOURCE_DIR = /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle

# Utility rule file for NiftiCLib.

# Include the progress variables for this target.
include CMakeFiles/NiftiCLib.dir/progress.make

CMakeFiles/NiftiCLib: CMakeFiles/NiftiCLib-complete

CMakeFiles/NiftiCLib-complete: src/NiftiCLib-stamp/NiftiCLib-install
CMakeFiles/NiftiCLib-complete: src/NiftiCLib-stamp/NiftiCLib-mkdir
CMakeFiles/NiftiCLib-complete: src/NiftiCLib-stamp/NiftiCLib-download
CMakeFiles/NiftiCLib-complete: src/NiftiCLib-stamp/NiftiCLib-update
CMakeFiles/NiftiCLib-complete: src/NiftiCLib-stamp/NiftiCLib-patch
CMakeFiles/NiftiCLib-complete: src/NiftiCLib-stamp/NiftiCLib-configure
CMakeFiles/NiftiCLib-complete: src/NiftiCLib-stamp/NiftiCLib-build
CMakeFiles/NiftiCLib-complete: src/NiftiCLib-stamp/NiftiCLib-install
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Completed 'NiftiCLib'"
	"/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E make_directory /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/CMakeFiles
	"/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/CMakeFiles/NiftiCLib-complete
	"/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-stamp/NiftiCLib-done

src/NiftiCLib-stamp/NiftiCLib-install: src/NiftiCLib-stamp/NiftiCLib-build
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing install step for 'NiftiCLib'"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build && $(MAKE) install
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build && "/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-stamp/NiftiCLib-install

src/NiftiCLib-stamp/NiftiCLib-mkdir:
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Creating directories for 'NiftiCLib'"
	"/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E make_directory /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib
	"/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E make_directory /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build
	"/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E make_directory /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle
	"/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E make_directory /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/tmp
	"/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E make_directory /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-stamp
	"/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E make_directory /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src
	"/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-stamp/NiftiCLib-mkdir

src/NiftiCLib-stamp/NiftiCLib-download: src/NiftiCLib-stamp/NiftiCLib-urlinfo.txt
src/NiftiCLib-stamp/NiftiCLib-download: src/NiftiCLib-stamp/NiftiCLib-mkdir
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing download step (verify and extract) for 'NiftiCLib'"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src && "/Applications/CMake 2.8-7.app/Contents/bin/cmake" -P /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-stamp/verify-NiftiCLib.cmake "/Applications/CMake 2.8-7.app/Contents/bin/cmake" -P /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-stamp/extract-NiftiCLib.cmake
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src && "/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-stamp/NiftiCLib-download

src/NiftiCLib-stamp/NiftiCLib-update: src/NiftiCLib-stamp/NiftiCLib-download
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "No update step for 'NiftiCLib'"
	"/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-stamp/NiftiCLib-update

src/NiftiCLib-stamp/NiftiCLib-patch: src/NiftiCLib-stamp/NiftiCLib-download
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "No patch step for 'NiftiCLib'"
	"/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-stamp/NiftiCLib-patch

src/NiftiCLib-stamp/NiftiCLib-configure: tmp/NiftiCLib-cfgcmd.txt
src/NiftiCLib-stamp/NiftiCLib-configure: tmp/NiftiCLib-cache.cmake
src/NiftiCLib-stamp/NiftiCLib-configure: src/NiftiCLib-stamp/NiftiCLib-update
src/NiftiCLib-stamp/NiftiCLib-configure: src/NiftiCLib-stamp/NiftiCLib-patch
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing configure step for 'NiftiCLib'"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build && "/Applications/CMake 2.8-7.app/Contents/bin/cmake" -Wno-dev -C/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/tmp/NiftiCLib-cache.cmake "-GUnix Makefiles" /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build && "/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-stamp/NiftiCLib-configure

src/NiftiCLib-stamp/NiftiCLib-build: src/NiftiCLib-stamp/NiftiCLib-configure
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing build step for 'NiftiCLib'"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build && $(MAKE)
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-build && "/Applications/CMake 2.8-7.app/Contents/bin/cmake" -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/src/NiftiCLib-stamp/NiftiCLib-build

NiftiCLib: CMakeFiles/NiftiCLib
NiftiCLib: CMakeFiles/NiftiCLib-complete
NiftiCLib: src/NiftiCLib-stamp/NiftiCLib-install
NiftiCLib: src/NiftiCLib-stamp/NiftiCLib-mkdir
NiftiCLib: src/NiftiCLib-stamp/NiftiCLib-download
NiftiCLib: src/NiftiCLib-stamp/NiftiCLib-update
NiftiCLib: src/NiftiCLib-stamp/NiftiCLib-patch
NiftiCLib: src/NiftiCLib-stamp/NiftiCLib-configure
NiftiCLib: src/NiftiCLib-stamp/NiftiCLib-build
NiftiCLib: CMakeFiles/NiftiCLib.dir/build.make
.PHONY : NiftiCLib

# Rule to build all files generated by this target.
CMakeFiles/NiftiCLib.dir/build: NiftiCLib
.PHONY : CMakeFiles/NiftiCLib.dir/build

CMakeFiles/NiftiCLib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NiftiCLib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NiftiCLib.dir/clean

CMakeFiles/NiftiCLib.dir/depend:
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/CMakeFiles/NiftiCLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NiftiCLib.dir/depend

