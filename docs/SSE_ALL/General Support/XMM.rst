SSE_ALL-General Support-XMM
===========================

_mm_getcsr
----------
:Tech: SSE_ALL
:Category: General Support
:Header: immintrin.h
:Searchable: SSE_ALL-General Support-XMM
:Register: XMM 128 bit
:Return Type: unsigned int

.. code-block:: C

    unsigned int _mm_getcsr(void );

.. admonition:: Intel Description

    Get the unsigned 32-bit value of the MXCSR control and status register.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        dst[31:0] := MXCSR
        	

_mm_setcsr
----------
:Tech: SSE_ALL
:Category: General Support
:Header: immintrin.h
:Searchable: SSE_ALL-General Support-XMM
:Register: XMM 128 bit
:Return Type: void
:Param Types:
    unsigned int a
:Param ETypes:
    UI32 a

.. code-block:: C

    void _mm_setcsr(unsigned int a);

.. admonition:: Intel Description

    Set the MXCSR control and status register with the value in unsigned 32-bit integer "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        MXCSR := a[31:0]
        	

_mm_prefetch
------------
:Tech: SSE_ALL
:Category: General Support
:Header: immintrin.h
:Searchable: SSE_ALL-General Support-XMM
:Register: XMM 128 bit
:Return Type: void
:Param Types:
    char const* p, 
    int i
:Param ETypes:
    UI8 p, 
    IMM i

.. code-block:: C

    void _mm_prefetch(char const* p, int i);

.. admonition:: Intel Description

    Fetch the line of data from memory that contains address "p" to a location in the cache hierarchy specified by the locality hint "i", which can be one of:<ul>
        <li>_MM_HINT_T0   // 3, move data using the T0 hint. The PREFETCHT0 instruction will be generated.</li>
        <li>_MM_HINT_T1   // 2, move data using the T1 hint. The PREFETCHT1 instruction will be generated.</li>
        <li>_MM_HINT_T2   // 1, move data using the T2 hint. The PREFETCHT2 instruction will be generated.</li>
        <li>_MM_HINT_NTA  // 0, move data using the non-temporal access (NTA) hint. The PREFETCHNTA instruction will be generated.</li>
    

_mm_sfence
----------
:Tech: SSE_ALL
:Category: General Support
:Header: immintrin.h
:Searchable: SSE_ALL-General Support-XMM
:Register: XMM 128 bit
:Return Type: void

.. code-block:: C

    void _mm_sfence(void );

.. admonition:: Intel Description

    Perform a serializing operation on all store-to-memory instructions that were issued prior to this instruction. Guarantees that every store instruction that precedes, in program order, is globally visible before any store instruction which follows the fence in program order.

_mm_malloc
----------
:Tech: SSE_ALL
:Category: General Support
:Header: immintrin.h
:Searchable: SSE_ALL-General Support-XMM
:Register: XMM 128 bit
:Return Type: void*
:Param Types:
    size_t size, 
    size_t align
:Param ETypes:
    UI64 size, 
    UI64 align

.. code-block:: C

    void* _mm_malloc(size_t size, size_t align);

.. admonition:: Intel Description

    Allocate "size" bytes of memory, aligned to the alignment specified in "align", and return a pointer to the allocated memory. "_mm_free" should be used to free memory that is allocated with "_mm_malloc".

_mm_free
--------
:Tech: SSE_ALL
:Category: General Support
:Header: immintrin.h
:Searchable: SSE_ALL-General Support-XMM
:Register: XMM 128 bit
:Return Type: void

.. code-block:: C

    void _mm_free(void * mem_addr);

.. admonition:: Intel Description

    Free aligned memory that was allocated with "_mm_malloc".

_mm_undefined_ps
----------------
:Tech: SSE_ALL
:Category: General Support
:Header: immintrin.h
:Searchable: SSE_ALL-General Support-XMM
:Register: XMM 128 bit
:Return Type: __m128

.. code-block:: C

    __m128 _mm_undefined_ps(void );

.. admonition:: Intel Description

    Return vector of type __m128 with undefined elements.

_mm_undefined_pd
----------------
:Tech: SSE_ALL
:Category: General Support
:Header: emmintrin.h
:Searchable: SSE_ALL-General Support-XMM
:Register: XMM 128 bit
:Return Type: __m128d

.. code-block:: C

    __m128d _mm_undefined_pd(void );

.. admonition:: Intel Description

    Return vector of type __m128d with undefined elements.

_mm_undefined_si128
-------------------
:Tech: SSE_ALL
:Category: General Support
:Header: emmintrin.h
:Searchable: SSE_ALL-General Support-XMM
:Register: XMM 128 bit
:Return Type: __m128i

.. code-block:: C

    __m128i _mm_undefined_si128(void );

.. admonition:: Intel Description

    Return vector of type __m128i with undefined elements.

_mm_pause
---------
:Tech: SSE_ALL
:Category: General Support
:Header: emmintrin.h
:Searchable: SSE_ALL-General Support-XMM
:Register: XMM 128 bit
:Return Type: void

.. code-block:: C

    void _mm_pause(void );

.. admonition:: Intel Description

    Provide a hint to the processor that the code sequence is a spin-wait loop. This can help improve the performance and power consumption of spin-wait loops.

_mm_clflush
-----------
:Tech: SSE_ALL
:Category: General Support
:Header: emmintrin.h
:Searchable: SSE_ALL-General Support-XMM
:Register: XMM 128 bit
:Return Type: void

.. code-block:: C

    void _mm_clflush(void const* p);

.. admonition:: Intel Description

    Invalidate and flush the cache line that contains "p" from all levels of the cache hierarchy.

_mm_lfence
----------
:Tech: SSE_ALL
:Category: General Support
:Header: emmintrin.h
:Searchable: SSE_ALL-General Support-XMM
:Register: XMM 128 bit
:Return Type: void

.. code-block:: C

    void _mm_lfence(void );

.. admonition:: Intel Description

    Perform a serializing operation on all load-from-memory instructions that were issued prior to this instruction. Guarantees that every load instruction that precedes, in program order, is globally visible before any load instruction which follows the fence in program order.

_mm_mfence
----------
:Tech: SSE_ALL
:Category: General Support
:Header: emmintrin.h
:Searchable: SSE_ALL-General Support-XMM
:Register: XMM 128 bit
:Return Type: void

.. code-block:: C

    void _mm_mfence(void );

.. admonition:: Intel Description

    Perform a serializing operation on all load-from-memory and store-to-memory instructions that were issued prior to this instruction. Guarantees that every memory access that precedes, in program order, the memory fence instruction is globally visible before any memory instruction which follows the fence in program order.

