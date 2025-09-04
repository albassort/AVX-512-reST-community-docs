AVX-512-Special Math Functions-XMM
==================================

_mm_reduce_max_epi16
--------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: short
:Param Types:
    __m128i a
:Param ETypes:
    SI16 a

.. code-block:: C

    short _mm_reduce_max_epi16(__m128i a);

.. admonition:: Intel Description

    Reduce the packed signed 16-bit integers in "a" by maximum. Returns the maximum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[15:0] > src[31:16] ? src[15:0] : src[31:16])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*16
        		src[i+15:i] := (src[i+15:i] > src[i+16*len+15:i+16*len] ? src[i+15:i] : src[i+16*len+15:i+16*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[16*len-1:0], len)
        }
        dst[15:0] := REDUCE_MAX(a, 8)
        	

_mm_mask_reduce_max_epi16
-------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: short
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI16 a

.. code-block:: C

    short _mm_mask_reduce_max_epi16(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Reduce the packed signed 16-bit integers in "a" by maximum using mask "k". Returns the maximum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[15:0] > src[31:16] ? src[15:0] : src[31:16])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*16
        		src[i+15:i] := (src[i+15:i] > src[i+16*len+15:i+16*len] ? src[i+15:i] : src[i+16*len+15:i+16*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[16*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 7
        	i := j*16
        	IF k[j]
        		tmp[i+15:i] := a[i+15:i]
        	ELSE
        		tmp[i+15:i] := Int16(-0x8000)
        	FI
        ENDFOR
        dst[15:0] := REDUCE_MAX(tmp, 8)
        	

_mm_reduce_max_epi8
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: char
:Param Types:
    __m128i a
:Param ETypes:
    SI8 a

.. code-block:: C

    char _mm_reduce_max_epi8(__m128i a);

.. admonition:: Intel Description

    Reduce the packed signed 8-bit integers in "a" by maximum. Returns the maximum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[7:0] > src[15:8] ? src[7:0] : src[15:8])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*8
        		src[i+7:i] := (src[i+7:i] > src[i+8*len+7:i+8*len] ? src[i+7:i] : src[i+8*len+7:i+8*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[8*len-1:0], len)
        }
        dst[7:0] := REDUCE_MAX(a, 16)
        	

_mm_mask_reduce_max_epi8
------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: char
:Param Types:
    __mmask16 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI8 a

.. code-block:: C

    char _mm_mask_reduce_max_epi8(__mmask16 k, __m128i a);

.. admonition:: Intel Description

    Reduce the packed signed 8-bit integers in "a" by maximum using mask "k". Returns the maximum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[7:0] > src[15:8] ? src[7:0] : src[15:8])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*8
        		src[i+7:i] := (src[i+7:i] > src[i+8*len+7:i+8*len] ? src[i+7:i] : src[i+8*len+7:i+8*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[8*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		tmp[i+7:i] := a[i+7:i]
        	ELSE
        		tmp[i+7:i] := Int8(-0x80)
        	FI
        ENDFOR
        dst[7:0] := REDUCE_MAX(tmp, 16)
        	

_mm_reduce_max_epu16
--------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: unsigned short
:Param Types:
    __m128i a
:Param ETypes:
    UI16 a

.. code-block:: C

    unsigned short _mm_reduce_max_epu16(__m128i a);

.. admonition:: Intel Description

    Reduce the packed unsigned 16-bit integers in "a" by maximum. Returns the maximum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[15:0] > src[31:16] ? src[15:0] : src[31:16])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*16
        		src[i+15:i] := (src[i+15:i] > src[i+16*len+15:i+16*len] ? src[i+15:i] : src[i+16*len+15:i+16*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[16*len-1:0], len)
        }
        dst[15:0] := REDUCE_MAX(a, 8)
        	

_mm_mask_reduce_max_epu16
-------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: unsigned short
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    unsigned short _mm_mask_reduce_max_epu16(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Reduce the packed unsigned 16-bit integers in "a" by maximum using mask "k". Returns the maximum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[15:0] > src[31:16] ? src[15:0] : src[31:16])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*16
        		src[i+15:i] := (src[i+15:i] > src[i+16*len+15:i+16*len] ? src[i+15:i] : src[i+16*len+15:i+16*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[16*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 7
        	i := j*16
        	IF k[j]
        		tmp[i+15:i] := a[i+15:i]
        	ELSE
        		tmp[i+15:i] := 0
        	FI
        ENDFOR
        dst[15:0] := REDUCE_MAX(tmp, 8)
        	

_mm_reduce_max_epu8
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: unsigned char
:Param Types:
    __m128i a
:Param ETypes:
    UI8 a

.. code-block:: C

    unsigned char _mm_reduce_max_epu8(__m128i a);

.. admonition:: Intel Description

    Reduce the packed unsigned 8-bit integers in "a" by maximum. Returns the maximum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[7:0] > src[15:8] ? src[7:0] : src[15:8])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*8
        		src[i+7:i] := (src[i+7:i] > src[i+8*len+7:i+8*len] ? src[i+7:i] : src[i+8*len+7:i+8*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[8*len-1:0], len)
        }
        dst[7:0] := REDUCE_MAX(a, 16)
        	

_mm_mask_reduce_max_epu8
------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: unsigned char
:Param Types:
    __mmask16 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    unsigned char _mm_mask_reduce_max_epu8(__mmask16 k, __m128i a);

.. admonition:: Intel Description

    Reduce the packed unsigned 8-bit integers in "a" by maximum using mask "k". Returns the maximum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[7:0] > src[15:8] ? src[7:0] : src[15:8])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*8
        		src[i+7:i] := (src[i+7:i] > src[i+8*len+7:i+8*len] ? src[i+7:i] : src[i+8*len+7:i+8*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[8*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		tmp[i+7:i] := a[i+7:i]
        	ELSE
        		tmp[i+7:i] := 0
        	FI
        ENDFOR
        dst[7:0] := REDUCE_MAX(tmp, 16)
        	

_mm_reduce_min_epi16
--------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: short
:Param Types:
    __m128i a
:Param ETypes:
    SI16 a

.. code-block:: C

    short _mm_reduce_min_epi16(__m128i a);

.. admonition:: Intel Description

    Reduce the packed signed 16-bit integers in "a" by minimum. Returns the minimum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[15:0] < src[31:16] ? src[15:0] : src[31:16])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*16
        		src[i+15:i] := (src[i+15:i] < src[i+16*len+15:i+16*len] ? src[i+15:i] : src[i+16*len+15:i+16*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[16*len-1:0], len)
        }
        dst[15:0] := REDUCE_MIN(a, 8)
        	

_mm_mask_reduce_min_epi16
-------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: short
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI16 a

.. code-block:: C

    short _mm_mask_reduce_min_epi16(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Reduce the packed signed 16-bit integers in "a" by minimum using mask "k". Returns the minimum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[15:0] < src[31:16] ? src[15:0] : src[31:16])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*16
        		src[i+15:i] := (src[i+15:i] < src[i+16*len+15:i+16*len] ? src[i+15:i] : src[i+16*len+15:i+16*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[16*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 7
        	i := j*16
        	IF k[j]
        		tmp[i+15:i] := a[i+15:i]
        	ELSE
        		tmp[i+15:i] := Int16(0x7FFF)
        	FI
        ENDFOR
        dst[15:0] := REDUCE_MIN(tmp, 8)
        	

_mm_reduce_min_epi8
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: char
:Param Types:
    __m128i a
:Param ETypes:
    SI8 a

.. code-block:: C

    char _mm_reduce_min_epi8(__m128i a);

.. admonition:: Intel Description

    Reduce the packed signed 8-bit integers in "a" by minimum. Returns the minimum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[7:0] < src[15:8] ? src[7:0] : src[15:8])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*8
        		src[i+7:i] := (src[i+7:i] < src[i+8*len+7:i+8*len] ? src[i+7:i] : src[i+8*len+7:i+8*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[8*len-1:0], len)
        }
        dst[7:0] := REDUCE_MIN(a, 16)
        	

_mm_mask_reduce_min_epi8
------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: char
:Param Types:
    __mmask16 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI8 a

.. code-block:: C

    char _mm_mask_reduce_min_epi8(__mmask16 k, __m128i a);

.. admonition:: Intel Description

    Reduce the packed signed 8-bit integers in "a" by minimum using mask "k". Returns the minimum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[7:0] < src[15:8] ? src[7:0] : src[15:8])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*8
        		src[i+7:i] := (src[i+7:i] < src[i+8*len+7:i+8*len] ? src[i+7:i] : src[i+8*len+7:i+8*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[8*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		tmp[i+7:i] := a[i+7:i]
        	ELSE
        		tmp[i+7:i] := Int8(0x7F)
        	FI
        ENDFOR
        dst[7:0] := REDUCE_MIN(tmp, 16)
        	

_mm_reduce_min_epu16
--------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: unsigned short
:Param Types:
    __m128i a
:Param ETypes:
    UI16 a

.. code-block:: C

    unsigned short _mm_reduce_min_epu16(__m128i a);

.. admonition:: Intel Description

    Reduce the packed unsigned 16-bit integers in "a" by minimum. Returns the minimum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[15:0] < src[31:16] ? src[15:0] : src[31:16])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*16
        		src[i+15:i] := (src[i+15:i] < src[i+16*len+15:i+16*len] ? src[i+15:i] : src[i+16*len+15:i+16*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[16*len-1:0], len)
        }
        dst[15:0] := REDUCE_MIN(a, 8)
        	

_mm_mask_reduce_min_epu16
-------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: unsigned short
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    unsigned short _mm_mask_reduce_min_epu16(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Reduce the packed unsigned 16-bit integers in "a" by minimum using mask "k". Returns the minimum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[15:0] < src[31:16] ? src[15:0] : src[31:16])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*16
        		src[i+15:i] := (src[i+15:i] < src[i+16*len+15:i+16*len] ? src[i+15:i] : src[i+16*len+15:i+16*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[16*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 7
        	i := j*16
        	IF k[j]
        		tmp[i+15:i] := a[i+15:i]
        	ELSE
        		tmp[i+15:i] := 0xFFFF
        	FI
        ENDFOR
        dst[15:0] := REDUCE_MIN(tmp, 8)
        	

_mm_reduce_min_epu8
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: unsigned char
:Param Types:
    __m128i a
:Param ETypes:
    UI8 a

.. code-block:: C

    unsigned char _mm_reduce_min_epu8(__m128i a);

.. admonition:: Intel Description

    Reduce the packed unsigned 8-bit integers in "a" by minimum. Returns the minimum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[7:0] < src[15:8] ? src[7:0] : src[15:8])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*8
        		src[i+7:i] := (src[i+7:i] < src[i+8*len+7:i+8*len] ? src[i+7:i] : src[i+8*len+7:i+8*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[8*len-1:0], len)
        }
        dst[7:0] := REDUCE_MIN(a, 16)
        	

_mm_mask_reduce_min_epu8
------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: unsigned char
:Param Types:
    __mmask16 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    unsigned char _mm_mask_reduce_min_epu8(__mmask16 k, __m128i a);

.. admonition:: Intel Description

    Reduce the packed unsigned 8-bit integers in "a" by minimum using mask "k". Returns the minimum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[7:0] < src[15:8] ? src[7:0] : src[15:8])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*8
        		src[i+7:i] := (src[i+7:i] < src[i+8*len+7:i+8*len] ? src[i+7:i] : src[i+8*len+7:i+8*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[8*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		tmp[i+7:i] := a[i+7:i]
        	ELSE
        		tmp[i+7:i] := 0xFF
        	FI
        ENDFOR
        dst[7:0] := REDUCE_MIN(tmp, 16)
        	

_mm_mask_max_round_sd
---------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128d a, 
    __m128d b, 
    int sae
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM sae

.. code-block:: C

    __m128d _mm_mask_max_round_sd(__m128d src, __mmask8 k,
                                  __m128d a, __m128d b,
                                  int sae)

.. admonition:: Intel Description

    Compare the lower double-precision (64-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst". [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := MAX(a[63:0], b[63:0])
        ELSE
        	dst[63:0] := src[63:0]
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_mask_max_sd
---------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_mask_max_sd(__m128d src, __mmask8 k, __m128d a,
                            __m128d b)

.. admonition:: Intel Description

    Compare the lower double-precision (64-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := MAX(a[63:0], b[63:0])
        ELSE
        	dst[63:0] := src[63:0]
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_maskz_max_round_sd
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128d a, 
    __m128d b, 
    int sae
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM sae

.. code-block:: C

    __m128d _mm_maskz_max_round_sd(__mmask8 k, __m128d a,
                                   __m128d b, int sae)

.. admonition:: Intel Description

    Compare the lower double-precision (64-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst". [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := MAX(a[63:0], b[63:0])
        ELSE
        	dst[63:0] := 0
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_maskz_max_sd
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128d a, 
    __m128d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_maskz_max_sd(__mmask8 k, __m128d a, __m128d b);

.. admonition:: Intel Description

    Compare the lower double-precision (64-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := MAX(a[63:0], b[63:0])
        ELSE
        	dst[63:0] := 0
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_max_round_sd
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b, 
    int sae
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM sae

.. code-block:: C

    __m128d _mm_max_round_sd(__m128d a, __m128d b, int sae);

.. admonition:: Intel Description

    Compare the lower double-precision (64-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst". [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := MAX(a[63:0], b[63:0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_mask_max_round_ss
---------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a, 
    __m128 b, 
    int sae
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM sae

.. code-block:: C

    __m128 _mm_mask_max_round_ss(__m128 src, __mmask8 k,
                                 __m128 a, __m128 b, int sae)

.. admonition:: Intel Description

    Compare the lower single-precision (32-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst". [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := MAX(a[31:0], b[31:0])
        ELSE
        	dst[31:0] := src[31:0]
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_mask_max_ss
---------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_mask_max_ss(__m128 src, __mmask8 k, __m128 a,
                           __m128 b)

.. admonition:: Intel Description

    Compare the lower single-precision (32-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := MAX(a[31:0], b[31:0])
        ELSE
        	dst[31:0] := src[31:0]
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_maskz_max_round_ss
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a, 
    __m128 b, 
    int sae
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM sae

.. code-block:: C

    __m128 _mm_maskz_max_round_ss(__mmask8 k, __m128 a,
                                  __m128 b, int sae)

.. admonition:: Intel Description

    Compare the lower single-precision (32-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst". [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := MAX(a[31:0], b[31:0])
        ELSE
        	dst[31:0] := 0
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_maskz_max_ss
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a, 
    __m128 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_maskz_max_ss(__mmask8 k, __m128 a, __m128 b);

.. admonition:: Intel Description

    Compare the lower single-precision (32-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := MAX(a[31:0], b[31:0])
        ELSE
        	dst[31:0] := 0
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_max_round_ss
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b, 
    int sae
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM sae

.. code-block:: C

    __m128 _mm_max_round_ss(__m128 a, __m128 b, int sae);

.. admonition:: Intel Description

    Compare the lower single-precision (32-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst". [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := MAX(a[31:0], b[31:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_mask_min_round_sd
---------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128d a, 
    __m128d b, 
    int sae
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM sae

.. code-block:: C

    __m128d _mm_mask_min_round_sd(__m128d src, __mmask8 k,
                                  __m128d a, __m128d b,
                                  int sae)

.. admonition:: Intel Description

    Compare the lower double-precision (64-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst". [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := MIN(a[63:0], b[63:0])
        ELSE
        	dst[63:0] := src[63:0]
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_mask_min_sd
---------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_mask_min_sd(__m128d src, __mmask8 k, __m128d a,
                            __m128d b)

.. admonition:: Intel Description

    Compare the lower double-precision (64-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := MIN(a[63:0], b[63:0])
        ELSE
        	dst[63:0] := src[63:0]
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_maskz_min_round_sd
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128d a, 
    __m128d b, 
    int sae
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM sae

.. code-block:: C

    __m128d _mm_maskz_min_round_sd(__mmask8 k, __m128d a,
                                   __m128d b, int sae)

.. admonition:: Intel Description

    Compare the lower double-precision (64-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst". [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := MIN(a[63:0], b[63:0])
        ELSE
        	dst[63:0] := 0
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_maskz_min_sd
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128d a, 
    __m128d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_maskz_min_sd(__mmask8 k, __m128d a, __m128d b);

.. admonition:: Intel Description

    Compare the lower double-precision (64-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := MIN(a[63:0], b[63:0])
        ELSE
        	dst[63:0] := 0
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_min_round_sd
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b, 
    int sae
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM sae

.. code-block:: C

    __m128d _mm_min_round_sd(__m128d a, __m128d b, int sae);

.. admonition:: Intel Description

    Compare the lower double-precision (64-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst" , and copy the upper element from "a" to the upper element of "dst". [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := MIN(a[63:0], b[63:0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_mask_min_round_ss
---------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a, 
    __m128 b, 
    int sae
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM sae

.. code-block:: C

    __m128 _mm_mask_min_round_ss(__m128 src, __mmask8 k,
                                 __m128 a, __m128 b, int sae)

.. admonition:: Intel Description

    Compare the lower single-precision (32-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst". [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := MIN(a[31:0], b[31:0])
        ELSE
        	dst[31:0] := src[31:0]
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_mask_min_ss
---------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_mask_min_ss(__m128 src, __mmask8 k, __m128 a,
                           __m128 b)

.. admonition:: Intel Description

    Compare the lower single-precision (32-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := MIN(a[31:0], b[31:0])
        ELSE
        	dst[31:0] := src[31:0]
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_maskz_min_round_ss
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a, 
    __m128 b, 
    int sae
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM sae

.. code-block:: C

    __m128 _mm_maskz_min_round_ss(__mmask8 k, __m128 a,
                                  __m128 b, int sae)

.. admonition:: Intel Description

    Compare the lower single-precision (32-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst". [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := MIN(a[31:0], b[31:0])
        ELSE
        	dst[31:0] := 0
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_maskz_min_ss
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a, 
    __m128 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_maskz_min_ss(__mmask8 k, __m128 a, __m128 b);

.. admonition:: Intel Description

    Compare the lower single-precision (32-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := MIN(a[31:0], b[31:0])
        ELSE
        	dst[31:0] := 0
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_min_round_ss
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b, 
    int sae
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM sae

.. code-block:: C

    __m128 _mm_min_round_ss(__m128 a, __m128 b, int sae);

.. admonition:: Intel Description

    Compare the lower single-precision (32-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst". [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := MIN(a[31:0], b[31:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_max_ph
----------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_max_ph(__m128h a, __m128h b);

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst". [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	dst.fp16[j] := (a.fp16[j] > b.fp16[j] ? a.fp16[j] : b.fp16[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_max_ph
---------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_mask_max_ph(__m128h src, __mmask8 k, __m128h a,
                            __m128h b)

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] > b.fp16[j] ? a.fp16[j] : b.fp16[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_max_ph
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_maskz_max_ph(__mmask8 k, __m128h a, __m128h b);

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] > b.fp16[j] ? a.fp16[j] : b.fp16[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_max_sh
----------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_max_sh(__m128h a, __m128h b);

.. admonition:: Intel Description

    Compare the lower half-precision (16-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst". [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := (a.fp16[0] > b.fp16[0] ? a.fp16[0] : b.fp16[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_mask_max_sh
---------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_mask_max_sh(__m128h src, __mmask8 k, __m128h a,
                            __m128h b)

.. admonition:: Intel Description

    Compare the lower half-precision (16-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := (a.fp16[0] > b.fp16[0] ? a.fp16[0] : b.fp16[0])
        ELSE
        	dst.fp16[0] := src.fp16[0]
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_maskz_max_sh
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_maskz_max_sh(__mmask8 k, __m128h a, __m128h b);

.. admonition:: Intel Description

    Compare the lower half-precision (16-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := (a.fp16[0] > b.fp16[0] ? a.fp16[0] : b.fp16[0])
        ELSE
        	dst.fp16[0] := 0
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_max_round_sh
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128h b, 
    int sae
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m128h _mm_max_round_sh(__m128h a, __m128h b, int sae);

.. admonition:: Intel Description

    Compare the lower half-precision (16-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst". [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := (a.fp16[0] > b.fp16[0] ? a.fp16[0] : b.fp16[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_mask_max_round_sh
---------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128h b, 
    int sae
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m128h _mm_mask_max_round_sh(__m128h src, __mmask8 k,
                                  __m128h a, __m128h b,
                                  int sae)

.. admonition:: Intel Description

    Compare the lower half-precision (16-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst". [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := (a.fp16[0] > b.fp16[0] ? a.fp16[0] : b.fp16[0])
        ELSE
        	dst.fp16[0] := src.fp16[0]
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_maskz_max_round_sh
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128h b, 
    int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m128h _mm_maskz_max_round_sh(__mmask8 k, __m128h a,
                                   __m128h b, int sae)

.. admonition:: Intel Description

    Compare the lower half-precision (16-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst". [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := (a.fp16[0] > b.fp16[0] ? a.fp16[0] : b.fp16[0])
        ELSE
        	dst.fp16[0] := 0
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_min_ph
----------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_min_ph(__m128h a, __m128h b);

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	dst.fp16[j] := (a.fp16[j] < b.fp16[j] ? a.fp16[j] : b.fp16[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_min_ph
---------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_mask_min_ph(__m128h src, __mmask8 k, __m128h a,
                            __m128h b)

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] < b.fp16[j] ? a.fp16[j] : b.fp16[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_min_ph
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_maskz_min_ph(__mmask8 k, __m128h a, __m128h b);

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] < b.fp16[j] ? a.fp16[j] : b.fp16[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_min_sh
----------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_min_sh(__m128h a, __m128h b);

.. admonition:: Intel Description

    Compare the lower half-precision (16-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := (a.fp16[0] < b.fp16[0] ? a.fp16[0] : b.fp16[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_mask_min_sh
---------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_mask_min_sh(__m128h src, __mmask8 k, __m128h a,
                            __m128h b)

.. admonition:: Intel Description

    Compare the lower half-precision (16-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := (a.fp16[0] < b.fp16[0] ? a.fp16[0] : b.fp16[0])
        ELSE
        	dst.fp16[0] := src.fp16[0]
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_maskz_min_sh
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_maskz_min_sh(__mmask8 k, __m128h a, __m128h b);

.. admonition:: Intel Description

    Compare the lower half-precision (16-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := (a.fp16[0] < b.fp16[0] ? a.fp16[0] : b.fp16[0])
        ELSE
        	dst.fp16[0] := 0
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_min_round_sh
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128h b, 
    int sae
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m128h _mm_min_round_sh(__m128h a, __m128h b, int sae);

.. admonition:: Intel Description

    Compare the lower half-precision (16-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst". [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := (a.fp16[0] < b.fp16[0] ? a.fp16[0] : b.fp16[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_mask_min_round_sh
---------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128h b, 
    int sae
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m128h _mm_mask_min_round_sh(__m128h src, __mmask8 k,
                                  __m128h a, __m128h b,
                                  int sae)

.. admonition:: Intel Description

    Compare the lower half-precision (16-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst". [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := (a.fp16[0] < b.fp16[0] ? a.fp16[0] : b.fp16[0])
        ELSE
        	dst.fp16[0] := src.fp16[0]
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_maskz_min_round_sh
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128h b, 
    int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m128h _mm_maskz_min_round_sh(__mmask8 k, __m128h a,
                                   __m128h b, int sae)

.. admonition:: Intel Description

    Compare the lower half-precision (16-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst". [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := (a.fp16[0] < b.fp16[0] ? a.fp16[0] : b.fp16[0])
        ELSE
        	dst.fp16[0] := 0
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_reduce_sh
-------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128h b, 
    int imm8
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM imm8

.. code-block:: C

    __m128h _mm_reduce_sh(__m128h a, __m128h b, int imm8);

.. admonition:: Intel Description

    Extract the reduced argument of the lower half-precision (16-bit) floating-point element in "b" by the number of bits specified by "imm8", store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst". [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ReduceArgumentFP16(src[15:0], imm8[7:0]) {
        	m[15:0] := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[15:0] := POW(2.0, FP16(-m)) * ROUND(POW(2.0, FP16(m)) * src[15:0], imm8[3:0])
        	tmp[15:0] := src[15:0] - tmp[15:0]
        	IF IsInf(tmp[15:0])
        		tmp[15:0] := FP16(0.0)
        	FI
        	RETURN tmp[15:0]
        }
        dst.fp16[0] := ReduceArgumentFP16(b.fp16[0], imm8)
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_reduce_round_sh
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128h b, 
    int imm8, 
    const int sae
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m128h _mm_reduce_round_sh(__m128h a, __m128h b, int imm8,
                                const int sae)

.. admonition:: Intel Description

    Extract the reduced argument of the lower half-precision (16-bit) floating-point element in "b" by the number of bits specified by "imm8", store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst". [round_imm_note][sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ReduceArgumentFP16(src[15:0], imm8[7:0]) {
        	m[15:0] := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[15:0] := POW(2.0, FP16(-m)) * ROUND(POW(2.0, FP16(m)) * src[15:0], imm8[3:0])
        	tmp[15:0] := src[15:0] - tmp[15:0]
        	IF IsInf(tmp[15:0])
        		tmp[15:0] := FP16(0.0)
        	FI
        	RETURN tmp[15:0]
        }
        dst.fp16[0] := ReduceArgumentFP16(b.fp16[0], imm8)
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_mask_reduce_sh
------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128h b, 
    int imm8
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM imm8

.. code-block:: C

    __m128h _mm_mask_reduce_sh(__m128h src, __mmask8 k,
                               __m128h a, __m128h b, int imm8)

.. admonition:: Intel Description

    Extract the reduced argument of the lower half-precision (16-bit) floating-point element in "b" by the number of bits specified by "imm8", store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst". [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ReduceArgumentFP16(src[15:0], imm8[7:0]) {
        	m[15:0] := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[15:0] := POW(2.0, FP16(-m)) * ROUND(POW(2.0, FP16(m)) * src[15:0], imm8[3:0])
        	tmp[15:0] := src[15:0] - tmp[15:0]
        	IF IsInf(tmp[15:0])
        		tmp[15:0] := FP16(0.0)
        	FI
        	RETURN tmp[15:0]
        }
        IF k[0]
        	dst.fp16[0] := ReduceArgumentFP16(b.fp16[0], imm8)
        ELSE
        	dst.fp16[0] := src.fp16[0]
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_mask_reduce_round_sh
------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128h b, 
    int imm8, 
    const int sae
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m128h _mm_mask_reduce_round_sh(__m128h src, __mmask8 k,
                                     __m128h a, __m128h b,
                                     int imm8, const int sae)

.. admonition:: Intel Description

    Extract the reduced argument of the lower half-precision (16-bit) floating-point element in "b" by the number of bits specified by "imm8", store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst". [round_imm_note][sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ReduceArgumentFP16(src[15:0], imm8[7:0]) {
        	m[15:0] := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[15:0] := POW(2.0, FP16(-m)) * ROUND(POW(2.0, FP16(m)) * src[15:0], imm8[3:0])
        	tmp[15:0] := src[15:0] - tmp[15:0]
        	IF IsInf(tmp[15:0])
        		tmp[15:0] := FP16(0.0)
        	FI
        	RETURN tmp[15:0]
        }
        IF k[0]
        	dst.fp16[0] := ReduceArgumentFP16(b.fp16[0], imm8)
        ELSE
        	dst.fp16[0] := src.fp16[0]
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_maskz_reduce_sh
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128h b, 
    int imm8
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM imm8

.. code-block:: C

    __m128h _mm_maskz_reduce_sh(__mmask8 k, __m128h a,
                                __m128h b, int imm8)

.. admonition:: Intel Description

    Extract the reduced argument of the lower half-precision (16-bit) floating-point element in "b" by the number of bits specified by "imm8", store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst". [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ReduceArgumentFP16(src[15:0], imm8[7:0]) {
        	m[15:0] := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[15:0] := POW(2.0, FP16(-m)) * ROUND(POW(2.0, FP16(m)) * src[15:0], imm8[3:0])
        	tmp[15:0] := src[15:0] - tmp[15:0]
        	IF IsInf(tmp[15:0])
        		tmp[15:0] := FP16(0.0)
        	FI
        	RETURN tmp[15:0]
        }
        IF k[0]
        	dst.fp16[0] := ReduceArgumentFP16(b.fp16[0], imm8)
        ELSE
        	dst.fp16[0] := 0
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_maskz_reduce_round_sh
-------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128h b, 
    int imm8, 
    const int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m128h _mm_maskz_reduce_round_sh(__mmask8 k, __m128h a,
                                      __m128h b, int imm8,
                                      const int sae)

.. admonition:: Intel Description

    Extract the reduced argument of the lower half-precision (16-bit) floating-point element in "b" by the number of bits specified by "imm8", store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst". [round_imm_note][sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ReduceArgumentFP16(src[15:0], imm8[7:0]) {
        	m[15:0] := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[15:0] := POW(2.0, FP16(-m)) * ROUND(POW(2.0, FP16(m)) * src[15:0], imm8[3:0])
        	tmp[15:0] := src[15:0] - tmp[15:0]
        	IF IsInf(tmp[15:0])
        		tmp[15:0] := FP16(0.0)
        	FI
        	RETURN tmp[15:0]
        }
        IF k[0]
        	dst.fp16[0] := ReduceArgumentFP16(b.fp16[0], imm8)
        ELSE
        	dst.fp16[0] := 0
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

