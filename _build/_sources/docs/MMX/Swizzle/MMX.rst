MMX-Swizzle-MMX
===============

_m_punpckhbw
------------
:Tech: MMX
:Category: Swizzle
:Header: mmintrin.h
:Searchable: MMX-Swizzle-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m64 _m_punpckhbw(__m64 a, __m64 b);

.. admonition:: Intel Description

    Unpack and interleave 8-bit integers from the high half of "a" and "b", and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_BYTES(src1[63:0], src2[63:0]) {
        	dst[7:0] := src1[39:32]
        	dst[15:8] := src2[39:32] 
        	dst[23:16] := src1[47:40]
        	dst[31:24] := src2[47:40]
        	dst[39:32] := src1[55:48]
        	dst[47:40] := src2[55:48]
        	dst[55:48] := src1[63:56]
        	dst[63:56] := src2[63:56]
        	RETURN dst[63:0]
        }
        dst[63:0] := INTERLEAVE_HIGH_BYTES(a[63:0], b[63:0])
        	

_m_punpckhwd
------------
:Tech: MMX
:Category: Swizzle
:Header: mmintrin.h
:Searchable: MMX-Swizzle-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m64 _m_punpckhwd(__m64 a, __m64 b);

.. admonition:: Intel Description

    Unpack and interleave 16-bit integers from the high half of "a" and "b", and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_WORDS(src1[63:0], src2[63:0]) {
        	dst[15:0] := src1[47:32]
        	dst[31:16] := src2[47:32]
        	dst[47:32] := src1[63:48]
        	dst[63:48] := src2[63:48]
        	RETURN dst[63:0]
        }
        dst[63:0] := INTERLEAVE_HIGH_WORDS(a[63:0], b[63:0])
        	

_m_punpckhdq
------------
:Tech: MMX
:Category: Swizzle
:Header: mmintrin.h
:Searchable: MMX-Swizzle-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m64 _m_punpckhdq(__m64 a, __m64 b);

.. admonition:: Intel Description

    Unpack and interleave 32-bit integers from the high half of "a" and "b", and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[63:32]
        dst[63:32] := b[63:32]
        	

_m_punpcklbw
------------
:Tech: MMX
:Category: Swizzle
:Header: mmintrin.h
:Searchable: MMX-Swizzle-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m64 _m_punpcklbw(__m64 a, __m64 b);

.. admonition:: Intel Description

    Unpack and interleave 8-bit integers from the low half of "a" and "b", and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_BYTES(src1[63:0], src2[63:0]) {
        	dst[7:0] := src1[7:0] 
        	dst[15:8] := src2[7:0] 
        	dst[23:16] := src1[15:8] 
        	dst[31:24] := src2[15:8] 
        	dst[39:32] := src1[23:16] 
        	dst[47:40] := src2[23:16] 
        	dst[55:48] := src1[31:24] 
        	dst[63:56] := src2[31:24] 
        	RETURN dst[63:0]	
        }
        dst[63:0] := INTERLEAVE_BYTES(a[63:0], b[63:0])
        	

_m_punpcklwd
------------
:Tech: MMX
:Category: Swizzle
:Header: mmintrin.h
:Searchable: MMX-Swizzle-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m64 _m_punpcklwd(__m64 a, __m64 b);

.. admonition:: Intel Description

    Unpack and interleave 16-bit integers from the low half of "a" and "b", and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_WORDS(src1[63:0], src2[63:0]) {
        	dst[15:0] := src1[15:0] 
        	dst[31:16] := src2[15:0] 
        	dst[47:32] := src1[31:16] 
        	dst[63:48] := src2[31:16] 
        	RETURN dst[63:0]	
        }
        dst[63:0] := INTERLEAVE_WORDS(a[63:0], b[63:0])
        	

_m_punpckldq
------------
:Tech: MMX
:Category: Swizzle
:Header: mmintrin.h
:Searchable: MMX-Swizzle-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m64 _m_punpckldq(__m64 a, __m64 b);

.. admonition:: Intel Description

    Unpack and interleave 32-bit integers from the low half of "a" and "b", and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0]
        dst[63:32] := b[31:0]
        	

