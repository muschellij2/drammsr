##############################################################################
# @file  BasisSettings.cmake
# @brief Default project-independent settings.
#
# This module defines global CMake constants and variables which are used
# by the BASIS CMake functions and macros. Hence, these values can be used
# to configure the behavior of these functions to some extent without the
# need to modify the functions themselves.
#
# @note As this file also sets the CMake policies to be used, it has to
#       be included using the @c NO_POLICY_SCOPE in order for these policies
#       to take effect also in the including file and its subdirectories.
#
# @attention Be careful when caching any of the variables. Usually, this
#            file is included in the root CMake configuration file of the
#            project which may also be a module of another project and hence
#            may overwrite this project's settings.
#
# @attention Keep in mind that this file is included before any other
#            BASIS module. Further, project-specific information such as
#            the project name are not defined yet.
#
# Copyright (c) 2011, 2012 University of Pennsylvania. All rights reserved.<br />
# See http://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
#
# Contact: SBIA Group <sbia-software at uphs.upenn.edu>
#
# @ingroup BasisSettings
##############################################################################

## @addtogroup BasisSettings
# @{


# ============================================================================
# required modules
# ============================================================================

include ("${CMAKE_CURRENT_LIST_DIR}/CommonTools.cmake")

# ============================================================================
# CMake version and policies
# ============================================================================

cmake_minimum_required (VERSION 2.8.4)

# Add policies introduced with CMake versions newer than the one specified
# above. These policies would otherwise trigger a policy not set warning by
# newer CMake versions.

if (POLICY CMP0016)
  cmake_policy (SET CMP0016 NEW)
endif ()

if (POLICY CMP0017)
  cmake_policy (SET CMP0017 NEW)
endif ()

# ============================================================================
# system checks
# ============================================================================

# used by tests to disable these checks
if (NOT BASIS_NO_SYSTEM_CHECKS)
  include (CheckTypeSize)
  include (CheckIncludeFileCXX)

  # check if type long long is supported
  CHECK_TYPE_SIZE ("long long" LONG_LONG)

  if (HAVE_LONG_LONG)
    set (HAVE_LONG_LONG 1)
  else ()
    set (HAVE_LONG_LONG 0)
  endif ()

  # check for presence of sstream header
  include (TestForSSTREAM)

  if (CMAKE_NO_ANSI_STRING_STREAM)
    set (HAVE_SSTREAM 0)
  else ()
    set (HAVE_SSTREAM 1)
  endif ()

  # check if tr/tuple header file is available
  if (CMAKE_GENERATOR MATCHES "Visual Studio [1-9][0-9]+")
    set (HAVE_TR1_TUPLE 1)
  else ()
    CHECK_INCLUDE_FILE_CXX ("tr1/tuple" HAVE_TR1_TUPLE)
    if (HAVE_TR1_TUPLE)
      set (HAVE_TR1_TUPLE 1)
    else ()
      set (HAVE_TR1_TUPLE 0)
    endif ()
  endif ()

  # check for availibility of pthreads library
  # defines CMAKE_USE_PTHREADS_INIT and CMAKE_THREAD_LIBS_INIT
  find_package (Threads)

  if (Threads_FOUND)
    if (CMAKE_USE_PTHREADS_INIT)
      set (HAVE_PTHREAD 1)
    else  ()
      set (HAVE_PTHREAD 0)
    endif ()
  endif ()
endif ()

# ============================================================================
# meta-data lists
# ============================================================================

## @brief Names of project meta-data switches.
set (
  BASIS_METADATA_LIST_SWITCH
)

## @brief Names of project meta-data with only one argument.
set (
  BASIS_METADATA_LIST_SINGLE
    AUTHOR
    NAME
    SUBPROJECT
    PACKAGE
    PACKAGE_VENDOR
    PROVIDER       # alias for PACKAGE_VENDOR
    COPYRIGHT
    LICENSE
    CONTACT
    VERSION
)

