AVX-512-Shift-ZMM
=================

_mm512_bslli_epi128
-------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    int imm8
:Param ETypes:
    M128 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_bslli_epi128(__m512i a, int imm8);

.. admonition:: Intel Description

    Shift 128-bit lanes in "a" left by "imm8" bytes while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp := imm8[7:0]
        IF tmp > 15
        	tmp := 16
        FI
        dst[127:0] := a[127:0] << (tmp*8)
        dst[255:128] := a[255:128] << (tmp*8)
        dst[383:256] := a[383:256] << (tmp*8)
        dst[511:384] := a[511:384] << (tmp*8)
        dst[MAX:512] := 0
        	

_mm512_mask_sllv_epi16
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_mask_sllv_epi16(__m512i src, __mmask32 k,
                                   __m512i a, __m512i count)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" left by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF count[i+15:i] < 16
        			dst[i+15:i] := ZeroExtend16(a[i+15:i] << count[i+15:i])
        		ELSE
        			dst[i+15:i] := 0
        		FI
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sllv_epi16
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_maskz_sllv_epi16(__mmask32 k, __m512i a,
                                    __m512i count)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" left by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF count[i+15:i] < 16
        			dst[i+15:i] := ZeroExtend16(a[i+15:i] << count[i+15:i])
        		ELSE
        			dst[i+15:i] := 0
        		FI
        	ELSE
        		dst[i+15:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sllv_epi16
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i count
:Param ETypes:
    UI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_sllv_epi16(__m512i a, __m512i count);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" left by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF count[i+15:i] < 16
        		dst[i+15:i] := ZeroExtend16(a[i+15:i] << count[i+15:i])
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sll_epi16
---------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_mask_sll_epi16(__m512i src, __mmask32 k,
                                  __m512i a, __m128i count)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" left by "count" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF count[63:0] > 15
        			dst[i+15:i] := 0
        		ELSE
        			dst[i+15:i] := ZeroExtend16(a[i+15:i] << count[63:0])
        		FI
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_slli_epi16
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_slli_epi16(__m512i src, __mmask32 k,
                                   __m512i a,
                                   unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" left by "imm8" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF imm8[7:0] > 15
        			dst[i+15:i] := 0
        		ELSE
        			dst[i+15:i] := ZeroExtend16(a[i+15:i] << imm8[7:0])
        		FI
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sll_epi16
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_maskz_sll_epi16(__mmask32 k, __m512i a,
                                   __m128i count)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" left by "count" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF count[63:0] > 15
        			dst[i+15:i] := 0
        		ELSE
        			dst[i+15:i] := ZeroExtend16(a[i+15:i] << count[63:0])
        		FI
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_slli_epi16
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    MASK k, 
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_slli_epi16(__mmask32 k, __m512i a,
                                    unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" left by "imm8" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF imm8[7:0] > 15
        			dst[i+15:i] := 0
        		ELSE
        			dst[i+15:i] := ZeroExtend16(a[i+15:i] << imm8[7:0])
        		FI
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sll_epi16
----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m128i count
:Param ETypes:
    UI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_sll_epi16(__m512i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" left by "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF count[63:0] > 15
        		dst[i+15:i] := 0
        	ELSE
        		dst[i+15:i] := ZeroExtend16(a[i+15:i] << count[63:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_slli_epi16
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_slli_epi16(__m512i a, unsigned int imm8);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" left by "imm8" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF imm8[7:0] > 15
        		dst[i+15:i] := 0
        	ELSE
        		dst[i+15:i] := ZeroExtend16(a[i+15:i] << imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_srav_epi16
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    UI16 src, 
    MASK k, 
    SI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_mask_srav_epi16(__m512i src, __mmask32 k,
                                   __m512i a, __m512i count)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in sign bits, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF count[i+15:i] < 16
        			dst[i+15:i] := SignExtend16(a[i+15:i] >> count[i+15:i])
        		ELSE
        			dst[i+15:i] := (a[i+15] ? 0xFFFF : 0)
        		FI
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_srav_epi16
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    MASK k, 
    SI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_maskz_srav_epi16(__mmask32 k, __m512i a,
                                    __m512i count)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in sign bits, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF count[i+15:i] < 16
        			dst[i+15:i] := SignExtend16(a[i+15:i] >> count[i+15:i])
        		ELSE
        			dst[i+15:i] := (a[i+15] ? 0xFFFF : 0)
        		FI
        	ELSE
        		dst[i+15:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_srav_epi16
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i count
:Param ETypes:
    SI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_srav_epi16(__m512i a, __m512i count);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in sign bits, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF count[i+15:i] < 16
        		dst[i+15:i] := SignExtend16(a[i+15:i] >> count[i+15:i])
        	ELSE
        		dst[i+15:i] := (a[i+15] ? 0xFFFF : 0)
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sra_epi16
---------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_mask_sra_epi16(__m512i src, __mmask32 k,
                                  __m512i a, __m128i count)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "count" while shifting in sign bits, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF count[63:0] > 15
        			dst[i+15:i] := (a[i+15] ? 0xFFFF : 0x0)
        		ELSE
        			dst[i+15:i] := SignExtend16(a[i+15:i] >> count[63:0])
        		FI
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_srai_epi16
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    UI16 src, 
    MASK k, 
    SI16 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_srai_epi16(__m512i src, __mmask32 k,
                                   __m512i a,
                                   unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "imm8" while shifting in sign bits, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF imm8[7:0] > 15
        			dst[i+15:i] := (a[i+15] ? 0xFFFF : 0x0)
        		ELSE
        			dst[i+15:i] := SignExtend16(a[i+15:i] >> imm8[7:0])
        		FI
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sra_epi16
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_maskz_sra_epi16(__mmask32 k, __m512i a,
                                   __m128i count)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "count" while shifting in sign bits, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF count[63:0] > 15
        			dst[i+15:i] := (a[i+15] ? 0xFFFF : 0x0)
        		ELSE
        			dst[i+15:i] := SignExtend16(a[i+15:i] >> count[63:0])
        		FI
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_srai_epi16
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    MASK k, 
    SI16 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_srai_epi16(__mmask32 k, __m512i a,
                                    unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "imm8" while shifting in sign bits, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF imm8[7:0] > 15
        			dst[i+15:i] := (a[i+15] ? 0xFFFF : 0x0)
        		ELSE
        			dst[i+15:i] := SignExtend16(a[i+15:i] >> imm8[7:0])
        		FI
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sra_epi16
----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m128i count
:Param ETypes:
    UI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_sra_epi16(__m512i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "count" while shifting in sign bits, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF count[63:0] > 15
        		dst[i+15:i] := (a[i+15] ? 0xFFFF : 0x0)
        	ELSE
        		dst[i+15:i] := SignExtend16(a[i+15:i] >> count[63:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_srai_epi16
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    SI16 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_srai_epi16(__m512i a, unsigned int imm8);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "imm8" while shifting in sign bits, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF imm8[7:0] > 15
        		dst[i+15:i] := (a[i+15] ? 0xFFFF : 0x0)
        	ELSE
        		dst[i+15:i] := SignExtend16(a[i+15:i] >> imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_bsrli_epi128
-------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    int imm8
:Param ETypes:
    M128 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_bsrli_epi128(__m512i a, int imm8);

.. admonition:: Intel Description

    Shift 128-bit lanes in "a" right by "imm8" bytes while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp := imm8[7:0]
        IF tmp > 15
        	tmp := 16
        FI
        dst[127:0] := a[127:0] >> (tmp*8)
        dst[255:128] := a[255:128] >> (tmp*8)
        dst[383:256] := a[383:256] >> (tmp*8)
        dst[511:384] := a[511:384] >> (tmp*8)
        dst[MAX:512] := 0
        	

_mm512_mask_srlv_epi16
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_mask_srlv_epi16(__m512i src, __mmask32 k,
                                   __m512i a, __m512i count)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF count[i+15:i] < 16
        			dst[i+15:i] := ZeroExtend16(a[i+15:i] >> count[i+15:i])
        		ELSE
        			dst[i+15:i] := 0
        		FI
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_srlv_epi16
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_maskz_srlv_epi16(__mmask32 k, __m512i a,
                                    __m512i count)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF count[i+15:i] < 16
        			dst[i+15:i] := ZeroExtend16(a[i+15:i] >> count[i+15:i])
        		ELSE
        			dst[i+15:i] := 0
        		FI
        	ELSE
        		dst[i+15:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_srlv_epi16
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i count
:Param ETypes:
    UI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_srlv_epi16(__m512i a, __m512i count);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF count[i+15:i] < 16
        		dst[i+15:i] := ZeroExtend16(a[i+15:i] >> count[i+15:i])
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_srl_epi16
---------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_mask_srl_epi16(__m512i src, __mmask32 k,
                                  __m512i a, __m128i count)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "count" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF count[63:0] > 15
        			dst[i+15:i] := 0
        		ELSE
        			dst[i+15:i] := ZeroExtend16(a[i+15:i] >> count[63:0])
        		FI
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_srli_epi16
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_srli_epi16(__m512i src, __mmask32 k,
                                   __m512i a,
                                   unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "imm8" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF imm8[7:0] > 15
        			dst[i+15:i] := 0
        		ELSE
        			dst[i+15:i] := ZeroExtend16(a[i+15:i] >> imm8[7:0])
        		FI
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_srl_epi16
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_maskz_srl_epi16(__mmask32 k, __m512i a,
                                   __m128i count)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "count" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF count[63:0] > 15
        			dst[i+15:i] := 0
        		ELSE
        			dst[i+15:i] := ZeroExtend16(a[i+15:i] >> count[63:0])
        		FI
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_srli_epi16
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    MASK k, 
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_srli_epi16(__mmask32 k, __m512i a,
                                    int imm8)

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "imm8" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		IF imm8[7:0] > 15
        			dst[i+15:i] := 0
        		ELSE
        			dst[i+15:i] := ZeroExtend16(a[i+15:i] >> imm8[7:0])
        		FI
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_srl_epi16
----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m128i count
:Param ETypes:
    UI16 a, 
    UI16 count

.. code-block:: C

    __m512i _mm512_srl_epi16(__m512i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF count[63:0] > 15
        		dst[i+15:i] := 0
        	ELSE
        		dst[i+15:i] := ZeroExtend16(a[i+15:i] >> count[63:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_srli_epi16
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_srli_epi16(__m512i a, unsigned int imm8);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "imm8" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF imm8[7:0] > 15
        		dst[i+15:i] := 0
        	ELSE
        		dst[i+15:i] := ZeroExtend16(a[i+15:i] >> imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_rol_epi32
---------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    const int imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_rol_epi32(__m512i src, __mmask16 k,
                                  __m512i a, const int imm8)

.. admonition:: Intel Description

    Rotate the bits in each packed 32-bit integer in "a" to the left by the number of bits specified in "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE LEFT_ROTATE_DWORDS(src, count_src) {
        	count := count_src % 32
        	RETURN (src << count) OR (src >> (32 - count))
        }
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := LEFT_ROTATE_DWORDS(a[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_rol_epi32
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    const int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_rol_epi32(__mmask16 k, __m512i a,
                                   const int imm8)

.. admonition:: Intel Description

    Rotate the bits in each packed 32-bit integer in "a" to the left by the number of bits specified in "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE LEFT_ROTATE_DWORDS(src, count_src) {
        	count := count_src % 32
        	RETURN (src << count) OR (src >> (32 - count))
        }
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := LEFT_ROTATE_DWORDS(a[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_rol_epi32
----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    const int imm8
:Param ETypes:
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_rol_epi32(__m512i a, const int imm8);

.. admonition:: Intel Description

    Rotate the bits in each packed 32-bit integer in "a" to the left by the number of bits specified in "imm8", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE LEFT_ROTATE_DWORDS(src, count_src) {
        	count := count_src % 32
        	RETURN (src << count) OR (src >> (32 - count))
        }
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := LEFT_ROTATE_DWORDS(a[i+31:i], imm8[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_rol_epi64
---------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    const int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_rol_epi64(__m512i src, __mmask8 k,
                                  __m512i a, const int imm8)

.. admonition:: Intel Description

    Rotate the bits in each packed 64-bit integer in "a" to the left by the number of bits specified in "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE LEFT_ROTATE_QWORDS(src, count_src) {
        	count := count_src % 64
        	RETURN (src << count) OR (src >> (64 - count))
        }
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := LEFT_ROTATE_QWORDS(a[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_rol_epi64
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    const int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_rol_epi64(__mmask8 k, __m512i a,
                                   const int imm8)

.. admonition:: Intel Description

    Rotate the bits in each packed 64-bit integer in "a" to the left by the number of bits specified in "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE LEFT_ROTATE_QWORDS(src, count_src) {
        	count := count_src % 64
        	RETURN (src << count) OR (src >> (64 - count))
        }
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := LEFT_ROTATE_QWORDS(a[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_rol_epi64
----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    const int imm8
:Param ETypes:
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_rol_epi64(__m512i a, const int imm8);

.. admonition:: Intel Description

    Rotate the bits in each packed 64-bit integer in "a" to the left by the number of bits specified in "imm8", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE LEFT_ROTATE_QWORDS(src, count_src) {
        	count := count_src % 64
        	RETURN (src << count) OR (src >> (64 - count))
        }
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := LEFT_ROTATE_QWORDS(a[i+63:i], imm8[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_rolv_epi32
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_mask_rolv_epi32(__m512i src, __mmask16 k,
                                   __m512i a, __m512i b)

.. admonition:: Intel Description

    Rotate the bits in each packed 32-bit integer in "a" to the left by the number of bits specified in the corresponding element of "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE LEFT_ROTATE_DWORDS(src, count_src) {
        	count := count_src % 32
        	RETURN (src << count) OR (src >> (32 - count))
        }
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := LEFT_ROTATE_DWORDS(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_rolv_epi32
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_maskz_rolv_epi32(__mmask16 k, __m512i a,
                                    __m512i b)

.. admonition:: Intel Description

    Rotate the bits in each packed 32-bit integer in "a" to the left by the number of bits specified in the corresponding element of "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE LEFT_ROTATE_DWORDS(src, count_src) {
        	count := count_src % 32
        	RETURN (src << count) OR (src >> (32 - count))
        }
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := LEFT_ROTATE_DWORDS(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_rolv_epi32
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_rolv_epi32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Rotate the bits in each packed 32-bit integer in "a" to the left by the number of bits specified in the corresponding element of "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE LEFT_ROTATE_DWORDS(src, count_src) {
        	count := count_src % 32
        	RETURN (src << count) OR (src >> (32 - count))
        }
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := LEFT_ROTATE_DWORDS(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_rolv_epi64
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_mask_rolv_epi64(__m512i src, __mmask8 k,
                                   __m512i a, __m512i b)

.. admonition:: Intel Description

    Rotate the bits in each packed 64-bit integer in "a" to the left by the number of bits specified in the corresponding element of "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE LEFT_ROTATE_QWORDS(src, count_src) {
        	count := count_src % 64
        	RETURN (src << count) OR (src >> (64 - count))
        }
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := LEFT_ROTATE_QWORDS(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_rolv_epi64
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_maskz_rolv_epi64(__mmask8 k, __m512i a,
                                    __m512i b)

.. admonition:: Intel Description

    Rotate the bits in each packed 64-bit integer in "a" to the left by the number of bits specified in the corresponding element of "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE LEFT_ROTATE_QWORDS(src, count_src) {
        	count := count_src % 64
        	RETURN (src << count) OR (src >> (64 - count))
        }
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := LEFT_ROTATE_QWORDS(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_rolv_epi64
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_rolv_epi64(__m512i a, __m512i b);

.. admonition:: Intel Description

    Rotate the bits in each packed 64-bit integer in "a" to the left by the number of bits specified in the corresponding element of "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE LEFT_ROTATE_QWORDS(src, count_src) {
        	count := count_src % 64
        	RETURN (src << count) OR (src >> (64 - count))
        }
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := LEFT_ROTATE_QWORDS(a[i+63:i], b[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_ror_epi32
---------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_ror_epi32(__m512i src, __mmask16 k,
                                  __m512i a, int imm8)

.. admonition:: Intel Description

    Rotate the bits in each packed 32-bit integer in "a" to the right by the number of bits specified in "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RIGHT_ROTATE_DWORDS(src, count_src) {
        	count := count_src % 32
        	RETURN (src >>count) OR (src << (32 - count))
        }
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RIGHT_ROTATE_DWORDS(a[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_ror_epi32
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_ror_epi32(__mmask16 k, __m512i a,
                                   int imm8)

.. admonition:: Intel Description

    Rotate the bits in each packed 32-bit integer in "a" to the right by the number of bits specified in "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RIGHT_ROTATE_DWORDS(src, count_src) {
        	count := count_src % 32
        	RETURN (src >>count) OR (src << (32 - count))
        }
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RIGHT_ROTATE_DWORDS(a[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_ror_epi32
----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    int imm8
:Param ETypes:
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_ror_epi32(__m512i a, int imm8);

.. admonition:: Intel Description

    Rotate the bits in each packed 32-bit integer in "a" to the right by the number of bits specified in "imm8", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RIGHT_ROTATE_DWORDS(src, count_src) {
        	count := count_src % 32
        	RETURN (src >>count) OR (src << (32 - count))
        }
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := RIGHT_ROTATE_DWORDS(a[i+31:i], imm8[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_ror_epi64
---------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_ror_epi64(__m512i src, __mmask8 k,
                                  __m512i a, int imm8)

.. admonition:: Intel Description

    Rotate the bits in each packed 64-bit integer in "a" to the right by the number of bits specified in "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RIGHT_ROTATE_QWORDS(src, count_src) {
        	count := count_src % 64
        	RETURN (src >> count) OR (src << (64 - count))
        }
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RIGHT_ROTATE_QWORDS(a[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_ror_epi64
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_ror_epi64(__mmask8 k, __m512i a,
                                   int imm8)

.. admonition:: Intel Description

    Rotate the bits in each packed 64-bit integer in "a" to the right by the number of bits specified in "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RIGHT_ROTATE_QWORDS(src, count_src) {
        	count := count_src % 64
        	RETURN (src >> count) OR (src << (64 - count))
        }
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RIGHT_ROTATE_QWORDS(a[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_ror_epi64
----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    int imm8
:Param ETypes:
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_ror_epi64(__m512i a, int imm8);

.. admonition:: Intel Description

    Rotate the bits in each packed 64-bit integer in "a" to the right by the number of bits specified in "imm8", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RIGHT_ROTATE_QWORDS(src, count_src) {
        	count := count_src % 64
        	RETURN (src >> count) OR (src << (64 - count))
        }
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := RIGHT_ROTATE_QWORDS(a[i+63:i], imm8[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_rorv_epi32
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_mask_rorv_epi32(__m512i src, __mmask16 k,
                                   __m512i a, __m512i b)

.. admonition:: Intel Description

    Rotate the bits in each packed 32-bit integer in "a" to the right by the number of bits specified in the corresponding element of "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RIGHT_ROTATE_DWORDS(src, count_src) {
        	count := count_src % 32
        	RETURN (src >>count) OR (src << (32 - count))
        }
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RIGHT_ROTATE_DWORDS(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_rorv_epi32
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_rorv_epi32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Rotate the bits in each packed 32-bit integer in "a" to the right by the number of bits specified in the corresponding element of "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RIGHT_ROTATE_DWORDS(src, count_src) {
        	count := count_src % 32
        	RETURN (src >>count) OR (src << (32 - count))
        }
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := RIGHT_ROTATE_DWORDS(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_rorv_epi64
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_mask_rorv_epi64(__m512i src, __mmask8 k,
                                   __m512i a, __m512i b)

.. admonition:: Intel Description

    Rotate the bits in each packed 64-bit integer in "a" to the right by the number of bits specified in the corresponding element of "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RIGHT_ROTATE_QWORDS(src, count_src) {
        	count := count_src % 64
        	RETURN (src >> count) OR (src << (64 - count))
        }
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RIGHT_ROTATE_QWORDS(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_rorv_epi64
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_maskz_rorv_epi64(__mmask8 k, __m512i a,
                                    __m512i b)

.. admonition:: Intel Description

    Rotate the bits in each packed 64-bit integer in "a" to the right by the number of bits specified in the corresponding element of "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RIGHT_ROTATE_QWORDS(src, count_src) {
        	count := count_src % 64
        	RETURN (src >> count) OR (src << (64 - count))
        }
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RIGHT_ROTATE_QWORDS(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_rorv_epi64
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_rorv_epi64(__m512i a, __m512i b);

.. admonition:: Intel Description

    Rotate the bits in each packed 64-bit integer in "a" to the right by the number of bits specified in the corresponding element of "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RIGHT_ROTATE_QWORDS(src, count_src) {
        	count := count_src % 64
        	RETURN (src >> count) OR (src << (64 - count))
        }
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := RIGHT_ROTATE_QWORDS(a[i+63:i], b[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sll_epi32
---------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_mask_sll_epi32(__m512i src, __mmask16 k,
                                  __m512i a, __m128i count)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" left by "count" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF count[63:0] > 31
        			dst[i+31:i] := 0
        		ELSE
        			dst[i+31:i] := ZeroExtend32(a[i+31:i] << count[63:0])
        		FI
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sll_epi32
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_maskz_sll_epi32(__mmask16 k, __m512i a,
                                   __m128i count)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" left by "count" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF count[63:0] > 31
        			dst[i+31:i] := 0
        		ELSE
        			dst[i+31:i] := ZeroExtend32(a[i+31:i] << count[63:0])
        		FI
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_slli_epi32
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_slli_epi32(__mmask16 k, __m512i a,
                                    unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" left by "imm8" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF imm8[7:0] > 31
        			dst[i+31:i] := 0
        		ELSE
        			dst[i+31:i] := ZeroExtend32(a[i+31:i] << imm8[7:0])
        		FI
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sll_epi32
----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m128i count
:Param ETypes:
    UI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_sll_epi32(__m512i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" left by "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF count[63:0] > 31
        		dst[i+31:i] := 0
        	ELSE
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] << count[63:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sll_epi64
---------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_mask_sll_epi64(__m512i src, __mmask8 k,
                                  __m512i a, __m128i count)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" left by "count" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF count[63:0] > 63
        			dst[i+63:i] := 0
        		ELSE
        			dst[i+63:i] := ZeroExtend64(a[i+63:i] << count[63:0])
        		FI
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_slli_epi64
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_slli_epi64(__m512i src, __mmask8 k,
                                   __m512i a,
                                   unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" left by "imm8" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF imm8[7:0] > 63
        			dst[i+63:i] := 0
        		ELSE
        			dst[i+63:i] := ZeroExtend64(a[i+63:i] << imm8[7:0])
        		FI
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sll_epi64
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_maskz_sll_epi64(__mmask8 k, __m512i a,
                                   __m128i count)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" left by "count" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF count[63:0] > 63
        			dst[i+63:i] := 0
        		ELSE
        			dst[i+63:i] := ZeroExtend64(a[i+63:i] << count[63:0])
        		FI
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_slli_epi64
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_slli_epi64(__mmask8 k, __m512i a,
                                    unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" left by "imm8" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF imm8[7:0] > 63
        			dst[i+63:i] := 0
        		ELSE
        			dst[i+63:i] := ZeroExtend64(a[i+63:i] << imm8[7:0])
        		FI
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sll_epi64
----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m128i count
:Param ETypes:
    UI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_sll_epi64(__m512i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" left by "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF count[63:0] > 63
        		dst[i+63:i] := 0
        	ELSE
        		dst[i+63:i] := ZeroExtend64(a[i+63:i] << count[63:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_slli_epi64
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_slli_epi64(__m512i a, unsigned int imm8);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" left by "imm8" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF imm8[7:0] > 63
        		dst[i+63:i] := 0
        	ELSE
        		dst[i+63:i] := ZeroExtend64(a[i+63:i] << imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sllv_epi32
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_maskz_sllv_epi32(__mmask16 k, __m512i a,
                                    __m512i count)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" left by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF count[i+31:i] < 32
        			dst[i+31:i] := ZeroExtend32(a[i+31:i] << count[i+31:i])
        		ELSE
        			dst[i+31:i] := 0
        		FI
        	ELSE
        		dst[i+31:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sllv_epi64
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_mask_sllv_epi64(__m512i src, __mmask8 k,
                                   __m512i a, __m512i count)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" left by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF count[i+63:i] < 64
        			dst[i+63:i] := ZeroExtend64(a[i+63:i] << count[i+63:i])
        		ELSE
        			dst[i+63:i] := 0
        		FI
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sllv_epi64
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_maskz_sllv_epi64(__mmask8 k, __m512i a,
                                    __m512i count)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" left by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF count[i+63:i] < 64
        			dst[i+63:i] := ZeroExtend64(a[i+63:i] << count[i+63:i])
        		ELSE
        			dst[i+63:i] := 0
        		FI
        	ELSE
        		dst[i+63:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sllv_epi64
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i count
:Param ETypes:
    UI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_sllv_epi64(__m512i a, __m512i count);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" left by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF count[i+63:i] < 64
        		dst[i+63:i] := ZeroExtend64(a[i+63:i] << count[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sra_epi32
---------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_mask_sra_epi32(__m512i src, __mmask16 k,
                                  __m512i a, __m128i count)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "count" while shifting in sign bits, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF count[63:0] > 31
        			dst[i+31:i] := (a[i+31] ? 0xFFFFFFFF : 0x0)
        		ELSE
        			dst[i+31:i] := SignExtend32(a[i+31:i] >> count[63:0])
        		FI
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sra_epi32
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_maskz_sra_epi32(__mmask16 k, __m512i a,
                                   __m128i count)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "count" while shifting in sign bits, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF count[63:0] > 31
        			dst[i+31:i] := (a[i+31] ? 0xFFFFFFFF : 0x0)
        		ELSE
        			dst[i+31:i] := SignExtend32(a[i+31:i] >> count[63:0])
        		FI
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_srai_epi32
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    MASK k, 
    SI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_srai_epi32(__mmask16 k, __m512i a,
                                    unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "imm8" while shifting in sign bits, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF imm8[7:0] > 31
        			dst[i+31:i] := (a[i+31] ? 0xFFFFFFFF : 0x0)
        		ELSE
        			dst[i+31:i] := SignExtend32(a[i+31:i] >> imm8[7:0])
        		FI
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sra_epi32
----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m128i count
:Param ETypes:
    UI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_sra_epi32(__m512i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "count" while shifting in sign bits, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF count[63:0] > 31
        		dst[i+31:i] := (a[i+31] ? 0xFFFFFFFF : 0x0)
        	ELSE
        		dst[i+31:i] := SignExtend32(a[i+31:i] >> count[63:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sra_epi64
---------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_mask_sra_epi64(__m512i src, __mmask8 k,
                                  __m512i a, __m128i count)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by "count" while shifting in sign bits, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF count[63:0] > 63
        			dst[i+63:i] := (a[i+63] ? 0xFFFFFFFFFFFFFFFF : 0x0)
        		ELSE
        			dst[i+63:i] := SignExtend64(a[i+63:i] >> count[63:0])
        		FI
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_srai_epi64
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    SI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_srai_epi64(__m512i src, __mmask8 k,
                                   __m512i a,
                                   unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by "imm8" while shifting in sign bits, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF imm8[7:0] > 63
        			dst[i+63:i] := (a[i+63] ? 0xFFFFFFFFFFFFFFFF : 0x0)
        		ELSE
        			dst[i+63:i] := SignExtend64(a[i+63:i] >> imm8[7:0])
        		FI
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sra_epi64
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_maskz_sra_epi64(__mmask8 k, __m512i a,
                                   __m128i count)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by "count" while shifting in sign bits, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF count[63:0] > 63
        			dst[i+63:i] := (a[i+63] ? 0xFFFFFFFFFFFFFFFF : 0x0)
        		ELSE
        			dst[i+63:i] := SignExtend64(a[i+63:i] >> count[63:0])
        		FI
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_srai_epi64
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    MASK k, 
    SI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_srai_epi64(__mmask8 k, __m512i a,
                                    unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by "imm8" while shifting in sign bits, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF imm8[7:0] > 63
        			dst[i+63:i] := (a[i+63] ? 0xFFFFFFFFFFFFFFFF : 0x0)
        		ELSE
        			dst[i+63:i] := SignExtend64(a[i+63:i] >> imm8[7:0])
        		FI
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sra_epi64
----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m128i count
:Param ETypes:
    UI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_sra_epi64(__m512i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by "count" while shifting in sign bits, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF count[63:0] > 63
        		dst[i+63:i] := (a[i+63] ? 0xFFFFFFFFFFFFFFFF : 0x0)
        	ELSE
        		dst[i+63:i] := SignExtend64(a[i+63:i] >> count[63:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_srai_epi64
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    SI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_srai_epi64(__m512i a, unsigned int imm8);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by "imm8" while shifting in sign bits, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF imm8[7:0] > 63
        		dst[i+63:i] := (a[i+63] ? 0xFFFFFFFFFFFFFFFF : 0x0)
        	ELSE
        		dst[i+63:i] := SignExtend64(a[i+63:i] >> imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_srav_epi32
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    MASK k, 
    SI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_maskz_srav_epi32(__mmask16 k, __m512i a,
                                    __m512i count)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in sign bits, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF count[i+31:i] < 32
        			dst[i+31:i] := SignExtend32(a[i+31:i] >> count[i+31:i])
        		ELSE
        			dst[i+31:i] := (a[i+31] ? 0xFFFFFFFF : 0)
        		FI
        	ELSE
        		dst[i+31:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_srav_epi64
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    UI64 src, 
    MASK k, 
    SI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_mask_srav_epi64(__m512i src, __mmask8 k,
                                   __m512i a, __m512i count)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in sign bits, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF count[i+63:i] < 64
        			dst[i+63:i] := SignExtend64(a[i+63:i] >> count[i+63:i])
        		ELSE
        			dst[i+63:i] := (a[i+63] ? 0xFFFFFFFFFFFFFFFF : 0)
        		FI
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_srav_epi64
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    MASK k, 
    SI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_maskz_srav_epi64(__mmask8 k, __m512i a,
                                    __m512i count)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in sign bits, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF count[i+63:i] < 64
        			dst[i+63:i] := SignExtend64(a[i+63:i] >> count[i+63:i])
        		ELSE
        			dst[i+63:i] := (a[i+63] ? 0xFFFFFFFFFFFFFFFF : 0)
        		FI
        	ELSE
        		dst[i+63:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_srav_epi64
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i count
:Param ETypes:
    SI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_srav_epi64(__m512i a, __m512i count);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in sign bits, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF count[i+63:i] < 64
        		dst[i+63:i] := SignExtend64(a[i+63:i] >> count[i+63:i])
        	ELSE
        		dst[i+63:i] := (a[i+63] ? 0xFFFFFFFFFFFFFFFF : 0)
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_srl_epi32
---------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_mask_srl_epi32(__m512i src, __mmask16 k,
                                  __m512i a, __m128i count)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "count" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF count[63:0] > 31
        			dst[i+31:i] := 0
        		ELSE
        			dst[i+31:i] := ZeroExtend32(a[i+31:i] >> count[63:0])
        		FI
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_srl_epi32
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_maskz_srl_epi32(__mmask16 k, __m512i a,
                                   __m128i count)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "count" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF count[63:0] > 31
        			dst[i+31:i] := 0
        		ELSE
        			dst[i+31:i] := ZeroExtend32(a[i+31:i] >> count[63:0])
        		FI
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_srli_epi32
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_srli_epi32(__mmask16 k, __m512i a,
                                    unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "imm8" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF imm8[7:0] > 31
        			dst[i+31:i] := 0
        		ELSE
        			dst[i+31:i] := ZeroExtend32(a[i+31:i] >> imm8[7:0])
        		FI
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_srl_epi32
----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m128i count
:Param ETypes:
    UI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_srl_epi32(__m512i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF count[63:0] > 31
        		dst[i+31:i] := 0
        	ELSE
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] >> count[63:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_srl_epi64
---------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_mask_srl_epi64(__m512i src, __mmask8 k,
                                  __m512i a, __m128i count)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by "count" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF count[63:0] > 63
        			dst[i+63:i] := 0
        		ELSE
        			dst[i+63:i] := ZeroExtend64(a[i+63:i] >> count[63:0])
        		FI
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_srli_epi64
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_srli_epi64(__m512i src, __mmask8 k,
                                   __m512i a,
                                   unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by "imm8" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF imm8[7:0] > 63
        			dst[i+63:i] := 0
        		ELSE
        			dst[i+63:i] := ZeroExtend64(a[i+63:i] >> imm8[7:0])
        		FI
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_srl_epi64
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m128i count
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_maskz_srl_epi64(__mmask8 k, __m512i a,
                                   __m128i count)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by "count" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF count[63:0] > 63
        			dst[i+63:i] := 0
        		ELSE
        			dst[i+63:i] := ZeroExtend64(a[i+63:i] >> count[63:0])
        		FI
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_srli_epi64
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_srli_epi64(__mmask8 k, __m512i a,
                                    unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by "imm8" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF imm8[7:0] > 63
        			dst[i+63:i] := 0
        		ELSE
        			dst[i+63:i] := ZeroExtend64(a[i+63:i] >> imm8[7:0])
        		FI
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_srl_epi64
----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m128i count
:Param ETypes:
    UI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_srl_epi64(__m512i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF count[63:0] > 63
        		dst[i+63:i] := 0
        	ELSE
        		dst[i+63:i] := ZeroExtend64(a[i+63:i] >> count[63:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_srli_epi64
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_srli_epi64(__m512i a, unsigned int imm8);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by "imm8" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF imm8[7:0] > 63
        		dst[i+63:i] := 0
        	ELSE
        		dst[i+63:i] := ZeroExtend64(a[i+63:i] >> imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_srlv_epi32
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_maskz_srlv_epi32(__mmask16 k, __m512i a,
                                    __m512i count)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF count[i+31:i] < 32
        			dst[i+31:i] := ZeroExtend32(a[i+31:i] >> count[i+31:i])
        		ELSE
        			dst[i+31:i] := 0
        		FI
        	ELSE
        		dst[i+31:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_srlv_epi64
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_mask_srlv_epi64(__m512i src, __mmask8 k,
                                   __m512i a, __m512i count)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF count[i+63:i] < 64
        			dst[i+63:i] := ZeroExtend64(a[i+63:i] >> count[i+63:i])
        		ELSE
        			dst[i+63:i] := 0
        		FI
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_srlv_epi64
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_maskz_srlv_epi64(__mmask8 k, __m512i a,
                                    __m512i count)

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF count[i+63:i] < 64
        			dst[i+63:i] := ZeroExtend64(a[i+63:i] >> count[i+63:i])
        		ELSE
        			dst[i+63:i] := 0
        		FI
        	ELSE
        		dst[i+63:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_srlv_epi64
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i count
:Param ETypes:
    UI64 a, 
    UI64 count

.. code-block:: C

    __m512i _mm512_srlv_epi64(__m512i a, __m512i count);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF count[i+63:i] < 64
        		dst[i+63:i] := ZeroExtend64(a[i+63:i] >> count[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_slli_epi32
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_slli_epi32(__m512i src, __mmask16 k,
                                   __m512i a,
                                   unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" left by "imm8" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF imm8[7:0] > 31
        			dst[i+31:i] := 0
        		ELSE
        			dst[i+31:i] := ZeroExtend32(a[i+31:i] << imm8[7:0])
        		FI
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_slli_epi32
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_slli_epi32(__m512i a, unsigned int imm8);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" left by "imm8" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF imm8[7:0] > 31
        		dst[i+31:i] := 0
        	ELSE
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] << imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sllv_epi32
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_mask_sllv_epi32(__m512i src, __mmask16 k,
                                   __m512i a, __m512i count)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" left by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF count[i+31:i] < 32
        			dst[i+31:i] := ZeroExtend32(a[i+31:i] << count[i+31:i])
        		ELSE
        			dst[i+31:i] := 0
        		FI
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sllv_epi32
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i count
:Param ETypes:
    UI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_sllv_epi32(__m512i a, __m512i count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" left by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF count[i+31:i] < 32
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] << count[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_srai_epi32
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    SI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_srai_epi32(__m512i src, __mmask16 k,
                                   __m512i a,
                                   unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "imm8" while shifting in sign bits, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF imm8[7:0] > 31
        			dst[i+31:i] := (a[i+31] ? 0xFFFFFFFF : 0x0)
        		ELSE
        			dst[i+31:i] := SignExtend32(a[i+31:i] >> imm8[7:0])
        		FI
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_srai_epi32
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    SI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_srai_epi32(__m512i a, unsigned int imm8);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "imm8" while shifting in sign bits, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF imm8[7:0] > 31
        		dst[i+31:i] := (a[i+31] ? 0xFFFFFFFF : 0x0)
        	ELSE
        		dst[i+31:i] := SignExtend32(a[i+31:i] >> imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_srav_epi32
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    UI32 src, 
    MASK k, 
    SI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_mask_srav_epi32(__m512i src, __mmask16 k,
                                   __m512i a, __m512i count)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in sign bits, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF count[i+31:i] < 32
        			dst[i+31:i] := SignExtend32(a[i+31:i] >> count[i+31:i])
        		ELSE
        			dst[i+31:i] := (a[i+31] ? 0xFFFFFFFF : 0)
        		FI
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_srav_epi32
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i count
:Param ETypes:
    SI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_srav_epi32(__m512i a, __m512i count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in sign bits, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF count[i+31:i] < 32
        		dst[i+31:i] := SignExtend32(a[i+31:i] >> count[i+31:i])
        	ELSE
        		dst[i+31:i] := (a[i+31] ? 0xFFFFFFFF : 0)
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_srli_epi32
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_srli_epi32(__m512i src, __mmask16 k,
                                   __m512i a,
                                   unsigned int imm8)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "imm8" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF imm8[7:0] > 31
        			dst[i+31:i] := 0
        		ELSE
        			dst[i+31:i] := ZeroExtend32(a[i+31:i] >> imm8[7:0])
        		FI
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_srli_epi32
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    unsigned int imm8
:Param ETypes:
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_srli_epi32(__m512i a, unsigned int imm8);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "imm8" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF imm8[7:0] > 31
        		dst[i+31:i] := 0
        	ELSE
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] >> imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_srlv_epi32
----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i count
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_mask_srlv_epi32(__m512i src, __mmask16 k,
                                   __m512i a, __m512i count)

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF count[i+31:i] < 32
        			dst[i+31:i] := ZeroExtend32(a[i+31:i] >> count[i+31:i])
        		ELSE
        			dst[i+31:i] := 0
        		FI
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_srlv_epi32
-----------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i count
:Param ETypes:
    UI32 a, 
    UI32 count

.. code-block:: C

    __m512i _mm512_srlv_epi32(__m512i a, __m512i count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF count[i+31:i] < 32
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] >> count[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shrdv_epi64
------------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b, 
    __m512i c
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b, 
    UI64 c

.. code-block:: C

    __m512i _mm512_maskz_shrdv_epi64(__mmask8 k, __m512i a,
                                     __m512i b, __m512i c)

.. admonition:: Intel Description

    Concatenate packed 64-bit integers in "b" and "a" producing an intermediate 128-bit result. Shift the result right by the amount specified in the corresponding element of "c", and store the lower 64-bits in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ((b[i+63:i] << 64)[127:0] | a[i+63:i]) >> (c[i+63:i] & 63)
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_shrdv_epi64
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __mmask8 k, 
    __m512i b, 
    __m512i c
:Param ETypes:
    UI64 a, 
    MASK k, 
    UI64 b, 
    UI64 c

.. code-block:: C

    __m512i _mm512_mask_shrdv_epi64(__m512i a, __mmask8 k,
                                    __m512i b, __m512i c)

.. admonition:: Intel Description

    Concatenate packed 64-bit integers in "b" and "a" producing an intermediate 128-bit result. Shift the result right by the amount specified in the corresponding element of "c", and store the lower 64-bits in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ((b[i+63:i] << 64)[127:0] | a[i+63:i]) >> (c[i+63:i] & 63)
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shrdv_epi64
------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    __m512i c
:Param ETypes:
    UI64 a, 
    UI64 b, 
    UI64 c

.. code-block:: C

    __m512i _mm512_shrdv_epi64(__m512i a, __m512i b, __m512i c);

.. admonition:: Intel Description

    Concatenate packed 64-bit integers in "b" and "a" producing an intermediate 128-bit result. Shift the result right by the amount specified in the corresponding element of "c", and store the lower 64-bits in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ((b[i+63:i] << 64)[127:0] | a[i+63:i]) >> (c[i+63:i] & 63)
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shrdv_epi32
------------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i b, 
    __m512i c
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b, 
    UI32 c

.. code-block:: C

    __m512i _mm512_maskz_shrdv_epi32(__mmask16 k, __m512i a,
                                     __m512i b, __m512i c)

.. admonition:: Intel Description

    Concatenate packed 32-bit integers in "b" and "a" producing an intermediate 64-bit result. Shift the result right by the amount specified in the corresponding element of "c", and store the lower 32-bits in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ((b[i+31:i] << 32)[63:0] | a[i+31:i]) >> (c[i+31:i] & 31)
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_shrdv_epi32
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __mmask16 k, 
    __m512i b, 
    __m512i c
:Param ETypes:
    UI32 a, 
    MASK k, 
    UI32 b, 
    UI32 c

.. code-block:: C

    __m512i _mm512_mask_shrdv_epi32(__m512i a, __mmask16 k,
                                    __m512i b, __m512i c)

.. admonition:: Intel Description

    Concatenate packed 32-bit integers in "b" and "a" producing an intermediate 64-bit result. Shift the result right by the amount specified in the corresponding element of "c", and store the lower 32-bits in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ((b[i+31:i] << 32)[63:0] | a[i+31:i]) >> (c[i+31:i] & 31)
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shrdv_epi32
------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    __m512i c
:Param ETypes:
    UI32 a, 
    UI32 b, 
    UI32 c

.. code-block:: C

    __m512i _mm512_shrdv_epi32(__m512i a, __m512i b, __m512i c);

.. admonition:: Intel Description

    Concatenate packed 32-bit integers in "b" and "a" producing an intermediate 64-bit result. Shift the result right by the amount specified in the corresponding element of "c", and store the lower 32-bits in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ((b[i+31:i] << 32)[63:0] | a[i+31:i]) >> (c[i+31:i] & 31)
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shrdv_epi16
------------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b, 
    __m512i c
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b, 
    UI16 c

.. code-block:: C

    __m512i _mm512_maskz_shrdv_epi16(__mmask32 k, __m512i a,
                                     __m512i b, __m512i c)

.. admonition:: Intel Description

    Concatenate packed 16-bit integers in "b" and "a" producing an intermediate 32-bit result. Shift the result right by the amount specified in the corresponding element of "c", and store the lower 16-bits in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := ((b[i+15:i] << 16)[31:0] | a[i+15:i]) >> (c[i+15:i] & 15)
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_shrdv_epi16
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __mmask32 k, 
    __m512i b, 
    __m512i c
:Param ETypes:
    UI16 a, 
    MASK k, 
    UI16 b, 
    UI16 c

.. code-block:: C

    __m512i _mm512_mask_shrdv_epi16(__m512i a, __mmask32 k,
                                    __m512i b, __m512i c)

.. admonition:: Intel Description

    Concatenate packed 16-bit integers in "b" and "a" producing an intermediate 32-bit result. Shift the result right by the amount specified in the corresponding element of "c", and store the lower 16-bits in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := ((b[i+15:i] << 16)[31:0] | a[i+15:i]) >> (c[i+15:i] & 15)
        	ELSE
        		dst[i+15:i] := a[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shrdv_epi16
------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    __m512i c
:Param ETypes:
    UI16 a, 
    UI16 b, 
    UI16 c

.. code-block:: C

    __m512i _mm512_shrdv_epi16(__m512i a, __m512i b, __m512i c);

.. admonition:: Intel Description

    Concatenate packed 16-bit integers in "b" and "a" producing an intermediate 32-bit result. Shift the result right by the amount specified in the corresponding element of "c", and store the lower 16-bits in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := ((b[i+15:i] << 16)[31:0] | a[i+15:i]) >> (c[i+15:i] & 15)
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shrdi_epi64
------------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_shrdi_epi64(__mmask8 k, __m512i a,
                                     __m512i b, int imm8)

.. admonition:: Intel Description

    Concatenate packed 64-bit integers in "b" and "a" producing an intermediate 128-bit result. Shift the result right by "imm8" bits, and store the lower 64-bits in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ((b[i+63:i] << 64)[127:0] | a[i+63:i]) >> imm8[5:0]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_shrdi_epi64
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_shrdi_epi64(__m512i src, __mmask8 k,
                                    __m512i a, __m512i b,
                                    int imm8)

.. admonition:: Intel Description

    Concatenate packed 64-bit integers in "b" and "a" producing an intermediate 128-bit result. Shift the result right by "imm8" bits, and store the lower 64-bits in "dst" using writemask "k" (elements are copied from "src"" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ((b[i+63:i] << 64)[127:0] | a[i+63:i]) >> imm8[5:0]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shrdi_epi64
------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_shrdi_epi64(__m512i a, __m512i b, int imm8);

.. admonition:: Intel Description

    Concatenate packed 64-bit integers in "b" and "a" producing an intermediate 128-bit result. Shift the result right by "imm8" bits, and store the lower 64-bits in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ((b[i+63:i] << 64)[127:0] | a[i+63:i]) >> imm8[5:0]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shrdi_epi32
------------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_shrdi_epi32(__mmask16 k, __m512i a,
                                     __m512i b, int imm8)

.. admonition:: Intel Description

    Concatenate packed 32-bit integers in "b" and "a" producing an intermediate 64-bit result. Shift the result right by "imm8" bits, and store the lower 32-bits in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ((b[i+31:i] << 32)[63:0] | a[i+31:i]) >> imm8[4:0]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_shrdi_epi32
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_shrdi_epi32(__m512i src, __mmask16 k,
                                    __m512i a, __m512i b,
                                    int imm8)

.. admonition:: Intel Description

    Concatenate packed 32-bit integers in "b" and "a" producing an intermediate 64-bit result. Shift the result right by "imm8" bits, and store the lower 32-bits in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ((b[i+31:i] << 32)[63:0] | a[i+31:i]) >> imm8[4:0]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shrdi_epi32
------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_shrdi_epi32(__m512i a, __m512i b, int imm8);

.. admonition:: Intel Description

    Concatenate packed 32-bit integers in "b" and "a" producing an intermediate 64-bit result. Shift the result right by "imm8" bits, and store the lower 32-bits in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ((b[i+31:i] << 32)[63:0] | a[i+31:i]) >> imm8[4:0]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shrdi_epi16
------------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_shrdi_epi16(__mmask32 k, __m512i a,
                                     __m512i b, int imm8)

.. admonition:: Intel Description

    Concatenate packed 16-bit integers in "b" and "a" producing an intermediate 32-bit result. Shift the result right by "imm8" bits, and store the lower 16-bits in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := ((b[i+15:i] << 16)[31:0] | a[i+15:i]) >> imm8[3:0]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_shrdi_epi16
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_shrdi_epi16(__m512i src, __mmask32 k,
                                    __m512i a, __m512i b,
                                    int imm8)

.. admonition:: Intel Description

    Concatenate packed 16-bit integers in "b" and "a" producing an intermediate 32-bit result. Shift the result right by "imm8" bits, and store the lower 16-bits in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := ((b[i+15:i] << 16)[31:0] | a[i+15:i]) >> imm8[3:0]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shrdi_epi16
------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    UI16 a, 
    UI16 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_shrdi_epi16(__m512i a, __m512i b, int imm8);

.. admonition:: Intel Description

    Concatenate packed 16-bit integers in "b" and "a" producing an intermediate 32-bit result. Shift the result right by "imm8" bits, and store the lower 16-bits in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := ((b[i+15:i] << 16)[31:0] | a[i+15:i]) >> imm8[3:0]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shldv_epi64
------------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b, 
    __m512i c
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b, 
    UI64 c

.. code-block:: C

    __m512i _mm512_maskz_shldv_epi64(__mmask8 k, __m512i a,
                                     __m512i b, __m512i c)

.. admonition:: Intel Description

    Concatenate packed 64-bit integers in "a" and "b" producing an intermediate 128-bit result. Shift the result left by the amount specified in the corresponding element of "c", and store the upper 64-bits in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		tmp[127:0] := ((a[i+63:i] << 64)[127:0] | b[i+63:i]) << (c[i+63:i] & 63)
        		dst[i+63:i] := tmp[127:64]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_shldv_epi64
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __mmask8 k, 
    __m512i b, 
    __m512i c
:Param ETypes:
    UI64 a, 
    MASK k, 
    UI64 b, 
    UI64 c

.. code-block:: C

    __m512i _mm512_mask_shldv_epi64(__m512i a, __mmask8 k,
                                    __m512i b, __m512i c)

.. admonition:: Intel Description

    Concatenate packed 64-bit integers in "a" and "b" producing an intermediate 128-bit result. Shift the result left by the amount specified in the corresponding element of "c", and store the upper 64-bits in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		tmp[127:0] := ((a[i+63:i] << 64)[127:0] | b[i+63:i]) << (c[i+63:i] & 63)
        		dst[i+63:i] := tmp[127:64]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shldv_epi64
------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    __m512i c
:Param ETypes:
    UI64 a, 
    UI64 b, 
    UI64 c

.. code-block:: C

    __m512i _mm512_shldv_epi64(__m512i a, __m512i b, __m512i c);

.. admonition:: Intel Description

    Concatenate packed 64-bit integers in "a" and "b" producing an intermediate 128-bit result. Shift the result left by the amount specified in the corresponding element of "c", and store the upper 64-bits in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	tmp[127:0] := ((a[i+63:i] << 64)[127:0] | b[i+63:i]) << (c[i+63:i] & 63)
        	dst[i+63:i] := tmp[127:64]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shldv_epi32
------------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i b, 
    __m512i c
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b, 
    UI32 c

.. code-block:: C

    __m512i _mm512_maskz_shldv_epi32(__mmask16 k, __m512i a,
                                     __m512i b, __m512i c)

.. admonition:: Intel Description

    Concatenate packed 32-bit integers in "a" and "b" producing an intermediate 64-bit result. Shift the result left by the amount specified in the corresponding element of "c", and store the upper 32-bits in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		tmp[63:0] := ((a[i+31:i] << 32)[63:0] | b[i+31:i]) << (c[i+31:i] & 31)
        		dst[i+31:i] := tmp[63:32]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_shldv_epi32
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __mmask16 k, 
    __m512i b, 
    __m512i c
:Param ETypes:
    UI32 a, 
    MASK k, 
    UI32 b, 
    UI32 c

.. code-block:: C

    __m512i _mm512_mask_shldv_epi32(__m512i a, __mmask16 k,
                                    __m512i b, __m512i c)

.. admonition:: Intel Description

    Concatenate packed 32-bit integers in "a" and "b" producing an intermediate 64-bit result. Shift the result left by the amount specified in the corresponding element of "c", and store the upper 32-bits in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		tmp[63:0] := ((a[i+31:i] << 32)[63:0] | b[i+31:i]) << (c[i+31:i] & 31)
        		dst[i+31:i] := tmp[63:32]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shldv_epi32
------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    __m512i c
:Param ETypes:
    UI32 a, 
    UI32 b, 
    UI32 c

.. code-block:: C

    __m512i _mm512_shldv_epi32(__m512i a, __m512i b, __m512i c);

.. admonition:: Intel Description

    Concatenate packed 32-bit integers in "a" and "b" producing an intermediate 64-bit result. Shift the result left by the amount specified in the corresponding element of "c", and store the upper 32-bits in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	tmp[63:0] := ((a[i+31:i] << 32)[63:0] | b[i+31:i]) << (c[i+31:i] & 31)
        	dst[i+31:i] := tmp[63:32]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shldv_epi16
------------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b, 
    __m512i c
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b, 
    UI16 c

.. code-block:: C

    __m512i _mm512_maskz_shldv_epi16(__mmask32 k, __m512i a,
                                     __m512i b, __m512i c)

.. admonition:: Intel Description

    Concatenate packed 16-bit integers in "a" and "b" producing an intermediate 32-bit result. Shift the result left by the amount specified in the corresponding element of "c", and store the upper 16-bits in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		tmp[31:0] := ((a[i+15:i] << 16)[31:0] | b[i+15:i]) << (c[i+15:i] & 15)
        		dst[i+15:i] := tmp[31:16]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_shldv_epi16
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __mmask32 k, 
    __m512i b, 
    __m512i c
:Param ETypes:
    UI16 a, 
    MASK k, 
    UI16 b, 
    UI16 c

.. code-block:: C

    __m512i _mm512_mask_shldv_epi16(__m512i a, __mmask32 k,
                                    __m512i b, __m512i c)

.. admonition:: Intel Description

    Concatenate packed 16-bit integers in "a" and "b" producing an intermediate 32-bit result. Shift the result left by the amount specified in the corresponding element of "c", and store the upper 16-bits in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		tmp[31:0] := ((a[i+15:i] << 16)[31:0] | b[i+15:i]) << (c[i+15:i] & 15)
        		dst[i+15:i] := tmp[31:16]
        	ELSE
        		dst[i+15:i] := a[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shldv_epi16
------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    __m512i c
:Param ETypes:
    UI16 a, 
    UI16 b, 
    UI16 c

.. code-block:: C

    __m512i _mm512_shldv_epi16(__m512i a, __m512i b, __m512i c);

.. admonition:: Intel Description

    Concatenate packed 16-bit integers in "a" and "b" producing an intermediate 32-bit result. Shift the result left by the amount specified in the corresponding element of "c", and store the upper 16-bits in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	tmp[31:0] := ((a[i+15:i] << 16)[31:0] | b[i+15:i]) << (c[i+15:i] & 15)
        	dst[i+15:i] := tmp[31:16]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shldi_epi64
------------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_shldi_epi64(__mmask8 k, __m512i a,
                                     __m512i b, int imm8)

.. admonition:: Intel Description

    Concatenate packed 64-bit integers in "a" and "b" producing an intermediate 128-bit result. Shift the result left by "imm8" bits, and store the upper 64-bits in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		tmp[127:0] := ((a[i+63:i] << 64)[127:0] | b[i+63:i]) << imm8[5:0]
        		dst[i+63:i] := tmp[127:64]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_shldi_epi64
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_shldi_epi64(__m512i src, __mmask8 k,
                                    __m512i a, __m512i b,
                                    int imm8)

.. admonition:: Intel Description

    Concatenate packed 64-bit integers in "a" and "b" producing an intermediate 128-bit result. Shift the result left by "imm8" bits, and store the upper 64-bits in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		tmp[127:0] := ((a[i+63:i] << 64)[127:0] | b[i+63:i]) << imm8[5:0]
        		dst[i+63:i] := tmp[127:64]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shldi_epi64
------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_shldi_epi64(__m512i a, __m512i b, int imm8);

.. admonition:: Intel Description

    Concatenate packed 64-bit integers in "a" and "b" producing an intermediate 128-bit result. Shift the result left by "imm8" bits, and store the upper 64-bits in "dst").

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	tmp[127:0] := ((a[i+63:i] << 64)[127:0] | b[i+63:i]) << imm8[5:0]
        	dst[i+63:i] := tmp[127:64]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shldi_epi32
------------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_shldi_epi32(__mmask16 k, __m512i a,
                                     __m512i b, int imm8)

.. admonition:: Intel Description

    Concatenate packed 32-bit integers in "a" and "b" producing an intermediate 64-bit result. Shift the result left by "imm8" bits, and store the upper 32-bits in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		tmp[63:0] := ((a[i+31:i] << 32)[63:0] | b[i+31:i]) << imm8[4:0]
        		dst[i+31:i] := tmp[63:32]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_shldi_epi32
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_shldi_epi32(__m512i src, __mmask16 k,
                                    __m512i a, __m512i b,
                                    int imm8)

.. admonition:: Intel Description

    Concatenate packed 32-bit integers in "a" and "b" producing an intermediate 64-bit result. Shift the result left by "imm8" bits, and store the upper 32-bits in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		tmp[63:0] := ((a[i+31:i] << 32)[63:0] | b[i+31:i]) << imm8[4:0]
        		dst[i+31:i] := tmp[63:32]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shldi_epi32
------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_shldi_epi32(__m512i a, __m512i b, int imm8);

.. admonition:: Intel Description

    Concatenate packed 32-bit integers in "a" and "b" producing an intermediate 64-bit result. Shift the result left by "imm8" bits, and store the upper 32-bits in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	tmp[63:0] := ((a[i+31:i] << 32)[63:0] | b[i+31:i]) << imm8[4:0]
        	dst[i+31:i] := tmp[63:32]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shldi_epi16
------------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_shldi_epi16(__mmask32 k, __m512i a,
                                     __m512i b, int imm8)

.. admonition:: Intel Description

    Concatenate packed 16-bit integers in "a" and "b" producing an intermediate 32-bit result. Shift the result left by "imm8" bits, and store the upper 16-bits in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		tmp[31:0] := ((a[i+15:i] << 16)[31:0] | b[i+15:i]) << imm8[3:0]
        		dst[i+15:i] := tmp[31:16]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_shldi_epi16
-----------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_shldi_epi16(__m512i src, __mmask32 k,
                                    __m512i a, __m512i b,
                                    int imm8)

.. admonition:: Intel Description

    Concatenate packed 16-bit integers in "a" and "b" producing an intermediate 32-bit result. Shift the result left by "imm8" bits, and store the upper 16-bits in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		tmp[31:0] := ((a[i+15:i] << 16)[31:0] | b[i+15:i]) << imm8[3:0]
        		dst[i+15:i] := tmp[31:16]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shldi_epi16
------------------
:Tech: AVX-512
:Category: Shift
:Header: immintrin.h
:Searchable: AVX-512-Shift-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    UI16 a, 
    UI16 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_shldi_epi16(__m512i a, __m512i b, int imm8);

.. admonition:: Intel Description

    Concatenate packed 16-bit integers in "a" and "b" producing an intermediate 32-bit result. Shift the result left by "imm8" bits, and store the upper 16-bits in "dst").

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	tmp[31:0] := ((a[i+15:i] << 16)[31:0] | b[i+15:i]) << imm8[3:0]
        	dst[i+15:i] := tmp[31:16]
        ENDFOR
        dst[MAX:512] := 0
        	

