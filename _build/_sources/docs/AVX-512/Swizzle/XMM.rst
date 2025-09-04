AVX-512-Swizzle-XMM
===================

_mm_mask_shuffle_epi8
---------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask16 k, 
    __m128i a, 
    __m128i b
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __m128i _mm_mask_shuffle_epi8(__m128i src, __mmask16 k,
                                  __m128i a, __m128i b)

.. admonition:: Intel Description

    Shuffle packed 8-bit integers in "a" according to shuffle control mask in the corresponding 8-bit element of "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		IF b[i+7] == 1
        			dst[i+7:i] := 0
        		ELSE
        			index[3:0] := b[i+3:i]
        			dst[i+7:i] := a[index*8+7:index*8]
        		FI
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_shuffle_epi8
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask16 k, 
    __m128i a, 
    __m128i b
:Param ETypes:
    MASK k, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __m128i _mm_maskz_shuffle_epi8(__mmask16 k, __m128i a,
                                   __m128i b)

.. admonition:: Intel Description

    Shuffle packed 8-bit integers in "a" according to shuffle control mask in the corresponding 8-bit element of "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		IF b[i+7] == 1
        			dst[i+7:i] := 0
        		ELSE
        			index[3:0] := b[i+3:i]
        			dst[i+7:i] := a[index*8+7:index*8]
        		FI
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_permutexvar_epi8
--------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i idx, 
    __m128i a
:Param ETypes:
    UI8 idx, 
    UI8 a

.. code-block:: C

    __m128i _mm_permutexvar_epi8(__m128i idx, __m128i a);

.. admonition:: Intel Description

    Shuffle 8-bit integers in "a" using the corresponding index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	id := idx[i+3:i]*8
        	dst[i+7:i] := a[id+7:id]
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_permutexvar_epi8
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask16 k, 
    __m128i idx, 
    __m128i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 idx, 
    UI8 a

.. code-block:: C

    __m128i _mm_mask_permutexvar_epi8(__m128i src, __mmask16 k,
                                      __m128i idx, __m128i a)

.. admonition:: Intel Description

    Shuffle 8-bit integers in "a" using the corresponding index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	id := idx[i+3:i]*8
        	IF k[j]
        		dst[i+7:i] := a[id+7:id]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_permutexvar_epi8
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask16 k, 
    __m128i idx, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI8 idx, 
    UI8 a

.. code-block:: C

    __m128i _mm_maskz_permutexvar_epi8(__mmask16 k, __m128i idx,
                                       __m128i a)

.. admonition:: Intel Description

    Shuffle 8-bit integers in "a" using the corresponding index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	id := idx[i+3:i]*8
        	IF k[j]
        		dst[i+7:i] := a[id+7:id]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_permutex2var_epi8
---------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i idx, 
    __m128i b
:Param ETypes:
    UI8 a, 
    UI8 idx, 
    UI8 b

.. code-block:: C

    __m128i _mm_permutex2var_epi8(__m128i a, __m128i idx,
                                  __m128i b)

.. admonition:: Intel Description

    Shuffle 8-bit integers in "a" and "b" using the corresponding selector and index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	off := 8*idx[i+3:i]
        	dst[i+7:i] := idx[i+4] ? b[off+7:off] : a[off+7:off]
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_permutex2var_epi8
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __mmask16 k, 
    __m128i idx, 
    __m128i b
:Param ETypes:
    UI8 a, 
    MASK k, 
    UI8 idx, 
    UI8 b

.. code-block:: C

    __m128i _mm_mask_permutex2var_epi8(__m128i a, __mmask16 k,
                                       __m128i idx, __m128i b)

