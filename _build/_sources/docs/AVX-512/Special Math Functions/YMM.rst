AVX-512-Special Math Functions-YMM
==================================

_mm256_reduce_max_epi16
-----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: short
:Param Types:
    __m256i a
:Param ETypes:
    SI16 a

.. code-block:: C

    short _mm256_reduce_max_epi16(__m256i a);

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
        dst[15:0] := REDUCE_MAX(a, 16)
        	

_mm256_mask_reduce_max_epi16
----------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: short
:Param Types:
    __mmask16 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    SI16 a

.. code-block:: C

    short _mm256_mask_reduce_max_epi16(__mmask16 k, __m256i a);

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
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		tmp[i+15:i] := a[i+15:i]
        	ELSE
        		tmp[i+15:i] := Int16(-0x8000)
        	FI
        ENDFOR
        dst[15:0] := REDUCE_MAX(tmp, 16)
        	

_mm256_reduce_max_epi8
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: char
:Param Types:
    __m256i a
:Param ETypes:
    SI8 a

.. code-block:: C

    char _mm256_reduce_max_epi8(__m256i a);

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
        dst[7:0] := REDUCE_MAX(a, 32)
        	

_mm256_mask_reduce_max_epi8
---------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: char
:Param Types:
    __mmask32 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    SI8 a

.. code-block:: C

    char _mm256_mask_reduce_max_epi8(__mmask32 k, __m256i a);

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
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		tmp[i+7:i] := a[i+7:i]
        	ELSE
        		tmp[i+7:i] := Int8(-0x80)
        	FI
        ENDFOR
        dst[7:0] := REDUCE_MAX(tmp, 32)
        	

_mm256_reduce_max_epu16
-----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: unsigned short
:Param Types:
    __m256i a
:Param ETypes:
    UI16 a

.. code-block:: C

    unsigned short _mm256_reduce_max_epu16(__m256i a);

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
        dst[15:0] := REDUCE_MAX(a, 16)
        	

_mm256_mask_reduce_max_epu16
----------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: unsigned short
:Param Types:
    __mmask16 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    unsigned short _mm256_mask_reduce_max_epu16(__mmask16 k, __m256i a);

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
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		tmp[i+15:i] := a[i+15:i]
        	ELSE
        		tmp[i+15:i] := 0
        	FI
        ENDFOR
        dst[15:0] := REDUCE_MAX(tmp, 16)
        	

_mm256_reduce_max_epu8
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: unsigned char
:Param Types:
    __m256i a
:Param ETypes:
    UI8 a

.. code-block:: C

    unsigned char _mm256_reduce_max_epu8(__m256i a);

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
        dst[7:0] := REDUCE_MAX(a, 32)
        	

_mm256_mask_reduce_max_epu8
---------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: unsigned char
:Param Types:
    __mmask32 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    unsigned char _mm256_mask_reduce_max_epu8(__mmask32 k, __m256i a);

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
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		tmp[i+7:i] := a[i+7:i]
        	ELSE
        		tmp[i+7:i] := 0
        	FI
        ENDFOR
        dst[7:0] := REDUCE_MAX(tmp, 32)
        	

_mm256_reduce_min_epi16
-----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: short
:Param Types:
    __m256i a
:Param ETypes:
    SI16 a

.. code-block:: C

    short _mm256_reduce_min_epi16(__m256i a);

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
        dst[15:0] := REDUCE_MIN(a, 16)
        	

_mm256_mask_reduce_min_epi16
----------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: short
:Param Types:
    __mmask16 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    SI16 a

.. code-block:: C

    short _mm256_mask_reduce_min_epi16(__mmask16 k, __m256i a);

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
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		tmp[i+15:i] := a[i+15:i]
        	ELSE
        		tmp[i+15:i] := Int16(0x7FFF)
        	FI
        ENDFOR
        dst[15:0] := REDUCE_MIN(tmp, 16)
        	

_mm256_reduce_min_epi8
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: char
:Param Types:
    __m256i a
:Param ETypes:
    SI8 a

.. code-block:: C

    char _mm256_reduce_min_epi8(__m256i a);

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
        dst[7:0] := REDUCE_MIN(a, 32)
        	

_mm256_mask_reduce_min_epi8
---------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: char
:Param Types:
    __mmask32 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    SI8 a

.. code-block:: C

    char _mm256_mask_reduce_min_epi8(__mmask32 k, __m256i a);

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
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		tmp[i+7:i] := a[i+7:i]
        	ELSE
        		tmp[i+7:i] := Int8(0x7F)
        	FI
        ENDFOR
        dst[7:0] := REDUCE_MIN(tmp, 32)
        	

_mm256_reduce_min_epu16
-----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: unsigned short
:Param Types:
    __m256i a
:Param ETypes:
    UI16 a

.. code-block:: C

    unsigned short _mm256_reduce_min_epu16(__m256i a);

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
        dst[15:0] := REDUCE_MIN(a, 16)
        	

_mm256_mask_reduce_min_epu16
----------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: unsigned short
:Param Types:
    __mmask16 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    unsigned short _mm256_mask_reduce_min_epu16(__mmask16 k, __m256i a);

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
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		tmp[i+15:i] := a[i+15:i]
        	ELSE
        		tmp[i+15:i] := 0xFFFF
        	FI
        ENDFOR
        dst[15:0] := REDUCE_MIN(tmp, 16)
        	

_mm256_reduce_min_epu8
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: unsigned char
:Param Types:
    __m256i a
:Param ETypes:
    UI8 a

.. code-block:: C

    unsigned char _mm256_reduce_min_epu8(__m256i a);

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
        dst[7:0] := REDUCE_MIN(a, 32)
        	

_mm256_mask_reduce_min_epu8
---------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: unsigned char
:Param Types:
    __mmask32 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    unsigned char _mm256_mask_reduce_min_epu8(__mmask32 k, __m256i a);

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
        	

_mm256_max_ph
-------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a, 
    __m256h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m256h _mm256_max_ph(__m256h a, __m256h b);

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst". [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	dst.fp16[j] := (a.fp16[j] > b.fp16[j] ? a.fp16[j] : b.fp16[j])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_max_ph
------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h src, 
    __mmask16 k, 
    __m256h a, 
    __m256h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m256h _mm256_mask_max_ph(__m256h src, __mmask16 k,
                               __m256h a, __m256h b)

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] > b.fp16[j] ? a.fp16[j] : b.fp16[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_max_ph
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __mmask16 k, 
    __m256h a, 
    __m256h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m256h _mm256_maskz_max_ph(__mmask16 k, __m256h a,
                                __m256h b)

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] > b.fp16[j] ? a.fp16[j] : b.fp16[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_min_ph
-------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a, 
    __m256h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m256h _mm256_min_ph(__m256h a, __m256h b);

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	dst.fp16[j] := (a.fp16[j] < b.fp16[j] ? a.fp16[j] : b.fp16[j])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_min_ph
------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h src, 
    __mmask16 k, 
    __m256h a, 
    __m256h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m256h _mm256_mask_min_ph(__m256h src, __mmask16 k,
                               __m256h a, __m256h b)

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] < b.fp16[j] ? a.fp16[j] : b.fp16[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_min_ph
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __mmask16 k, 
    __m256h a, 
    __m256h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m256h _mm256_maskz_min_ph(__mmask16 k, __m256h a,
                                __m256h b)

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] < b.fp16[j] ? a.fp16[j] : b.fp16[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

