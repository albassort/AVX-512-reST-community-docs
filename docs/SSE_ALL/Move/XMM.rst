SSE_ALL-Move-XMM
================

_mm_move_ss
-----------
:Tech: SSE_ALL
:Category: Move
:Header: xmmintrin.h
:Searchable: SSE_ALL-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_move_ss(__m128 a, __m128 b);

.. admonition:: Intel Description

    Move the lower single-precision (32-bit) floating-point element from "b" to the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := b[31:0]
        dst[127:32] := a[127:32]
        	

_mm_movehl_ps
-------------
:Tech: SSE_ALL
:Category: Move
:Header: xmmintrin.h
:Searchable: SSE_ALL-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_movehl_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Move the upper 2 single-precision (32-bit) floating-point elements from "b" to the lower 2 elements of "dst", and copy the upper 2 elements from "a" to the upper 2 elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := b[95:64]
        dst[63:32] := b[127:96]
        dst[95:64] := a[95:64]
        dst[127:96] := a[127:96]
        	

_mm_movelh_ps
-------------
:Tech: SSE_ALL
:Category: Move
:Header: xmmintrin.h
:Searchable: SSE_ALL-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_movelh_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Move the lower 2 single-precision (32-bit) floating-point elements from "b" to the upper 2 elements of "dst", and copy the lower 2 elements from "a" to the lower 2 elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0]
        dst[63:32] := a[63:32]
        dst[95:64] := b[31:0]
        dst[127:96] := b[63:32]
        	

_mm_movpi64_epi64
-----------------
:Tech: SSE_ALL
:Category: Move
:Header: emmintrin.h
:Searchable: SSE_ALL-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m64 a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128i _mm_movpi64_epi64(__m64 a);

.. admonition:: Intel Description

    Copy the 64-bit integer "a" to the lower element of "dst", and zero the upper element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        dst[127:64] := 0
        	

_mm_move_epi64
--------------
:Tech: SSE_ALL
:Category: Move
:Header: emmintrin.h
:Searchable: SSE_ALL-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128i _mm_move_epi64(__m128i a);

.. admonition:: Intel Description

    Copy the lower 64-bit integer in "a" to the lower element of "dst", and zero the upper element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        dst[127:64] := 0
        	

_mm_move_sd
-----------
:Tech: SSE_ALL
:Category: Move
:Header: emmintrin.h
:Searchable: SSE_ALL-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_move_sd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Move the lower double-precision (64-bit) floating-point element from "b" to the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := b[63:0]
        dst[127:64] := a[127:64]
        	

_mm_movedup_pd
--------------
:Tech: SSE_ALL
:Category: Move
:Header: pmmintrin.h
:Searchable: SSE_ALL-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_movedup_pd(__m128d a);

.. admonition:: Intel Description

    Duplicate the low double-precision (64-bit) floating-point element from "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        dst[127:64] := a[63:0]
        	

_mm_movehdup_ps
---------------
:Tech: SSE_ALL
:Category: Move
:Header: pmmintrin.h
:Searchable: SSE_ALL-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_movehdup_ps(__m128 a);

.. admonition:: Intel Description

    Duplicate odd-indexed single-precision (32-bit) floating-point elements from "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[63:32] 
        dst[63:32] := a[63:32]
        dst[95:64] := a[127:96] 
        dst[127:96] := a[127:96]
        	

_mm_moveldup_ps
---------------
:Tech: SSE_ALL
:Category: Move
:Header: pmmintrin.h
:Searchable: SSE_ALL-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_moveldup_ps(__m128 a);

.. admonition:: Intel Description

    Duplicate even-indexed single-precision (32-bit) floating-point elements from "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0] 
        dst[63:32] := a[31:0]
        dst[95:64] := a[95:64] 
        dst[127:96] := a[95:64]
        	

