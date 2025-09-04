AVX-512-Convert-ZMM
===================

_mm512_cvtsepi16_epi8
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512i a
:Param ETypes:
    SI16 a

.. code-block:: C

    __m256i _mm512_cvtsepi16_epi8(__m512i a);

.. admonition:: Intel Description

    Convert packed signed 16-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := 16*j
        	l := 8*j
        	dst[l+7:l] := Saturate8(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtsepi16_epi8
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask32 k, 
    __m512i a
:Param ETypes:
    SI8 src, 
    MASK k, 
    SI16 a

.. code-block:: C

    __m256i _mm512_mask_cvtsepi16_epi8(__m256i src, __mmask32 k,
                                       __m512i a)

.. admonition:: Intel Description

    Convert packed signed 16-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := 16*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Saturate8(a[i+15:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtsepi16_epi8
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask32 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI16 a

.. code-block:: C

    __m256i _mm512_maskz_cvtsepi16_epi8(__mmask32 k, __m512i a);

.. admonition:: Intel Description

    Convert packed signed 16-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := 16*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Saturate8(a[i+15:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtepi8_epi16
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256i a
:Param ETypes:
    SI8 a

.. code-block:: C

    __m512i _mm512_cvtepi8_epi16(__m256i a);

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in "a" to packed 16-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	l := j*16
        	dst[l+15:l] := SignExtend16(a[i+7:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepi8_epi16
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m256i a
:Param ETypes:
    SI16 src, 
    MASK k, 
    SI8 a

.. code-block:: C

    __m512i _mm512_mask_cvtepi8_epi16(__m512i src, __mmask32 k,
                                      __m256i a)

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in "a" to packed 16-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	l := j*16
        	IF k[j]
        		dst[l+15:l] := SignExtend16(a[i+7:i])
        	ELSE
        		dst[l+15:l] := src[l+15:l]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepi8_epi16
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    SI8 a

.. code-block:: C

    __m512i _mm512_maskz_cvtepi8_epi16(__mmask32 k, __m256i a);

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in "a" to packed 16-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	l := j*16
        	IF k[j]
        		dst[l+15:l] := SignExtend16(a[i+7:i])
        	ELSE
        		dst[l+15:l] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtusepi16_epi8
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m256i _mm512_cvtusepi16_epi8(__m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 16-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := 16*j
        	l := 8*j
        	dst[l+7:l] := SaturateU8(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtusepi16_epi8
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask32 k, 
    __m512i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m256i _mm512_mask_cvtusepi16_epi8(__m256i src,
                                        __mmask32 k, __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 16-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := 16*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := SaturateU8(a[i+15:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtusepi16_epi8
----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask32 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m256i _mm512_maskz_cvtusepi16_epi8(__mmask32 k,
                                         __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 16-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := 16*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := SaturateU8(a[i+15:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtepi16_epi8
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m256i _mm512_cvtepi16_epi8(__m512i a);

.. admonition:: Intel Description

    Convert packed 16-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := 16*j
        	l := 8*j
        	dst[l+7:l] := Truncate8(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtepi16_epi8
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask32 k, 
    __m512i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m256i _mm512_mask_cvtepi16_epi8(__m256i src, __mmask32 k,
                                      __m512i a)

.. admonition:: Intel Description

    Convert packed 16-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := 16*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Truncate8(a[i+15:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtepi16_epi8
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask32 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m256i _mm512_maskz_cvtepi16_epi8(__mmask32 k, __m512i a);

.. admonition:: Intel Description

    Convert packed 16-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := 16*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Truncate8(a[i+15:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtepu8_epi16
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256i a
:Param ETypes:
    UI8 a

.. code-block:: C

    __m512i _mm512_cvtepu8_epi16(__m256i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in "a" to packed 16-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	l := j*16
        	dst[l+15:l] := ZeroExtend16(a[i+7:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepu8_epi16
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m256i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI8 a

.. code-block:: C

    __m512i _mm512_mask_cvtepu8_epi16(__m512i src, __mmask32 k,
                                      __m256i a)

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in "a" to packed 16-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	l := j*16
        	IF k[j]
        		dst[l+15:l] := ZeroExtend16(a[i+7:i])
        	ELSE
        		dst[l+15:l] := src[l+15:l]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepu8_epi16
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    __m512i _mm512_maskz_cvtepu8_epi16(__mmask32 k, __m256i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in "a" to packed 16-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	l := j*16
        	IF k[j]
        		dst[l+15:l] := ZeroExtend16(a[i+7:i])
        	ELSE
        		dst[l+15:l] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundpd_epi64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512d a, 
    int rounding
:Param ETypes:
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_cvt_roundpd_epi64(__m512d a, int rounding);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := Convert_FP64_To_Int64(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtpd_epi64
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512i _mm512_cvtpd_epi64(__m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := Convert_FP64_To_Int64(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundpd_epi64
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512d a, 
    int rounding
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_mask_cvt_roundpd_epi64(__m512i src,
                                          __mmask8 k, __m512d a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_Int64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtpd_epi64
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512i _mm512_mask_cvtpd_epi64(__m512i src, __mmask8 k,
                                    __m512d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_Int64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundpd_epi64
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_maskz_cvt_roundpd_epi64(__mmask8 k,
                                           __m512d a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_Int64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtpd_epi64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m512i _mm512_maskz_cvtpd_epi64(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_Int64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundpd_epu64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512d a, 
    int rounding
:Param ETypes:
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_cvt_roundpd_epu64(__m512d a, int rounding);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := Convert_FP64_To_UInt64(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtpd_epu64
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512i _mm512_cvtpd_epu64(__m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := Convert_FP64_To_UInt64(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundpd_epu64
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512d a, 
    int rounding
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_mask_cvt_roundpd_epu64(__m512i src,
                                          __mmask8 k, __m512d a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_UInt64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtpd_epu64
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512i _mm512_mask_cvtpd_epu64(__m512i src, __mmask8 k,
                                    __m512d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_UInt64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundpd_epu64
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_maskz_cvt_roundpd_epu64(__mmask8 k,
                                           __m512d a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_UInt64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtpd_epu64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m512i _mm512_maskz_cvtpd_epu64(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_UInt64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundps_epi64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256 a, 
    int rounding
:Param ETypes:
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_cvt_roundps_epi64(__m256 a, int rounding);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	dst[i+63:i] := Convert_FP32_To_Int64(a[l+31:l])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtps_epi64
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512i _mm512_cvtps_epi64(__m256 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	dst[i+63:i] := Convert_FP32_To_Int64(a[l+31:l])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundps_epi64
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m256 a, 
    int rounding
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_mask_cvt_roundps_epi64(__m512i src,
                                          __mmask8 k, __m256 a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	 [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_Int64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtps_epi64
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m256 a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512i _mm512_mask_cvtps_epi64(__m512i src, __mmask8 k,
                                    __m256 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_Int64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundps_epi64
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m256 a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_maskz_cvt_roundps_epi64(__mmask8 k, __m256 a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_Int64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtps_epi64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m256 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512i _mm512_maskz_cvtps_epi64(__mmask8 k, __m256 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_Int64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundps_epu64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256 a, 
    int rounding
:Param ETypes:
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_cvt_roundps_epu64(__m256 a, int rounding);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	dst[i+63:i] := Convert_FP32_To_UInt64(a[l+31:l])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtps_epu64
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512i _mm512_cvtps_epu64(__m256 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	dst[i+63:i] := Convert_FP32_To_UInt64(a[l+31:l])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundps_epu64
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m256 a, 
    int rounding
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_mask_cvt_roundps_epu64(__m512i src,
                                          __mmask8 k, __m256 a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_UInt64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtps_epu64
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m256 a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512i _mm512_mask_cvtps_epu64(__m512i src, __mmask8 k,
                                    __m256 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_UInt64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundps_epu64
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m256 a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_maskz_cvt_roundps_epu64(__mmask8 k, __m256 a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_UInt64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtps_epu64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m256 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512i _mm512_maskz_cvtps_epu64(__mmask8 k, __m256 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_UInt64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundepi64_pd
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512i a, 
    int rounding
:Param ETypes:
    SI64 a, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_cvt_roundepi64_pd(__m512i a, int rounding);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepi64_pd
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512i a
:Param ETypes:
    SI64 a

.. code-block:: C

    __m512d _mm512_cvtepi64_pd(__m512i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundepi64_pd
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    FP64 src, 
    MASK k, 
    SI64 a, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask_cvt_roundepi64_pd(__m512d src,
                                          __mmask8 k, __m512i a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepi64_pd
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    FP64 src, 
    MASK k, 
    SI64 a

.. code-block:: C

    __m512d _mm512_mask_cvtepi64_pd(__m512d src, __mmask8 k,
                                    __m512i a)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundepi64_pd
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    MASK k, 
    SI64 a, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_maskz_cvt_roundepi64_pd(__mmask8 k,
                                           __m512i a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepi64_pd
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI64 a

.. code-block:: C

    __m512d _mm512_maskz_cvtepi64_pd(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundepi64_ps
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __m512i a, 
    int rounding
:Param ETypes:
    SI64 a, 
    IMM rounding

.. code-block:: C

    __m256 _mm512_cvt_roundepi64_ps(__m512i a, int rounding);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtepi64_ps
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __m512i a
:Param ETypes:
    SI64 a

.. code-block:: C

    __m256 _mm512_cvtepi64_ps(__m512i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvt_roundepi64_ps
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    FP32 src, 
    MASK k, 
    SI64 a, 
    IMM rounding

.. code-block:: C

    __m256 _mm512_mask_cvt_roundepi64_ps(__m256 src, __mmask8 k,
                                         __m512i a,
                                         int rounding)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := src[l+31:l]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtepi64_ps
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    FP32 src, 
    MASK k, 
    SI64 a

.. code-block:: C

    __m256 _mm512_mask_cvtepi64_ps(__m256 src, __mmask8 k,
                                   __m512i a)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := src[l+31:l]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvt_roundepi64_ps
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    MASK k, 
    SI64 a, 
    IMM rounding

.. code-block:: C

    __m256 _mm512_maskz_cvt_roundepi64_ps(__mmask8 k, __m512i a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtepi64_ps
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI64 a

.. code-block:: C

    __m256 _mm512_maskz_cvtepi64_ps(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtt_roundpd_epi64
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512d a, 
    int sae
:Param ETypes:
    FP64 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_cvtt_roundpd_epi64(__m512d a, int sae);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := Convert_FP64_To_Int64_Truncate(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvttpd_epi64
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512i _mm512_cvttpd_epi64(__m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := Convert_FP64_To_Int64_Truncate(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtt_roundpd_epi64
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512d a, 
    int sae
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP64 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_mask_cvtt_roundpd_epi64(__m512i src,
                                           __mmask8 k,
                                           __m512d a, int sae)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_Int64_Truncate(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvttpd_epi64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512i _mm512_mask_cvttpd_epi64(__m512i src, __mmask8 k,
                                     __m512d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_Int64_Truncate(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtt_roundpd_epi64
-------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int sae
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_maskz_cvtt_roundpd_epi64(__mmask8 k,
                                            __m512d a, int sae)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_Int64_Truncate(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvttpd_epi64
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m512i _mm512_maskz_cvttpd_epi64(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_Int64_Truncate(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtt_roundpd_epu64
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512d a, 
    int sae
:Param ETypes:
    FP64 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_cvtt_roundpd_epu64(__m512d a, int sae);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := Convert_FP64_To_UInt64_Truncate(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvttpd_epu64
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512i _mm512_cvttpd_epu64(__m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := Convert_FP64_To_UInt64_Truncate(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtt_roundpd_epu64
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512d a, 
    int sae
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP64 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_mask_cvtt_roundpd_epu64(__m512i src,
                                           __mmask8 k,
                                           __m512d a, int sae)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_UInt64_Truncate(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvttpd_epu64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512i _mm512_mask_cvttpd_epu64(__m512i src, __mmask8 k,
                                     __m512d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_UInt64_Truncate(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtt_roundpd_epu64
-------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int sae
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_maskz_cvtt_roundpd_epu64(__mmask8 k,
                                            __m512d a, int sae)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_UInt64_Truncate(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvttpd_epu64
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m512i _mm512_maskz_cvttpd_epu64(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_UInt64_Truncate(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtt_roundps_epi64
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256 a, 
    int sae
:Param ETypes:
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_cvtt_roundps_epi64(__m256 a, int sae);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	dst[i+63:i] := Convert_FP32_To_Int64_Truncate(a[l+31:l])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvttps_epi64
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512i _mm512_cvttps_epi64(__m256 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	dst[i+63:i] := Convert_FP32_To_Int64_Truncate(a[l+31:l])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtt_roundps_epi64
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m256 a, 
    int sae
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_mask_cvtt_roundps_epi64(__m512i src,
                                           __mmask8 k, __m256 a,
                                           int sae)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_Int64_Truncate(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvttps_epi64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m256 a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512i _mm512_mask_cvttps_epi64(__m512i src, __mmask8 k,
                                     __m256 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_Int64_Truncate(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtt_roundps_epi64
-------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m256 a, 
    int sae
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_maskz_cvtt_roundps_epi64(__mmask8 k,
                                            __m256 a, int sae)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_Int64_Truncate(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvttps_epi64
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m256 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512i _mm512_maskz_cvttps_epi64(__mmask8 k, __m256 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_Int64_Truncate(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtt_roundps_epu64
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256 a, 
    int sae
:Param ETypes:
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_cvtt_roundps_epu64(__m256 a, int sae);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	dst[i+63:i] := Convert_FP32_To_UInt64_Truncate(a[l+31:l])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvttps_epu64
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512i _mm512_cvttps_epu64(__m256 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	dst[i+63:i] := Convert_FP32_To_UInt64_Truncate(a[l+31:l])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtt_roundps_epu64
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m256 a, 
    int sae
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_mask_cvtt_roundps_epu64(__m512i src,
                                           __mmask8 k, __m256 a,
                                           int sae)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_UInt64_Truncate(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvttps_epu64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m256 a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512i _mm512_mask_cvttps_epu64(__m512i src, __mmask8 k,
                                     __m256 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_UInt64_Truncate(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtt_roundps_epu64
-------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m256 a, 
    int sae
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_maskz_cvtt_roundps_epu64(__mmask8 k,
                                            __m256 a, int sae)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_UInt64_Truncate(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvttps_epu64
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m256 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512i _mm512_maskz_cvttps_epu64(__mmask8 k, __m256 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_UInt64_Truncate(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundepu64_pd
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512i a, 
    int rounding
:Param ETypes:
    UI64 a, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_cvt_roundepu64_pd(__m512i a, int rounding);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepu64_pd
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m512d _mm512_cvtepu64_pd(__m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundepu64_pd
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    FP64 src, 
    MASK k, 
    UI64 a, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask_cvt_roundepu64_pd(__m512d src,
                                          __mmask8 k, __m512i a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepu64_pd
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    FP64 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m512d _mm512_mask_cvtepu64_pd(__m512d src, __mmask8 k,
                                    __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundepu64_pd
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    MASK k, 
    UI64 a, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_maskz_cvt_roundepu64_pd(__mmask8 k,
                                           __m512i a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepu64_pd
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m512d _mm512_maskz_cvtepu64_pd(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundepu64_ps
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __m512i a, 
    int rounding
:Param ETypes:
    UI64 a, 
    IMM rounding

.. code-block:: C

    __m256 _mm512_cvt_roundepu64_ps(__m512i a, int rounding);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtepu64_ps
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m256 _mm512_cvtepu64_ps(__m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvt_roundepu64_ps
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    FP32 src, 
    MASK k, 
    UI64 a, 
    IMM rounding

.. code-block:: C

    __m256 _mm512_mask_cvt_roundepu64_ps(__m256 src, __mmask8 k,
                                         __m512i a,
                                         int rounding)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := src[l+31:l]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtepu64_ps
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    FP32 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m256 _mm512_mask_cvtepu64_ps(__m256 src, __mmask8 k,
                                   __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := src[l+31:l]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvt_roundepu64_ps
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    MASK k, 
    UI64 a, 
    IMM rounding

.. code-block:: C

    __m256 _mm512_maskz_cvt_roundepu64_ps(__mmask8 k, __m512i a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtepu64_ps
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m256 _mm512_maskz_cvtepu64_ps(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtepi32_pd
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m256i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m512d _mm512_cvtepi32_pd(__m256i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	m := j*64
        	dst[m+63:m] := Convert_Int32_To_FP64(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepi32_pd
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m256i a
:Param ETypes:
    FP64 src, 
    MASK k, 
    SI32 a

.. code-block:: C

    __m512d _mm512_mask_cvtepi32_pd(__m512d src, __mmask8 k,
                                    __m256i a)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	m := j*64
        	IF k[j]
        		dst[m+63:m] := Convert_Int32_To_FP64(a[i+31:i])
        	ELSE
        		dst[m+63:m] := src[m+63:m]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepi32_pd
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    SI32 a

.. code-block:: C

    __m512d _mm512_maskz_cvtepi32_pd(__mmask8 k, __m256i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	m := j*64
        	IF k[j]
        		dst[m+63:m] := Convert_Int32_To_FP64(a[i+31:i])
        	ELSE
        		dst[m+63:m] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundepi32_ps
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512i a, 
    int rounding
:Param ETypes:
    SI32 a, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_cvt_roundepi32_ps(__m512i a, int rounding);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	dst[i+31:i] := Convert_Int32_To_FP32(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepi32_ps
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m512 _mm512_cvtepi32_ps(__m512i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	dst[i+31:i] := Convert_Int32_To_FP32(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundepi32_ps
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    FP32 src, 
    MASK k, 
    SI32 a, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask_cvt_roundepi32_ps(__m512 src,
                                         __mmask16 k, __m512i a,
                                         int rounding)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := Convert_Int32_To_FP32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepi32_ps
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512i a
:Param ETypes:
    FP32 src, 
    MASK k, 
    SI32 a

.. code-block:: C

    __m512 _mm512_mask_cvtepi32_ps(__m512 src, __mmask16 k,
                                   __m512i a)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := Convert_Int32_To_FP32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundepi32_ps
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    MASK k, 
    SI32 a, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_maskz_cvt_roundepi32_ps(__mmask16 k,
                                          __m512i a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_Int32_To_FP32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepi32_ps
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI32 a

.. code-block:: C

    __m512 _mm512_maskz_cvtepi32_ps(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_Int32_To_FP32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundpd_epi32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512d a, 
    int rounding
:Param ETypes:
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m256i _mm512_cvt_roundpd_epi32(__m512d a, int rounding);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_Int32(a[k+63:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtpd_epi32
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256i _mm512_cvtpd_epi32(__m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_Int32(a[k+63:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvt_roundpd_epi32
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m512d a, 
    int rounding
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m256i _mm512_mask_cvt_roundpd_epi32(__m256i src,
                                          __mmask8 k, __m512d a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	l := j*64
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_Int32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtpd_epi32
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m256i _mm512_mask_cvtpd_epi32(__m256i src, __mmask8 k,
                                    __m512d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	l := j*64
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_Int32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvt_roundpd_epi32
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m256i _mm512_maskz_cvt_roundpd_epi32(__mmask8 k,
                                           __m512d a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_Int32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtpd_epi32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m256i _mm512_maskz_cvtpd_epi32(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_Int32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvt_roundpd_ps
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __m512d a, 
    int rounding
:Param ETypes:
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m256 _mm512_cvt_roundpd_ps(__m512d a, int rounding);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_FP32(a[k+63:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtpd_ps
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256 _mm512_cvtpd_ps(__m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_FP32(a[k+63:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvt_roundpd_ps
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m512d a, 
    int rounding
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m256 _mm512_mask_cvt_roundpd_ps(__m256 src, __mmask8 k,
                                      __m512d a, int rounding)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	l := j*64
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_FP32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtpd_ps
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m256 _mm512_mask_cvtpd_ps(__m256 src, __mmask8 k,
                                __m512d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_FP32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvt_roundpd_ps
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m256 _mm512_maskz_cvt_roundpd_ps(__mmask8 k, __m512d a,
                                       int rounding)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	l := j*64
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_FP32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtpd_ps
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m256 _mm512_maskz_cvtpd_ps(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	l := j*64
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_FP32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvt_roundpd_epu32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512d a, 
    int rounding
:Param ETypes:
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m256i _mm512_cvt_roundpd_epu32(__m512d a, int rounding);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_UInt32(a[k+63:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtpd_epu32
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256i _mm512_cvtpd_epu32(__m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_UInt32(a[k+63:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvt_roundpd_epu32
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m512d a, 
    int rounding
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m256i _mm512_mask_cvt_roundpd_epu32(__m256i src,
                                          __mmask8 k, __m512d a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	l := j*64
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_UInt32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtpd_epu32
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m256i _mm512_mask_cvtpd_epu32(__m256i src, __mmask8 k,
                                    __m512d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	l := j*64
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_UInt32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvt_roundpd_epu32
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m256i _mm512_maskz_cvt_roundpd_epu32(__mmask8 k,
                                           __m512d a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_UInt32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtpd_epu32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m256i _mm512_maskz_cvtpd_epu32(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_UInt32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvt_roundph_ps
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m256i a, 
    int sae
:Param ETypes:
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512 _mm512_cvt_roundph_ps(__m256i a, int sae);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	m := j*16
        	dst[i+31:i] := Convert_FP16_To_FP32(a[m+15:m])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtph_ps
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m256i a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512 _mm512_cvtph_ps(__m256i a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	m := j*16
        	dst[i+31:i] := Convert_FP16_To_FP32(a[m+15:m])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundph_ps
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m256i a, 
    int sae
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512 _mm512_mask_cvt_roundph_ps(__m512 src, __mmask16 k,
                                      __m256i a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	m := j*16
        	IF k[j]
        		dst[i+31:i] := Convert_FP16_To_FP32(a[m+15:m])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtph_ps
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m256i a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512 _mm512_mask_cvtph_ps(__m512 src, __mmask16 k,
                                __m256i a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	m := j*16
        	IF k[j]
        		dst[i+31:i] := Convert_FP16_To_FP32(a[m+15:m])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundph_ps
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m256i a, 
    int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512 _mm512_maskz_cvt_roundph_ps(__mmask16 k, __m256i a,
                                       int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	m := j*16
        	IF k[j]
        		dst[i+31:i] := Convert_FP16_To_FP32(a[m+15:m])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtph_ps
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512 _mm512_maskz_cvtph_ps(__mmask16 k, __m256i a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	m := j*16
        	IF k[j]
        		dst[i+31:i] := Convert_FP16_To_FP32(a[m+15:m])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundps_epi32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512 a, 
    int rounding
:Param ETypes:
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_cvt_roundps_epi32(__m512 a, int rounding);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_Int32(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtps_epi32
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512i _mm512_cvtps_epi32(__m512 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_Int32(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundps_epi32
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512 a, 
    int rounding
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_mask_cvt_roundps_epi32(__m512i src,
                                          __mmask16 k, __m512 a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_Int32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtps_epi32
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512i _mm512_mask_cvtps_epi32(__m512i src, __mmask16 k,
                                    __m512 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_Int32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundps_epi32
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512 a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_maskz_cvt_roundps_epi32(__mmask16 k,
                                           __m512 a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_Int32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtps_epi32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512i _mm512_maskz_cvtps_epi32(__mmask16 k, __m512 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_Int32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundps_pd
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m256 a, 
    int sae
:Param ETypes:
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512d _mm512_cvt_roundps_pd(__m256 a, int sae);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 32*j
        	dst[i+63:i] := Convert_FP32_To_FP64(a[k+31:k])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtps_pd
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512d _mm512_cvtps_pd(__m256 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 32*j
        	dst[i+63:i] := Convert_FP32_To_FP64(a[k+31:k])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundps_pd
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m256 a, 
    int sae
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512d _mm512_mask_cvt_roundps_pd(__m512d src, __mmask8 k,
                                       __m256 a, int sae)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).  [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_FP64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtps_pd
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m256 a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512d _mm512_mask_cvtps_pd(__m512d src, __mmask8 k,
                                 __m256 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_FP64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundps_pd
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m256 a, 
    int sae
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512d _mm512_maskz_cvt_roundps_pd(__mmask8 k, __m256 a,
                                        int sae)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_FP64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtps_pd
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m256 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512d _mm512_maskz_cvtps_pd(__mmask8 k, __m256 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_FP64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundps_ph
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512 a, 
    int rounding
:Param ETypes:
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m256i _mm512_cvt_roundps_ph(__m512 a, int rounding);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst". [round2_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 16*j
        	l := 32*j
        	dst[i+15:i] := Convert_FP32_To_FP16(a[l+31:l])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtps_ph
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512 a, 
    int rounding
:Param ETypes:
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m256i _mm512_cvtps_ph(__m512 a, int rounding);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst". [round2_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 16*j
        	l := 32*j
        	dst[i+15:i] := Convert_FP32_To_FP16(a[l+31:l])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvt_roundps_ph
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask16 k, 
    __m512 a, 
    int rounding
:Param ETypes:
    UI16 src, 
    MASK k, 
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m256i _mm512_mask_cvt_roundps_ph(__m256i src, __mmask16 k,
                                       __m512 a, int rounding)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round2_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 16*j
        	l := 32*j
        	IF k[j]
        		dst[i+15:i] := Convert_FP32_To_FP16(a[l+31:l])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtps_ph
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask16 k, 
    __m512 a, 
    int rounding
:Param ETypes:
    UI16 src, 
    MASK k, 
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m256i _mm512_mask_cvtps_ph(__m256i src, __mmask16 k,
                                 __m512 a, int rounding)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round2_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 16*j
        	l := 32*j
        	IF k[j]
        		dst[i+15:i] := Convert_FP32_To_FP16(a[l+31:l])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvt_roundps_ph
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m512 a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m256i _mm512_maskz_cvt_roundps_ph(__mmask16 k, __m512 a,
                                        int rounding)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round2_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 16*j
        	l := 32*j
        	IF k[j]
        		dst[i+15:i] := Convert_FP32_To_FP16(a[l+31:l])
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtps_ph
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m512 a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m256i _mm512_maskz_cvtps_ph(__mmask16 k, __m512 a,
                                  int rounding)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round2_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 16*j
        	l := 32*j
        	IF k[j]
        		dst[i+15:i] := Convert_FP32_To_FP16(a[l+31:l])
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvt_roundps_epu32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512 a, 
    int rounding
:Param ETypes:
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_cvt_roundps_epu32(__m512 a, int rounding);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_UInt32(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtps_epu32
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512i _mm512_cvtps_epu32(__m512 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_UInt32(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundps_epu32
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512 a, 
    int rounding
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_mask_cvt_roundps_epu32(__m512i src,
                                          __mmask16 k, __m512 a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_UInt32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtps_epu32
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512i _mm512_mask_cvtps_epu32(__m512i src, __mmask16 k,
                                    __m512 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_UInt32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundps_epu32
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512 a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_maskz_cvt_roundps_epu32(__mmask16 k,
                                           __m512 a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_UInt32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtps_epu32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512i _mm512_maskz_cvtps_epu32(__mmask16 k, __m512 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_UInt32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtt_roundpd_epi32
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512d a, 
    int sae
:Param ETypes:
    FP64 a, 
    IMM sae

.. code-block:: C

    __m256i _mm512_cvtt_roundpd_epi32(__m512d a, int sae);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst".  [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_Int32_Truncate(a[k+63:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvttpd_epi32
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256i _mm512_cvttpd_epi32(__m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_Int32_Truncate(a[k+63:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtt_roundpd_epi32
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m512d a, 
    int sae
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP64 a, 
    IMM sae

.. code-block:: C

    __m256i _mm512_mask_cvtt_roundpd_epi32(__m256i src,
                                           __mmask8 k,
                                           __m512d a, int sae)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_Int32_Truncate(a[l+63:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvttpd_epi32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m256i _mm512_mask_cvttpd_epi32(__m256i src, __mmask8 k,
                                     __m512d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_Int32_Truncate(a[l+63:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtt_roundpd_epi32
-------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int sae
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM sae

.. code-block:: C

    __m256i _mm512_maskz_cvtt_roundpd_epi32(__mmask8 k,
                                            __m512d a, int sae)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).  [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_Int32_Truncate(a[l+63:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvttpd_epi32
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m256i _mm512_maskz_cvttpd_epi32(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_Int32_Truncate(a[l+63:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtt_roundpd_epu32
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512d a, 
    int sae
:Param ETypes:
    FP64 a, 
    IMM sae

.. code-block:: C

    __m256i _mm512_cvtt_roundpd_epu32(__m512d a, int sae);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst".  [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_UInt32_Truncate(a[k+63:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvttpd_epu32
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256i _mm512_cvttpd_epu32(__m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_UInt32_Truncate(a[k+63:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtt_roundpd_epu32
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m512d a, 
    int sae
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP64 a, 
    IMM sae

.. code-block:: C

    __m256i _mm512_mask_cvtt_roundpd_epu32(__m256i src,
                                           __mmask8 k,
                                           __m512d a, int sae)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).   [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_UInt32_Truncate(a[l+63:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvttpd_epu32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m256i _mm512_mask_cvttpd_epu32(__m256i src, __mmask8 k,
                                     __m512d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_UInt32_Truncate(a[l+63:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtt_roundpd_epu32
-------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int sae
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM sae

.. code-block:: C

    __m256i _mm512_maskz_cvtt_roundpd_epu32(__mmask8 k,
                                            __m512d a, int sae)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).  [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_UInt32_Truncate(a[l+63:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvttpd_epu32
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m256i _mm512_maskz_cvttpd_epu32(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_UInt32_Truncate(a[l+63:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtt_roundps_epi32
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512 a, 
    int sae
:Param ETypes:
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_cvtt_roundps_epi32(__m512 a, int sae);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst".  [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_Int32_Truncate(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvttps_epi32
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512i _mm512_cvttps_epi32(__m512 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_Int32_Truncate(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtt_roundps_epi32
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512 a, 
    int sae
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_mask_cvtt_roundps_epi32(__m512i src,
                                           __mmask16 k,
                                           __m512 a, int sae)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).  [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_Int32_Truncate(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvttps_epi32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512i _mm512_mask_cvttps_epi32(__m512i src, __mmask16 k,
                                     __m512 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_Int32_Truncate(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtt_roundps_epi32
-------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512 a, 
    int sae
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_maskz_cvtt_roundps_epi32(__mmask16 k,
                                            __m512 a, int sae)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).  [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_Int32_Truncate(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvttps_epi32
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512i _mm512_maskz_cvttps_epi32(__mmask16 k, __m512 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_Int32_Truncate(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtt_roundps_epu32
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512 a, 
    int sae
:Param ETypes:
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_cvtt_roundps_epu32(__m512 a, int sae);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst".  [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_UInt32_Truncate(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvttps_epu32
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512i _mm512_cvttps_epu32(__m512 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_UInt32_Truncate(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtt_roundps_epu32
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512 a, 
    int sae
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_mask_cvtt_roundps_epu32(__m512i src,
                                           __mmask16 k,
                                           __m512 a, int sae)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).   [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_UInt32_Truncate(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvttps_epu32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512i _mm512_mask_cvttps_epu32(__m512i src, __mmask16 k,
                                     __m512 a)

.. admonition:: Intel Description

    Convert packed double-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_UInt32_Truncate(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtt_roundps_epu32
-------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512 a, 
    int sae
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_maskz_cvtt_roundps_epu32(__mmask16 k,
                                            __m512 a, int sae)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).  [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_UInt32_Truncate(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvttps_epu32
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512i _mm512_maskz_cvttps_epu32(__mmask16 k, __m512 a);

.. admonition:: Intel Description

    Convert packed double-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_UInt32_Truncate(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepu32_pd
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m256i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m512d _mm512_cvtepu32_pd(__m256i a);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	dst[i+63:i] := Convert_Int64_To_FP64(a[l+31:l])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepu32_pd
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m256i a
:Param ETypes:
    FP64 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m512d _mm512_mask_cvtepu32_pd(__m512d src, __mmask8 k,
                                    __m256i a)

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_Int64_To_FP64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepu32_pd
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m512d _mm512_maskz_cvtepu32_pd(__mmask8 k, __m256i a);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_Int64_To_FP64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundepu32_ps
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512i a, 
    int rounding
:Param ETypes:
    UI32 a, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_cvt_roundepu32_ps(__m512i a, int rounding);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	dst[i+31:i] := Convert_Int32_To_FP32(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepu32_ps
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m512 _mm512_cvtepu32_ps(__m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	dst[i+31:i] := Convert_Int32_To_FP32(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundepu32_ps
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    FP32 src, 
    MASK k, 
    UI32 a, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask_cvt_roundepu32_ps(__m512 src,
                                         __mmask16 k, __m512i a,
                                         int rounding)

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := Convert_Int32_To_FP32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepu32_ps
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512i a
:Param ETypes:
    FP32 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m512 _mm512_mask_cvtepu32_ps(__m512 src, __mmask16 k,
                                   __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := Convert_Int32_To_FP32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundepu32_ps
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    MASK k, 
    UI32 a, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_maskz_cvt_roundepu32_ps(__mmask16 k,
                                          __m512i a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_Int32_To_FP32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepu32_ps
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m512 _mm512_maskz_cvtepu32_ps(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_Int32_To_FP32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepi32_epi8
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m512i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m128i _mm512_cvtepi32_epi8(__m512i a);

.. admonition:: Intel Description

    Convert packed 32-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	k := 8*j
        	dst[k+7:k] := Truncate8(a[i+31:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_mask_cvtepi32_epi8
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask16 k, 
    __m512i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m128i _mm512_mask_cvtepi32_epi8(__m128i src, __mmask16 k,
                                      __m512i a)

.. admonition:: Intel Description

    Convert packed 32-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Truncate8(a[i+31:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_maskz_cvtepi32_epi8
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m128i _mm512_maskz_cvtepi32_epi8(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Convert packed 32-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Truncate8(a[i+31:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_cvtepi32_epi16
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m256i _mm512_cvtepi32_epi16(__m512i a);

.. admonition:: Intel Description

    Convert packed 32-bit integers in "a" to packed 16-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	k := 16*j
        	dst[k+15:k] := Truncate16(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtepi32_epi16
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask16 k, 
    __m512i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm512_mask_cvtepi32_epi16(__m256i src, __mmask16 k,
                                       __m512i a)

.. admonition:: Intel Description

    Convert packed 32-bit integers in "a" to packed 16-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := Truncate16(a[i+31:i])
        	ELSE
        		dst[l+15:l] := src[l+15:l]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtepi32_epi16
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm512_maskz_cvtepi32_epi16(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Convert packed 32-bit integers in "a" to packed 16-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := Truncate16(a[i+31:i])
        	ELSE
        		dst[l+15:l] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtepi64_epi8
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128i _mm512_cvtepi64_epi8(__m512i a);

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 8*j
        	dst[k+7:k] := Truncate8(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_mask_cvtepi64_epi8
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm512_mask_cvtepi64_epi8(__m128i src, __mmask8 k,
                                      __m512i a)

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Truncate8(a[i+63:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_maskz_cvtepi64_epi8
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm512_maskz_cvtepi64_epi8(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Truncate8(a[i+63:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_cvtepi64_epi32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m256i _mm512_cvtepi64_epi32(__m512i a);

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 32*j
        	dst[k+31:k] := Truncate32(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtepi64_epi32
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m256i _mm512_mask_cvtepi64_epi32(__m256i src, __mmask8 k,
                                       __m512i a)

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[l+31:l] := Truncate32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := src[l+31:l]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtepi64_epi32
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m256i _mm512_maskz_cvtepi64_epi32(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[l+31:l] := Truncate32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtepi64_epi16
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128i _mm512_cvtepi64_epi16(__m512i a);

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 16-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 16*j
        	dst[k+15:k] := Truncate16(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_mask_cvtepi64_epi16
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm512_mask_cvtepi64_epi16(__m128i src, __mmask8 k,
                                       __m512i a)

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 16-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := Truncate16(a[i+63:i])
        	ELSE
        		dst[l+15:l] := src[l+15:l]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_maskz_cvtepi64_epi16
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm512_maskz_cvtepi64_epi16(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 16-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := Truncate16(a[i+63:i])
        	ELSE
        		dst[l+15:l] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_cvtsepi32_epi8
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m512i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m128i _mm512_cvtsepi32_epi8(__m512i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	k := 8*j
        	dst[k+7:k] := Saturate8(a[i+31:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_mask_cvtsepi32_epi8
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask16 k, 
    __m512i a
:Param ETypes:
    SI8 src, 
    MASK k, 
    SI32 a

.. code-block:: C

    __m128i _mm512_mask_cvtsepi32_epi8(__m128i src, __mmask16 k,
                                       __m512i a)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Saturate8(a[i+31:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_maskz_cvtsepi32_epi8
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI32 a

.. code-block:: C

    __m128i _mm512_maskz_cvtsepi32_epi8(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Saturate8(a[i+31:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_cvtsepi32_epi16
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m256i _mm512_cvtsepi32_epi16(__m512i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed 16-bit integers with signed saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	k := 16*j
        	dst[k+15:k] := Saturate16(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtsepi32_epi16
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask16 k, 
    __m512i a
:Param ETypes:
    SI16 src, 
    MASK k, 
    SI32 a

.. code-block:: C

    __m256i _mm512_mask_cvtsepi32_epi16(__m256i src,
                                        __mmask16 k, __m512i a)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed 16-bit integers with signed saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := Saturate16(a[i+31:i])
        	ELSE
        		dst[l+15:l] := src[l+15:l]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtsepi32_epi16
----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI32 a

.. code-block:: C

    __m256i _mm512_maskz_cvtsepi32_epi16(__mmask16 k,
                                         __m512i a)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed 16-bit integers with signed saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := Saturate16(a[i+31:i])
        	ELSE
        		dst[l+15:l] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtsepi64_epi8
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m512i a
:Param ETypes:
    SI64 a

.. code-block:: C

    __m128i _mm512_cvtsepi64_epi8(__m512i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 8*j
        	dst[k+7:k] := Saturate8(a[i+63:i])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm512_mask_cvtsepi64_epi8
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    SI8 src, 
    MASK k, 
    SI64 a

.. code-block:: C

    __m128i _mm512_mask_cvtsepi64_epi8(__m128i src, __mmask8 k,
                                       __m512i a)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Saturate8(a[i+63:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm512_maskz_cvtsepi64_epi8
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI64 a

.. code-block:: C

    __m128i _mm512_maskz_cvtsepi64_epi8(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Saturate8(a[i+63:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm512_cvtsepi64_epi32
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512i a
:Param ETypes:
    SI64 a

.. code-block:: C

    __m256i _mm512_cvtsepi64_epi32(__m512i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 32-bit integers with signed saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 32*j
        	dst[k+31:k] := Saturate32(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtsepi64_epi32
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    SI32 src, 
    MASK k, 
    SI64 a

.. code-block:: C

    __m256i _mm512_mask_cvtsepi64_epi32(__m256i src, __mmask8 k,
                                        __m512i a)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 32-bit integers with signed saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[l+31:l] := Saturate32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := src[l+31:l]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtsepi64_epi32
----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI64 a

.. code-block:: C

    __m256i _mm512_maskz_cvtsepi64_epi32(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 32-bit integers with signed saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[l+31:l] := Saturate32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtsepi64_epi16
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m512i a
:Param ETypes:
    SI64 a

.. code-block:: C

    __m128i _mm512_cvtsepi64_epi16(__m512i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 16-bit integers with signed saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 16*j
        	dst[k+15:k] := Saturate16(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_mask_cvtsepi64_epi16
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    SI16 src, 
    MASK k, 
    SI64 a

.. code-block:: C

    __m128i _mm512_mask_cvtsepi64_epi16(__m128i src, __mmask8 k,
                                        __m512i a)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 16-bit integers with signed saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := Saturate16(a[i+63:i])
        	ELSE
        		dst[l+15:l] := src[l+15:l]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_maskz_cvtsepi64_epi16
----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI64 a

.. code-block:: C

    __m128i _mm512_maskz_cvtsepi64_epi16(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 16-bit integers with signed saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := Saturate16(a[i+63:i])
        	ELSE
        		dst[l+15:l] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_cvtepi8_epi32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128i a
:Param ETypes:
    SI8 a

.. code-block:: C

    __m512i _mm512_cvtepi8_epi32(__m128i a);

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	k := 8*j
        	dst[i+31:i] := SignExtend32(a[k+7:k])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepi8_epi32
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m128i a
:Param ETypes:
    SI32 src, 
    MASK k, 
    SI8 a

.. code-block:: C

    __m512i _mm512_mask_cvtepi8_epi32(__m512i src, __mmask16 k,
                                      __m128i a)

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[i+31:i] := SignExtend32(a[l+7:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepi8_epi32
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI8 a

.. code-block:: C

    __m512i _mm512_maskz_cvtepi8_epi32(__mmask16 k, __m128i a);

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[i+31:i] := SignExtend32(a[l+7:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepi8_epi64
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128i a
:Param ETypes:
    SI8 a

.. code-block:: C

    __m512i _mm512_cvtepi8_epi64(__m128i a);

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in the low 8 bytes of "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 8*j
        	dst[i+63:i] := SignExtend64(a[k+7:k])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepi8_epi64
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    SI64 src, 
    MASK k, 
    SI8 a

.. code-block:: C

    __m512i _mm512_mask_cvtepi8_epi64(__m512i src, __mmask8 k,
                                      __m128i a)

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in the low 8 bytes of "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[i+63:i] := SignExtend64(a[l+7:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepi8_epi64
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI8 a

.. code-block:: C

    __m512i _mm512_maskz_cvtepi8_epi64(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in the low 8 bytes of "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[i+63:i] := SignExtend64(a[l+7:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepi32_epi64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m512i _mm512_cvtepi32_epi64(__m256i a);

.. admonition:: Intel Description

    Sign extend packed 32-bit integers in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 32*j
        	dst[i+63:i] := SignExtend64(a[k+31:k])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepi32_epi64
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m256i a
:Param ETypes:
    SI64 src, 
    MASK k, 
    SI32 a

.. code-block:: C

    __m512i _mm512_mask_cvtepi32_epi64(__m512i src, __mmask8 k,
                                       __m256i a)

.. admonition:: Intel Description

    Sign extend packed 32-bit integers in "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[i+63:i] := SignExtend64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepi32_epi64
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    SI32 a

.. code-block:: C

    __m512i _mm512_maskz_cvtepi32_epi64(__mmask8 k, __m256i a);

.. admonition:: Intel Description

    Sign extend packed 32-bit integers in "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[i+63:i] := SignExtend64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepi16_epi32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256i a
:Param ETypes:
    SI16 a

.. code-block:: C

    __m512i _mm512_cvtepi16_epi32(__m256i a);

.. admonition:: Intel Description

    Sign extend packed 16-bit integers in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	k := 16*j
        	dst[i+31:i] := SignExtend32(a[k+15:k])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepi16_epi32
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m256i a
:Param ETypes:
    SI32 src, 
    MASK k, 
    SI16 a

.. code-block:: C

    __m512i _mm512_mask_cvtepi16_epi32(__m512i src, __mmask16 k,
                                       __m256i a)

.. admonition:: Intel Description

    Sign extend packed 16-bit integers in "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	l := j*16
        	IF k[j]
        		dst[i+31:i] := SignExtend32(a[l+15:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepi16_epi32
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    SI16 a

.. code-block:: C

    __m512i _mm512_maskz_cvtepi16_epi32(__mmask16 k, __m256i a);

.. admonition:: Intel Description

    Sign extend packed 16-bit integers in "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[i+31:i] := SignExtend32(a[l+15:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepi16_epi64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128i a
:Param ETypes:
    SI16 a

.. code-block:: C

    __m512i _mm512_cvtepi16_epi64(__m128i a);

.. admonition:: Intel Description

    Sign extend packed 16-bit integers in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 16*j
        	dst[i+63:i] := SignExtend64(a[k+15:k])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepi16_epi64
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    SI64 src, 
    MASK k, 
    SI16 a

.. code-block:: C

    __m512i _mm512_mask_cvtepi16_epi64(__m512i src, __mmask8 k,
                                       __m128i a)

.. admonition:: Intel Description

    Sign extend packed 16-bit integers in "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[i+63:i] := SignExtend64(a[l+15:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepi16_epi64
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI16 a

.. code-block:: C

    __m512i _mm512_maskz_cvtepi16_epi64(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Sign extend packed 16-bit integers in "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[i+63:i] := SignExtend64(a[l+15:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtusepi32_epi8
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m512i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m128i _mm512_cvtusepi32_epi8(__m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	k := 8*j
        	dst[k+7:k] := SaturateU8(a[i+31:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_mask_cvtusepi32_epi8
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask16 k, 
    __m512i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m128i _mm512_mask_cvtusepi32_epi8(__m128i src,
                                        __mmask16 k, __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := SaturateU8(a[i+31:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_maskz_cvtusepi32_epi8
----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m128i _mm512_maskz_cvtusepi32_epi8(__mmask16 k,
                                         __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := SaturateU8(a[i+31:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_cvtusepi32_epi16
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m256i _mm512_cvtusepi32_epi16(__m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed unsigned 16-bit integers with unsigned saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	k := 16*j
        	dst[k+15:k] := SaturateU16(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtusepi32_epi16
----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask16 k, 
    __m512i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm512_mask_cvtusepi32_epi16(__m256i src,
                                         __mmask16 k,
                                         __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed unsigned 16-bit integers with unsigned saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := SaturateU16(a[i+31:i])
        	ELSE
        		dst[l+15:l] := src[l+15:l]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtusepi32_epi16
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm512_maskz_cvtusepi32_epi16(__mmask16 k,
                                          __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed unsigned 16-bit integers with unsigned saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := SaturateU16(a[i+31:i])
        	ELSE
        		dst[l+15:l] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtusepi64_epi8
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128i _mm512_cvtusepi64_epi8(__m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 8*j
        	dst[k+7:k] := SaturateU8(a[i+63:i])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm512_mask_cvtusepi64_epi8
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm512_mask_cvtusepi64_epi8(__m128i src, __mmask8 k,
                                        __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := SaturateU8(a[i+63:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm512_maskz_cvtusepi64_epi8
----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm512_maskz_cvtusepi64_epi8(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := SaturateU8(a[i+63:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm512_cvtusepi64_epi32
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m256i _mm512_cvtusepi64_epi32(__m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 32-bit integers with unsigned saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 32*j
        	dst[k+31:k] := SaturateU32(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtusepi64_epi32
----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m256i _mm512_mask_cvtusepi64_epi32(__m256i src,
                                         __mmask8 k, __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 32-bit integers with unsigned saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[l+31:l] := SaturateU32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := src[l+31:l]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtusepi64_epi32
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m256i _mm512_maskz_cvtusepi64_epi32(__mmask8 k,
                                          __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 32-bit integers with unsigned saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[l+31:l] := SaturateU32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtusepi64_epi16
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128i _mm512_cvtusepi64_epi16(__m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 16-bit integers with unsigned saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 16*j
        	dst[k+15:k] := SaturateU16(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_mask_cvtusepi64_epi16
----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm512_mask_cvtusepi64_epi16(__m128i src,
                                         __mmask8 k, __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 16-bit integers with unsigned saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := SaturateU16(a[i+63:i])
        	ELSE
        		dst[l+15:l] := src[l+15:l]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_maskz_cvtusepi64_epi16
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm512_maskz_cvtusepi64_epi16(__mmask8 k,
                                          __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 16-bit integers with unsigned saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := SaturateU16(a[i+63:i])
        	ELSE
        		dst[l+15:l] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_cvtepu8_epi32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128i a
:Param ETypes:
    UI8 a

.. code-block:: C

    __m512i _mm512_cvtepu8_epi32(__m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	k := 8*j
        	dst[i+31:i] := ZeroExtend32(a[k+7:k])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepu8_epi32
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m128i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI8 a

.. code-block:: C

    __m512i _mm512_mask_cvtepu8_epi32(__m512i src, __mmask16 k,
                                      __m128i a)

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[i+31:i] := ZeroExtend32(a[l+7:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepu8_epi32
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    __m512i _mm512_maskz_cvtepu8_epi32(__mmask16 k, __m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[i+31:i] := ZeroExtend32(a[l+7:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepu8_epi64
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128i a
:Param ETypes:
    UI8 a

.. code-block:: C

    __m512i _mm512_cvtepu8_epi64(__m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in the low 8 byte sof "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 8*j
        	dst[i+63:i] := ZeroExtend64(a[k+7:k])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepu8_epi64
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI8 a

.. code-block:: C

    __m512i _mm512_mask_cvtepu8_epi64(__m512i src, __mmask8 k,
                                      __m128i a)

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in the low 8 bytes of "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[i+63:i] := ZeroExtend64(a[l+7:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepu8_epi64
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    __m512i _mm512_maskz_cvtepu8_epi64(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in the low 8 bytes of "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[i+63:i] := ZeroExtend64(a[l+7:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepu32_epi64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m512i _mm512_cvtepu32_epi64(__m256i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 32-bit integers in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 32*j
        	dst[i+63:i] := ZeroExtend64(a[k+31:k])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepu32_epi64
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m256i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m512i _mm512_mask_cvtepu32_epi64(__m512i src, __mmask8 k,
                                       __m256i a)

.. admonition:: Intel Description

    Zero extend packed unsigned 32-bit integers in "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[i+63:i] := ZeroExtend64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepu32_epi64
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m512i _mm512_maskz_cvtepu32_epi64(__mmask8 k, __m256i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 32-bit integers in "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[i+63:i] := ZeroExtend64(a[l+31:l])
        	ELSE 
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepu16_epi32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m512i _mm512_cvtepu16_epi32(__m256i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 16-bit integers in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	k := 16*j
        	dst[i+31:i] := ZeroExtend32(a[k+15:k])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepu16_epi32
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m256i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m512i _mm512_mask_cvtepu16_epi32(__m512i src, __mmask16 k,
                                       __m256i a)

.. admonition:: Intel Description

    Zero extend packed unsigned 16-bit integers in "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[i+31:i] := ZeroExtend32(a[l+15:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepu16_epi32
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m512i _mm512_maskz_cvtepu16_epi32(__mmask16 k, __m256i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 16-bit integers in "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[i+31:i] := ZeroExtend32(a[l+15:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepu16_epi64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m512i _mm512_cvtepu16_epi64(__m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 16-bit integers in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	k := 16*j
        	dst[i+63:i] := ZeroExtend64(a[k+15:k])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepu16_epi64
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m512i _mm512_mask_cvtepu16_epi64(__m512i src, __mmask8 k,
                                       __m128i a)

.. admonition:: Intel Description

    Zero extend packed unsigned 16-bit integers in "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[i+63:i] := ZeroExtend64(a[l+15:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepu16_epi64
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m512i _mm512_maskz_cvtepu16_epi64(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 16-bit integers in "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[i+63:i] := ZeroExtend64(a[l+15:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtss_f32
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: float
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    float _mm512_cvtss_f32(__m512 a);

.. admonition:: Intel Description

    Copy the lower single-precision (32-bit) floating-point element of "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0]
        	

_mm512_cvtsd_f64
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: double
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    double _mm512_cvtsd_f64(__m512d a);

.. admonition:: Intel Description

    Copy the lower double-precision (64-bit) floating-point element of "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        	

_mm512_cvtsi512_si32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: int
:Param Types:
    __m512i a
:Param ETypes:
    UI32 a

.. code-block:: C

    int _mm512_cvtsi512_si32(__m512i a);

.. admonition:: Intel Description

    Copy the lower 32-bit integer in "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0]
        	

_mm512_cvtpslo_pd
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512 v2
:Param ETypes:
    FP32 v2

.. code-block:: C

    __m512d _mm512_cvtpslo_pd(__m512 v2);

.. admonition:: Intel Description

    Performs element-by-element conversion of the lower half of packed single-precision (32-bit) floating-point elements in "v2" to packed double-precision (64-bit) floating-point elements, storing the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	n := j*64
        	dst[n+63:n] := Convert_FP32_To_FP64(v2[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtpslo_pd
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512 v2
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP32 v2

.. code-block:: C

    __m512d _mm512_mask_cvtpslo_pd(__m512d src, __mmask8 k,
                                   __m512 v2)

.. admonition:: Intel Description

    Performs element-by-element conversion of the lower half of packed single-precision (32-bit) floating-point elements in "v2" to packed double-precision (64-bit) floating-point elements, storing the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	l := j*64
        	IF k[j]
        		dst[l+63:l] := Convert_FP32_To_FP64(v2[i+31:i])
        	ELSE
        		dst[l+63:l] := src[l+63:l]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepi32lo_pd
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512i v2
:Param ETypes:
    SI32 v2

.. code-block:: C

    __m512d _mm512_cvtepi32lo_pd(__m512i v2);

.. admonition:: Intel Description

    Performs element-by-element conversion of the lower half of packed 32-bit integer elements in "v2" to packed double-precision (64-bit) floating-point elements, storing the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	l := j*64
        	dst[l+63:l] := Convert_Int32_To_FP64(v2[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepi32lo_pd
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512i v2
:Param ETypes:
    FP64 src, 
    MASK k, 
    SI32 v2

.. code-block:: C

    __m512d _mm512_mask_cvtepi32lo_pd(__m512d src, __mmask8 k,
                                      __m512i v2)

.. admonition:: Intel Description

    Performs element-by-element conversion of the lower half of packed 32-bit integer elements in "v2" to packed double-precision (64-bit) floating-point elements, storing the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	n := j*64
        	IF k[j]
        		dst[n+63:n] := Convert_Int32_To_FP64(v2[i+31:i])
        	ELSE
        		dst[n+63:n] := src[n+63:n]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepu32lo_pd
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512i v2
:Param ETypes:
    UI32 v2

.. code-block:: C

    __m512d _mm512_cvtepu32lo_pd(__m512i v2);

.. admonition:: Intel Description

    Performs element-by-element conversion of the lower half of packed 32-bit unsigned integer elements in "v2" to packed double-precision (64-bit) floating-point elements, storing the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	n := j*64
        	dst[n+63:n] := Convert_Int32_To_FP64(v2[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepu32lo_pd
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512i v2
:Param ETypes:
    FP64 src, 
    MASK k, 
    UI32 v2

.. code-block:: C

    __m512d _mm512_mask_cvtepu32lo_pd(__m512d src, __mmask8 k,
                                      __m512i v2)

.. admonition:: Intel Description

    Performs element-by-element conversion of the lower half of 32-bit unsigned integer elements in "v2" to packed double-precision (64-bit) floating-point elements, storing the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	l := j*64
        	IF k[j]
        		dst[l+63:l] := Convert_Int32_To_FP64(v2[i+31:i])
        	ELSE
        		dst[l+63:l] := src[l+63:l]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtpd_pslo
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512d v2
:Param ETypes:
    FP64 v2

.. code-block:: C

    __m512 _mm512_cvtpd_pslo(__m512d v2);

.. admonition:: Intel Description

    Performs an element-by-element conversion of packed double-precision (64-bit) floating-point elements in "v2" to single-precision (32-bit) floating-point elements and stores them in "dst". The elements are stored in the lower half of the results vector, while the remaining upper half locations are set to 0.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	k := j*32
        	dst[k+31:k] := Convert_FP64_To_FP32(v2[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtpd_pslo
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask8 k, 
    __m512d v2
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP64 v2

.. code-block:: C

    __m512 _mm512_mask_cvtpd_pslo(__m512 src, __mmask8 k,
                                  __m512d v2)

.. admonition:: Intel Description

    Performs an element-by-element conversion of packed double-precision (64-bit) floating-point elements in "v2" to single-precision (32-bit) floating-point elements and stores them in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). The elements are stored in the lower half of the results vector, while the remaining upper half locations are set to 0.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[l+31:l] := Convert_FP64_To_FP32(v2[i+63:i])
        	ELSE
        		dst[l+31:l] := src[l+31:l]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtpbh_ps
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m256bh a
:Param ETypes:
    BF16 a

.. code-block:: C

    __m512 _mm512_cvtpbh_ps(__m256bh a);

.. admonition:: Intel Description

    Convert packed BF16 (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst". This intrinsic neither raises any floating point exceptions nor turns sNAN into qNAN.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	m := j*16
        	dst[i+31:i] := Convert_BF16_To_FP32(a[m+15:m])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtpbh_ps
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m256bh a
:Param ETypes:
    MASK k, 
    BF16 a

.. code-block:: C

    __m512 _mm512_maskz_cvtpbh_ps(__mmask16 k, __m256bh a);

.. admonition:: Intel Description

    Convert packed BF16 (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic neither raises any floating point exceptions nor turns sNAN into qNAN.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	m := j*16
        	IF k[j]
        		dst[i+31:i] := Convert_BF16_To_FP32(a[m+15:m])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtpbh_ps
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m256bh a
:Param ETypes:
    FP32 src, 
    MASK k, 
    BF16 a

.. code-block:: C

    __m512 _mm512_mask_cvtpbh_ps(__m512 src, __mmask16 k,
                                 __m256bh a)

.. admonition:: Intel Description

    Convert packed BF16 (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic neither raises any floating point exceptions nor turns sNAN into qNAN.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	m := j*16
        	IF k[j]
        		dst[i+31:i] := Convert_BF16_To_FP32(a[m+15:m])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtne2ps_pbh
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512bh
:Param Types:
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512bh _mm512_cvtne2ps_pbh(__m512 a, __m512 b);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in two vectors "a" and "b" to packed BF16 (16-bit) floating-point elements, and store the results in single vector "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF j < 16
        		t := b.fp32[j]
        	ELSE
        		t := a.fp32[j-16]
        	FI
        	dst.word[j] := Convert_FP32_To_BF16(t)
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtne2ps_pbh
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512bh
:Param Types:
    __m512bh src, 
    __mmask32 k, 
    __m512 a, 
    __m512 b
:Param ETypes:
    BF16 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512bh _mm512_mask_cvtne2ps_pbh(__m512bh src, __mmask32 k,
                                      __m512 a, __m512 b)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in two vectors "a" and "b" to packed BF16 (16-bit) floating-point elements, and store the results in single vector "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		IF j < 16
        			t := b.fp32[j]
        		ELSE
        			t := a.fp32[j-16]
        		FI
        		dst.word[j] := Convert_FP32_To_BF16(t)
        	ELSE
        		dst.word[j] := src.word[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtne2ps_pbh
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512bh
:Param Types:
    __mmask32 k, 
    __m512 a, 
    __m512 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512bh _mm512_maskz_cvtne2ps_pbh(__mmask32 k, __m512 a,
                                       __m512 b)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in two vectors "a" and "b" to packed BF16 (16-bit) floating-point elements, and store the results in single vector "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		IF j < 16
        			t := b.fp32[j]
        		ELSE
        			t := a.fp32[j-16]
        		FI
        		dst.word[j] := Convert_FP32_To_BF16(t)
        	ELSE
        		dst.word[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtneps_pbh
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256bh
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256bh _mm512_cvtneps_pbh(__m512 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed BF16 (16-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	dst.word[j] := Convert_FP32_To_BF16(a.fp32[j])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtneps_pbh
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256bh
:Param Types:
    __m256bh src, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    BF16 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m256bh _mm512_mask_cvtneps_pbh(__m256bh src, __mmask16 k,
                                     __m512 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed BF16 (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		dst.word[j] := Convert_FP32_To_BF16(a.fp32[j])
        	ELSE
        		dst.word[j] := src.word[j]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtneps_pbh
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256bh
:Param Types:
    __mmask16 k, 
    __m512 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m256bh _mm512_maskz_cvtneps_pbh(__mmask16 k, __m512 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed BF16 (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		dst.word[j] := Convert_FP32_To_BF16(a.fp32[j])
        	ELSE
        		dst.word[j] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtepi16_ph
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512i a
:Param ETypes:
    SI16 a

.. code-block:: C

    __m512h _mm512_cvtepi16_ph(__m512i a);

.. admonition:: Intel Description

    Convert packed signed 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundepi16_ph
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512i a, 
    int rounding
:Param ETypes:
    SI16 a, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_cvt_roundepi16_ph(__m512i a, int rounding);

.. admonition:: Intel Description

    Convert packed signed 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepi16_ph
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512i a
:Param ETypes:
    FP16 src, 
    MASK k, 
    SI16 a

.. code-block:: C

    __m512h _mm512_mask_cvtepi16_ph(__m512h src, __mmask32 k,
                                    __m512i a)

.. admonition:: Intel Description

    Convert packed signed 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundepi16_ph
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    SI16 a, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_cvt_roundepi16_ph(__m512h src,
                                          __mmask32 k,
                                          __m512i a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed signed 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepi16_ph
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI16 a

.. code-block:: C

    __m512h _mm512_maskz_cvtepi16_ph(__mmask32 k, __m512i a);

.. admonition:: Intel Description

    Convert packed signed 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundepi16_ph
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    MASK k, 
    SI16 a, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_cvt_roundepi16_ph(__mmask32 k,
                                           __m512i a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed signed 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepu16_ph
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m512h _mm512_cvtepu16_ph(__m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundepu16_ph
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512i a, 
    int rounding
:Param ETypes:
    UI16 a, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_cvt_roundepu16_ph(__m512i a, int rounding);

.. admonition:: Intel Description

    Convert packed unsigned 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtepu16_ph
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512i a
:Param ETypes:
    FP16 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m512h _mm512_mask_cvtepu16_ph(__m512h src, __mmask32 k,
                                    __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundepu16_ph
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    UI16 a, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_cvt_roundepu16_ph(__m512h src,
                                          __mmask32 k,
                                          __m512i a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed unsigned 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtepu16_ph
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m512h _mm512_maskz_cvtepu16_ph(__mmask32 k, __m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundepu16_ph
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    MASK k, 
    UI16 a, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_cvt_roundepu16_ph(__mmask32 k,
                                           __m512i a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed unsigned 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtepi32_ph
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __m512i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m256h _mm512_cvtepi32_ph(__m512i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvt_roundepi32_ph
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __m512i a, 
    int rounding
:Param ETypes:
    SI32 a, 
    IMM rounding

.. code-block:: C

    __m256h _mm512_cvt_roundepi32_ph(__m512i a, int rounding);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtepi32_ph
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __m256h src, 
    __mmask16 k, 
    __m512i a
:Param ETypes:
    FP16 src, 
    MASK k, 
    SI32 a

.. code-block:: C

    __m256h _mm512_mask_cvtepi32_ph(__m256h src, __mmask16 k,
                                    __m512i a)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvt_roundepi32_ph
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __m256h src, 
    __mmask16 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    SI32 a, 
    IMM rounding

.. code-block:: C

    __m256h _mm512_mask_cvt_roundepi32_ph(__m256h src,
                                          __mmask16 k,
                                          __m512i a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtepi32_ph
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI32 a

.. code-block:: C

    __m256h _mm512_maskz_cvtepi32_ph(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvt_roundepi32_ph
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __mmask16 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    MASK k, 
    SI32 a, 
    IMM rounding

.. code-block:: C

    __m256h _mm512_maskz_cvt_roundepi32_ph(__mmask16 k,
                                           __m512i a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtepu32_ph
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __m512i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m256h _mm512_cvtepu32_ph(__m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvt_roundepu32_ph
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __m512i a, 
    int rounding
:Param ETypes:
    UI32 a, 
    IMM rounding

.. code-block:: C

    __m256h _mm512_cvt_roundepu32_ph(__m512i a, int rounding);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtepu32_ph
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __m256h src, 
    __mmask16 k, 
    __m512i a
:Param ETypes:
    FP16 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m256h _mm512_mask_cvtepu32_ph(__m256h src, __mmask16 k,
                                    __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvt_roundepu32_ph
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __m256h src, 
    __mmask16 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    UI32 a, 
    IMM rounding

.. code-block:: C

    __m256h _mm512_mask_cvt_roundepu32_ph(__m256h src,
                                          __mmask16 k,
                                          __m512i a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtepu32_ph
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m256h _mm512_maskz_cvtepu32_ph(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvt_roundepu32_ph
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __mmask16 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    MASK k, 
    UI32 a, 
    IMM rounding

.. code-block:: C

    __m256h _mm512_maskz_cvt_roundepu32_ph(__mmask16 k,
                                           __m512i a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtepi64_ph
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __m512i a
:Param ETypes:
    SI64 a

.. code-block:: C

    __m128h _mm512_cvtepi64_ph(__m512i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_cvt_roundepi64_ph
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __m512i a, 
    int rounding
:Param ETypes:
    SI64 a, 
    IMM rounding

.. code-block:: C

    __m128h _mm512_cvt_roundepi64_ph(__m512i a, int rounding);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_mask_cvtepi64_ph
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    FP16 src, 
    MASK k, 
    SI64 a

.. code-block:: C

    __m128h _mm512_mask_cvtepi64_ph(__m128h src, __mmask8 k,
                                    __m512i a)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_mask_cvt_roundepi64_ph
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    SI64 a, 
    IMM rounding

.. code-block:: C

    __m128h _mm512_mask_cvt_roundepi64_ph(__m128h src,
                                          __mmask8 k, __m512i a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_maskz_cvtepi64_ph
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI64 a

.. code-block:: C

    __m128h _mm512_maskz_cvtepi64_ph(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_maskz_cvt_roundepi64_ph
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    MASK k, 
    SI64 a, 
    IMM rounding

.. code-block:: C

    __m128h _mm512_maskz_cvt_roundepi64_ph(__mmask8 k,
                                           __m512i a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_cvtepu64_ph
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128h _mm512_cvtepu64_ph(__m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_cvt_roundepu64_ph
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __m512i a, 
    int rounding
:Param ETypes:
    UI64 a, 
    IMM rounding

.. code-block:: C

    __m128h _mm512_cvt_roundepu64_ph(__m512i a, int rounding);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_mask_cvtepu64_ph
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    FP16 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m128h _mm512_mask_cvtepu64_ph(__m128h src, __mmask8 k,
                                    __m512i a)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_mask_cvt_roundepu64_ph
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    UI64 a, 
    IMM rounding

.. code-block:: C

    __m128h _mm512_mask_cvt_roundepu64_ph(__m128h src,
                                          __mmask8 k, __m512i a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_maskz_cvtepu64_ph
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m128h _mm512_maskz_cvtepu64_ph(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_maskz_cvt_roundepu64_ph
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m512i a, 
    int rounding
:Param ETypes:
    MASK k, 
    UI64 a, 
    IMM rounding

.. code-block:: C

    __m128h _mm512_maskz_cvt_roundepu64_ph(__mmask8 k,
                                           __m512i a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_cvtpd_ph
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128h _mm512_cvtpd_ph(__m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.fp16[j] := Convert_FP64_To_FP16(a.fp64[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_cvt_roundpd_ph
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __m512d a, 
    int rounding
:Param ETypes:
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m128h _mm512_cvt_roundpd_ph(__m512d a, int rounding);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.fp16[j] := Convert_FP64_To_FP16(a.fp64[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_mask_cvtpd_ph
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m128h _mm512_mask_cvtpd_ph(__m128h src, __mmask8 k,
                                 __m512d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.fp16[j] := Convert_FP64_To_FP16(a.fp64[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_mask_cvt_roundpd_ph
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m512d a, 
    int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m128h _mm512_mask_cvt_roundpd_ph(__m128h src, __mmask8 k,
                                       __m512d a, int rounding)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.fp16[j] := Convert_FP64_To_FP16(a.fp64[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_maskz_cvtpd_ph
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m128h _mm512_maskz_cvtpd_ph(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.fp16[j] := Convert_FP64_To_FP16(a.fp64[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_maskz_cvt_roundpd_ph
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m128h _mm512_maskz_cvt_roundpd_ph(__mmask8 k, __m512d a,
                                        int rounding)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.fp16[j] := Convert_FP64_To_FP16(a.fp64[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm512_cvtxps_ph
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256h _mm512_cvtxps_ph(__m512 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	dst.fp16[j] := Convert_FP32_To_FP16(a.fp32[j])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtx_roundps_ph
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __m512 a, 
    int rounding
:Param ETypes:
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m256h _mm512_cvtx_roundps_ph(__m512 a, int rounding);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	dst.fp16[j] := Convert_FP32_To_FP16(a.fp32[j])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtxps_ph
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __m256h src, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m256h _mm512_mask_cvtxps_ph(__m256h src, __mmask16 k,
                                  __m512 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		dst.fp16[j] := Convert_FP32_To_FP16(a.fp32[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_cvtx_roundps_ph
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __m256h src, 
    __mmask16 k, 
    __m512 a, 
    int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m256h _mm512_mask_cvtx_roundps_ph(__m256h src,
                                        __mmask16 k, __m512 a,
                                        int rounding)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		dst.fp16[j] := Convert_FP32_To_FP16(a.fp32[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtxps_ph
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __mmask16 k, 
    __m512 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m256h _mm512_maskz_cvtxps_ph(__mmask16 k, __m512 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		dst.fp16[j] := Convert_FP32_To_FP16(a.fp32[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_cvtx_roundps_ph
----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m256h
:Param Types:
    __mmask16 k, 
    __m512 a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m256h _mm512_maskz_cvtx_roundps_ph(__mmask16 k, __m512 a,
                                         int rounding)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		dst.fp16[j] := Convert_FP32_To_FP16(a.fp32[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_cvtph_epi32
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512i _mm512_cvtph_epi32(__m256h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	dst.dword[j] := Convert_FP16_To_Int32(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundph_epi32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256h a, 
    int rounding
:Param ETypes:
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_cvt_roundph_epi32(__m256h a, int rounding);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	dst.dword[j] := Convert_FP16_To_Int32(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtph_epi32
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m256h a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_mask_cvtph_epi32(__m512i src, __mmask16 k,
                                    __m256h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_Int32(a.fp16[j])
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundph_epi32
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m256h a, 
    int rounding
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_mask_cvt_roundph_epi32(__m512i src,
                                          __mmask16 k,
                                          __m256h a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_Int32(a.fp16[j])
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtph_epi32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m256h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_maskz_cvtph_epi32(__mmask16 k, __m256h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_Int32(a.fp16[j])
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundph_epi32
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m256h a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_maskz_cvt_roundph_epi32(__mmask16 k,
                                           __m256h a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_Int32(a.fp16[j])
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvttph_epi32
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512i _mm512_cvttph_epi32(__m256h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	dst.dword[j] := Convert_FP16_To_Int32_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtt_roundph_epi32
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256h a, 
    int sae
:Param ETypes:
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_cvtt_roundph_epi32(__m256h a, int sae);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	dst.dword[j] := Convert_FP16_To_Int32_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvttph_epi32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m256h a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_mask_cvttph_epi32(__m512i src, __mmask16 k,
                                     __m256h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_Int32_Truncate(a.fp16[j])
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtt_roundph_epi32
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m256h a, 
    int sae
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_mask_cvtt_roundph_epi32(__m512i src,
                                           __mmask16 k,
                                           __m256h a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_Int32_Truncate(a.fp16[j])
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvttph_epi32
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m256h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_maskz_cvttph_epi32(__mmask16 k, __m256h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_Int32_Truncate(a.fp16[j])
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtt_roundph_epi32
-------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m256h a, 
    int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_maskz_cvtt_roundph_epi32(__mmask16 k,
                                            __m256h a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_Int32_Truncate(a.fp16[j])
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtph_epu32
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512i _mm512_cvtph_epu32(__m256h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	dst.dword[j] := Convert_FP16_To_UInt32(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundph_epu32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256h a, 
    int rounding
:Param ETypes:
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_cvt_roundph_epu32(__m256h a, int rounding);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	dst.dword[j] := Convert_FP16_To_UInt32(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtph_epu32
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m256h a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_mask_cvtph_epu32(__m512i src, __mmask16 k,
                                    __m256h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_UInt32(a.fp16[j])
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundph_epu32
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m256h a, 
    int rounding
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_mask_cvt_roundph_epu32(__m512i src,
                                          __mmask16 k,
                                          __m256h a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_UInt32(a.fp16[j])
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtph_epu32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m256h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_maskz_cvtph_epu32(__mmask16 k, __m256h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_UInt32(a.fp16[j])
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundph_epu32
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m256h a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_maskz_cvt_roundph_epu32(__mmask16 k,
                                           __m256h a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_UInt32(a.fp16[j])
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvttph_epu32
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512i _mm512_cvttph_epu32(__m256h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	dst.dword[j] := Convert_FP16_To_UInt32_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtt_roundph_epu32
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256h a, 
    int sae
:Param ETypes:
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_cvtt_roundph_epu32(__m256h a, int sae);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	dst.dword[j] := Convert_FP16_To_UInt32_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvttph_epu32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m256h a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_mask_cvttph_epu32(__m512i src, __mmask16 k,
                                     __m256h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_UInt32_Truncate(a.fp16[j])
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtt_roundph_epu32
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m256h a, 
    int sae
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_mask_cvtt_roundph_epu32(__m512i src,
                                           __mmask16 k,
                                           __m256h a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_UInt32_Truncate(a.fp16[j])
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvttph_epu32
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m256h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_maskz_cvttph_epu32(__mmask16 k, __m256h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_UInt32_Truncate(a.fp16[j])
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtt_roundph_epu32
-------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m256h a, 
    int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_maskz_cvtt_roundph_epu32(__mmask16 k,
                                            __m256h a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 15
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_UInt32_Truncate(a.fp16[j])
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtph_epi64
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512i _mm512_cvtph_epi64(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.qword[j] := Convert_FP16_To_Int64(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundph_epi64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128h a, 
    int rounding
:Param ETypes:
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_cvt_roundph_epi64(__m128h a, int rounding);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.qword[j] := Convert_FP16_To_Int64(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtph_epi64
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_mask_cvtph_epi64(__m512i src, __mmask8 k,
                                    __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_Int64(a.fp16[j])
        	ELSE
        		dst.qword[j] := src.qword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundph_epi64
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m128h a, 
    int rounding
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_mask_cvt_roundph_epi64(__m512i src,
                                          __mmask8 k, __m128h a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_Int64(a.fp16[j])
        	ELSE
        		dst.qword[j] := src.qword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtph_epi64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_maskz_cvtph_epi64(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_Int64(a.fp16[j])
        	ELSE
        		dst.qword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundph_epi64
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m128h a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_maskz_cvt_roundph_epi64(__mmask8 k,
                                           __m128h a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_Int64(a.fp16[j])
        	ELSE
        		dst.qword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvttph_epi64
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512i _mm512_cvttph_epi64(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.qword[j] := Convert_FP16_To_Int64_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtt_roundph_epi64
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128h a, 
    int sae
:Param ETypes:
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_cvtt_roundph_epi64(__m128h a, int sae);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.qword[j] := Convert_FP16_To_Int64_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvttph_epi64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_mask_cvttph_epi64(__m512i src, __mmask8 k,
                                     __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_Int64_Truncate(a.fp16[j])
        	ELSE
        		dst.qword[j] := src.qword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtt_roundph_epi64
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m128h a, 
    int sae
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_mask_cvtt_roundph_epi64(__m512i src,
                                           __mmask8 k,
                                           __m128h a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_Int64_Truncate(a.fp16[j])
        	ELSE
        		dst.qword[j] := src.qword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvttph_epi64
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_maskz_cvttph_epi64(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_Int64_Truncate(a.fp16[j])
        	ELSE
        		dst.qword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtt_roundph_epi64
-------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m128h a, 
    int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_maskz_cvtt_roundph_epi64(__mmask8 k,
                                            __m128h a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_Int64_Truncate(a.fp16[j])
        	ELSE
        		dst.qword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtph_epu64
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512i _mm512_cvtph_epu64(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.qword[j] := Convert_FP16_To_UInt64(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundph_epu64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128h a, 
    int rounding
:Param ETypes:
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_cvt_roundph_epu64(__m128h a, int rounding);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.qword[j] := Convert_FP16_To_UInt64(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtph_epu64
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_mask_cvtph_epu64(__m512i src, __mmask8 k,
                                    __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_UInt64(a.fp16[j])
        	ELSE
        		dst.qword[j] := src.qword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundph_epu64
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m128h a, 
    int rounding
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_mask_cvt_roundph_epu64(__m512i src,
                                          __mmask8 k, __m128h a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_UInt64(a.fp16[j])
        	ELSE
        		dst.qword[j] := src.qword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtph_epu64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_maskz_cvtph_epu64(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_UInt64(a.fp16[j])
        	ELSE
        		dst.qword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundph_epu64
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m128h a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_maskz_cvt_roundph_epu64(__mmask8 k,
                                           __m128h a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_UInt64(a.fp16[j])
        	ELSE
        		dst.qword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvttph_epu64
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512i _mm512_cvttph_epu64(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.qword[j] := Convert_FP16_To_UInt64_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtt_roundph_epu64
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128h a, 
    int sae
:Param ETypes:
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_cvtt_roundph_epu64(__m128h a, int sae);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.qword[j] := Convert_FP16_To_UInt64_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvttph_epu64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_mask_cvttph_epu64(__m512i src, __mmask8 k,
                                     __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_UInt64_Truncate(a.fp16[j])
        	ELSE
        		dst.qword[j] := src.qword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtt_roundph_epu64
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m128h a, 
    int sae
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_mask_cvtt_roundph_epu64(__m512i src,
                                           __mmask8 k,
                                           __m128h a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_UInt64_Truncate(a.fp16[j])
        	ELSE
        		dst.qword[j] := src.qword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvttph_epu64
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_maskz_cvttph_epu64(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_UInt64_Truncate(a.fp16[j])
        	ELSE
        		dst.qword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtt_roundph_epu64
-------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m128h a, 
    int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_maskz_cvtt_roundph_epu64(__mmask8 k,
                                            __m128h a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_UInt64_Truncate(a.fp16[j])
        	ELSE
        		dst.qword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtph_epi16
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512i _mm512_cvtph_epi16(__m512h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	dst.word[j] := Convert_FP16_To_Int16(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundph_epi16
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512h a, 
    int rounding
:Param ETypes:
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_cvt_roundph_epi16(__m512h a, int rounding);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	dst.word[j] := Convert_FP16_To_Int16(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtph_epi16
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512h a
:Param ETypes:
    UI16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_mask_cvtph_epi16(__m512i src, __mmask32 k,
                                    __m512h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_Int16(a.fp16[j])
        	ELSE
        		dst.word[j] := src.word[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundph_epi16
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512h a, 
    int rounding
:Param ETypes:
    UI16 src, 
    MASK k, 
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_mask_cvt_roundph_epi16(__m512i src,
                                          __mmask32 k,
                                          __m512h a,
                                          int rounding)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_Int16(a.fp16[j])
        	ELSE
        		dst.word[j] := src.word[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtph_epi16
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_maskz_cvtph_epi16(__mmask32 k, __m512h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_Int16(a.fp16[j])
        	ELSE
        		dst.word[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundph_epi16
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512h a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512i _mm512_maskz_cvt_roundph_epi16(__mmask32 k,
                                           __m512h a,
                                           int rounding)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_Int16(a.fp16[j])
        	ELSE
        		dst.word[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvttph_epi16
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512i _mm512_cvttph_epi16(__m512h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	dst.word[j] := Convert_FP16_To_Int16_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtt_roundph_epi16
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512h a, 
    int sae
:Param ETypes:
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_cvtt_roundph_epi16(__m512h a, int sae);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers with truncation, and store the results in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	dst.word[j] := Convert_FP16_To_Int16_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvttph_epi16
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512h a
:Param ETypes:
    UI16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_mask_cvttph_epi16(__m512i src, __mmask32 k,
                                     __m512h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_Int16_Truncate(a.fp16[j])
        	ELSE
        		dst.word[j] := src.word[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtt_roundph_epi16
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512h a, 
    int sae
:Param ETypes:
    UI16 src, 
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_mask_cvtt_roundph_epi16(__m512i src,
                                           __mmask32 k,
                                           __m512h a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_Int16_Truncate(a.fp16[j])
        	ELSE
        		dst.word[j] := src.word[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvttph_epi16
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_maskz_cvttph_epi16(__mmask32 k, __m512h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_Int16_Truncate(a.fp16[j])
        	ELSE
        		dst.word[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtt_roundph_epi16
-------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512h a, 
    int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_maskz_cvtt_roundph_epi16(__mmask32 k,
                                            __m512h a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_Int16_Truncate(a.fp16[j])
        	ELSE
        		dst.word[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtph_epu16
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512i _mm512_cvtph_epu16(__m512h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	dst.word[j] := Convert_FP16_To_UInt16(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundph_epu16
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512h a, 
    int sae
:Param ETypes:
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_cvt_roundph_epu16(__m512h a, int sae);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers, and store the results in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	dst.word[j] := Convert_FP16_To_UInt16(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtph_epu16
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512h a
:Param ETypes:
    UI16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_mask_cvtph_epu16(__m512i src, __mmask32 k,
                                    __m512h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_UInt16(a.fp16[j])
        	ELSE
        		dst.word[j] := src.word[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundph_epu16
-----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512h a, 
    int sae
:Param ETypes:
    UI16 src, 
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_mask_cvt_roundph_epu16(__m512i src,
                                          __mmask32 k,
                                          __m512h a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_UInt16(a.fp16[j])
        	ELSE
        		dst.word[j] := src.word[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtph_epu16
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_maskz_cvtph_epu16(__mmask32 k, __m512h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_UInt16(a.fp16[j])
        	ELSE
        		dst.word[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundph_epu16
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512h a, 
    int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_maskz_cvt_roundph_epu16(__mmask32 k,
                                           __m512h a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_UInt16(a.fp16[j])
        	ELSE
        		dst.word[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvttph_epu16
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512i _mm512_cvttph_epu16(__m512h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	dst.word[j] := Convert_FP16_To_UInt16_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtt_roundph_epu16
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512h a, 
    int sae
:Param ETypes:
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_cvtt_roundph_epu16(__m512h a, int sae);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers with truncation, and store the results in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	dst.word[j] := Convert_FP16_To_UInt16_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvttph_epu16
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512h a
:Param ETypes:
    UI16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_mask_cvttph_epu16(__m512i src, __mmask32 k,
                                     __m512h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_UInt16_Truncate(a.fp16[j])
        	ELSE
        		dst.word[j] := src.word[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtt_roundph_epu16
------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512h a, 
    int sae
:Param ETypes:
    UI16 src, 
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_mask_cvtt_roundph_epu16(__m512i src,
                                           __mmask32 k,
                                           __m512h a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_UInt16_Truncate(a.fp16[j])
        	ELSE
        		dst.word[j] := src.word[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvttph_epu16
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512i _mm512_maskz_cvttph_epu16(__mmask32 k, __m512h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_UInt16_Truncate(a.fp16[j])
        	ELSE
        		dst.word[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtt_roundph_epu16
-------------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512h a, 
    int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512i _mm512_maskz_cvtt_roundph_epu16(__mmask32 k,
                                            __m512h a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_UInt16_Truncate(a.fp16[j])
        	ELSE
        		dst.word[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtph_pd
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512d _mm512_cvtph_pd(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	dst.fp64[j] := Convert_FP16_To_FP64(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvt_roundph_pd
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m128h a, 
    int sae
:Param ETypes:
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512d _mm512_cvt_roundph_pd(__m128h a, int sae);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	dst.fp64[j] := Convert_FP16_To_FP64(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtph_pd
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512d _mm512_mask_cvtph_pd(__m512d src, __mmask8 k,
                                 __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	IF k[j]
        		dst.fp64[j] := Convert_FP16_To_FP64(a.fp16[j])
        	ELSE
        		dst.fp64[j] := src.fp64[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvt_roundph_pd
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m128h a, 
    int sae
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512d _mm512_mask_cvt_roundph_pd(__m512d src, __mmask8 k,
                                       __m128h a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	IF k[j]
        		dst.fp64[j] := Convert_FP16_To_FP64(a.fp16[j])
        	ELSE
        		dst.fp64[j] := src.fp64[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtph_pd
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512d _mm512_maskz_cvtph_pd(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	IF k[j]
        		dst.fp64[j] := Convert_FP16_To_FP64(a.fp16[j])
        	ELSE
        		dst.fp64[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvt_roundph_pd
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m128h a, 
    int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512d _mm512_maskz_cvt_roundph_pd(__mmask8 k, __m128h a,
                                        int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	IF k[j]
        		dst.fp64[j] := Convert_FP16_To_FP64(a.fp16[j])
        	ELSE
        		dst.fp64[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtxph_ps
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512 _mm512_cvtxph_ps(__m256h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	dst.fp32[j] := Convert_FP16_To_FP32(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtx_roundph_ps
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m256h a, 
    int sae
:Param ETypes:
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512 _mm512_cvtx_roundph_ps(__m256h a, int sae);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	dst.fp32[j] := Convert_FP16_To_FP32(a.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtxph_ps
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m256h a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512 _mm512_mask_cvtxph_ps(__m512 src, __mmask16 k,
                                 __m256h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		dst.fp32[j] := Convert_FP16_To_FP32(a.fp16[j])
        	ELSE
        		dst.fp32[j] := src.fp32[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cvtx_roundph_ps
---------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m256h a, 
    int sae
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512 _mm512_mask_cvtx_roundph_ps(__m512 src, __mmask16 k,
                                       __m256h a, int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		dst.fp32[j] := Convert_FP16_To_FP32(a.fp16[j])
        	ELSE
        		dst.fp32[j] := src.fp32[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtxph_ps
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m256h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512 _mm512_maskz_cvtxph_ps(__mmask16 k, __m256h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		dst.fp32[j] := Convert_FP16_To_FP32(a.fp16[j])
        	ELSE
        		dst.fp32[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cvtx_roundph_ps
----------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m256h a, 
    int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512 _mm512_maskz_cvtx_roundph_ps(__mmask16 k, __m256h a,
                                        int sae)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		dst.fp32[j] := Convert_FP16_To_FP32(a.fp16[j])
        	ELSE
        		dst.fp32[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cvtsh_h
--------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-ZMM
:Register: ZMM 512 bit
:Return Type: _Float16
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    _Float16 _mm512_cvtsh_h(__m512h a);

.. admonition:: Intel Description

    Copy the lower half-precision (16-bit) floating-point element of "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := a.fp16[0]
        	

