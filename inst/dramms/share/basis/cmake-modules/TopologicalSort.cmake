##############################################################################
# @file  TopologicalSort.cmake
# @brief CMake implementation of topological sorting algorithm.
#
# Perform a reverse topological sort on the given LIST.
#
#   topological_sort(my_list "MY_" "_EDGES")
#
# LIST is the name of a variable containing a list of elements to be
# sorted in reverse topological order. Each element in the list has a
# set of outgoing edges (for example, those other list elements that
# it depends on). In the resulting reverse topological ordering
# (written back into the variable named LIST), an element will come
# later in the list than any of the elements that can be reached by
# following its outgoing edges and the outgoing edges of any vertices
# they target, recursively. Thus, if the edges represent dependencies
# on build targets, for example, the reverse topological ordering is
# the order in which one would build those targets.
#
# For each element E in this list, the edges for E are contained in
# the variable named ${PREFIX}${E}${SUFFIX}. If no such variable
# exists, then it is assumed that there are no edges. For example, if
# my_list contains a, b, and c, one could provide a dependency graph
# using the following variables:
#
#     MY_A_EDGES     b
#     MY_B_EDGES
#     MY_C_EDGES     a b
#
#  With the involcation of topological_sort shown above and these
#  variables, the resulting reverse topological ordering will be b, a, c.
#
# @verbatim
##############################################################################
# Modified from Boost Utilities
#
# Copyright 2010 Kitware, Inc.
##############################################################################
# Copyright 2007 Douglas Gregor <doug.gregor@gmail.com>
# Copyright 2007 Troy Straszheim
#
# Distributed under the Boost Software License, Version 1.0.
##############################################################################
# Boost Software License - Version 1.0 - August 17th, 2003
#
# Permission is hereby granted, free of charge, to any person or organization
# obtaining a copy of the software and accompanying documentation covered by
# this license (the "Software") to use, reproduce, display, distribute,
# execute, and transmit the Software, and to prepare derivative works of the
# Software, and to permit third-parties to whom the Software is furnished to
# do so, all subject to the following:
#
# The copyright notices in the Software and this entire statement, including
# the above license grant, this restriction and the following disclaimer,
# must be included in all copies of the Software, in whole or in part, and
# all derivative works of the Software, unless such copies or derivative
# works are solely in the form of machine-executable object code generated by
# a source language processor.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
# SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
# FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.
##############################################################################
# @endverbatim
#
# @ingroup CMakeUtilities
##############################################################################

function(topological_sort LIST PREFIX SUFFIX)
  # Clear the stack and output variable
  set(VERTICES "${${LIST}}")
  set(STACK)
  set(${LIST})

  # Loop over all of the vertices, starting the topological sort from
  # each one.
  foreach(VERTEX ${VERTICES})

    # If we haven't already processed this vertex, start a depth-first
    # search from where.
    if (NOT FOUND_${VERTEX})
      # Push this vertex onto the stack with all of its outgoing edges
      string(REPLACE ";" " " NEW_ELEMENT
        "${VERTEX};${${PREFIX}${VERTEX}${SUFFIX}}")
      list(APPEND STACK ${NEW_ELEMENT})

      # We've now seen this vertex
      set(FOUND_${VERTEX} TRUE)

      # While the depth-first search stack is not empty
      list(LENGTH STACK STACK_LENGTH)
      while(STACK_LENGTH GREATER 0)
        # Remove the vertex and its remaining out-edges from the top
        # of the stack
        list(GET STACK -1 OUT_EDGES)
        list(REMOVE_AT STACK -1)

        # Get the source vertex and the list of out-edges
        separate_arguments(OUT_EDGES)
        list(GET OUT_EDGES 0 SOURCE)
        list(REMOVE_AT OUT_EDGES 0)

        # While there are still out-edges remaining
        list(LENGTH OUT_EDGES OUT_DEGREE)
        while (OUT_DEGREE GREATER 0)
          # Pull off the first outgoing edge
          list(GET OUT_EDGES 0 TARGET)
          list(REMOVE_AT OUT_EDGES 0)

          if (NOT FOUND_${TARGET})
            # We have not seen the target before, so we will traverse
            # its outgoing edges before coming back to our
            # source. This is the key to the depth-first traversal.

            # We've now seen this vertex
            set(FOUND_${TARGET} TRUE)

            # Push the remaining edges for the current vertex onto the
            # stack
            string(REPLACE ";" " " NEW_ELEMENT
              "${SOURCE};${OUT_EDGES}")
            list(APPEND STACK ${NEW_ELEMENT})

            # Setup the new source and outgoing edges
            set(SOURCE ${TARGET})
            set(OUT_EDGES
              ${${PREFIX}${SOURCE}${SUFFIX}})
          endif(NOT FOUND_${TARGET})

          list(LENGTH OUT_EDGES OUT_DEGREE)
        endwhile (OUT_DEGREE GREATER 0)

        # We have finished all of the outgoing edges for
        # SOURCE; add it to the resulting list.
        list(APPEND ${LIST} ${SOURCE})

        # Check the length of the stack
        list(LENGTH STACK STACK_LENGTH)
      endwhile(STACK_LENGTH GREATER 0)
    endif (NOT FOUND_${VERTEX})
  endforeach(VERTEX)

  set(${LIST} ${${LIST}} PARENT_SCOPE)
endfunction(topological_sort)