## @brief Names of project meta-data with multiple arguments.
set (
  BASIS_METADATA_LIST_MULTI
    AUTHORS
    DESCRIPTION
    DEPENDS
    OPTIONAL_DEPENDS
    TEST_DEPENDS
    OPTIONAL_TEST_DEPENDS
)

## @brief Names of project meta-data.
set (
  BASIS_METADATA_LIST
    ${BASIS_METADATA_LIST_SINGLE}
    ${BASIS_METADATA_LIST_MULTI}
)

## @brief Names of additional meta-data for Slicer modules with only one argument.
set (
  BASIS_SLICER_METADATA_LIST_SINGLE
     HOMEPAGE
     ICONURL
     STATUS
     SCREENSHOTURLS
)

## @brief Names of additional meta-data for Slicer modules with multiple arguments.
set (
  BASIS_SLICER_METADATA_LIST_MULTI
     ACKNOWLEDGEMENTS
     CATEGORY
     CONTRIBUTORS
     LICENSE_SHORT_DESCRIPTION
)

## @brief Names of additional meta-data for Slicer modules.
set (
  BASIS_SLICER_METADATA_LIST
    ${BASIS_SLICER_METADATA_LIST_SINGLE}
    ${BASIS_SLICER_METADATA_LIST_MULTI}
)

# ============================================================================
# constants and global settings
# ============================================================================

## @brief List of name patterns used for special purpose targets.
#
# Contains a list of target name patterns that are used by the BASIS functions
# for special purposes and are hence not to be used for project targets.
set (
  BASIS_RESERVED_TARGET_NAMES
    "all"
    "bundle"
    "bundle_source"
    "changelog"
    "clean"
    "depend"
    "doc"
    "headers"
    "headers_check"
    "package"
    "package_source"
    "scripts"
    "test"
    "uninstall"
)

