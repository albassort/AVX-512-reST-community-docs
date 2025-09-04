AVX 512 Community Docs
======================

What is this
------------
In my efforts to study AVX-512 I found quite the issue. The only readily available documentation is that provided by Intel, as well as, the headers provided by your favorite compiler. However, they have two mutually exclusive benefits

-  Headers

  - Not all in one place, the instructions are fractured across many files.
  - No comments, at least not in any compiler I checked. Not in GCC or Clang. Thus its hard to know what it is unless you are well versed in AVX-512 naming schemes and have a strong understanding of each instructions use case.

- Intel's site 

  - Non-accessible. Its an HTML only site.
  - Not easily searchable.

So I decided to copy the benefits of both, and make this. As, I prefer text based documentation.

Data
----
The data primarily comes from Intel's docs.

Distribution
------------
The Data here comes in two flavors. 

1. The avx-512.rst file, which is a giant, 8mb file, meant primarily for distribution by copying it directly, and reading it as you program. This is my personal preferred method
2. Sphinx rendered .rst files, hosted in this git. `You can access it here <TOOD: PUT LINK HERE>`. This file is appended the index.rst.

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

We can assume the "dst' in the above description is actually the "__m128i" that it returns.

-Fix- preface
~~~~~~~~~~~~~
Instructions use about 830 separate mnemonics, and not call can be covered. Statistically, these are the most common, as well as, the least straightforward. 

Knowing this can make reading and parsing AVX-512 code easier.

Prefixes
~~~~~~~

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
Masks is, as the name implies a mask. Where the given mask is on, the respective channel positions are not operated upon. For example, not not adding two integers.

Maskz
^^^^^
See above, except, if needed, the input is not copied to the output, and is kept at 0.

StoreU
^^^^^^
The writing counterpart to `Loadu`. Retrieves the results an instruction, and writes into continuous address space. E.g, write the result to a pre-allocated buffer or array. Generally faster than scatter.

Scatter
^^^^^^^
The writing counterpart to `Gather` Scatter, in the same vein of the above, except the result is not stored in continuous address space. It is "scattered" across the pointers provided. Generally slower than Storeu.

Reduce
^^^^^^

Applies the given operation left -> right

Gather
^^^^^^

The reading counterpart to `Scatter`. These instructions take in values from many pointers. Generally slower than loadu

Loadu
^^^^^
The reading counterpart to `Loadu`. These instructions take in values from continuous address space, like arrays. Generally faster than Gather


Insert
^^^^^^

Inserts a given value into the given instruction, replacing the value at the given position

Extract
^^^^^^^

Removes an integer into the given instruction, writing the given value at the given position to a given address.

Suffixes
~~~~~~

epi
^^^
"Extened Packed Integer". Integer operations.

epixxx
^^^^^^
xxx indicates the size of the "EType", the Input type. `epi32` would indicate that the instruction operates upon 32 bit integers, in whatever lane size it uses.

ps, ph, pd
^^^^^^^^^^
These are float types
PS = Precision Single (32 bit)
PH = Precision Half (16 bit)
PD = Precision Double (64 bit)

.. code-block:: C

    __m128h _mm_roundscale_ph(__m128h a, int imm8);

.. admonition:: Intel Description

    Round packed half-precision (16-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst". [round_imm_note]




ss, sh, sd
^^^^^^^^^^
These are float types used in scalar instructions

SS = Precision Single (32 bit)
SH = Precision Half (16 bit)
SD = Precision Double (64 bit)



Consider the following example

.. code-block:: C

    __m128h _mm_roundscale_sh(__m128h a, __m128h b, int imm8);

.. admonition:: Intel Description

    Round the lower half-precision (16-bit) floating-point element in "b" to the number of fraction bits specified by "imm8", store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst". [round_imm_note]


Scalars
-------

Scalars are functions which operate on only operate on one side of the lane. For example, the above function `_mm_roundscale_sh`, only operates on `b`, conversely, `a` is simply read into the `dst`. That is to say, this is a `storeu` And `_mm_roundscale_ph` in one. 


