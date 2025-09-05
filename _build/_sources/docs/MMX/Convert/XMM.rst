MMX-Convert-XMM
===============

_mm_cvtsi32_si64
----------------
:Tech: MMX
:Category: Convert
:Header: mmintrin.h
:Searchable: MMX-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    int a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m64 _mm_cvtsi32_si64(int a);

.. admonition:: Intel Description

    Copy 32-bit integer "a" to the lower elements of "dst", and zero the upper element of "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0]
        dst[63:32] := 0
        	

_mm_cvtsi64_si32
----------------
:Tech: MMX
:Category: Convert
:Header: mmintrin.h
:Searchable: MMX-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m64 a
:Param ETypes:
    FP32 a

.. code-block:: C

    int _mm_cvtsi64_si32(__m64 a);

.. admonition:: Intel Description

    Copy the lower 32-bit integer in "a" to "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0]
        	

_mm_cvtm64_si64
---------------
:Tech: MMX
:Category: Convert
:Header: mmintrin.h
:Searchable: MMX-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m64 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __int64 _mm_cvtm64_si64(__m64 a);

.. admonition:: Intel Description

    Copy 64-bit integer "a" to "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        	

_mm_cvtsi64_m64
---------------
:Tech: MMX
:Category: Convert
:Header: mmintrin.h
:Searchable: MMX-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __int64 a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m64 _mm_cvtsi64_m64(__int64 a);

.. admonition:: Intel Description

    Copy 64-bit integer "a" to "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        	

