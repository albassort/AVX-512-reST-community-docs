AVX 512 Community Docs
======================

- ⭐ `See the repository here<https://github.com/albassort/AVX-512-reST-community-docs>`_

What is this
------------
AVX-512 Documentation is scattered and, prior to now, not in a Text-focused, easily searchable way. This repository is aimed at filling this space, by giving an efficient, easily usable, documentation source. The primarily dilemma is as follows:

- Headers:

  - Not all in one place, the Intrinsics definitions are fractured across many files.
  - Unlike source code headers, their purpose is not to provide documentation, thus no documentation or comments are usually contained within. They presume you have a separate documentation source.

- Intel's site:

  - Non-accessible. Its an HTML only site.
  - Not easily searchable.

- This site:

  - Documentation is centralized, and searchable in a single file or with a central index. A mnemonics `searchable` format is even provided, to replace Intel's filters. `Tech`-`Category`-`Width`
  - Documentation is provided by Intel, and patched by community notes. In the future, perhaps we could combine Intel and AMD's docs.
  - Easier reading, much more straightforward, on both the HTML site and in the single rst file.

Data
----
The primary data, outside of Community Note sections, come from Intel. However, documents here have the capacity to patch and add `Community Notes` should this be needed.

Patching
~~~~~~~~
There is a patching system. Here is the JSON format 

.. code-block:: json

    ".*fixup.*": {
      "matchName": "Fix up Notes",
      "note": "The phrase 'Fix Up' in this context means to apply your desired method of error detection, correction, and, flagging. For example, make a number NAN if it fulfils a certain criteria",
      "references": [
        {
          "text": "A stackoverflow explanation of Fix Up",
          "url": "https://stackoverflow.com/questions/30213615/what-is-meant-by-fixing-up-floats"
        }
      ]
    }

1. The key is regex, and it matches the function name
2. matchName is the name of the match, it is mandatory, it appears in brackets so you know which patch is applying the given note
3. Note is not mandatory, it appears as a community note
4. See also is intended for extra doccumentation. Specific implementations, etc. These are links


Distribution
------------
The Data here comes in two flavors. 

1. The "avx-512.rst" file, which is a giant, 8 MB file, meant primarily for distribution by copying it directly, and reading it as you program. This is my personal preferred method. This can be found `here <https://raw.githubusercontent.com/albassort/AVX-512-reST-community-docs/refs/heads/main/avx-512.rst>`_.
2. Sphinx rendered .rst files, hosted in this git. `You can access it here <https://albassort.github.io/AVX-512-reST-community-docs/>`_. This file is appended the index.rst.

Community Additions 
-------------------
The following are notes, written by the community, to help those who are reading.

Unspecified "DST"
~~~~~~~~~~~~~~~~~
Sometimes Intrinsics will reference "a DST", but, unlike most "dst" you find in C and Assembly, they mean the return type. Take the following example


.. code-block:: C

    __m128i _mm_sm4rnds4_epi32(__m128i __A, __m128i __B);

.. admonition:: Intel Description

  This Intrinsic performs four rounds of SM4 encryption. The Intrinsic operates on independent 128-bit lanes. The calculated results are stored in dst

We can assume the 'dst' in the above description is actually the "__m128i" that it returns.

-Fix- preface
~~~~~~~~~~~~~
Instructions use about 830 separate mnemonics, and not all can be covered. Statistically, these are the most common, as well as, the least straightforward. 

Knowing this can make reading and parsing AVX-512 code easier.

Prefixes
~~~~~~~~

_m_
^^^
MMX, operates on 64 bit registers

_mm_
^^^^
XMM, operates on 128 bit registers

_mm256_
^^^^^^^
YMM, operates on 256 bit registers

_mm512_
^^^^^^^
ZMM, operates on 512 bit registers

Midfixes
~~~~~~~

Masks
^^^^^
Masks, as the name implies, is a mask which alters the outcome of a given Intrinsic operation. Generally, masks will enable the ignoring of the lane at the position in which it is true. This usually causes the data on the respective lane to be copied directly into the output, and not operated upon.

Consider the following example:

_mm512_mask_sin_pd
""""""""""""""""""
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_mask_sin_pd(__m512d src, __mmask8 k,
                               __m512d a)

.. admonition:: Intel Description

    Compute the sine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

Where the mask is a whitelist, where it is off `a` is copied to the output, and the sin is not calculated. Where it is on, the sin is calculated and a is ignored.

Maskz
^^^^^
See above, except, if needed, the input is not copied to the output, and is kept at 0.

StoreU
^^^^^^
The writing counterpart to `Loadu`. Retrieves the results from an Intrinsic, and writes into continuous address space. E.g, write the result to a pre-allocated buffer or array. Generally faster than scatter.

Scatter
^^^^^^^
The writing counterpart to `Gather` Scatter, in the same vein of the above, except the result is not stored in continuous address space. It is "scattered" across the pointers provided. Generally slower than Storeu.

Reduce
^^^^^^

Applies the given operation left -> right

Gather
^^^^^^

The reading counterpart to `Scatter`. These Intrinsic take in values from many pointers. Generally slower than loadu

Loadu
^^^^^
The reading counterpart to `Loadu`. These Intrinsic take in values from continuous address space, like arrays. Generally faster than Gather


Insert
^^^^^^

Inserts a given value into the given Intrinsic, replacing the value at the given position

Extract
^^^^^^^

Removes an integer into the given Intrinsic, writing the given value at the given position to a given address.

Suffixes
~~~~~~~~

epi
^^^
"Extended Packed Integer". Integer operations.

epixxx
^^^^^^
xxx indicates the size of the "EType" (the input type). `epi32` would indicate that the Intrinsic operates upon 32 bit integers, in whatever lane size it uses.

ps, ph, pd
^^^^^^^^^^

These are float types.


PH = Precision Half (16 bit)

PS = Precision Single (32 bit)

PD = Precision Double (64 bit)

Consider the following example:

.. code-block:: C

    __m128h _mm_roundscale_ph(__m128h a, int imm8);

.. admonition:: Intel Description

    Round packed half-precision (16-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst". [round_imm_note]




ss, sh, sd
^^^^^^^^^^
These are float types used in scalar Intrinsics

SH = Precision Half (16 bit)

SS = Precision Single (32 bit)

SD = Precision Double (64 bit)

Consider the following example:

.. code-block:: C

    __m128h _mm_roundscale_sh(__m128h a, __m128h b, int imm8);

.. admonition:: Intel Description

    Round the lower half-precision (16-bit) floating-point element in "b" to the number of fraction bits specified by "imm8", store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst". [round_imm_note]


Scalars
-------

Scalars are Intrinsic which operate on only operate on one side of the lane. For example, the above Intrinsic `_mm_roundscale_sh`, only operates on `b`, conversely, `a` is simply read into the `dst`. That is to say, this is a `storeu` and `_mm_roundscale_ph` in one. 

Modules 
-------
Below contains all AVX-512 documentation available from Intel. 

Naming Scheme
~~~~~~~~~~~~~

TECH - CATEGORY - WIDTH

As an example:
AVX-512-Store-XMM

So, of the AVX-512 extension, in the store category, YMM wide Intrinsic.

Instructions 
~~~~~~~~~~~~
If you're reading this in the README, the documentation cuts off. However, on the GITHUB page, there are two following sections with searchable categories.