## @brief Names of recognized properties on targets.
#
# Unfortunately, the @c ARGV and @c ARGN arguments of a CMake function()
# or macro() does not preserve values which themselves are lists. Therefore,
# it is not possible to distinguish between property names and their values
# in the arguments passed to set_target_properties() or
# basis_set_target_properties(). To overcome this problem, this list specifies
# all the possible property names. Everything else is considered to be a
# property value except the first argument follwing right after the
# @c PROPERTIES keyword. Alternatively, basis_set_property() can be used
# as here no disambiguity exists.
#
# @note Placeholders such as &lt;CONFIG&gt; are allowed. These are treated
#       as the regular expression "[^ ]+". See basis_list_to_regex().
#
# @sa http://www.cmake.org/cmake/help/cmake-2-8-docs.html#section_PropertiesonTargets
set (BASIS_PROPERTIES_ON_TARGETS
  # CMake
  <CONFIG>_OUTPUT_NAME
  <CONFIG>_POSTFIX
  ARCHIVE_OUTPUT_DIRECTORY
  ARCHIVE_OUTPUT_DIRECTORY_<CONFIG>
  ARCHIVE_OUTPUT_NAME
  ARCHIVE_OUTPUT_NAME_<CONFIG>
  AUTOMOC
  BUILD_WITH_INSTALL_RPATH
  BUNDLE
  BUNDLE_EXTENSION
  COMPILE_DEFINITIONS
  COMPILE_DEFINITIONS_<CONFIG>
  COMPILE_FLAGS
  DEBUG_POSTFIX
  DEFINE_SYMBOL
  ENABLE_EXPORTS
  EXCLUDE_FROM_ALL
  EchoString
  FOLDER
  FRAMEWORK
  Fortran_FORMAT
  Fortran_MODULE_DIRECTORY
  GENERATOR_FILE_NAME
  HAS_CXX
  IMPLICIT_DEPENDS_INCLUDE_TRANSFORM
  IMPORTED
  IMPORTED_CONFIGURATIONS
  IMPORTED_IMPLIB
  IMPORTED_IMPLIB_<CONFIG>
  IMPORTED_LINK_DEPENDENT_LIBRARIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_<CONFIG>
  IMPORTED_LINK_INTERFACE_LANGUAGES
  IMPORTED_LINK_INTERFACE_LANGUAGES_<CONFIG>
  IMPORTED_LINK_INTERFACE_LIBRARIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_<CONFIG>
  IMPORTED_LINK_INTERFACE_MULTIPLICITY
  IMPORTED_LINK_INTERFACE_MULTIPLICITY_<CONFIG>
  IMPORTED_LOCATION
  IMPORTED_LOCATION_<CONFIG>
  IMPORTED_NO_SONAME
  IMPORTED_NO_SONAME_<CONFIG>
  IMPORTED_SONAME
  IMPORTED_SONAME_<CONFIG>
  IMPORT_PREFIX
  IMPORT_SUFFIX
  INSTALL_NAME_DIR
  INSTALL_RPATH
  INSTALL_RPATH_USE_LINK_PATH
  INTERPROCEDURAL_OPTIMIZATION
  INTERPROCEDURAL_OPTIMIZATION_<CONFIG>
  LABELS
  LIBRARY_OUTPUT_DIRECTORY
  LIBRARY_OUTPUT_DIRECTORY_<CONFIG>
  LIBRARY_OUTPUT_NAME
  LIBRARY_OUTPUT_NAME_<CONFIG>
  LINKER_LANGUAGE
  LINK_DEPENDS
  LINK_FLAGS
  LINK_FLAGS_<CONFIG>
  LINK_INTERFACE_LIBRARIES
  LINK_INTERFACE_LIBRARIES_<CONFIG>
  LINK_INTERFACE_MULTIPLICITY
  LINK_INTERFACE_MULTIPLICITY_<CONFIG>
  LINK_SEARCH_END_STATIC
  LINK_SEARCH_START_STATIC
  LOCATION
  LOCATION_<CONFIG>
  MACOSX_BUNDLE
  MACOSX_BUNDLE_INFO_PLIST
  MACOSX_FRAMEWORK_INFO_PLIST
  MAP_IMPORTED_CONFIG_<CONFIG>
  OSX_ARCHITECTURES
  OSX_ARCHITECTURES_<CONFIG>
  OUTPUT_NAME
  OUTPUT_NAME_<CONFIG>
  POST_INSTALL_SCRIPT
  PREFIX
  PRE_INSTALL_SCRIPT
  PRIVATE_HEADER
  PROJECT_LABEL
  PUBLIC_HEADER
  RESOURCE
  RULE_LAUNCH_COMPILE
  RULE_LAUNCH_CUSTOM
  RULE_LAUNCH_LINK
  RUNTIME_OUTPUT_DIRECTORY
  RUNTIME_OUTPUT_DIRECTORY_<CONFIG>
  RUNTIME_OUTPUT_NAME
  RUNTIME_OUTPUT_NAME_<CONFIG>
  SKIP_BUILD_RPATH
  SOURCES
  SOVERSION
  STATIC_LIBRARY_FLAGS
  STATIC_LIBRARY_FLAGS_<CONFIG>
  SUFFIX
  TYPE
  VERSION
  VS_GLOBAL_<variable>
  VS_KEYWORD
  VS_SCC_LOCALPATH
  VS_SCC_PROJECTNAME
  VS_SCC_PROVIDER
  WIN32_EXECUTABLE
  XCODE_ATTRIBUTE_<an-attribute>
  # BASIS
  BASIS_INCLUDE_DIRECTORIES    # include directories
  BASIS_LINK_DIRECTORIES       # link directories
  BASIS_LINK_DEPENDS           # link libraries
  BASIS_TYPE                   # BASIS type of target
  BASIS_UTILITIES              # whether BASIS utilities are used by this target
  BUNDLED                      # whether target belongs to same bundle/superbuild
  COMPILE_DEFINITIONS_FILE     # script configuration file
  LANGUAGE                     # language of source files
  COMPILE                      # enable/disable compilation of script
  EXPORT                       # whether to export target
  LIBEXEC                      # whether the target is an auxiliary executable
  TEST                         # whether the target is a test
  MFILE                        # documentation file of MEX-file
  COMPONENT                    # package component of build target
  LIBRARY_COMPONENT            # package component of the library component
  RUNTIME_COMPONENT            # package component of the runtime component
  ARCHIVE_INSTALL_DIRECTORY    # installation directory of library
  LIBRARY_INSTALL_DIRECTORY    # installation directory of library
  RUNTIME_INSTALL_DIRECTORY    # installation directory of runtime
  OUTPUT_DIRECTORY             # output directory for generated files
  INSTALL_DIRECTORY            # installation directory for generated files
  HTML_OUTPUT_DIRECTORY        # Doxygen/Sphinx HTML output directory
  HTML_INSTALL_DIRECTORY       # Doxygen/Sphinx HTML installation directory
  DIRHTML_OUTPUT_DIRECTORY     # Sphinx HTML output directory
  DIRHTML_INSTALL_DIRECTORY    # Sphinx HTML installation directory
  SINGLEHTML_OUTPUT_DIRECTORY  # Sphinx HTML output directory
  SINGLEHTML_INSTALL_DIRECTORY # Sphinx HTML installation directory
  LINKCHECK_OUTPUT_DIRECTORY   # Sphinx linkcheck output directory
  LINKCHECK_INSTALL_DIRECTORY  # Sphinx linkcheck installation directory
  XML_OUTPUT_DIRECTORY         # Doxygen XML output directory
  XML_INSTALL_DIRECTORY        # Doxygen XML installation directory
  MAN_OUTPUT_DIRECTORY         # Doxygen/Sphinx MAN output directory
  MAN_INSTALL_DIRECTORY        # Doxygen/Sphinx MAN installation directory
  TEXT_OUTPUT_DIRECTORY        # Sphinx text output directory
  TEXT_INSTALL_DIRECTORY       # Sphinx text installation directory
  TEXINFO_OUTPUT_DIRECTORY     # Sphinx Texinfo output directory
  TEXINFO_INSTALL_DIRECTORY    # Sphinx Texinfo installation directory
  LATEX_OUTPUT_DIRECTORY       # Doxygen/Sphinx LaTeX output directory
  LATEX_INSTALL_DIRECTORY      # Doxygen/Sphinx LaTeX installation directory
  PDF_OUTPUT_DIRECTORY         # Doxygen/Sphinx PDF output directory
  PDF_INSTALL_DIRECTORY        # Doxygen/Sphinx PDF installation directory
  RTF_OUTPUT_DIRECTORY         # Doxygen RTF output directory
  RTF_INSTALL_DIRECTORY        # Doxygen RTF installation directory
  DOXYFILE                     # Doxygen configuration file
  OUTPUT                       # Doxygen output formats
  TAGFILE                      # Doxygen tag file
  CONFIG_DIRECTORY             # Sphinx configuration directory
  BINARY_DIRECTORY             # CMake build tree directory
  SOURCE_DIRECTORY             # CMake or Sphinx source directory
  BUILDERS                     # Sphinx builders
)

