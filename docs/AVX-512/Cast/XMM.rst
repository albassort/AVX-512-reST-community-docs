AVX-512-Cast-XMM
================

_mm_castph_ps
-------------
:Tech: AVX-512
:Category: Cast
:Header: immintrin.h
:Searchable: AVX-512-Cast-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128 _mm_castph_ps(__m128h a);

.. admonition:: Intel Description

    Cast vector of type "__m128h" to type "__m128". This intrinsic is only used for compilation and does not generate any instructions, thus it has zero latency.

_mm_castph_pd
-------------
:Tech: AVX-512
:Category: Cast
:Header: immintrin.h
:Searchable: AVX-512-Cast-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128d _mm_castph_pd(__m128h a);

.. admonition:: Intel Description

    Cast vector of type "__m128h" to type "__m128d". This intrinsic is only used for compilation and does not generate any instructions, thus it has zero latency.

_mm_castph_si128
----------------
:Tech: AVX-512
:Category: Cast
:Header: immintrin.h
:Searchable: AVX-512-Cast-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128i _mm_castph_si128(__m128h a);

.. admonition:: Intel Description

    Cast vector of type "__m128h" to type "__m128i". This intrinsic is only used for compilation and does not generate any instructions, thus it has zero latency.

_mm_castps_ph
-------------
:Tech: AVX-512
:Category: Cast
:Header: immintrin.h
:Searchable: AVX-512-Cast-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128h _mm_castps_ph(__m128 a);

.. admonition:: Intel Description

    Cast vector of type "__m128" to type "__m128h". This intrinsic is only used for compilation and does not generate any instructions, thus it has zero latency.

_mm_castpd_ph
-------------
:Tech: AVX-512
:Category: Cast
:Header: immintrin.h
:Searchable: AVX-512-Cast-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128h _mm_castpd_ph(__m128d a);

.. admonition:: Intel Description

    Cast vector of type "__m128d" to type "__m128h". This intrinsic is only used for compilation and does not generate any instructions, thus it has zero latency.

_mm_castsi128_ph
----------------
:Tech: AVX-512
:Category: Cast
:Header: immintrin.h
:Searchable: AVX-512-Cast-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m128h _mm_castsi128_ph(__m128i a);

.. admonition:: Intel Description

    Cast vector of type "__m128i" to type "__m128h". This intrinsic is only used for compilation and does not generate any instructions, thus it has zero latency.

