/**
 * @file  config.h
 * @brief System related macro definitions.
 *
 * Copyright (c) 2011, 2012 University of Pennsylvania. All rights reserved.<br />
 * See http://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
 *
 * Contact: SBIA Group <sbia-software at uphs.upenn.edu>
 */

#pragma once
#ifndef _BASIS_CONFIG_H
#define _BASIS_CONFIG_H


/// @addtogroup BasisCxxUtilities
/// @{


/// @def   LINUX
/// @brief Whether the sources are compiled on a Linux system.
#ifndef LINUX
#  define LINUX (defined (linux) || defined (__linux))
#endif

/// @def   WINDOWS
/// @brief Whether the sources are compiled on a Windows system.
#ifndef WINDOWS
#  define WINDOWS (defined (_WIN32) || defined (WIN32) || defined (_WINDOWS))
#endif

/// @def   MACOS
/// @brief Whether the sources are compiled on a Mac OS system.
#ifndef MACOS
#  define MACOS (defined (__APPLE__) || defined (__OSX__))
#endif

/// @def   UNIX
/// @brief Whether the sources are compiled on a Unix-based system.
#ifndef UNIX
#  define UNIX (!WINDOWS)
#endif

/// @def   HAVE_LONG_LONG
/// @brief Whether the long long type is supported by the compiler.
#ifndef HAVE_LONG_LONG
#  define HAVE_LONG_LONG 1
#endif

/// @def HAVE_SSTREAM
/// @brief Whether the ANSI string stream classes are available.
#ifndef HAVE_SSTREAM
#  define HAVE_SSTREAM 1
#endif

/**
 * @def   HAVE_STRSTREAM
 * @brief Whether the obsolete string stream classes are available.
 *
 * @note As the strstream implementations are obsolete already for a long
 *       time, this macro always evaluates to 0.
 */
#ifdef HAVE_STRSTREAM
#  undef HAVE_STRSTREAM
#endif
#define HAVE_STRSTREAM 0

/// @def HAVE_PTHREAD
/// @brief Whether the pthread library is available.
#ifndef HAVE_PTHREAD
#  define HAVE_PTHREAD 1
#endif

/**
 * @def HAVE_TR1_TUPLE
 * @brief Whether the tr1/tuple header file is available.
 *
 * @note This header file is only more recently supported by compilers
 *       and be used by Google Test, for example. If not supported by
 *       the compiler, Google Test can use it's own implementation.
 */
#ifndef HAVE_TR1_TUPLE
#  define HAVE_TR1_TUPLE 0
#endif


/// @}
// end of Doxygen group

#endif // _BASIS_CONFIG_H