# convert list of property names into regular expression
basis_list_to_regex (BASIS_PROPERTIES_ON_TARGETS_RE ${BASIS_PROPERTIES_ON_TARGETS})

## @brief Whether BASIS shall use fully-qualified target UIDs.
#
# If this option is OFF, the namespace of the top-level BASIS project is
# not prepended to the actual CMake build target names.
#
# For example, instead of the fully-qualified target UID
# "sbia.@PROJECT_NAME_L@.target", the CMake target name will simply
# be "target". Only when the target is referenced from another project,
# the fully-qualified target UID is usually required.
basis_set_if_empty (BASIS_USE_FULLY_QUALIFIED_UIDS OFF)

## @brief Default component used for library targets when no component is specified.
#
# The default component a library target and its auxiliary files
# are associated with if no component was specified, explicitly.
set (BASIS_LIBRARY_COMPONENT "Development")

## @brief Default component used for executables when no component is specified.
#
# The default component an executable target and its auxiliary files
# are associated with if no component was specified, explicitly.
set (BASIS_RUNTIME_COMPONENT "Runtime")

## @brief Specifies that the BASIS C++ utilities shall by default not be added
#         as dependency of an executable.
set (BASIS_UTILITIES TRUE)

## @brief Whether to export build targets by default.
set (BASIS_EXPORT TRUE)

