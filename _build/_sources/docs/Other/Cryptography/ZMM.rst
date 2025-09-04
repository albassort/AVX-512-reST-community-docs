Other-Cryptography-ZMM
======================

_mm512_aesenclast_epi128
------------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i RoundKey
:Param ETypes:
    M128 a, 
    M128 RoundKey

.. code-block:: C

    __m512i _mm512_aesenclast_epi128(__m512i a,
                                     __m512i RoundKey)

.. admonition:: Intel Description

    Perform the last round of an AES encryption flow on data (state) in "a" using the round key in "RoundKey", and store the results in "dst"."

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*128
        	a[i+127:i] := ShiftRows(a[i+127:i])
        	a[i+127:i] := SubBytes(a[i+127:i])
        	dst[i+127:i] := a[i+127:i] XOR RoundKey[i+127:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_aesenc_epi128
--------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i RoundKey
:Param ETypes:
    M128 a, 
    M128 RoundKey

.. code-block:: C

    __m512i _mm512_aesenc_epi128(__m512i a, __m512i RoundKey);

.. admonition:: Intel Description

    Perform one round of an AES encryption flow on data (state) in "a" using the round key in "RoundKey", and store the results in "dst"."

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*128
        	a[i+127:i] := ShiftRows(a[i+127:i])
        	a[i+127:i] := SubBytes(a[i+127:i])
        	a[i+127:i] := MixColumns(a[i+127:i])
        	dst[i+127:i] := a[i+127:i] XOR RoundKey[i+127:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_aesdeclast_epi128
------------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i RoundKey
:Param ETypes:
    M128 a, 
    M128 RoundKey

.. code-block:: C

    __m512i _mm512_aesdeclast_epi128(__m512i a,
                                     __m512i RoundKey)

.. admonition:: Intel Description

    Perform the last round of an AES decryption flow on data (state) in "a" using the round key in "RoundKey", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*128
        	a[i+127:i] := InvShiftRows(a[i+127:i])
        	a[i+127:i] := InvSubBytes(a[i+127:i])
        	dst[i+127:i] := a[i+127:i] XOR RoundKey[i+127:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_aesdec_epi128
--------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i RoundKey
:Param ETypes:
    M128 a, 
    M128 RoundKey

.. code-block:: C

    __m512i _mm512_aesdec_epi128(__m512i a, __m512i RoundKey);

.. admonition:: Intel Description

    Perform one round of an AES decryption flow on data (state) in "a" using the round key in "RoundKey", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*128
        	a[i+127:i] := InvShiftRows(a[i+127:i])
        	a[i+127:i] := InvSubBytes(a[i+127:i])
        	a[i+127:i] := InvMixColumns(a[i+127:i])
        	dst[i+127:i] := a[i+127:i] XOR RoundKey[i+127:i]
        ENDFOR
        dst[MAX:512] := 0
        	

