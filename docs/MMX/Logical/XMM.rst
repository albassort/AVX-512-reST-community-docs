MMX-Logical-XMM
===============

_mm_and_si64
------------
:Tech: MMX
:Category: Logical
:Header: mmintrin.h
:Searchable: MMX-Logical-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m64 _mm_and_si64(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compute the bitwise AND of 64 bits (representing integer data) in "a" and "b", and store the result in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := (a[63:0] AND b[63:0])
        	

_mm_andnot_si64
---------------
:Tech: MMX
:Category: Logical
:Header: mmintrin.h
:Searchable: MMX-Logical-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m64 _mm_andnot_si64(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compute the bitwise NOT of 64 bits (representing integer data) in "a" and then AND with "b", and store the result in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := ((NOT a[63:0]) AND b[63:0])
        	

_mm_or_si64
-----------
:Tech: MMX
:Category: Logical
:Header: mmintrin.h
:Searchable: MMX-Logical-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m64 _mm_or_si64(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compute the bitwise OR of 64 bits (representing integer data) in "a" and "b", and store the result in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := (a[63:0] OR b[63:0])
        	

_mm_xor_si64
------------
:Tech: MMX
:Category: Logical
:Header: mmintrin.h
:Searchable: MMX-Logical-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m64 _mm_xor_si64(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compute the bitwise XOR of 64 bits (representing integer data) in "a" and "b", and store the result in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := (a[63:0] XOR b[63:0])
        	