.. admonition:: Intel Description

    Shuffle 8-bit integers in "a" and "b" using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		off := 8*idx[i+3:i]
        		dst[i+7:i] := idx[i+4] ? b[off+7:off] : a[off+7:off]
        	ELSE
        		dst[i+7:i] := a[i+7:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask2_permutex2var_epi8
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i idx, 
    __mmask16 k, 
    __m128i b
:Param ETypes:
    UI8 a, 
    UI8 idx, 
    MASK k, 
    UI8 b

.. code-block:: C

    __m128i _mm_mask2_permutex2var_epi8(__m128i a, __m128i idx,
                                        __mmask16 k, __m128i b)

.. admonition:: Intel Description

    Shuffle 8-bit integers in "a" and "b" using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		off := 8*idx[i+3:i]
        		dst[i+7:i] := idx[i+4] ? b[off+7:off] : a[off+7:off]
        	ELSE
        		dst[i+7:i] := idx[i+7:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_permutex2var_epi8
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask16 k, 
    __m128i a, 
    __m128i idx, 
    __m128i b
:Param ETypes:
    MASK k, 
    UI8 a, 
    UI8 idx, 
    UI8 b

.. code-block:: C

    __m128i _mm_maskz_permutex2var_epi8(__mmask16 k, __m128i a,
                                        __m128i idx, __m128i b)

.. admonition:: Intel Description

    Shuffle 8-bit integers in "a" and "b" using the corresponding selector and index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		off := 8*idx[i+3:i]
        		dst[i+7:i] := idx[i+4] ? b[off+7:off] : a[off+7:off]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_expandloadu_epi16
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    const void* mem_addr
:Param ETypes:
    MASK k, 
    UI16 mem_addr

.. code-block:: C

    __m128i _mm_maskz_expandloadu_epi16(__mmask8 k,
                                        const void* mem_addr)

.. admonition:: Intel Description

    Load contiguous active 16-bit integers from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 7
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := MEM[mem_addr+m+15:mem_addr+m]
        		m := m + 16
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_expandloadu_epi16
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    const void* mem_addr
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 mem_addr

.. code-block:: C

    __m128i _mm_mask_expandloadu_epi16(__m128i src, __mmask8 k,
                                       const void* mem_addr)

.. admonition:: Intel Description

    Load contiguous active 16-bit integers from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 7
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := MEM[mem_addr+m+15:mem_addr+m]
        		m := m + 16
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_expandloadu_epi8
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask16 k, 
    const void* mem_addr
:Param ETypes:
    MASK k, 
    UI8 mem_addr

.. code-block:: C

    __m128i _mm_maskz_expandloadu_epi8(__mmask16 k,
                                       const void* mem_addr)

.. admonition:: Intel Description

    Load contiguous active 8-bit integers from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := MEM[mem_addr+m+7:mem_addr+m]
        		m := m + 8
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_expandloadu_epi8
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask16 k, 
    const void* mem_addr
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 mem_addr

.. code-block:: C

    __m128i _mm_mask_expandloadu_epi8(__m128i src, __mmask16 k,
                                      const void* mem_addr)

.. admonition:: Intel Description

    Load contiguous active 8-bit integers from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := MEM[mem_addr+m+7:mem_addr+m]
        		m := m + 8
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_expand_epi16
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m128i _mm_maskz_expand_epi16(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Load contiguous active 16-bit integers from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 7
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[m+15:m]
        		m := m + 16
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_expand_epi16
---------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m128i _mm_mask_expand_epi16(__m128i src, __mmask8 k,
                                  __m128i a)

.. admonition:: Intel Description

    Load contiguous active 16-bit integers from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 7
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[m+15:m]
        		m := m + 16
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_expand_epi8
---------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask16 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    __m128i _mm_maskz_expand_epi8(__mmask16 k, __m128i a);

.. admonition:: Intel Description

    Load contiguous active 8-bit integers from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[m+7:m]
        		m := m + 8
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_expand_epi8
--------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask16 k, 
    __m128i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a

.. code-block:: C

    __m128i _mm_mask_expand_epi8(__m128i src, __mmask16 k,
                                 __m128i a)

.. admonition:: Intel Description

    Load contiguous active 8-bit integers from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[m+7:m]
        		m := m + 8
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_compress_epi16
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m128i _mm_maskz_compress_epi16(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Contiguously store the active 16-bit integers in "a" (those with their respective bit set in zeromask "k") to "dst", and set the remaining elements to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 16
        m := 0
        FOR j := 0 to 7
        	i := j*16
        	IF k[j]
        		dst[m+size-1:m] := a[i+15:i]
        		m := m + size
        	FI
        ENDFOR
        dst[127:m] := 0
        dst[MAX:128] := 0
        	

_mm_mask_compress_epi16
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m128i _mm_mask_compress_epi16(__m128i src, __mmask8 k,
                                    __m128i a)

.. admonition:: Intel Description

    Contiguously store the active 16-bit integers in "a" (those with their respective bit set in writemask "k") to "dst", and pass through the remaining elements from "src".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 16
        m := 0
        FOR j := 0 to 7
        	i := j*16
        	IF k[j]
        		dst[m+size-1:m] := a[i+15:i]
        		m := m + size
        	FI
        ENDFOR
        dst[127:m] := src[127:m]
        dst[MAX:128] := 0
        	

_mm_maskz_compress_epi8
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask16 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    __m128i _mm_maskz_compress_epi8(__mmask16 k, __m128i a);

.. admonition:: Intel Description

    Contiguously store the active 8-bit integers in "a" (those with their respective bit set in zeromask "k") to "dst", and set the remaining elements to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 8
        m := 0
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		dst[m+size-1:m] := a[i+7:i]
        		m := m + size
        	FI
        ENDFOR
        dst[127:m] := 0
        dst[MAX:128] := 0
        	

_mm_mask_compress_epi8
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask16 k, 
    __m128i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a

.. code-block:: C

    __m128i _mm_mask_compress_epi8(__m128i src, __mmask16 k,
                                   __m128i a)

.. admonition:: Intel Description

    Contiguously store the active 8-bit integers in "a" (those with their respective bit set in writemask "k") to "dst", and pass through the remaining elements from "src".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 8
        m := 0
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		dst[m+size-1:m] := a[i+7:i]
        		m := m + size
        	FI
        ENDFOR
        dst[127:m] := src[127:m]
        dst[MAX:128] := 0
        	

_mm_mask_compressstoreu_epi16
-----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: void
:Param Types:
    void* base_addr, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI16 base_addr, 
    MASK k, 
    UI16 a

.. code-block:: C

    void _mm_mask_compressstoreu_epi16(void* base_addr,
                                       __mmask8 k, __m128i a)

.. admonition:: Intel Description

    Contiguously store the active 16-bit integers in "a" (those with their respective bit set in writemask "k") to unaligned memory at "base_addr".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 16
        m := base_addr
        FOR j := 0 to 7
        	i := j*16
        	IF k[j]
        		MEM[m+size-1:m] := a[i+15:i]
        		m := m + size
        	FI
        ENDFOR
        	

_mm_mask_compressstoreu_epi8
----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: void
:Param Types:
    void* base_addr, 
    __mmask16 k, 
    __m128i a
:Param ETypes:
    UI8 base_addr, 
    MASK k, 
    UI8 a

.. code-block:: C

    void _mm_mask_compressstoreu_epi8(void* base_addr,
                                      __mmask16 k, __m128i a)

.. admonition:: Intel Description

    Contiguously store the active 8-bit integers in "a" (those with their respective bit set in writemask "k") to unaligned memory at "base_addr".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 8
        m := base_addr
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		MEM[m+size-1:m] := a[i+7:i]
        		m := m + size
        	FI
        ENDFOR
        	

