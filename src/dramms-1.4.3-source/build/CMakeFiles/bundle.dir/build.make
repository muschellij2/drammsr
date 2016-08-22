# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build

# Utility rule file for bundle.

# Include the progress variables for this target.
include CMakeFiles/bundle.dir/progress.make

CMakeFiles/bundle: CMakeFiles/bundle-complete


CMakeFiles/bundle-complete: bundle/tmp/bundle-install
CMakeFiles/bundle-complete: bundle/tmp/bundle-mkdir
CMakeFiles/bundle-complete: bundle/tmp/bundle-download
CMakeFiles/bundle-complete: bundle/tmp/bundle-update
CMakeFiles/bundle-complete: bundle/tmp/bundle-patch
CMakeFiles/bundle-complete: bundle/tmp/bundle-configure
CMakeFiles/bundle-complete: bundle/tmp/bundle-build
CMakeFiles/bundle-complete: bundle/tmp/bundle-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'bundle'"
	/opt/local/bin/cmake -E make_directory /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/CMakeFiles
	/opt/local/bin/cmake -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/CMakeFiles/bundle-complete
	/opt/local/bin/cmake -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/tmp/bundle-done

bundle/tmp/bundle-install: bundle/tmp/bundle-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'bundle'"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle && /opt/local/bin/cmake -E echo_append
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle && /opt/local/bin/cmake -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/tmp/bundle-install

bundle/tmp/bundle-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'bundle'"
	/opt/local/bin/cmake -E make_directory /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle
	/opt/local/bin/cmake -E make_directory /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle
	/opt/local/bin/cmake -E make_directory /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle
	/opt/local/bin/cmake -E make_directory /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/tmp
	/opt/local/bin/cmake -E make_directory /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/tmp
	/opt/local/bin/cmake -E make_directory /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle
	/opt/local/bin/cmake -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/tmp/bundle-mkdir

bundle/tmp/bundle-download: bundle/tmp/bundle-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step for 'bundle'"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle && /opt/local/bin/cmake -E copy /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/CMakeLists.txt CMakeLists.txt
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle && /opt/local/bin/cmake -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/tmp/bundle-download

bundle/tmp/bundle-update: bundle/tmp/bundle-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'bundle'"
	/opt/local/bin/cmake -E echo_append
	/opt/local/bin/cmake -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/tmp/bundle-update

bundle/tmp/bundle-patch: bundle/tmp/bundle-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'bundle'"
	/opt/local/bin/cmake -E echo_append
	/opt/local/bin/cmake -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/tmp/bundle-patch

bundle/tmp/bundle-configure: bundle/src/BASIS-stamp/BASIS-done
bundle/tmp/bundle-configure: bundle/tmp/bundle-cfgcmd.txt
bundle/tmp/bundle-configure: bundle/tmp/bundle-cache-Release.cmake
bundle/tmp/bundle-configure: bundle/tmp/bundle-update
bundle/tmp/bundle-configure: bundle/tmp/bundle-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'bundle'"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle && /opt/local/bin/cmake -C/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/tmp/bundle-cache-Release.cmake "-GUnix Makefiles" /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle && /opt/local/bin/cmake -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/tmp/bundle-configure

bundle/tmp/bundle-build: bundle/tmp/bundle-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'bundle'"
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle && $(MAKE)
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle && /opt/local/bin/cmake -E touch /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/bundle/tmp/bundle-build

bundle: CMakeFiles/bundle
bundle: CMakeFiles/bundle-complete
bundle: bundle/tmp/bundle-install
bundle: bundle/tmp/bundle-mkdir
bundle: bundle/tmp/bundle-download
bundle: bundle/tmp/bundle-update
bundle: bundle/tmp/bundle-patch
bundle: bundle/tmp/bundle-configure
bundle: bundle/tmp/bundle-build
bundle: CMakeFiles/bundle.dir/build.make

.PHONY : bundle

# Rule to build all files generated by this target.
CMakeFiles/bundle.dir/build: bundle

.PHONY : CMakeFiles/bundle.dir/build

CMakeFiles/bundle.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bundle.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bundle.dir/clean

CMakeFiles/bundle.dir/depend:
	cd /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build /Users/johnmuschelli/Dropbox/Packages/drammsr/src/dramms-1.4.3-source/build/CMakeFiles/bundle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bundle.dir/depend