## @brief Disable use of the revision information obtained from the revision
#         control software such as Subversion.
#
# If this option is @c TRUE, the revision information is not included in the
# @c PROJECT_RELEASE information.
option (BASIS_REVISION_INFO "Enable use of the revision information of the revision control software." ON)
mark_as_advanced (BASIS_REVISION_INFO)

## @brief Enable compilation of scripts if supported by the language.
#
# In particular, Python modules are compiled if this option is enabled and
# only the compiled modules are installed.
#
# @sa basis_add_script_target()
option (BASIS_COMPILE_SCRIPTS "Enable compilation of scripts if supported by the language." OFF)
mark_as_advanced (BASIS_COMPILE_SCRIPTS)

## @brief Enable the installation of scripted modules in site specific default directories.
#
# If this option is @c ON, scripted modules such as Python and Perl modules, in particular,
# are installed in the default installation directories for site packages of the respective
# interpreter. This means that these modules may be installed outside the installation
# root directory as specified by the @c CMAKE_INSTALL_PREFIX. When this option is set to
# @c OFF, all modules are installed in subdirectories of the @c CMAKE_INSTALL_PREFIX.
# These directories may have to be added to the search path for modules manually as they
# might not be in the default search path of the respective interpreter.
#
# The installation directories for public modules which are intended for external use
# can further be set using the -D option of CMake or be modified by editing the respective
# advanced CMake cache variables named <tt>INSTALL_&lt;LANG%gt;_SITE_DIR</tt>.
#
# @note Even though it is more convenient for the user of a package to have the modules
#       being installed in the default directories, this option is set to @c OFF by default.
#       The reasons are that it is in first place expected that the installation will copy
#       files only to directories within the @c CMAKE_INSTALL_PREFIX. Moreover, it is not
#       guaranteed that the user has write permissions for the default site packages directories.
#       Last but not least, when installing public modules located in the @c PROJECT_LIBRARY_DIR
#       source directory, BASIS does not set a default module @c PREFIX which reduces the risk
#       of overwriting existing modules of other packages. If the developer of a BASIS package
#       was not thorough enough and did not follow the guidelines, setting this option to @c ON
#       has the potential risk of overwriting other packages' modules. Therefore,
#       modules are only installed in system default locations if explicitly requested.
option (BASIS_INSTALL_SITE_PACKAGES "Enable the installation of scripted modules in site specific default directories." OFF)
mark_as_advanced (BASIS_INSTALL_SITE_PACKAGES)

## @brief Script used to execute a process in CMake script mode.
#
# In order to be able to assign a timeout to the execution of a custom command
# and to add some error message parsing, this script is used by some build
# rules to actually perform the build step. See for example, the build of
# executables using the MATLAB Compiler.
set (BASIS_SCRIPT_EXECUTE_PROCESS "${BASIS_MODULE_PATH}/ExecuteProcess.cmake")

## @brief File used by default as <tt>--authors</tt> file to <tt>svn2cl</tt>.
#
# This file lists all Subversion users at SBIA and is used by default for
# the mapping of Subversion user names to real names during the generation
# of changelogs.
set (BASIS_SVN_USERS_FILE "${BASIS_MODULE_PATH}/SubversionUsers.txt")

