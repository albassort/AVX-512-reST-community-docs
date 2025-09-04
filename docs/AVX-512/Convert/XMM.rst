AVX-512-Convert-XMM
===================

_mm_cvtsepi16_epi8
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    SI16 a

.. code-block:: C

    __m128i _mm_cvtsepi16_epi8(__m128i a);

.. admonition:: Intel Description

    Convert packed signed 16-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 16*j
        	l := 8*j
        	dst[l+7:l] := Saturate8(a[i+15:i])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtsepi16_epi8
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    SI8 src, 
    MASK k, 
    SI16 a

.. code-block:: C

    __m128i _mm_mask_cvtsepi16_epi8(__m128i src, __mmask8 k,
                                    __m128i a)

.. admonition:: Intel Description

    Convert packed signed 16-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 16*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Saturate8(a[i+15:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtsepi16_epi8
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI16 a

.. code-block:: C

    __m128i _mm_maskz_cvtsepi16_epi8(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed signed 16-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 16*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Saturate8(a[i+15:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtepi8_epi16
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    SI16 src, 
    MASK k, 
    SI8 a

.. code-block:: C

    __m128i _mm_mask_cvtepi8_epi16(__m128i src, __mmask8 k,
                                   __m128i a)

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in "a" to packed 16-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	l := j*16
        	IF k[j]
        		dst[l+15:l] := SignExtend16(a[i+7:i])
        	ELSE
        		dst[l+15:l] := src[l+15:l]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepi8_epi16
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI8 a

.. code-block:: C

    __m128i _mm_maskz_cvtepi8_epi16(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in "a" to packed 16-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	l := j*16
        	IF k[j]
        		dst[l+15:l] := SignExtend16(a[i+7:i])
        	ELSE
        		dst[l+15:l] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtusepi16_epi8
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m128i _mm_cvtusepi16_epi8(__m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 16-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 16*j
        	l := 8*j
        	dst[l+7:l] := SaturateU8(a[i+15:i])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtusepi16_epi8
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m128i _mm_mask_cvtusepi16_epi8(__m128i src, __mmask8 k,
                                     __m128i a)

.. admonition:: Intel Description

    Convert packed unsigned 16-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 16*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := SaturateU8(a[i+15:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtusepi16_epi8
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m128i _mm_maskz_cvtusepi16_epi8(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 16-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 16*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := SaturateU8(a[i+15:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_cvtepi16_epi8
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m128i _mm_cvtepi16_epi8(__m128i a);

.. admonition:: Intel Description

    Convert packed 16-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 16*j
        	l := 8*j
        	dst[l+7:l] := Truncate8(a[i+15:i])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtepi16_epi8
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m128i _mm_mask_cvtepi16_epi8(__m128i src, __mmask8 k,
                                   __m128i a)

.. admonition:: Intel Description

    Convert packed 16-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 16*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Truncate8(a[i+15:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtepi16_epi8
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m128i _mm_maskz_cvtepi16_epi8(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed 16-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 16*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Truncate8(a[i+15:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtepu8_epi16
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI8 a

.. code-block:: C

    __m128i _mm_mask_cvtepu8_epi16(__m128i src, __mmask8 k,
                                   __m128i a)

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in "a" to packed 16-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	l := j*16
        	IF k[j]
        		dst[l+15:l] := ZeroExtend16(a[i+7:i])
        	ELSE
        		dst[l+15:l] := src[l+15:l]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepu8_epi16
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    __m128i _mm_maskz_cvtepu8_epi16(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in "a" to packed 16-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	l := j*16
        	IF k[j]
        		dst[l+15:l] := ZeroExtend16(a[i+7:i])
        	ELSE
        		dst[l+15:l] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtpd_epi64
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128i _mm_cvtpd_epi64(__m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := Convert_FP64_To_Int64(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtpd_epi64
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128d a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m128i _mm_mask_cvtpd_epi64(__m128i src, __mmask8 k,
                                 __m128d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_Int64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtpd_epi64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m128i _mm_maskz_cvtpd_epi64(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_Int64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtpd_epu64
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128i _mm_cvtpd_epu64(__m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := Convert_FP64_To_UInt64(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtpd_epu64
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128d a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m128i _mm_mask_cvtpd_epu64(__m128i src, __mmask8 k,
                                 __m128d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_UInt64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtpd_epu64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m128i _mm_maskz_cvtpd_epu64(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_UInt64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtps_epi64
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128i _mm_cvtps_epi64(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	dst[i+63:i] := Convert_FP32_To_Int64(a[l+31:l])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtps_epi64
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m128i _mm_mask_cvtps_epi64(__m128i src, __mmask8 k,
                                 __m128 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_Int64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtps_epi64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m128i _mm_maskz_cvtps_epi64(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_Int64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtps_epu64
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128i _mm_cvtps_epu64(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	dst[i+63:i] := Convert_FP32_To_UInt64(a[l+31:l])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtps_epu64
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m128i _mm_mask_cvtps_epu64(__m128i src, __mmask8 k,
                                 __m128 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_UInt64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtps_epu64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m128i _mm_maskz_cvtps_epu64(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_UInt64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtepi64_pd
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128i a
:Param ETypes:
    SI64 a

.. code-block:: C

    __m128d _mm_cvtepi64_pd(__m128i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtepi64_pd
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    FP64 src, 
    MASK k, 
    SI64 a

.. code-block:: C

    __m128d _mm_mask_cvtepi64_pd(__m128d src, __mmask8 k,
                                 __m128i a)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepi64_pd
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI64 a

.. code-block:: C

    __m128d _mm_maskz_cvtepi64_pd(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtepi64_ps
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128i a
:Param ETypes:
    SI64 a

.. code-block:: C

    __m128 _mm_cvtepi64_ps(__m128i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtepi64_ps
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    FP32 src, 
    MASK k, 
    SI64 a

.. code-block:: C

    __m128 _mm_mask_cvtepi64_ps(__m128 src, __mmask8 k,
                                __m128i a)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := src[l+31:l]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtepi64_ps
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI64 a

.. code-block:: C

    __m128 _mm_maskz_cvtepi64_ps(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_cvttpd_epi64
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128i _mm_cvttpd_epi64(__m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := Convert_FP64_To_Int64_Truncate(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvttpd_epi64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128d a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m128i _mm_mask_cvttpd_epi64(__m128i src, __mmask8 k,
                                  __m128d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_Int64_Truncate(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvttpd_epi64
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m128i _mm_maskz_cvttpd_epi64(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_Int64_Truncate(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvttpd_epu64
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128i _mm_cvttpd_epu64(__m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := Convert_FP64_To_UInt64_Truncate(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvttpd_epu64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128d a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m128i _mm_mask_cvttpd_epu64(__m128i src, __mmask8 k,
                                  __m128d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_UInt64_Truncate(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvttpd_epu64
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m128i _mm_maskz_cvttpd_epu64(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_FP64_To_UInt64_Truncate(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvttps_epi64
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128i _mm_cvttps_epi64(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	dst[i+63:i] := Convert_FP32_To_Int64_Truncate(a[l+31:l])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvttps_epi64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m128i _mm_mask_cvttps_epi64(__m128i src, __mmask8 k,
                                  __m128 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_Int64_Truncate(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvttps_epi64
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m128i _mm_maskz_cvttps_epi64(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_Int64_Truncate(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvttps_epu64
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128i _mm_cvttps_epu64(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	dst[i+63:i] := Convert_FP32_To_UInt64_Truncate(a[l+31:l])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvttps_epu64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m128i _mm_mask_cvttps_epu64(__m128i src, __mmask8 k,
                                  __m128 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_UInt64_Truncate(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvttps_epu64
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m128i _mm_maskz_cvttps_epu64(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_FP32_To_UInt64_Truncate(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtepu64_pd
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128d _mm_cvtepu64_pd(__m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtepu64_pd
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    FP64 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m128d _mm_mask_cvtepu64_pd(__m128d src, __mmask8 k,
                                 __m128i a)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepu64_pd
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m128d _mm_maskz_cvtepu64_pd(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := Convert_Int64_To_FP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtepu64_ps
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128 _mm_cvtepu64_ps(__m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtepu64_ps
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    FP32 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m128 _mm_mask_cvtepu64_ps(__m128 src, __mmask8 k,
                                __m128i a)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := src[l+31:l]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtepu64_ps
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m128 _mm_maskz_cvtepu64_ps(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[l+31:l] := Convert_Int64_To_FP32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtepi32_pd
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    FP64 src, 
    MASK k, 
    SI32 a

.. code-block:: C

    __m128d _mm_mask_cvtepi32_pd(__m128d src, __mmask8 k,
                                 __m128i a)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	m := j*64
        	IF k[j]
        		dst[m+63:m] := Convert_Int32_To_FP64(a[i+31:i])
        	ELSE
        		dst[m+63:m] := src[m+63:m]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepi32_pd
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI32 a

.. code-block:: C

    __m128d _mm_maskz_cvtepi32_pd(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	m := j*64
        	IF k[j]
        		dst[m+63:m] := Convert_Int32_To_FP64(a[i+31:i])
        	ELSE
        		dst[m+63:m] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtepi32_ps
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    FP32 src, 
    MASK k, 
    SI32 a

.. code-block:: C

    __m128 _mm_mask_cvtepi32_ps(__m128 src, __mmask8 k,
                                __m128i a)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := Convert_Int32_To_FP32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepi32_ps
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI32 a

.. code-block:: C

    __m128 _mm_maskz_cvtepi32_ps(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_Int32_To_FP32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtpd_epi32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128d a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m128i _mm_mask_cvtpd_epi32(__m128i src, __mmask8 k,
                                 __m128d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	l := j*64
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_Int32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtpd_epi32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m128i _mm_maskz_cvtpd_epi32(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_Int32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtpd_ps
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128d a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m128 _mm_mask_cvtpd_ps(__m128 src, __mmask8 k, __m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_FP32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtpd_ps
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m128 _mm_maskz_cvtpd_ps(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	l := j*64
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_FP32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_cvtpd_epu32
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128i _mm_cvtpd_epu32(__m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_UInt32(a[k+63:k])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtpd_epu32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128d a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m128i _mm_mask_cvtpd_epu32(__m128i src, __mmask8 k,
                                 __m128d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	l := j*64
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_UInt32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtpd_epu32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m128i _mm_maskz_cvtpd_epu32(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_UInt32(a[l+63:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtph_ps
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128 _mm_mask_cvtph_ps(__m128 src, __mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	m := j*16
        	IF k[j]
        		dst[i+31:i] := Convert_FP16_To_FP32(a[m+15:m])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtph_ps
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128 _mm_maskz_cvtph_ps(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	m := j*16
        	IF k[j]
        		dst[i+31:i] := Convert_FP16_To_FP32(a[m+15:m])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtps_epi32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m128i _mm_mask_cvtps_epi32(__m128i src, __mmask8 k,
                                 __m128 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_Int32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtps_epi32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m128i _mm_maskz_cvtps_epi32(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_Int32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvt_roundps_ph
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128 a, 
    int imm8
:Param ETypes:
    UI16 src, 
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm_mask_cvt_roundps_ph(__m128i src, __mmask8 k,
                                    __m128 a, int imm8)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 16*j
        	l := 32*j
        	IF k[j]
        		dst[i+15:i] := Convert_FP32_To_FP16(a[l+31:l])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtps_ph
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128 a, 
    int imm8
:Param ETypes:
    UI16 src, 
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm_mask_cvtps_ph(__m128i src, __mmask8 k, __m128 a,
                              int imm8)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 16*j
        	l := 32*j
        	IF k[j]
        		dst[i+15:i] := Convert_FP32_To_FP16(a[l+31:l])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvt_roundps_ph
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128 a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm_maskz_cvt_roundps_ph(__mmask8 k, __m128 a,
                                     int imm8)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 16*j
        	l := 32*j
        	IF k[j]
        		dst[i+15:i] := Convert_FP32_To_FP16(a[l+31:l])
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtps_ph
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128 a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm_maskz_cvtps_ph(__mmask8 k, __m128 a, int imm8);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 16*j
        	l := 32*j
        	IF k[j]
        		dst[i+15:i] := Convert_FP32_To_FP16(a[l+31:l])
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_cvtps_epu32
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128i _mm_cvtps_epu32(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_UInt32(a[i+31:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtps_epu32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m128i _mm_mask_cvtps_epu32(__m128i src, __mmask8 k,
                                 __m128 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_UInt32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtps_epu32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m128i _mm_maskz_cvtps_epu32(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_UInt32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvttpd_epi32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128d a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m128i _mm_mask_cvttpd_epi32(__m128i src, __mmask8 k,
                                  __m128d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_Int32_Truncate(a[l+63:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvttpd_epi32
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m128i _mm_maskz_cvttpd_epi32(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_Int32_Truncate(a[l+63:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_cvttpd_epu32
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128i _mm_cvttpd_epu32(__m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_UInt32_Truncate(a[k+63:k])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvttpd_epu32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128d a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m128i _mm_mask_cvttpd_epu32(__m128i src, __mmask8 k,
                                  __m128d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_UInt32_Truncate(a[l+63:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvttpd_epu32
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m128i _mm_maskz_cvttpd_epu32(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	l := 64*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_UInt32_Truncate(a[l+63:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvttps_epi32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m128i _mm_mask_cvttps_epi32(__m128i src, __mmask8 k,
                                  __m128 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_Int32_Truncate(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvttps_epi32
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m128i _mm_maskz_cvttps_epi32(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP32_To_Int32_Truncate(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvttps_epu32
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128i _mm_cvttps_epu32(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_UInt32_Truncate(a[i+31:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvttps_epu32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m128i _mm_mask_cvttps_epu32(__m128i src, __mmask8 k,
                                  __m128 a)

.. admonition:: Intel Description

    Convert packed double-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_UInt32_Truncate(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvttps_epu32
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m128i _mm_maskz_cvttps_epu32(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Convert packed double-precision (32-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := Convert_FP64_To_UInt32_Truncate(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtepu32_pd
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m128d _mm_cvtepu32_pd(__m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	dst[i+63:i] := Convert_Int64_To_FP64(a[l+31:l])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtepu32_pd
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    FP64 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m128d _mm_mask_cvtepu32_pd(__m128d src, __mmask8 k,
                                 __m128i a)

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_Int64_To_FP64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI	
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepu32_pd
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m128d _mm_maskz_cvtepu32_pd(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	l := j*32
        	IF k[j]
        		dst[i+63:i] := Convert_Int64_To_FP64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI	
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtepi32_epi8
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m128i _mm_cvtepi32_epi8(__m128i a);

.. admonition:: Intel Description

    Convert packed 32-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	k := 8*j
        	dst[k+7:k] := Truncate8(a[i+31:i])
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_mask_cvtepi32_epi8
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m128i _mm_mask_cvtepi32_epi8(__m128i src, __mmask8 k,
                                   __m128i a)

.. admonition:: Intel Description

    Convert packed 32-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Truncate8(a[i+31:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_maskz_cvtepi32_epi8
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m128i _mm_maskz_cvtepi32_epi8(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed 32-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Truncate8(a[i+31:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_cvtepi32_epi16
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m128i _mm_cvtepi32_epi16(__m128i a);

.. admonition:: Intel Description

    Convert packed 32-bit integers in "a" to packed 16-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	k := 16*j
        	dst[k+15:k] := Truncate16(a[i+31:i])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtepi32_epi16
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m128i _mm_mask_cvtepi32_epi16(__m128i src, __mmask8 k,
                                    __m128i a)

.. admonition:: Intel Description

    Convert packed 32-bit integers in "a" to packed 16-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := Truncate16(a[i+31:i])
        	ELSE
        		dst[l+15:l] := src[l+15:l]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtepi32_epi16
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m128i _mm_maskz_cvtepi32_epi16(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed 32-bit integers in "a" to packed 16-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := Truncate16(a[i+31:i])
        	ELSE
        		dst[l+15:l] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_cvtepi64_epi8
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128i _mm_cvtepi64_epi8(__m128i a);

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	k := 8*j
        	dst[k+7:k] := Truncate8(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtepi64_epi8
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm_mask_cvtepi64_epi8(__m128i src, __mmask8 k,
                                   __m128i a)

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Truncate8(a[i+63:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepi64_epi8
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm_maskz_cvtepi64_epi8(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 8-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Truncate8(a[i+63:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtepi64_epi32
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128i _mm_cvtepi64_epi32(__m128i a);

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	k := 32*j
        	dst[k+31:k] := Truncate32(a[i+63:i])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtepi64_epi32
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm_mask_cvtepi64_epi32(__m128i src, __mmask8 k,
                                    __m128i a)

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[l+31:l] := Truncate32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := src[l+31:l]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtepi64_epi32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm_maskz_cvtepi64_epi32(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[l+31:l] := Truncate32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_cvtepi64_epi16
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128i _mm_cvtepi64_epi16(__m128i a);

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 16-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	k := 16*j
        	dst[k+15:k] := Truncate16(a[i+63:i])
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_mask_cvtepi64_epi16
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm_mask_cvtepi64_epi16(__m128i src, __mmask8 k,
                                    __m128i a)

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 16-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := Truncate16(a[i+63:i])
        	ELSE
        		dst[l+15:l] := src[l+15:l]
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_maskz_cvtepi64_epi16
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm_maskz_cvtepi64_epi16(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed 64-bit integers in "a" to packed 16-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := Truncate16(a[i+63:i])
        	ELSE
        		dst[l+15:l] := 0
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_cvtsepi32_epi8
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m128i _mm_cvtsepi32_epi8(__m128i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	k := 8*j
        	dst[k+7:k] := Saturate8(a[i+31:i])
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_mask_cvtsepi32_epi8
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    SI32 a

.. code-block:: C

    __m128i _mm_mask_cvtsepi32_epi8(__m128i src, __mmask8 k,
                                    __m128i a)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Saturate8(a[i+31:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_maskz_cvtsepi32_epi8
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI32 a

.. code-block:: C

    __m128i _mm_maskz_cvtsepi32_epi8(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Saturate8(a[i+31:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_cvtsepi32_epi16
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m128i _mm_cvtsepi32_epi16(__m128i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed 16-bit integers with signed saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	k := 16*j
        	dst[k+15:k] := Saturate16(a[i+31:i])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtsepi32_epi16
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    SI32 a

.. code-block:: C

    __m128i _mm_mask_cvtsepi32_epi16(__m128i src, __mmask8 k,
                                     __m128i a)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed 16-bit integers with signed saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := Saturate16(a[i+31:i])
        	ELSE
        		dst[l+15:l] := src[l+15:l]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtsepi32_epi16
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI32 a

.. code-block:: C

    __m128i _mm_maskz_cvtsepi32_epi16(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed 16-bit integers with signed saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := Saturate16(a[i+31:i])
        	ELSE
        		dst[l+15:l] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_cvtsepi64_epi8
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    SI64 a

.. code-block:: C

    __m128i _mm_cvtsepi64_epi8(__m128i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	k := 8*j
        	dst[k+7:k] := Saturate8(a[i+63:i])
        ENDFOR
        dst[MAX:16] := 0
        	

_mm_mask_cvtsepi64_epi8
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    SI64 a

.. code-block:: C

    __m128i _mm_mask_cvtsepi64_epi8(__m128i src, __mmask8 k,
                                    __m128i a)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Saturate8(a[i+63:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:16] := 0
        	

_mm_maskz_cvtsepi64_epi8
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI64 a

.. code-block:: C

    __m128i _mm_maskz_cvtsepi64_epi8(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 8-bit integers with signed saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := Saturate8(a[i+63:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:16] := 0
        	

_mm_cvtsepi64_epi32
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    SI64 a

.. code-block:: C

    __m128i _mm_cvtsepi64_epi32(__m128i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 32-bit integers with signed saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	k := 32*j
        	dst[k+31:k] := Saturate32(a[i+63:i])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtsepi64_epi32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    SI32 src, 
    MASK k, 
    SI64 a

.. code-block:: C

    __m128i _mm_mask_cvtsepi64_epi32(__m128i src, __mmask8 k,
                                     __m128i a)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 32-bit integers with signed saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[l+31:l] := Saturate32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := src[l+31:l]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtsepi64_epi32
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI64 a

.. code-block:: C

    __m128i _mm_maskz_cvtsepi64_epi32(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 32-bit integers with signed saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[l+31:l] := Saturate32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_cvtsepi64_epi16
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    SI64 a

.. code-block:: C

    __m128i _mm_cvtsepi64_epi16(__m128i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 16-bit integers with signed saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	k := 16*j
        	dst[k+15:k] := Saturate16(a[i+63:i])
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_mask_cvtsepi64_epi16
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    SI16 src, 
    MASK k, 
    SI64 a

.. code-block:: C

    __m128i _mm_mask_cvtsepi64_epi16(__m128i src, __mmask8 k,
                                     __m128i a)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 16-bit integers with signed saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := Saturate16(a[i+63:i])
        	ELSE
        		dst[l+15:l] := src[l+15:l]
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_maskz_cvtsepi64_epi16
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI64 a

.. code-block:: C

    __m128i _mm_maskz_cvtsepi64_epi16(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed 16-bit integers with signed saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := Saturate16(a[i+63:i])
        	ELSE
        		dst[l+15:l] := 0
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_mask_cvtepi8_epi32
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    SI32 src, 
    MASK k, 
    SI8 a

.. code-block:: C

    __m128i _mm_mask_cvtepi8_epi32(__m128i src, __mmask8 k,
                                   __m128i a)

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in the low 4 bytes of "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[i+31:i] := SignExtend32(a[l+7:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepi8_epi32
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI8 a

.. code-block:: C

    __m128i _mm_maskz_cvtepi8_epi32(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in the low 4 bytes of "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[i+31:i] := SignExtend32(a[l+7:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtepi8_epi64
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    SI64 src, 
    MASK k, 
    SI8 a

.. code-block:: C

    __m128i _mm_mask_cvtepi8_epi64(__m128i src, __mmask8 k,
                                   __m128i a)

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in the low 2 bytes of "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[i+63:i] := SignExtend64(a[l+7:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepi8_epi64
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI8 a

.. code-block:: C

    __m128i _mm_maskz_cvtepi8_epi64(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in the low 2 bytes of "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[i+63:i] := SignExtend64(a[l+7:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtepi32_epi64
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    SI64 src, 
    MASK k, 
    SI32 a

.. code-block:: C

    __m128i _mm_mask_cvtepi32_epi64(__m128i src, __mmask8 k,
                                    __m128i a)

.. admonition:: Intel Description

    Sign extend packed 32-bit integers in "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[i+63:i] := SignExtend64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepi32_epi64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI32 a

.. code-block:: C

    __m128i _mm_maskz_cvtepi32_epi64(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Sign extend packed 32-bit integers in "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[i+63:i] := SignExtend64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtepi16_epi32
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    SI32 src, 
    MASK k, 
    SI16 a

.. code-block:: C

    __m128i _mm_mask_cvtepi16_epi32(__m128i src, __mmask8 k,
                                    __m128i a)

.. admonition:: Intel Description

    Sign extend packed 16-bit integers in "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	l := j*16
        	IF k[j]
        		dst[i+31:i] := SignExtend32(a[l+15:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepi16_epi32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI16 a

.. code-block:: C

    __m128i _mm_maskz_cvtepi16_epi32(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Sign extend packed 16-bit integers in "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[i+31:i] := SignExtend32(a[l+15:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtepi16_epi64
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    SI64 src, 
    MASK k, 
    SI16 a

.. code-block:: C

    __m128i _mm_mask_cvtepi16_epi64(__m128i src, __mmask8 k,
                                    __m128i a)

.. admonition:: Intel Description

    Sign extend packed 16-bit integers in the low 4 bytes of "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[i+63:i] := SignExtend64(a[l+15:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepi16_epi64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI16 a

.. code-block:: C

    __m128i _mm_maskz_cvtepi16_epi64(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Sign extend packed 16-bit integers in the low 4 bytes of "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[i+63:i] := SignExtend64(a[l+15:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtusepi32_epi8
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m128i _mm_cvtusepi32_epi8(__m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	k := 8*j
        	dst[k+7:k] := SaturateU8(a[i+31:i])
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_mask_cvtusepi32_epi8
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m128i _mm_mask_cvtusepi32_epi8(__m128i src, __mmask8 k,
                                     __m128i a)

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := SaturateU8(a[i+31:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_maskz_cvtusepi32_epi8
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m128i _mm_maskz_cvtusepi32_epi8(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := SaturateU8(a[i+31:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_cvtusepi32_epi16
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m128i _mm_cvtusepi32_epi16(__m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed unsigned 16-bit integers with unsigned saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	k := 16*j
        	dst[k+15:k] := SaturateU16(a[i+31:i])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtusepi32_epi16
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m128i _mm_mask_cvtusepi32_epi16(__m128i src, __mmask8 k,
                                      __m128i a)

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed unsigned 16-bit integers with unsigned saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := SaturateU16(a[i+31:i])
        	ELSE
        		dst[l+15:l] := src[l+15:l]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtusepi32_epi16
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m128i _mm_maskz_cvtusepi32_epi16(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed unsigned 16-bit integers with unsigned saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := SaturateU16(a[i+31:i])
        	ELSE
        		dst[l+15:l] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_cvtusepi64_epi8
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128i _mm_cvtusepi64_epi8(__m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	k := 8*j
        	dst[k+7:k] := SaturateU8(a[i+63:i])
        ENDFOR
        dst[MAX:16] := 0
        	

_mm_mask_cvtusepi64_epi8
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm_mask_cvtusepi64_epi8(__m128i src, __mmask8 k,
                                     __m128i a)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := SaturateU8(a[i+63:i])
        	ELSE
        		dst[l+7:l] := src[l+7:l]
        	FI
        ENDFOR
        dst[MAX:16] := 0
        	

_mm_maskz_cvtusepi64_epi8
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm_maskz_cvtusepi64_epi8(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 8-bit integers with unsigned saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[l+7:l] := SaturateU8(a[i+63:i])
        	ELSE
        		dst[l+7:l] := 0
        	FI
        ENDFOR
        dst[MAX:16] := 0
        	

_mm_cvtusepi64_epi32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128i _mm_cvtusepi64_epi32(__m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 32-bit integers with unsigned saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	k := 32*j
        	dst[k+31:k] := SaturateU32(a[i+63:i])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtusepi64_epi32
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm_mask_cvtusepi64_epi32(__m128i src, __mmask8 k,
                                      __m128i a)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 32-bit integers with unsigned saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[l+31:l] := SaturateU32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := src[l+31:l]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtusepi64_epi32
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm_maskz_cvtusepi64_epi32(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 32-bit integers with unsigned saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[l+31:l] := SaturateU32(a[i+63:i])
        	ELSE
        		dst[l+31:l] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_cvtusepi64_epi16
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128i _mm_cvtusepi64_epi16(__m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 16-bit integers with unsigned saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	k := 16*j
        	dst[k+15:k] := SaturateU16(a[i+63:i])
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_mask_cvtusepi64_epi16
-------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm_mask_cvtusepi64_epi16(__m128i src, __mmask8 k,
                                      __m128i a)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 16-bit integers with unsigned saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := SaturateU16(a[i+63:i])
        	ELSE
        		dst[l+15:l] := src[l+15:l]
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_maskz_cvtusepi64_epi16
--------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm_maskz_cvtusepi64_epi16(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed unsigned 16-bit integers with unsigned saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[l+15:l] := SaturateU16(a[i+63:i])
        	ELSE
        		dst[l+15:l] := 0
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_mask_cvtepu8_epi32
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI8 a

.. code-block:: C

    __m128i _mm_mask_cvtepu8_epi32(__m128i src, __mmask8 k,
                                   __m128i a)

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in the low 4 bytes of "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[i+31:i] := ZeroExtend32(a[l+7:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepu8_epi32
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    __m128i _mm_maskz_cvtepu8_epi32(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in th elow 4 bytes of "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 8*j
        	IF k[j]
        		dst[i+31:i] := ZeroExtend32(a[l+7:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtepu8_epi64
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI8 a

.. code-block:: C

    __m128i _mm_mask_cvtepu8_epi64(__m128i src, __mmask8 k,
                                   __m128i a)

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in the low 2 bytes of "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[i+63:i] := ZeroExtend64(a[l+7:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepu8_epi64
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    __m128i _mm_maskz_cvtepu8_epi64(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in the low 2 bytes of "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 8*j
        	IF k[j]
        		dst[i+63:i] := ZeroExtend64(a[l+7:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtepu32_epi64
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m128i _mm_mask_cvtepu32_epi64(__m128i src, __mmask8 k,
                                    __m128i a)

.. admonition:: Intel Description

    Zero extend packed unsigned 32-bit integers in "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[i+63:i] := ZeroExtend64(a[l+31:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepu32_epi64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m128i _mm_maskz_cvtepu32_epi64(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 32-bit integers in "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 32*j
        	IF k[j]
        		dst[i+63:i] := ZeroExtend64(a[l+31:l])
        	ELSE 
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtepu16_epi32
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m128i _mm_mask_cvtepu16_epi32(__m128i src, __mmask8 k,
                                    __m128i a)

.. admonition:: Intel Description

    Zero extend packed unsigned 16-bit integers in "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[i+31:i] := ZeroExtend32(a[l+15:l])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepu16_epi32
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m128i _mm_maskz_cvtepu16_epi32(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 16-bit integers in "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	l := 16*j
        	IF k[j]
        		dst[i+31:i] := ZeroExtend32(a[l+15:l])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtepu16_epi64
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m128i _mm_mask_cvtepu16_epi64(__m128i src, __mmask8 k,
                                    __m128i a)

.. admonition:: Intel Description

    Zero extend packed unsigned 16-bit integers in the low 4 bytes of "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[i+63:i] := ZeroExtend64(a[l+15:l])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepu16_epi64
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m128i _mm_maskz_cvtepu16_epi64(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 16-bit integers in the low 4 bytes of "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	l := 16*j
        	IF k[j]
        		dst[i+63:i] := ZeroExtend64(a[l+15:l])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvt_roundsd_i32
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128d a, 
    int rounding
:Param ETypes:
    FP64 a, 
    IMM rounding

.. code-block:: C

    int _mm_cvt_roundsd_i32(__m128d a, int rounding);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 32-bit integer, and store the result in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP64_To_Int32(a[63:0])
        	

_mm_cvt_roundsd_i64
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128d a, 
    int rounding
:Param ETypes:
    FP64 a, 
    IMM rounding

.. code-block:: C

    __int64 _mm_cvt_roundsd_i64(__m128d a, int rounding);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 64-bit integer, and store the result in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP64_To_Int64(a[63:0])
        	

_mm_cvt_roundsd_si32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128d a, 
    int rounding
:Param ETypes:
    FP64 a, 
    IMM rounding

.. code-block:: C

    int _mm_cvt_roundsd_si32(__m128d a, int rounding);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 32-bit integer, and store the result in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP64_To_Int32(a[63:0])
        	

_mm_cvt_roundsd_si64
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128d a, 
    int rounding
:Param ETypes:
    FP64 a, 
    IMM rounding

.. code-block:: C

    __int64 _mm_cvt_roundsd_si64(__m128d a, int rounding);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 64-bit integer, and store the result in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP64_To_Int64(a[63:0])
        	

_mm_cvtsd_i32
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    int _mm_cvtsd_i32(__m128d a);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 32-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP64_To_Int32(a[63:0])
        	

_mm_cvtsd_i64
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __int64 _mm_cvtsd_i64(__m128d a);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 64-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP64_To_Int64(a[63:0])
        	

_mm_cvt_roundsd_ss
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128d b, 
    int rounding
:Param ETypes:
    FP32 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m128 _mm_cvt_roundsd_ss(__m128 a, __m128d b,
                              int rounding)

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP64_To_FP32(b[63:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_mask_cvt_roundsd_ss
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a, 
    __m128d b, 
    int rounding
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m128 _mm_mask_cvt_roundsd_ss(__m128 src, __mmask8 k,
                                   __m128 a, __m128d b,
                                   int rounding)

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := Convert_FP64_To_FP32(b[63:0])
        ELSE
        	dst[31:0] := src[31:0]
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_mask_cvtsd_ss
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a, 
    __m128d b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP64 b

.. code-block:: C

    __m128 _mm_mask_cvtsd_ss(__m128 src, __mmask8 k, __m128 a,
                             __m128d b)

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := Convert_FP64_To_FP32(b[63:0])
        ELSE
        	dst[31:0] := src[31:0]
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_maskz_cvt_roundsd_ss
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a, 
    __m128d b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m128 _mm_maskz_cvt_roundsd_ss(__mmask8 k, __m128 a,
                                    __m128d b, int rounding)

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := Convert_FP64_To_FP32(b[63:0])
        ELSE
        	dst[31:0] := 0
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_maskz_cvtsd_ss
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a, 
    __m128d b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP64 b

.. code-block:: C

    __m128 _mm_maskz_cvtsd_ss(__mmask8 k, __m128 a, __m128d b);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := Convert_FP64_To_FP32(b[63:0])
        ELSE
        	dst[31:0] := 0
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_cvt_roundsd_u32
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    __m128d a, 
    int rounding
:Param ETypes:
    FP64 a, 
    IMM rounding

.. code-block:: C

    unsigned int _mm_cvt_roundsd_u32(__m128d a, int rounding);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to an unsigned 32-bit integer, and store the result in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP64_To_UInt32(a[63:0])
        	

_mm_cvt_roundsd_u64
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned __int64
:Param Types:
    __m128d a, 
    int rounding
:Param ETypes:
    FP64 a, 
    IMM rounding

.. code-block:: C

    unsigned __int64 _mm_cvt_roundsd_u64(__m128d a, int rounding);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to an unsigned 64-bit integer, and store the result in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP64_To_UInt64(a[63:0])
        	

_mm_cvtsd_u32
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    unsigned int _mm_cvtsd_u32(__m128d a);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to an unsigned 32-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP64_To_UInt32(a[63:0])
        	

_mm_cvtsd_u64
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned __int64
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    unsigned __int64 _mm_cvtsd_u64(__m128d a);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to an unsigned 64-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP64_To_UInt64(a[63:0])
        	

_mm_cvt_roundi64_sd
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __int64 b, 
    int rounding
:Param ETypes:
    FP64 a, 
    SI64 b, 
    IMM rounding

.. code-block:: C

    __m128d _mm_cvt_roundi64_sd(__m128d a, __int64 b,
                                int rounding)

.. admonition:: Intel Description

    Convert the signed 64-bit integer "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_Int64_To_FP64(b[63:0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_cvt_roundsi64_sd
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __int64 b, 
    int rounding
:Param ETypes:
    FP64 a, 
    SI64 b, 
    IMM rounding

.. code-block:: C

    __m128d _mm_cvt_roundsi64_sd(__m128d a, __int64 b,
                                 int rounding)

.. admonition:: Intel Description

    Convert the signed 64-bit integer "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_Int64_To_FP64(b[63:0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_cvti32_sd
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    int b
:Param ETypes:
    FP64 a, 
    SI32 b

.. code-block:: C

    __m128d _mm_cvti32_sd(__m128d a, int b);

.. admonition:: Intel Description

    Convert the signed 32-bit integer "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_Int32_To_FP64(b[31:0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_cvti64_sd
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __int64 b
:Param ETypes:
    FP64 a, 
    SI64 b

.. code-block:: C

    __m128d _mm_cvti64_sd(__m128d a, __int64 b);

.. admonition:: Intel Description

    Convert the signed 64-bit integer "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_Int64_To_FP64(b[63:0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_cvt_roundi32_ss
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    int b, 
    int rounding
:Param ETypes:
    FP32 a, 
    SI32 b, 
    IMM rounding

.. code-block:: C

    __m128 _mm_cvt_roundi32_ss(__m128 a, int b, int rounding);

.. admonition:: Intel Description

    Convert the signed 32-bit integer "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_Int32_To_FP32(b[31:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_cvt_roundi64_ss
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __int64 b, 
    int rounding
:Param ETypes:
    FP32 a, 
    SI64 b, 
    IMM rounding

.. code-block:: C

    __m128 _mm_cvt_roundi64_ss(__m128 a, __int64 b,
                               int rounding)

.. admonition:: Intel Description

    Convert the signed 64-bit integer "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_Int64_To_FP32(b[63:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_cvt_roundsi32_ss
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    int b, 
    int rounding
:Param ETypes:
    FP32 a, 
    SI32 b, 
    IMM rounding

.. code-block:: C

    __m128 _mm_cvt_roundsi32_ss(__m128 a, int b, int rounding);

.. admonition:: Intel Description

    Convert the signed 32-bit integer "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_Int32_To_FP32(b[31:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_cvt_roundsi64_ss
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __int64 b, 
    int rounding
:Param ETypes:
    FP32 a, 
    SI64 b, 
    IMM rounding

.. code-block:: C

    __m128 _mm_cvt_roundsi64_ss(__m128 a, __int64 b,
                                int rounding)

.. admonition:: Intel Description

    Convert the signed 64-bit integer "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_Int64_To_FP32(b[63:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_cvti32_ss
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    int b
:Param ETypes:
    FP32 a, 
    SI32 b

.. code-block:: C

    __m128 _mm_cvti32_ss(__m128 a, int b);

.. admonition:: Intel Description

    Convert the signed 32-bit integer "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_Int32_To_FP32(b[31:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_cvti64_ss
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __int64 b
:Param ETypes:
    FP32 a, 
    SI64 b

.. code-block:: C

    __m128 _mm_cvti64_ss(__m128 a, __int64 b);

.. admonition:: Intel Description

    Convert the signed 64-bit integer "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_Int64_To_FP32(b[63:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_cvt_roundss_sd
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128 b, 
    int sae
:Param ETypes:
    FP64 a, 
    FP32 b, 
    IMM sae

.. code-block:: C

    __m128d _mm_cvt_roundss_sd(__m128d a, __m128 b, int sae);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst". 
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP32_To_FP64(b[31:0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_mask_cvt_roundss_sd
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128d a, 
    __m128 b, 
    int sae
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP32 b, 
    IMM sae

.. code-block:: C

    __m128d _mm_mask_cvt_roundss_sd(__m128d src, __mmask8 k,
                                    __m128d a, __m128 b,
                                    int sae)

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst".
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := Convert_FP32_To_FP64(b[31:0])
        ELSE
        	dst[63:0] := src[63:0]
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_mask_cvtss_sd
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128d a, 
    __m128 b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP32 b

.. code-block:: C

    __m128d _mm_mask_cvtss_sd(__m128d src, __mmask8 k,
                              __m128d a, __m128 b)

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := Convert_FP32_To_FP64(b[31:0])
        ELSE
        	dst[63:0] := src[63:0]
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_maskz_cvt_roundss_sd
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128d a, 
    __m128 b, 
    int sae
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP32 b, 
    IMM sae

.. code-block:: C

    __m128d _mm_maskz_cvt_roundss_sd(__mmask8 k, __m128d a,
                                     __m128 b, int sae)

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst". 
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := Convert_FP32_To_FP64(b[31:0])
        ELSE
        	dst[63:0] := 0
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_maskz_cvtss_sd
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128d a, 
    __m128 b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP32 b

.. code-block:: C

    __m128d _mm_maskz_cvtss_sd(__mmask8 k, __m128d a, __m128 b);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := Convert_FP32_To_FP64(b[31:0])
        ELSE
        	dst[63:0] := 0
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_cvt_roundss_i32
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128 a, 
    int rounding
:Param ETypes:
    FP32 a, 
    IMM rounding

.. code-block:: C

    int _mm_cvt_roundss_i32(__m128 a, int rounding);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 32-bit integer, and store the result in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP32_To_Int32(a[31:0])
        	

_mm_cvt_roundss_i64
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128 a, 
    int rounding
:Param ETypes:
    FP32 a, 
    IMM rounding

.. code-block:: C

    __int64 _mm_cvt_roundss_i64(__m128 a, int rounding);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 64-bit integer, and store the result in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP32_To_Int64(a[31:0])
        	

_mm_cvt_roundss_si32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128 a, 
    int rounding
:Param ETypes:
    FP32 a, 
    IMM rounding

.. code-block:: C

    int _mm_cvt_roundss_si32(__m128 a, int rounding);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 32-bit integer, and store the result in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP32_To_Int32(a[31:0])
        	

_mm_cvt_roundss_si64
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128 a, 
    int rounding
:Param ETypes:
    FP32 a, 
    IMM rounding

.. code-block:: C

    __int64 _mm_cvt_roundss_si64(__m128 a, int rounding);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 64-bit integer, and store the result in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP32_To_Int64(a[31:0])
        	

_mm_cvtss_i32
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    int _mm_cvtss_i32(__m128 a);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 32-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP32_To_Int32(a[31:0])
        	

_mm_cvtss_i64
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __int64 _mm_cvtss_i64(__m128 a);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 64-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP32_To_Int64(a[31:0])
        	

_mm_cvt_roundss_u32
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    __m128 a, 
    int rounding
:Param ETypes:
    FP32 a, 
    IMM rounding

.. code-block:: C

    unsigned int _mm_cvt_roundss_u32(__m128 a, int rounding);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to an unsigned 32-bit integer, and store the result in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP32_To_UInt32(a[31:0])
        	

_mm_cvt_roundss_u64
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned __int64
:Param Types:
    __m128 a, 
    int rounding
:Param ETypes:
    FP32 a, 
    IMM rounding

.. code-block:: C

    unsigned __int64 _mm_cvt_roundss_u64(__m128 a, int rounding);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to an unsigned 64-bit integer, and store the result in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP32_To_UInt64(a[31:0])
        	

_mm_cvtss_u32
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    unsigned int _mm_cvtss_u32(__m128 a);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to an unsigned 32-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP32_To_UInt32(a[31:0])
        	

_mm_cvtss_u64
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned __int64
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    unsigned __int64 _mm_cvtss_u64(__m128 a);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to an unsigned 64-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP32_To_UInt64(a[31:0])
        	

_mm_cvtt_roundsd_i32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128d a, 
    int sae
:Param ETypes:
    FP64 a, 
    IMM sae

.. code-block:: C

    int _mm_cvtt_roundsd_i32(__m128d a, int sae);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 32-bit integer with truncation, and store the result in "dst".
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP64_To_Int32_Truncate(a[63:0])
        	

_mm_cvtt_roundsd_i64
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128d a, 
    int sae
:Param ETypes:
    FP64 a, 
    IMM sae

.. code-block:: C

    __int64 _mm_cvtt_roundsd_i64(__m128d a, int sae);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 64-bit integer with truncation, and store the result in "dst".
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP64_To_Int64_Truncate(a[63:0])
        	

_mm_cvtt_roundsd_si32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128d a, 
    int sae
:Param ETypes:
    FP64 a, 
    IMM sae

.. code-block:: C

    int _mm_cvtt_roundsd_si32(__m128d a, int sae);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 32-bit integer with truncation, and store the result in "dst".
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP64_To_Int32_Truncate(a[63:0])
        	

_mm_cvtt_roundsd_si64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128d a, 
    int sae
:Param ETypes:
    FP64 a, 
    IMM sae

.. code-block:: C

    __int64 _mm_cvtt_roundsd_si64(__m128d a, int sae);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 64-bit integer with truncation, and store the result in "dst".
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP64_To_Int64_Truncate(a[63:0])
        	

_mm_cvttsd_i32
--------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    int _mm_cvttsd_i32(__m128d a);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 32-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP64_To_Int32_Truncate(a[63:0])
        	

_mm_cvttsd_i64
--------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __int64 _mm_cvttsd_i64(__m128d a);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 64-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP64_To_Int64_Truncate(a[63:0])
        	

_mm_cvtt_roundsd_u32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    __m128d a, 
    int sae
:Param ETypes:
    FP64 a, 
    IMM sae

.. code-block:: C

    unsigned int _mm_cvtt_roundsd_u32(__m128d a, int sae);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to an unsigned 32-bit integer with truncation, and store the result in "dst".
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP64_To_UInt32_Truncate(a[63:0])
        	

_mm_cvtt_roundsd_u64
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned __int64
:Param Types:
    __m128d a, 
    int sae
:Param ETypes:
    FP64 a, 
    IMM sae

.. code-block:: C

    unsigned __int64 _mm_cvtt_roundsd_u64(__m128d a, int sae);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to an unsigned 64-bit integer with truncation, and store the result in "dst".
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP64_To_UInt64_Truncate(a[63:0])
        	

_mm_cvttsd_u32
--------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    unsigned int _mm_cvttsd_u32(__m128d a);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to an unsigned 32-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP64_To_UInt32_Truncate(a[63:0])
        	

_mm_cvttsd_u64
--------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned __int64
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    unsigned __int64 _mm_cvttsd_u64(__m128d a);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to an unsigned 64-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP64_To_UInt64_Truncate(a[63:0])
        	

_mm_cvtt_roundss_i32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128 a, 
    int sae
:Param ETypes:
    FP32 a, 
    IMM sae

.. code-block:: C

    int _mm_cvtt_roundss_i32(__m128 a, int sae);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 32-bit integer with truncation, and store the result in "dst".
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP32_To_Int32_Truncate(a[31:0])
        	

_mm_cvtt_roundss_i64
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128 a, 
    int sae
:Param ETypes:
    FP32 a, 
    IMM sae

.. code-block:: C

    __int64 _mm_cvtt_roundss_i64(__m128 a, int sae);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 64-bit integer with truncation, and store the result in "dst".
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP32_To_Int64_Truncate(a[31:0])
        	

_mm_cvtt_roundss_si32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128 a, 
    int sae
:Param ETypes:
    FP32 a, 
    IMM sae

.. code-block:: C

    int _mm_cvtt_roundss_si32(__m128 a, int sae);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 32-bit integer with truncation, and store the result in "dst".
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP32_To_Int32_Truncate(a[31:0])
        	

_mm_cvtt_roundss_si64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128 a, 
    int sae
:Param ETypes:
    FP32 a, 
    IMM sae

.. code-block:: C

    __int64 _mm_cvtt_roundss_si64(__m128 a, int sae);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 64-bit integer with truncation, and store the result in "dst".
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP32_To_Int64_Truncate(a[31:0])
        	

_mm_cvttss_i32
--------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    int _mm_cvttss_i32(__m128 a);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 32-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP32_To_Int32_Truncate(a[31:0])
        	

_mm_cvttss_i64
--------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __int64 _mm_cvttss_i64(__m128 a);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 64-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP32_To_Int64_Truncate(a[31:0])
        	

_mm_cvtt_roundss_u32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    __m128 a, 
    int sae
:Param ETypes:
    FP32 a, 
    IMM sae

.. code-block:: C

    unsigned int _mm_cvtt_roundss_u32(__m128 a, int sae);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to an unsigned 32-bit integer with truncation, and store the result in "dst".
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP32_To_UInt32_Truncate(a[31:0])
        	

_mm_cvtt_roundss_u64
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned __int64
:Param Types:
    __m128 a, 
    int sae
:Param ETypes:
    FP32 a, 
    IMM sae

.. code-block:: C

    unsigned __int64 _mm_cvtt_roundss_u64(__m128 a, int sae);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to an unsigned 64-bit integer with truncation, and store the result in "dst".
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP32_To_UInt64_Truncate(a[31:0])
        	

_mm_cvttss_u32
--------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    unsigned int _mm_cvttss_u32(__m128 a);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to an unsigned 32-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP32_To_UInt32_Truncate(a[31:0])
        	

_mm_cvttss_u64
--------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned __int64
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    unsigned __int64 _mm_cvttss_u64(__m128 a);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to an unsigned 64-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP32_To_UInt64_Truncate(a[31:0])
        	

_mm_cvt_roundu64_sd
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    unsigned __int64 b, 
    int rounding
:Param ETypes:
    FP64 a, 
    UI64 b, 
    IMM rounding

.. code-block:: C

    __m128d _mm_cvt_roundu64_sd(__m128d a, unsigned __int64 b,
                                int rounding)

.. admonition:: Intel Description

    Convert the unsigned 64-bit integer "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_Int64_To_FP64(b[63:0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_cvtu32_sd
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    unsigned int b
:Param ETypes:
    FP64 a, 
    UI32 b

.. code-block:: C

    __m128d _mm_cvtu32_sd(__m128d a, unsigned int b);

.. admonition:: Intel Description

    Convert the unsigned 32-bit integer "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_Int32_To_FP64(b[31:0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_cvtu64_sd
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    unsigned __int64 b
:Param ETypes:
    FP64 a, 
    UI64 b

.. code-block:: C

    __m128d _mm_cvtu64_sd(__m128d a, unsigned __int64 b);

.. admonition:: Intel Description

    Convert the unsigned 64-bit integer "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_Int64_To_FP64(b[63:0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_cvt_roundu32_ss
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    unsigned int b, 
    int rounding
:Param ETypes:
    FP32 a, 
    UI32 b, 
    IMM rounding

.. code-block:: C

    __m128 _mm_cvt_roundu32_ss(__m128 a, unsigned int b,
                               int rounding)

.. admonition:: Intel Description

    Convert the unsigned 32-bit integer "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_Int32_To_FP32(b[31:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_cvt_roundu64_ss
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    unsigned __int64 b, 
    int rounding
:Param ETypes:
    FP32 a, 
    UI64 b, 
    IMM rounding

.. code-block:: C

    __m128 _mm_cvt_roundu64_ss(__m128 a, unsigned __int64 b,
                               int rounding)

.. admonition:: Intel Description

    Convert the unsigned 64-bit integer "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_Int64_To_FP32(b[63:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_cvtu32_ss
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    unsigned int b
:Param ETypes:
    FP32 a, 
    UI32 b

.. code-block:: C

    __m128 _mm_cvtu32_ss(__m128 a, unsigned int b);

.. admonition:: Intel Description

    Convert the unsigned 32-bit integer "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_Int32_To_FP32(b[31:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_cvtu64_ss
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    unsigned __int64 b
:Param ETypes:
    FP32 a, 
    UI64 b

.. code-block:: C

    __m128 _mm_cvtu64_ss(__m128 a, unsigned __int64 b);

.. admonition:: Intel Description

    Convert the unsigned 64-bit integer "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_Int64_To_FP32(b[63:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_cvtsbh_ss
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: float
:Param Types:
    __bfloat16 a
:Param ETypes:
    BF16 a

.. code-block:: C

    float _mm_cvtsbh_ss(__bfloat16 a);

.. admonition:: Intel Description

    Convert the BF16 (16-bit) floating-point element in "a" to a floating-point element, and store the result in "dst". This intrinsic neither raises any floating point exceptions nor turns sNAN into qNAN.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_BF16_To_FP32(a[15:0])
        	

_mm_cvtpbh_ps
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128bh a
:Param ETypes:
    BF16 a

.. code-block:: C

    __m128 _mm_cvtpbh_ps(__m128bh a);

.. admonition:: Intel Description

    Convert packed BF16 (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst". This intrinsic neither raises any floating point exceptions nor turns sNAN into qNAN.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	m := j*16
        	dst[i+31:i] := Convert_BF16_To_FP32(a[m+15:m])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtpbh_ps
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128bh a
:Param ETypes:
    MASK k, 
    BF16 a

.. code-block:: C

    __m128 _mm_maskz_cvtpbh_ps(__mmask8 k, __m128bh a);

.. admonition:: Intel Description

    Convert packed BF16 (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic neither raises any floating point exceptions nor turns sNAN into qNAN.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	m := j*16
        	IF k[j]
        		dst[i+31:i] := Convert_BF16_To_FP32(a[m+15:m])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtpbh_ps
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128bh a
:Param ETypes:
    FP32 src, 
    MASK k, 
    BF16 a

.. code-block:: C

    __m128 _mm_mask_cvtpbh_ps(__m128 src, __mmask8 k,
                              __m128bh a)

.. admonition:: Intel Description

    Convert packed BF16 (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic neither raises any floating point exceptions nor turns sNAN into qNAN.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	m := j*16
        	IF k[j]
        		dst[i+31:i] := Convert_BF16_To_FP32(a[m+15:m])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtness_sbh
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __bfloat16
:Param Types:
    float a
:Param ETypes:
    FP32 a

.. code-block:: C

    __bfloat16 _mm_cvtness_sbh(float a);

.. admonition:: Intel Description

    Convert the single-precision (32-bit) floating-point element in "a" to a BF16 (16-bit) floating-point element, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := Convert_FP32_To_BF16(a[31:0])
        	

_mm_cvtne2ps_pbh
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128bh
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128bh _mm_cvtne2ps_pbh(__m128 a, __m128 b);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in two vectors "a" and "b" to packed BF16 (16-bit) floating-point elements, and store the results in single vector "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	IF j < 4
        		t := b.fp32[j]
        	ELSE
        		t := a.fp32[j-4]
        	FI
        	dst.word[j] := Convert_FP32_To_BF16(t)
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtne2ps_pbh
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128bh
:Param Types:
    __m128bh src, 
    __mmask8 k, 
    __m128 a, 
    __m128 b
:Param ETypes:
    BF16 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128bh _mm_mask_cvtne2ps_pbh(__m128bh src, __mmask8 k,
                                   __m128 a, __m128 b)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in two vectors "a" and "b" to packed BF16 (16-bit) floating-point elements, and store the results in single vector "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	IF k[j]
        		IF j < 4
        			t := b.fp32[j]
        		ELSE
        			t := a.fp32[j-4]
        		FI
        		dst.word[j] := Convert_FP32_To_BF16(t)
        	ELSE
        		dst.word[j] := src.word[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtne2ps_pbh
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128bh
:Param Types:
    __mmask8 k, 
    __m128 a, 
    __m128 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128bh _mm_maskz_cvtne2ps_pbh(__mmask8 k, __m128 a,
                                    __m128 b)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in two vectors "a" and "b" to packed BF16 (16-bit) floating-point elements, and store the results in single vector "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	IF k[j]
        		IF j < 4
        			t := b.fp32[j]
        		ELSE
        			t := a.fp32[j-4]
        		FI
        		dst.word[j] := Convert_FP32_To_BF16(t)
        	ELSE
        		dst.word[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtneps_pbh
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128bh
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128bh _mm_cvtneps_pbh(__m128 __A);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed BF16 (16-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	dst.word[j] := Convert_FP32_To_BF16(a.fp32[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtneps_pbh
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128bh
:Param Types:
    __m128bh src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    BF16 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m128bh _mm_mask_cvtneps_pbh(__m128bh src, __mmask8 k,
                                  __m128 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed BF16 (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	IF k[j]
        		dst.word[j] := Convert_FP32_To_BF16(a.fp32[j])
        	ELSE
        		dst.word[j] := src.word[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtneps_pbh
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128bh
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m128bh _mm_maskz_cvtneps_pbh(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed BF16 (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	IF k[j]
        		dst.word[j] := Convert_FP32_To_BF16(a.fp32[j])
        	ELSE
        		dst.word[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtepi16_ph
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128i a
:Param ETypes:
    SI16 a

.. code-block:: C

    __m128h _mm_cvtepi16_ph(__m128i a);

.. admonition:: Intel Description

    Convert packed signed 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtepi16_ph
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    FP16 src, 
    MASK k, 
    SI16 a

.. code-block:: C

    __m128h _mm_mask_cvtepi16_ph(__m128h src, __mmask8 k,
                                 __m128i a)

.. admonition:: Intel Description

    Convert packed signed 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepi16_ph
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI16 a

.. code-block:: C

    __m128h _mm_maskz_cvtepi16_ph(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed signed 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtepu16_ph
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m128h _mm_cvtepu16_ph(__m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtepu16_ph
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    FP16 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m128h _mm_mask_cvtepu16_ph(__m128h src, __mmask8 k,
                                 __m128i a)

.. admonition:: Intel Description

    Convert packed unsigned 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtepu16_ph
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m128h _mm_maskz_cvtepu16_ph(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 16-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.fp16[j] := Convert_Int16_To_FP16(a.word[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtepi32_ph
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m128h _mm_cvtepi32_ph(__m128i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst". The upper 64 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtepi32_ph
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    FP16 src, 
    MASK k, 
    SI32 a

.. code-block:: C

    __m128h _mm_mask_cvtepi32_ph(__m128h src, __mmask8 k,
                                 __m128i a)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). The upper 64 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	IF k[j]
        		dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtepi32_ph
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI32 a

.. code-block:: C

    __m128h _mm_maskz_cvtepi32_ph(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). The upper 64 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	IF k[j]
        		dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_cvtepu32_ph
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m128h _mm_cvtepu32_ph(__m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst". The upper 64 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtepu32_ph
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    FP16 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m128h _mm_mask_cvtepu32_ph(__m128h src, __mmask8 k,
                                 __m128i a)

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). The upper 64 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	IF k[j]
        		dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtepu32_ph
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m128h _mm_maskz_cvtepu32_ph(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 32-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). The upper 64 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	IF k[j]
        		dst.fp16[j] := Convert_Int32_To_FP16(a.dword[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_cvtepi64_ph
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128i a
:Param ETypes:
    SI64 a

.. code-block:: C

    __m128h _mm_cvtepi64_ph(__m128i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst". The upper 96 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_mask_cvtepi64_ph
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    FP16 src, 
    MASK k, 
    SI64 a

.. code-block:: C

    __m128h _mm_mask_cvtepi64_ph(__m128h src, __mmask8 k,
                                 __m128i a)

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). The upper 96 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	IF k[j]
        		dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_maskz_cvtepi64_ph
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    SI64 a

.. code-block:: C

    __m128h _mm_maskz_cvtepi64_ph(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed signed 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). The upper 96 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	IF k[j]
        		dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_cvtepu64_ph
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128h _mm_cvtepu64_ph(__m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst". The upper 96 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_mask_cvtepu64_ph
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    FP16 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m128h _mm_mask_cvtepu64_ph(__m128h src, __mmask8 k,
                                 __m128i a)

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). The upper 96 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	IF k[j]
        		dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_maskz_cvtepu64_ph
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m128h _mm_maskz_cvtepu64_ph(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Convert packed unsigned 64-bit integers in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). The upper 96 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	IF k[j]
        		dst.fp16[j] := Convert_Int64_To_FP16(a.qword[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_cvtpd_ph
------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128h _mm_cvtpd_ph(__m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst". The upper 96 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	dst.fp16[j] := Convert_FP64_To_FP16(a.fp64[j])
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_mask_cvtpd_ph
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128d a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m128h _mm_mask_cvtpd_ph(__m128h src, __mmask8 k,
                              __m128d a)

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). The upper 96 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	IF k[j]
        		dst.fp16[j] := Convert_FP64_To_FP16(a.fp64[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_maskz_cvtpd_ph
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m128h _mm_maskz_cvtpd_ph(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). The upper 96 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	IF k[j]
        		dst.fp16[j] := Convert_FP64_To_FP16(a.fp64[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:32] := 0
        	

_mm_cvtxps_ph
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128h _mm_cvtxps_ph(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".  The upper 64 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	dst.fp16[j] := Convert_FP32_To_FP16(a.fp32[j])
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_cvtxps_ph
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m128h _mm_mask_cvtxps_ph(__m128h src, __mmask8 k,
                               __m128 a)

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).  The upper 64 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	IF k[j]
        		dst.fp16[j] := Convert_FP32_To_FP16(a.fp32[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_maskz_cvtxps_ph
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m128h _mm_maskz_cvtxps_ph(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).  The upper 64 bits of "dst" are zeroed out.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	IF k[j]
        		dst.fp16[j] := Convert_FP32_To_FP16(a.fp32[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_cvtph_epi32
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128i _mm_cvtph_epi32(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	dst.dword[j] := Convert_FP16_To_Int32(a.fp16[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtph_epi32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_mask_cvtph_epi32(__m128i src, __mmask8 k,
                                 __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_Int32(a.fp16[j])
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtph_epi32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_maskz_cvtph_epi32(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_Int32(a.fp16[j])
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvttph_epi32
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128i _mm_cvttph_epi32(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	dst.dword[j] := Convert_FP16_To_Int32_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvttph_epi32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_mask_cvttph_epi32(__m128i src, __mmask8 k,
                                  __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_Int32_Truncate(a.fp16[j])
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvttph_epi32
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_maskz_cvttph_epi32(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_Int32_Truncate(a.fp16[j])
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtph_epu32
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128i _mm_cvtph_epu32(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	dst.dword[j] := Convert_FP16_To_UInt32(a.fp16[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtph_epu32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_mask_cvtph_epu32(__m128i src, __mmask8 k,
                                 __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_UInt32(a.fp16[j])
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtph_epu32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_maskz_cvtph_epu32(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_UInt32(a.fp16[j])
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvttph_epu32
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128i _mm_cvttph_epu32(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	dst.dword[j] := Convert_FP16_To_UInt32_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvttph_epu32
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    UI32 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_mask_cvttph_epu32(__m128i src, __mmask8 k,
                                  __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_UInt32_Truncate(a.fp16[j])
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvttph_epu32
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_maskz_cvttph_epu32(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 32-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 3
        	IF k[j]
        		dst.dword[j] := Convert_FP16_To_UInt32_Truncate(a.fp16[j])
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtph_epi64
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128i _mm_cvtph_epi64(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	dst.qword[j] := Convert_FP16_To_Int64(a.fp16[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtph_epi64
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_mask_cvtph_epi64(__m128i src, __mmask8 k,
                                 __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_Int64(a.fp16[j])
        	ELSE
        		dst.qword[j] := src.qword[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtph_epi64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_maskz_cvtph_epi64(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_Int64(a.fp16[j])
        	ELSE
        		dst.qword[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvttph_epi64
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128i _mm_cvttph_epi64(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	dst.qword[j] := Convert_FP16_To_Int64_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvttph_epi64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_mask_cvttph_epi64(__m128i src, __mmask8 k,
                                  __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_Int64_Truncate(a.fp16[j])
        	ELSE
        		dst.qword[j] := src.qword[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvttph_epi64
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_maskz_cvttph_epi64(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_Int64_Truncate(a.fp16[j])
        	ELSE
        		dst.qword[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtph_epu64
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128i _mm_cvtph_epu64(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	dst.qword[j] := Convert_FP16_To_UInt64(a.fp16[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtph_epu64
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_mask_cvtph_epu64(__m128i src, __mmask8 k,
                                 __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_UInt64(a.fp16[j])
        	ELSE
        		dst.qword[j] := src.qword[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtph_epu64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_maskz_cvtph_epu64(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_UInt64(a.fp16[j])
        	ELSE
        		dst.qword[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvttph_epu64
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128i _mm_cvttph_epu64(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	dst.qword[j] := Convert_FP16_To_UInt64_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvttph_epu64
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    UI64 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_mask_cvttph_epu64(__m128i src, __mmask8 k,
                                  __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_UInt64_Truncate(a.fp16[j])
        	ELSE
        		dst.qword[j] := src.qword[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvttph_epu64
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_maskz_cvttph_epu64(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 64-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 1
        	IF k[j]
        		dst.qword[j] := Convert_FP16_To_UInt64_Truncate(a.fp16[j])
        	ELSE
        		dst.qword[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtph_epi16
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128i _mm_cvtph_epi16(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.word[j] := Convert_FP16_To_Int16(a.fp16[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtph_epi16
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    UI16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_mask_cvtph_epi16(__m128i src, __mmask8 k,
                                 __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_Int16(a.fp16[j])
        	ELSE
        		dst.word[j] := src.word[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtph_epi16
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_maskz_cvtph_epi16(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_Int16(a.fp16[j])
        	ELSE
        		dst.word[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvttph_epi16
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128i _mm_cvttph_epi16(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.word[j] := Convert_FP16_To_Int16_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvttph_epi16
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    UI16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_mask_cvttph_epi16(__m128i src, __mmask8 k,
                                  __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_Int16_Truncate(a.fp16[j])
        	ELSE
        		dst.word[j] := src.word[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvttph_epi16
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_maskz_cvttph_epi16(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed 16-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_Int16_Truncate(a.fp16[j])
        	ELSE
        		dst.word[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtph_epu16
---------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128i _mm_cvtph_epu16(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.word[j] := Convert_FP16_To_UInt16(a.fp16[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtph_epu16
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    UI16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_mask_cvtph_epu16(__m128i src, __mmask8 k,
                                 __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_UInt16(a.fp16[j])
        	ELSE
        		dst.word[j] := src.word[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtph_epu16
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_maskz_cvtph_epu16(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_UInt16(a.fp16[j])
        	ELSE
        		dst.word[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvttph_epu16
----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128i _mm_cvttph_epu16(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	dst.word[j] := Convert_FP16_To_UInt16_Truncate(a.fp16[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvttph_epu16
---------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    UI16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_mask_cvttph_epu16(__m128i src, __mmask8 k,
                                  __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers with truncation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_UInt16_Truncate(a.fp16[j])
        	ELSE
        		dst.word[j] := src.word[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvttph_epu16
----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128i _mm_maskz_cvttph_epu16(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed unsigned 16-bit integers with truncation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 7
        	IF k[j]
        		dst.word[j] := Convert_FP16_To_UInt16_Truncate(a.fp16[j])
        	ELSE
        		dst.word[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtph_pd
------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128d _mm_cvtph_pd(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	dst.fp64[j] := Convert_FP16_To_FP64(a.fp16[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtph_pd
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128d _mm_mask_cvtph_pd(__m128d src, __mmask8 k,
                              __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	IF k[j]
        		dst.fp64[j] := Convert_FP16_To_FP64(a.fp16[j])
        	ELSE
        		dst.fp64[j] := src.fp64[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtph_pd
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128d _mm_maskz_cvtph_pd(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	IF k[j]
        		dst.fp64[j] := Convert_FP16_To_FP64(a.fp16[j])
        	ELSE
        		dst.fp64[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtxph_ps
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128 _mm_cvtxph_ps(__m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	dst.fp32[j] := Convert_FP16_To_FP32(a.fp16[j])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_cvtxph_ps
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128 _mm_mask_cvtxph_ps(__m128 src, __mmask8 k,
                              __m128h a)

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	IF k[j]
        		dst.fp32[j] := Convert_FP16_To_FP32(a.fp16[j])
        	ELSE
        		dst.fp32[j] := src.fp32[j]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_cvtxph_ps
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128 _mm_maskz_cvtxph_ps(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	IF k[j]
        		dst.fp32[j] := Convert_FP16_To_FP32(a.fp16[j])
        	ELSE
        		dst.fp32[j] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtsd_sh
------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128d b
:Param ETypes:
    FP16 a, 
    FP64 b

.. code-block:: C

    __m128h _mm_cvtsd_sh(__m128h a, __m128d b);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "b" to a half-precision (16-bit) floating-point elements, store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := Convert_FP64_To_FP16(b.fp64[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_cvt_roundsd_sh
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128d b, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m128h _mm_cvt_roundsd_sh(__m128h a, __m128d b,
                               const int rounding)

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "b" to a half-precision (16-bit) floating-point elements, store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper element of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := Convert_FP64_To_FP16(b.fp64[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_mask_cvtsd_sh
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128d b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP64 b

.. code-block:: C

    __m128h _mm_mask_cvtsd_sh(__m128h src, __mmask8 k,
                              __m128h a, __m128d b)

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "b" to a half-precision (16-bit) floating-point elements, store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := Convert_FP64_To_FP16(b.fp64[0])
        ELSE
        	dst.fp16[0] := src.fp16[0]
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_mask_cvt_roundsd_sh
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128d b, 
    const int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m128h _mm_mask_cvt_roundsd_sh(__m128h src, __mmask8 k,
                                    __m128h a, __m128d b,
                                    const int rounding)

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "b" to a half-precision (16-bit) floating-point elements, store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper element of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := Convert_FP64_To_FP16(b.fp64[0])
        ELSE
        	dst.fp16[0] := src.fp16[0]
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_maskz_cvtsd_sh
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128d b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP64 b

.. code-block:: C

    __m128h _mm_maskz_cvtsd_sh(__mmask8 k, __m128h a,
                               __m128d b)

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "b" to a half-precision (16-bit) floating-point elements, store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := Convert_FP64_To_FP16(b.fp64[0])
        ELSE
        	dst.fp16[0] := 0
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_maskz_cvt_roundsd_sh
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128d b, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m128h _mm_maskz_cvt_roundsd_sh(__mmask8 k, __m128h a,
                                     __m128d b,
                                     const int rounding)

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "b" to a half-precision (16-bit) floating-point elements, store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper element of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := Convert_FP64_To_FP16(b.fp64[0])
        ELSE
        	dst.fp16[0] := 0
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_cvtss_sh
------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128 b
:Param ETypes:
    FP16 a, 
    FP32 b

.. code-block:: C

    __m128h _mm_cvtss_sh(__m128h a, __m128 b);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "b" to a half-precision (16-bit) floating-point elements, store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := Convert_FP32_To_FP16(b.fp32[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_cvt_roundss_sh
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128 b, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m128h _mm_cvt_roundss_sh(__m128h a, __m128 b,
                               const int rounding)

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "b" to a half-precision (16-bit) floating-point elements, store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := Convert_FP32_To_FP16(b.fp32[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_mask_cvtss_sh
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128 b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP32 b

.. code-block:: C

    __m128h _mm_mask_cvtss_sh(__m128h src, __mmask8 k,
                              __m128h a, __m128 b)

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "b" to a half-precision (16-bit) floating-point elements, store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := Convert_FP32_To_FP16(b.fp32[0])
        ELSE
        	dst.fp16[0] := src.fp16[0]
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_mask_cvt_roundss_sh
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128 b, 
    const int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m128h _mm_mask_cvt_roundss_sh(__m128h src, __mmask8 k,
                                    __m128h a, __m128 b,
                                    const int rounding)

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "b" to a half-precision (16-bit) floating-point elements, store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := Convert_FP32_To_FP16(b.fp32[0])
        ELSE
        	dst.fp16[0] := src.fp16[0]
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_maskz_cvtss_sh
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128 b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP32 b

.. code-block:: C

    __m128h _mm_maskz_cvtss_sh(__mmask8 k, __m128h a, __m128 b);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "b" to a half-precision (16-bit) floating-point elements, store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := Convert_FP32_To_FP16(b.fp32[0])
        ELSE
        	dst.fp16[0] := 0
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_maskz_cvt_roundss_sh
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128 b, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m128h _mm_maskz_cvt_roundss_sh(__mmask8 k, __m128h a,
                                     __m128 b,
                                     const int rounding)

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "b" to a half-precision (16-bit) floating-point elements, store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := Convert_FP32_To_FP16(b.fp32[0])
        ELSE
        	dst.fp16[0] := 0
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_cvtsh_sd
------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128h b
:Param ETypes:
    FP64 a, 
    FP16 b

.. code-block:: C

    __m128d _mm_cvtsh_sd(__m128d a, __m128h b);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp64[0] := Convert_FP16_To_FP64(b.fp16[0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_cvt_roundsh_sd
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128h b, 
    const int sae
:Param ETypes:
    FP64 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m128d _mm_cvt_roundsh_sd(__m128d a, __m128h b,
                               const int sae)

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp64[0] := Convert_FP16_To_FP64(b.fp16[0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_mask_cvtsh_sd
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128d a, 
    __m128h b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP16 b

.. code-block:: C

    __m128d _mm_mask_cvtsh_sd(__m128d src, __mmask8 k,
                              __m128d a, __m128h b)

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp64[0] := Convert_FP16_To_FP64(b.fp16[0])
        ELSE
        	dst.fp64[0] := src.fp64[0]
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_mask_cvt_roundsh_sd
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128d a, 
    __m128h b, 
    const int sae
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m128d _mm_mask_cvt_roundsh_sd(__m128d src, __mmask8 k,
                                    __m128d a, __m128h b,
                                    const int sae)

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp64[0] := Convert_FP16_To_FP64(b.fp16[0])
        ELSE
        	dst.fp64[0] := src.fp64[0]
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_maskz_cvtsh_sd
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128d a, 
    __m128h b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP16 b

.. code-block:: C

    __m128d _mm_maskz_cvtsh_sd(__mmask8 k, __m128d a,
                               __m128h b)

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp64[0] := Convert_FP16_To_FP64(b.fp16[0])
        ELSE
        	dst.fp64[0] := 0
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_maskz_cvt_roundsh_sd
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128d a, 
    __m128h b, 
    const int sae
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m128d _mm_maskz_cvt_roundsh_sd(__mmask8 k, __m128d a,
                                     __m128h b, const int sae)

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp64[0] := Convert_FP16_To_FP64(b.fp16[0])
        ELSE
        	dst.fp64[0] := 0
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_cvtsh_ss
------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128h b
:Param ETypes:
    FP32 a, 
    FP16 b

.. code-block:: C

    __m128 _mm_cvtsh_ss(__m128 a, __m128h b);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp32[0] := Convert_FP16_To_FP32(b.fp16[0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_cvt_roundsh_ss
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128h b, 
    const int sae
:Param ETypes:
    FP32 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m128 _mm_cvt_roundsh_ss(__m128 a, __m128h b,
                              const int sae)

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp32[0] := Convert_FP16_To_FP32(b.fp16[0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_mask_cvtsh_ss
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a, 
    __m128h b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP16 b

.. code-block:: C

    __m128 _mm_mask_cvtsh_ss(__m128 src, __mmask8 k, __m128 a,
                             __m128h b)

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp32[0] := Convert_FP16_To_FP32(b.fp16[0])
        ELSE
        	dst.fp32[0] := src.fp32[0]
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_mask_cvt_roundsh_ss
-----------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a, 
    __m128h b, 
    const int sae
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m128 _mm_mask_cvt_roundsh_ss(__m128 src, __mmask8 k,
                                   __m128 a, __m128h b,
                                   const int sae)

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp32[0] := Convert_FP16_To_FP32(b.fp16[0])
        ELSE
        	dst.fp32[0] := src.fp32[0]
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_maskz_cvtsh_ss
------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a, 
    __m128h b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP16 b

.. code-block:: C

    __m128 _mm_maskz_cvtsh_ss(__mmask8 k, __m128 a, __m128h b);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp32[0] := Convert_FP16_To_FP32(b.fp16[0])
        ELSE
        	dst.fp32[0] := 0
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_maskz_cvt_roundsh_ss
------------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a, 
    __m128h b, 
    const int sae
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m128 _mm_maskz_cvt_roundsh_ss(__mmask8 k, __m128 a,
                                    __m128h b, const int sae)

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp32[0] := Convert_FP16_To_FP32(b.fp16[0])
        ELSE
        	dst.fp32[0] := 0
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_cvtsh_i32
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    int _mm_cvtsh_i32(__m128h a);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "a" to a 32-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.dword := Convert_FP16_To_Int32(a.fp16[0])
        	

_mm_cvt_roundsh_i32
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128h a, 
    int rounding
:Param ETypes:
    FP16 a, 
    IMM rounding

.. code-block:: C

    int _mm_cvt_roundsh_i32(__m128h a, int rounding);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "a" to a 32-bit integer, and store the result in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.dword := Convert_FP16_To_Int32(a.fp16[0])
        	

_mm_cvtsh_i64
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __int64 _mm_cvtsh_i64(__m128h a);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "a" to a 64-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.qword := Convert_FP16_To_Int64(a.fp16[0])
        	

_mm_cvt_roundsh_i64
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128h a, 
    int rounding
:Param ETypes:
    FP16 a, 
    IMM rounding

.. code-block:: C

    __int64 _mm_cvt_roundsh_i64(__m128h a, int rounding);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "a" to a 64-bit integer, and store the result in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.qword := Convert_FP16_To_Int64(a.fp16[0])
        	

_mm_cvttsh_i32
--------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    int _mm_cvttsh_i32(__m128h a);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "a" to a 32-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.dword := Convert_FP16_To_Int32_Truncate(a.fp16[0])
        	

_mm_cvtt_roundsh_i32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128h a, 
    int sae
:Param ETypes:
    FP16 a, 
    IMM sae

.. code-block:: C

    int _mm_cvtt_roundsh_i32(__m128h a, int sae);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "a" to a 32-bit integer with truncation, and store the result in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.dword := Convert_FP16_To_Int32_Truncate(a.fp16[0])
        	

_mm_cvttsh_i64
--------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __int64 _mm_cvttsh_i64(__m128h a);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "a" to a 64-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.qword := Convert_FP16_To_Int64_Truncate(a.fp16[0])
        	

_mm_cvtt_roundsh_i64
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128h a, 
    int sae
:Param ETypes:
    FP16 a, 
    IMM sae

.. code-block:: C

    __int64 _mm_cvtt_roundsh_i64(__m128h a, int sae);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "a" to a 64-bit integer with truncation, and store the result in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.qword := Convert_FP16_To_Int64_Truncate(a.fp16[0])
        	

_mm_cvtsh_u32
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    unsigned int _mm_cvtsh_u32(__m128h a);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "a" to an unsigned 32-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.dword := Convert_FP16_To_UInt32(a.fp16[0])
        	

_mm_cvt_roundsh_u32
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    __m128h a, 
    int sae
:Param ETypes:
    FP16 a, 
    IMM sae

.. code-block:: C

    unsigned int _mm_cvt_roundsh_u32(__m128h a, int sae);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "a" to an unsigned 32-bit integer, and store the result in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.dword := Convert_FP16_To_UInt32(a.fp16[0])
        	

_mm_cvtsh_u64
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned __int64
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    unsigned __int64 _mm_cvtsh_u64(__m128h a);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "a" to an unsigned 64-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.qword := Convert_FP16_To_UInt64(a.fp16[0])
        	

_mm_cvt_roundsh_u64
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned __int64
:Param Types:
    __m128h a, 
    int rounding
:Param ETypes:
    FP16 a, 
    IMM rounding

.. code-block:: C

    unsigned __int64 _mm_cvt_roundsh_u64(__m128h a, int rounding);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "a" to an unsigned 64-bit integer, and store the result in "dst". [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.qword := Convert_FP16_To_UInt64(a.fp16[0])
        	

_mm_cvttsh_u32
--------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    unsigned int _mm_cvttsh_u32(__m128h a);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "a" to an unsigned 32-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.dword := Convert_FP16_To_UInt32_Truncate(a.fp16[0])
        	

_mm_cvtt_roundsh_u32
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    __m128h a, 
    int sae
:Param ETypes:
    FP16 a, 
    IMM sae

.. code-block:: C

    unsigned int _mm_cvtt_roundsh_u32(__m128h a, int sae);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "a" to an unsigned 32-bit integer with truncation, and store the result in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.dword := Convert_FP16_To_UInt32_Truncate(a.fp16[0])
        	

_mm_cvttsh_u64
--------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned __int64
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    unsigned __int64 _mm_cvttsh_u64(__m128h a);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "a" to an unsigned 64-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.qword := Convert_FP16_To_UInt64_Truncate(a.fp16[0])
        	

_mm_cvtt_roundsh_u64
--------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: unsigned __int64
:Param Types:
    __m128h a, 
    int sae
:Param ETypes:
    FP16 a, 
    IMM sae

.. code-block:: C

    unsigned __int64 _mm_cvtt_roundsh_u64(__m128h a, int sae);

.. admonition:: Intel Description

    Convert the lower half-precision (16-bit) floating-point element in "a" to an unsigned 64-bit integer with truncation, and store the result in "dst". [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.qword := Convert_FP16_To_UInt64_Truncate(a.fp16[0])
        	

_mm_cvti32_sh
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    int b
:Param ETypes:
    FP16 a, 
    SI32 b

.. code-block:: C

    __m128h _mm_cvti32_sh(__m128h a, int b);

.. admonition:: Intel Description

    Convert the signed 32-bit integer "b" to a half-precision (16-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := Convert_Int32_To_FP16(b.fp32[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_cvt_roundi32_sh
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    int b, 
    int rounding
:Param ETypes:
    FP16 a, 
    SI32 b, 
    IMM rounding

.. code-block:: C

    __m128h _mm_cvt_roundi32_sh(__m128h a, int b, int rounding);

.. admonition:: Intel Description

    Convert the signed 32-bit integer "b" to a half-precision (16-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := Convert_Int32_To_FP16(b.fp32[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_cvtu32_sh
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    unsigned int b
:Param ETypes:
    FP16 a, 
    UI32 b

.. code-block:: C

    __m128h _mm_cvtu32_sh(__m128h a, unsigned int b);

.. admonition:: Intel Description

    Convert the unsigned 32-bit integer "b" to a half-precision (16-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := Convert_Int32_To_FP16(b.fp32[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_cvt_roundu32_sh
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    unsigned int b, 
    int rounding
:Param ETypes:
    FP16 a, 
    UI32 b, 
    IMM rounding

.. code-block:: C

    __m128h _mm_cvt_roundu32_sh(__m128h a, unsigned int b,
                                int rounding)

.. admonition:: Intel Description

    Convert the unsigned 32-bit integer "b" to a half-precision (16-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := Convert_Int32_To_FP16(b.fp32[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_cvti64_sh
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __int64 b
:Param ETypes:
    FP16 a, 
    SI64 b

.. code-block:: C

    __m128h _mm_cvti64_sh(__m128h a, __int64 b);

.. admonition:: Intel Description

    Convert the signed 64-bit integer "b" to a half-precision (16-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := Convert_Int64_To_FP16(b.fp64[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_cvt_roundi64_sh
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __int64 b, 
    int rounding
:Param ETypes:
    FP16 a, 
    SI64 b, 
    IMM rounding

.. code-block:: C

    __m128h _mm_cvt_roundi64_sh(__m128h a, __int64 b,
                                int rounding)

.. admonition:: Intel Description

    Convert the signed 64-bit integer "b" to a half-precision (16-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := Convert_Int64_To_FP16(b.fp64[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_cvtu64_sh
-------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    unsigned __int64 b
:Param ETypes:
    FP16 a, 
    UI64 b

.. code-block:: C

    __m128h _mm_cvtu64_sh(__m128h a, unsigned __int64 b);

.. admonition:: Intel Description

    Convert the unsigned 64-bit integer "b" to a half-precision (16-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := Convert_Int64_To_FP16(b.fp64[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_cvt_roundu64_sh
-------------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    unsigned __int64 b, 
    int rounding
:Param ETypes:
    FP16 a, 
    UI64 b, 
    IMM rounding

.. code-block:: C

    __m128h _mm_cvt_roundu64_sh(__m128h a, unsigned __int64 b,
                                int rounding)

.. admonition:: Intel Description

    Convert the unsigned 64-bit integer "b" to a half-precision (16-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := Convert_Int64_To_FP16(b.fp64[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_cvtsi16_si128
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    short a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m128i _mm_cvtsi16_si128(short a);

.. admonition:: Intel Description

    Copy 16-bit integer "a" to the lower elements of "dst", and zero the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := a.fp16[0]
        dst[MAX:16] := 0
        	

_mm_cvtsi128_si16
-----------------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: short
:Param Types:
    __m128i a
:Param ETypes:
    UI16 a

.. code-block:: C

    short _mm_cvtsi128_si16(__m128i a);

.. admonition:: Intel Description

    Copy the lower 16-bit integer in "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := a.fp16[0]
        dst[MAX:16] := 0
        	

_mm_cvtsh_h
-----------
:Tech: AVX-512
:Category: Convert
:Header: immintrin.h
:Searchable: AVX-512-Convert-XMM
:Register: XMM 128 bit
:Return Type: _Float16
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    _Float16 _mm_cvtsh_h(__m128h a);

.. admonition:: Intel Description

    Copy the lower half-precision (16-bit) floating-point element of "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := a.fp16[0]
        	

