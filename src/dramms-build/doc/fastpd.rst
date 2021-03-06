.. raw:: html

   <!--

   ============================================================================

      DO NOT EDIT THIS FILE! It was generated using Sphinx from:

      Origin:   $URL$
      Revision: $Rev$

   ============================================================================

   -->

.. title:: Build of FastPD Software for use with DRAMMS

.. meta::
   :description: How to patch and build FastPD for use with DRAMMS software, a step-by-step guide.
   :keywords: DRAMMS FastPD Installation, DRAMMS FastPD Install, DRAMMS FastPD Configuration, DRAMMS FastPD Setup.
 

===============
Build of FastPD
===============

The original `FastPD`_ implementation from Drs. Nikos Komodakis and Nikos Paragios has to be patched before it can be used
by DRAMMS. Therefore, on Unix execute the following commands in order to build the modified version of FastPD.

.. raw:: html

    <br />


**Step 1. Download FastPD_DemoVersion.zip**:

Register `here <http://www.csd.uoc.gr/~komod/FastPD/>`_ to receive an email with the download link.

.. raw:: html

    <br />


**Step 2. Unzip source files and apply patch**::

    unzip FastPD_DemoVersion.zip -d dramms-fastpd
    patch -d dramms-fastpd -p1 < dramms-$version-source/build/FastPD.patch

.. raw:: html

    <br />


**Step 3. Build FastPD**::

    cd dramms-fastpd
    cmake -DCMAKE_BUILD_TYPE:STRING=Release .
    make

.. raw:: html

    <br />


When building DRAMMS, set the ``DRAMMSFastPD_DIR`` CMake variable to the ``dramms-fastpd`` build
directory, which, after the build of the patched FastPD, contains the file ``DRAMMSFastPDConfig.cmake``.
Once DRAMMS is built and installed, the ``dramms-fastpd`` directory and its contents can be removed.


.. _FastPD: http://www.csd.uoc.gr/~komod/FastPD/