## @brief Force installation of public header files of BASIS C++ utilities.
#
# If this variable is set to FALSE, each header file in the @c PROJECT_INCLUDE_DIR
# is scanned for an include statement which includes one of the public header
# files of the BASIS C++ utilities. If such include statement was found in
# a public header file of the project, the public header files of the BASIS
# C++ utilities are also installed as the project's public header files depend
# on them. You can set this variable to TRUE in the Settings.cmake file of your
# project to force the installation of the public header files of the
# project-specific BASIS C++ utilities.
#
# @sa basis_install_public_headers()
basis_set_if_empty (BASIS_INSTALL_PUBLIC_HEADERS_OF_CXX_UTILITIES FALSE)

## @brief Enable/disable registration of installed package in CMake registry.
option (BASIS_REGISTER "Request registration of installed package in CMake package registry." ON)
mark_as_advanced (BASIS_REGISTER)

# ============================================================================
# programming language specific settings
# ============================================================================

## @brief List of programming languages explicitly supported by BASIS.
#
# @todo Add full support for Java.
set (BASIS_LANGUAGES CXX Python Jython Perl Matlab Bash)

string (TOLOWER "${BASIS_LANGUAGES}" BASIS_LANGUAGES_L)
string (TOUPPER "${BASIS_LANGUAGES}" BASIS_LANGUAGES_U)

# ----------------------------------------------------------------------------
# namespace delimiters
# ----------------------------------------------------------------------------

## @brief Namespace delimiter used in C++.
set (BASIS_NAMESPACE_DELIMITER_CXX .)
## @brief Namespace delimiter used in Python.
set (BASIS_NAMESPACE_DELIMITER_PYTHON .)
## @brief Namespace delimiter used in Jython.
set (BASIS_NAMESPACE_DELIMITER_JYTHON .)
## @brief Namespace delimiter used in Perl.
set (BASIS_NAMESPACE_DELIMITER_PERL ::)
## @brief Namespace delimiter used in MATLAB.
set (BASIS_NAMESPACE_DELIMITER_MATLAB .)
## @brief Namespace delimiter used in Bash.
#
# @note Bash itself has no concept of namespaces. This namespace delimiter is
#       used by the import() function of the BASIS Utilities for Bash.
#
# @sa BasisBashUtilities
set (BASIS_NAMESPACE_DELIMITER_BASH .)

# ----------------------------------------------------------------------------
# public libraries of script modules
# ----------------------------------------------------------------------------

## @brief Name of library target which builds Python modules in @c PROJECT_LIBRARY_DIR.
#
# This variable is used by basis_configure_script_libraries() which is called
# by basis_project_impl() to add a library target of the given name for the
# build of the Python modules found in the @c PROJECT_LIBRARY_DIR.
#
# @note The given target name is argument to the basis_add_library() command.
#       Overwrite default value in Settings.cmake file of project if desired.
set (PYTHON_LIBRARY_TARGET "pythonlib")

## @brief Name of library target which builds Jython modules in @c PROJECT_LIBRARY_DIR.
#
# This variable is used by basis_configure_script_libraries() which is called
# by basis_project_impl() to add a library target of the given name for the
# build of the Jython modules found in the @c PROJECT_LIBRARY_DIR.
#
# @note The given target name is argument to the basis_add_library() command.
#       Overwrite default value in Settings.cmake file of project if desired.
set (JYTHON_LIBRARY_TARGET "jythonlib")

## @brief Name of library target which builds Perl modules in @c PROJECT_LIBRARY_DIR.
#
# This variable is used by basis_configure_script_libraries() which is called
# by basis_project_impl() to add a library target of the given name for the
# build of the Perl modules found in the @c PROJECT_LIBRARY_DIR.
#
# @note The given target name is argument to the basis_add_library() command.
#       Overwrite default value in Settings.cmake file of project if desired.
set (PERL_LIBRARY_TARGET "perllib")

