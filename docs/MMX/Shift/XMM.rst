MMX-Shift-XMM
=============

_mm_sll_pi16
------------
:Tech: MMX
:Category: Shift
:Header: mmintrin.h
:Searchable: MMX-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 count
:Param ETypes:
    UI16 a, 
    UI16 count

.. code-block:: C

    __m64 _mm_sll_pi16(__m64 a, __m64 count);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" left by "count" while shifting in zeros, and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	IF count[63:0] > 15
        		dst[i+15:i] := 0
        	ELSE
        		dst[i+15:i] := ZeroExtend16(a[i+15:i] << count[63:0])
        	FI
        ENDFOR
        	

_mm_slli_pi16
-------------
:Tech: MMX
:Category: Shift
:Header: mmintrin.h
:Searchable: MMX-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    int imm8
:Param ETypes:
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m64 _mm_slli_pi16(__m64 a, int imm8);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" left by "imm8" while shifting in zeros, and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	IF imm8[7:0] > 15
        		dst[i+15:i] := 0
        	ELSE
        		dst[i+15:i] := ZeroExtend16(a[i+15:i] << imm8[7:0])
        	FI
        ENDFOR
        	

_mm_sll_pi32
------------
:Tech: MMX
:Category: Shift
:Header: mmintrin.h
:Searchable: MMX-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 count
:Param ETypes:
    UI32 a, 
    UI32 count

.. code-block:: C

    __m64 _mm_sll_pi32(__m64 a, __m64 count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" left by "count" while shifting in zeros, and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	IF count[63:0] > 31
        		dst[i+31:i] := 0
        	ELSE
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] << count[63:0])
        	FI
        ENDFOR
        	

_mm_slli_pi32
-------------
:Tech: MMX
:Category: Shift
:Header: mmintrin.h
:Searchable: MMX-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    int imm8
:Param ETypes:
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m64 _mm_slli_pi32(__m64 a, int imm8);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" left by "imm8" while shifting in zeros, and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	IF imm8[7:0] > 31
        		dst[i+31:i] := 0
        	ELSE
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] << imm8[7:0])
        	FI
        ENDFOR
        	

_mm_sll_si64
------------
:Tech: MMX
:Category: Shift
:Header: mmintrin.h
:Searchable: MMX-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 count
:Param ETypes:
    UI64 a, 
    UI64 count

.. code-block:: C

    __m64 _mm_sll_si64(__m64 a, __m64 count);

.. admonition:: Intel Description

    Shift 64-bit integer "a" left by "count" while shifting in zeros, and store the result in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF count[63:0] > 63
        	dst[63:0] := 0
        ELSE
        	dst[63:0] := ZeroExtend64(a[63:0] << count[63:0])
        FI
        	

_mm_slli_si64
-------------
:Tech: MMX
:Category: Shift
:Header: mmintrin.h
:Searchable: MMX-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    int imm8
:Param ETypes:
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m64 _mm_slli_si64(__m64 a, int imm8);

.. admonition:: Intel Description

    Shift 64-bit integer "a" left by "imm8" while shifting in zeros, and store the result in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF imm8[7:0] > 63
        	dst[63:0] := 0
        ELSE
        	dst[63:0] := ZeroExtend64(a[63:0] << imm8[7:0])
        FI
        	

_mm_sra_pi16
------------
:Tech: MMX
:Category: Shift
:Header: mmintrin.h
:Searchable: MMX-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 count
:Param ETypes:
    UI16 a, 
    UI16 count

.. code-block:: C

    __m64 _mm_sra_pi16(__m64 a, __m64 count);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "count" while shifting in sign bits, and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	IF count[63:0] > 15
        		dst[i+15:i] := (a[i+15] ? 0xFFFF : 0x0)
        	ELSE
        		dst[i+15:i] := SignExtend16(a[i+15:i] >> count[63:0])
        	FI
        ENDFOR
        	

_mm_srai_pi16
-------------
:Tech: MMX
:Category: Shift
:Header: mmintrin.h
:Searchable: MMX-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    int imm8
:Param ETypes:
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m64 _mm_srai_pi16(__m64 a, int imm8);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "imm8" while shifting in sign bits, and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	IF imm8[7:0] > 15
        		dst[i+15:i] := (a[i+15] ? 0xFFFF : 0x0)
        	ELSE
        		dst[i+15:i] := SignExtend16(a[i+15:i] >> imm8[7:0])
        	FI
        ENDFOR
        	