## @brief Name of library target which builds MATLAB modules in @c PROJECT_LIBRARY_DIR.
#
# This variable is used by basis_configure_script_libraries() which is called
# by basis_project_impl() to add a library target of the given name for the
# build of the MATLAB modules found in the @c PROJECT_LIBRARY_DIR.
#
# @note The given target name is argument to the basis_add_library() command.
#       Overwrite default value in Settings.cmake file of project if desired.
set (MATLAB_LIBRARY_TARGET "matlablib")

## @brief Name of library target which builds Bash modules in @c PROJECT_LIBRARY_DIR.
#
# This variable is used by basis_configure_script_libraries() which is called
# by basis_project_impl() to add a library target of the given name for the
# build of the Bash modules found in the @c PROJECT_LIBRARY_DIR.
#
# @note The given target name is argument to the basis_add_library() command.
#       Overwrite default value in Settings.cmake file of project if desired.
set (BASH_LIBRARY_TARGET "bashlib")

# ============================================================================
# documentation
# ============================================================================

## @brief Advanced option to request build of documentation targets as part of ALL target.
option (BASIS_ALL_DOC  "Request build of documentation targets as part of ALL target."  OFF)
mark_as_advanced (BASIS_ALL_DOC)

## @brief Default Doxygen configuration.
set (BASIS_DOXYGEN_DOXYFILE "${CMAKE_CURRENT_LIST_DIR}/Doxyfile.in")

## @brief Default Sphinx configuration.
set (BASIS_SPHINX_CONFIG "${CMAKE_CURRENT_LIST_DIR}/sphinx_conf.py.in")

## @brief Default Sphinx theme.
set (BASIS_SPHINX_HTML_THEME "sbia")

## @brief Default Sphinx theme options.
set (BASIS_SPHINX_HTML_THEME_OPTIONS
  PROJECT_LOGO   None
  SHOW_SBIA_LOGO true
  SHOW_PENN_LOGO true
  SHOW_RELBAR2   false
  ROOT_RELLINKS  "[('home', 'index')]"
)

# ============================================================================
# common options
# ============================================================================

## @brief Request verbose messages from BASIS functions.
option (BASIS_VERBOSE "Request BASIS functions to output verbose messages." OFF)
mark_as_advanced (BASIS_VERBOSE)

## @brief Request debugging messages from BASIS functions.
option (BASIS_DEBUG "Request BASIS functions to help debugging." OFF)
mark_as_advanced (BASIS_DEBUG)

# ============================================================================
# build configuration
# ============================================================================

if (NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CXX_FLAGS AND NOT CMAKE_C_FLAGS)
  set (
    CMAKE_BUILD_TYPE "Release"
    CACHE STRING "Choose the type of build, options are: None (CMAKE_C_FLAGS and CMAKE_CXX_FLAGS used) Debug Release RelWithDebInfo MinSizeRel."
    FORCE
  )
endif ()

# the following Mac OS specific variables are yet not further used
# hide them from the normal user, as they are usually not required (yet)
if (DEFINED CMAKE_OSX_ARCHITECTURES)
  mark_as_advanced (CMAKE_OSX_ARCHITECTURES)
endif ()
if (DEFINED CMAKE_OSX_DEPLOYMENT_TARGET)
  mark_as_advanced (CMAKE_OSX_DEPLOYMENT_TARGET)
endif ()
if (DEFINED CMAKE_OSX_SYSROOT)
  mark_as_advanced (CMAKE_OSX_SYSROOT)
endif ()

# use RPATH
set (CMAKE_SKIP_RPATH                  FALSE) # use RPATH for installed project own binaries
set (CMAKE_SKIP_BUILD_RPATH            FALSE) # use RPATH for project own binaries
set (CMAKE_INSTALL_RPATH_USE_LINK_PATH FALSE) # do not add directories outside project to RPATH
set (CMAKE_BUILD_WITH_INSTALL_RPATH    FALSE) # use different RPATH for build tree executables


## @}
# end of Doxygen group