_mm_sra_pi32
------------
:Tech: MMX
:Category: Shift
:Header: mmintrin.h
:Searchable: MMX-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 count
:Param ETypes:
    UI32 a, 
    UI32 count

.. code-block:: C

    __m64 _mm_sra_pi32(__m64 a, __m64 count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "count" while shifting in sign bits, and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	IF count[63:0] > 31
        		dst[i+31:i] := (a[i+31] ? 0xFFFFFFFF : 0x0)
        	ELSE
        		dst[i+31:i] := SignExtend32(a[i+31:i] >> count[63:0])
        	FI
        ENDFOR
        	

_mm_srai_pi32
-------------
:Tech: MMX
:Category: Shift
:Header: mmintrin.h
:Searchable: MMX-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    int imm8
:Param ETypes:
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m64 _mm_srai_pi32(__m64 a, int imm8);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "imm8" while shifting in sign bits, and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	IF imm8[7:0] > 31
        		dst[i+31:i] := (a[i+31] ? 0xFFFFFFFF : 0x0)
        	ELSE
        		dst[i+31:i] := SignExtend32(a[i+31:i] >> imm8[7:0])
        	FI
        ENDFOR
        	

_mm_srl_pi16
------------
:Tech: MMX
:Category: Shift
:Header: mmintrin.h
:Searchable: MMX-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 count
:Param ETypes:
    UI16 a, 
    UI16 count

.. code-block:: C

    __m64 _mm_srl_pi16(__m64 a, __m64 count);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "count" while shifting in zeros, and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	IF count[63:0] > 15
        		dst[i+15:i] := 0
        	ELSE
        		dst[i+15:i] := ZeroExtend16(a[i+15:i] >> count[63:0])
        	FI
        ENDFOR
        	

_mm_srli_pi16
-------------
:Tech: MMX
:Category: Shift
:Header: mmintrin.h
:Searchable: MMX-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    int imm8
:Param ETypes:
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m64 _mm_srli_pi16(__m64 a, int imm8);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "imm8" while shifting in zeros, and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	IF imm8[7:0] > 15
        		dst[i+15:i] := 0
        	ELSE
        		dst[i+15:i] := ZeroExtend16(a[i+15:i] >> imm8[7:0])
        	FI
        ENDFOR
        	

_mm_srl_pi32
------------
:Tech: MMX
:Category: Shift
:Header: mmintrin.h
:Searchable: MMX-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 count
:Param ETypes:
    UI32 a, 
    UI32 count

.. code-block:: C

    __m64 _mm_srl_pi32(__m64 a, __m64 count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "count" while shifting in zeros, and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	IF count[63:0] > 31
        		dst[i+31:i] := 0
        	ELSE
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] >> count[63:0])
        	FI
        ENDFOR
        	

_mm_srli_pi32
-------------
:Tech: MMX
:Category: Shift
:Header: mmintrin.h
:Searchable: MMX-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    int imm8
:Param ETypes:
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m64 _mm_srli_pi32(__m64 a, int imm8);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "imm8" while shifting in zeros, and store the results in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	IF imm8[7:0] > 31
        		dst[i+31:i] := 0
        	ELSE
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] >> imm8[7:0])
        	FI
        ENDFOR
        	

_mm_srl_si64
------------
:Tech: MMX
:Category: Shift
:Header: mmintrin.h
:Searchable: MMX-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 count
:Param ETypes:
    UI64 a, 
    UI64 count

.. code-block:: C

    __m64 _mm_srl_si64(__m64 a, __m64 count);

.. admonition:: Intel Description

    Shift 64-bit integer "a" right by "count" while shifting in zeros, and store the result in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF count[63:0] > 63
        	dst[63:0] := 0
        ELSE
        	dst[63:0] := ZeroExtend64(a[63:0] >> count[63:0])
        FI
        	

_mm_srli_si64
-------------
:Tech: MMX
:Category: Shift
:Header: mmintrin.h
:Searchable: MMX-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    int imm8
:Param ETypes:
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m64 _mm_srli_si64(__m64 a, int imm8);

.. admonition:: Intel Description

    Shift 64-bit integer "a" right by "imm8" while shifting in zeros, and store the result in "dst".

.. deprecated:: X87

    MMX technology intrinsics can cause issues on modern processors and should generally be avoided. Use SSE2, AVX, or later instruction sets instead, especially when targeting modern processors.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF imm8[7:0] > 63
        	dst[63:0] := 0
        ELSE
        	dst[63:0] := ZeroExtend64(a[63:0] >> imm8[7:0])
        FI
        	

