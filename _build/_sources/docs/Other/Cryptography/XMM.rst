Other-Cryptography-XMM
======================

_mm_aesenc_si128
----------------
:Tech: Other
:Category: Cryptography
:Header: wmmintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i RoundKey
:Param ETypes:
    M128 a, 
    M128 RoundKey

.. code-block:: C

    __m128i _mm_aesenc_si128(__m128i a, __m128i RoundKey);

.. admonition:: Intel Description

    Perform one round of an AES encryption flow on data (state) in "a" using the round key in "RoundKey", and store the result in "dst"."

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        a[127:0] := ShiftRows(a[127:0])
        a[127:0] := SubBytes(a[127:0])
        a[127:0] := MixColumns(a[127:0])
        dst[127:0] := a[127:0] XOR RoundKey[127:0]
        	

_mm_aesenclast_si128
--------------------
:Tech: Other
:Category: Cryptography
:Header: wmmintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i RoundKey
:Param ETypes:
    M128 a, 
    M128 RoundKey

.. code-block:: C

    __m128i _mm_aesenclast_si128(__m128i a, __m128i RoundKey);

.. admonition:: Intel Description

    Perform the last round of an AES encryption flow on data (state) in "a" using the round key in "RoundKey", and store the result in "dst"."

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        a[127:0] := ShiftRows(a[127:0])
        a[127:0] := SubBytes(a[127:0])
        dst[127:0] := a[127:0] XOR RoundKey[127:0]
        	

_mm_aesdec_si128
----------------
:Tech: Other
:Category: Cryptography
:Header: wmmintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i RoundKey
:Param ETypes:
    M128 a, 
    M128 RoundKey

.. code-block:: C

    __m128i _mm_aesdec_si128(__m128i a, __m128i RoundKey);

.. admonition:: Intel Description

    Perform one round of an AES decryption flow on data (state) in "a" using the round key in "RoundKey", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        a[127:0] := InvShiftRows(a[127:0])
        a[127:0] := InvSubBytes(a[127:0])
        a[127:0] := InvMixColumns(a[127:0])
        dst[127:0] := a[127:0] XOR RoundKey[127:0]
        	

_mm_aesdeclast_si128
--------------------
:Tech: Other
:Category: Cryptography
:Header: wmmintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i RoundKey
:Param ETypes:
    M128 a, 
    M128 RoundKey

.. code-block:: C

    __m128i _mm_aesdeclast_si128(__m128i a, __m128i RoundKey);

.. admonition:: Intel Description

    Perform the last round of an AES decryption flow on data (state) in "a" using the round key in "RoundKey", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        a[127:0] := InvShiftRows(a[127:0])
        a[127:0] := InvSubBytes(a[127:0])
        dst[127:0] := a[127:0] XOR RoundKey[127:0]
        	

_mm_aesimc_si128
----------------
:Tech: Other
:Category: Cryptography
:Header: wmmintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    M128 a

.. code-block:: C

    __m128i _mm_aesimc_si128(__m128i a);

.. admonition:: Intel Description

    Perform the InvMixColumns transformation on "a" and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        dst[127:0] := InvMixColumns(a[127:0])
        	

_mm_aeskeygenassist_si128
-------------------------
:Tech: Other
:Category: Cryptography
:Header: wmmintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    const int imm8
:Param ETypes:
    M128 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm_aeskeygenassist_si128(__m128i a,
                                      const int imm8)

.. admonition:: Intel Description

    Assist in expanding the AES cipher key by computing steps towards generating a round key for encryption cipher using data from "a" and an 8-bit round constant specified in "imm8", and store the result in "dst"."

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        X3[31:0] := a[127:96]
        X2[31:0] := a[95:64]
        X1[31:0] := a[63:32]
        X0[31:0] := a[31:0]
        RCON[31:0] := ZeroExtend32(imm8[7:0])
        dst[31:0] := SubWord(X1)
        dst[63:32] := RotWord(SubWord(X1)) XOR RCON
        dst[95:64] := SubWord(X3)
        dst[127:96] := RotWord(SubWord(X3)) XOR RCON
        	

_mm_crc32_u8
------------
:Tech: Other
:Category: Cryptography
:Header: nmmintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    unsigned int crc, 
    unsigned char v
:Param ETypes:
    UI32 crc, 
    UI8 v

.. code-block:: C

    unsigned int _mm_crc32_u8(unsigned int crc, unsigned char v);

.. admonition:: Intel Description

    Starting with the initial value in "crc", accumulates a CRC32 value for unsigned 8-bit integer "v", and stores the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        tmp1[7:0] := v[0:7] // bit reflection
        tmp2[31:0] := crc[0:31] // bit reflection
        tmp3[39:0] := tmp1[7:0] << 32 
        tmp4[39:0] := tmp2[31:0] << 8
        tmp5[39:0] := tmp3[39:0] XOR tmp4[39:0]
        tmp6[31:0] := MOD2(tmp5[39:0], 0x11EDC6F41) // remainder from polynomial division modulus 2
        dst[31:0] := tmp6[0:31] // bit reflection
        	

_mm_crc32_u16
-------------
:Tech: Other
:Category: Cryptography
:Header: nmmintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    unsigned int crc, 
    unsigned short v
:Param ETypes:
    UI32 crc, 
    UI16 v

.. code-block:: C

    unsigned int _mm_crc32_u16(unsigned int crc, unsigned short v);

.. admonition:: Intel Description

    Starting with the initial value in "crc", accumulates a CRC32 value for unsigned 16-bit integer "v", and stores the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        tmp1[15:0] := v[0:15] // bit reflection
        tmp2[31:0] := crc[0:31] // bit reflection
        tmp3[47:0] := tmp1[15:0] << 32
        tmp4[47:0] := tmp2[31:0] << 16
        tmp5[47:0] := tmp3[47:0] XOR tmp4[47:0]
        tmp6[31:0] := MOD2(tmp5[47:0], 0x11EDC6F41) // remainder from polynomial division modulus 2
        dst[31:0] := tmp6[0:31] // bit reflection
        	

_mm_crc32_u32
-------------
:Tech: Other
:Category: Cryptography
:Header: nmmintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    unsigned int crc, 
    unsigned int v
:Param ETypes:
    UI32 crc, 
    UI32 v

.. code-block:: C

    unsigned int _mm_crc32_u32(unsigned int crc, unsigned int v);

.. admonition:: Intel Description

    Starting with the initial value in "crc", accumulates a CRC32 value for unsigned 32-bit integer "v", and stores the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        tmp1[31:0] := v[0:31] // bit reflection
        tmp2[31:0] := crc[0:31] // bit reflection
        tmp3[63:0] := tmp1[31:0] << 32
        tmp4[63:0] := tmp2[31:0] << 32
        tmp5[63:0] := tmp3[63:0] XOR tmp4[63:0]
        tmp6[31:0] := MOD2(tmp5[63:0], 0x11EDC6F41) // remainder from polynomial division modulus 2
        dst[31:0] := tmp6[0:31] // bit reflection
        	

_mm_crc32_u64
-------------
:Tech: Other
:Category: Cryptography
:Header: nmmintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: unsigned __int64
:Param Types:
    unsigned __int64 crc, 
    unsigned __int64 v
:Param ETypes:
    UI64 crc, 
    UI64 v

.. code-block:: C

    unsigned __int64 _mm_crc32_u64(unsigned __int64 crc, unsigned __int64 v);

.. admonition:: Intel Description

    Starting with the initial value in "crc", accumulates a CRC32 value for unsigned 64-bit integer "v", and stores the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        tmp1[63:0] := v[0:63] // bit reflection
        tmp2[31:0] := crc[0:31] // bit reflection
        tmp3[95:0] := tmp1[31:0] << 32
        tmp4[95:0] := tmp2[63:0] << 64
        tmp5[95:0] := tmp3[95:0] XOR tmp4[95:0]
        tmp6[31:0] := MOD2(tmp5[95:0], 0x11EDC6F41) // remainder from polynomial division modulus 2
        dst[31:0] := tmp6[0:31] // bit reflection
        	

_mm_aesdec128kl_u8
------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: unsigned char
:Param Types:
    __m128i* __odata, 
    __m128i __idata, 
    const void* __h
:Param ETypes:
    UI8 __odata, 
    UI8 __idata, 
    UI8 __h

.. code-block:: C

    unsigned char _mm_aesdec128kl_u8(__m128i* __odata, __m128i __idata, const void* __h);

.. admonition:: Intel Description

    Decrypt 10 rounds of unsigned 8-bit integers in "__idata" using 128-bit AES key specified in "__h", store the resulting unsigned 8-bit integers into the corresponding elements of "__odata", and set "dst" to the ZF flag status. If exception happens, set ZF flag to 1 and zero initialize "__odata".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        MEM[__odata+127:__odata] := AES128Decrypt (__idata[127:0], __h[383:0])
        dst := ZF
        		

_mm_aesdec256kl_u8
------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: unsigned char
:Param Types:
    __m128i* __odata, 
    __m128i __idata, 
    const void* __h
:Param ETypes:
    UI8 __odata, 
    UI8 __idata, 
    UI8 __h

.. code-block:: C

    unsigned char _mm_aesdec256kl_u8(__m128i* __odata, __m128i __idata, const void* __h);

.. admonition:: Intel Description

    Decrypt 10 rounds of unsigned 8-bit integers in "__idata" using 256-bit AES key specified in "__h", store the resulting unsigned 8-bit integers into the corresponding elements of "__odata", and set "dst" to the ZF flag status. If exception happens, set ZF flag to 1 and zero initialize "__odata".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        MEM[__odata+127:__odata] := AES256Decrypt (__idata[127:0], __h[511:0])
        dst := ZF
        		

_mm_aesenc128kl_u8
------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: unsigned char
:Param Types:
    __m128i* __odata, 
    __m128i __idata, 
    const void* __h
:Param ETypes:
    UI8 __odata, 
    UI8 __idata, 
    UI8 __h

.. code-block:: C

    unsigned char _mm_aesenc128kl_u8(__m128i* __odata, __m128i __idata, const void* __h);

.. admonition:: Intel Description

    Encrypt 10 rounds of unsigned 8-bit integers in "__idata" using 128-bit AES key specified in "__h", store the resulting unsigned 8-bit integers into the corresponding elements of "__odata", and set "dst" to the ZF flag status.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        MEM[__odata+127:__odata] := AES128Encrypt (__idata[127:0], __h[383:0])
        dst := ZF
        		

_mm_aesenc256kl_u8
------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: unsigned char
:Param Types:
    __m128i* __odata, 
    __m128i __idata, 
    const void* __h
:Param ETypes:
    UI8 __odata, 
    UI8 __idata, 
    UI8 __h

.. code-block:: C

    unsigned char _mm_aesenc256kl_u8(__m128i* __odata, __m128i __idata, const void* __h);

.. admonition:: Intel Description

    Encrypt 10 rounds of unsigned 8-bit integers in "__idata" using 256-bit AES key specified in "__h", store the resulting unsigned 8-bit integers into the corresponding elements of "__odata", and set "dst" to the ZF flag status. If exception happens, set ZF flag to 1 and zero initialize "__odata".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        MEM[__odata+127:__odata] := AES256Encrypt (__idata[127:0], __h[511:0])
        dst := ZF
        		

_mm_encodekey128_u32
--------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    unsigned int __htype, 
    __m128i __key, 
    void* __h
:Param ETypes:
    UI32 __htype, 
    UI8 __key, 
    UI8 __h

.. code-block:: C

    unsigned int _mm_encodekey128_u32(unsigned int __htype, __m128i __key, void* __h);

.. admonition:: Intel Description

    Wrap a 128-bit AES key from "__key" into a 384-bit key __h stored in "__h" and set IWKey's NoBackup and KeySource bits in "dst". The explicit source operand "__htype" specifies __h restrictions.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        __h[383:0] := WrapKey128(__key[127:0], __htype)
        dst[0] := IWKey.NoBackup
        dst[4:1] := IWKey.KeySource[3:0]
        		

_mm_encodekey256_u32
--------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: unsigned int
:Param Types:
    unsigned int __htype, 
    __m128i __key_lo, 
    __m128i __key_hi, 
    void* __h
:Param ETypes:
    UI32 __htype, 
    UI8 __key_lo, 
    UI8 __key_hi, 
    UI8 __h

.. code-block:: C

    unsigned int _mm_encodekey256_u32(unsigned int __htype, __m128i __key_lo, __m128i __key_hi, void* __h);

.. admonition:: Intel Description

    Wrap a 256-bit AES key from "__key_hi" and "__key_lo" into a 512-bit key stored in "__h" and set IWKey's NoBackup and KeySource bits in "dst". The 32-bit "__htype" specifies __h restrictions.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        __h[511:0] := WrapKey256(__key_lo[127:0], __key_hi[127:0], __htype)
        dst[0] := IWKey.NoBackup
        dst[4:1] := IWKey.KeySource[3:0]
        		

_mm_loadiwkey
-------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: void
:Param Types:
    unsigned int __ctl, 
    __m128i __intkey, 
    __m128i __enkey_lo, 
    __m128i __enkey_hi
:Param ETypes:
    UI32 __ctl, 
    UI8 __intkey, 
    UI8 __enkey_lo, 
    UI8 __enkey_hi

.. code-block:: C

    void _mm_loadiwkey(unsigned int __ctl, __m128i __intkey,
                       __m128i __enkey_lo, __m128i __enkey_hi)

.. admonition:: Intel Description

    Load internal wrapping key (IWKey). The 32-bit unsigned integer "__ctl" specifies IWKey's KeySource and whether backing up the key is permitted. IWKey's 256-bit encryption key is loaded from "__enkey_lo" and "__enkey_hi". IWKey's 128-bit integrity key is loaded from "__intkey".

_mm_aesdecwide128kl_u8
----------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: unsigned char
:Param Types:
    __m128i* __odata, 
    const __m128i* __idata, 
    const void* __h
:Param ETypes:
    UI8 __odata, 
    UI8 __idata, 
    UI8 __h

.. code-block:: C

    unsigned char _mm_aesdecwide128kl_u8(__m128i* __odata, const __m128i* __idata, const void* __h);

.. admonition:: Intel Description

    Decrypt 10 rounds of 8 groups of unsigned 8-bit integers in "__idata" using 128-bit AES key specified in "__h", store the resulting unsigned 8-bit integers into the corresponding elements of "__odata", and set "dst" to the ZF flag status. If exception happens, set ZF flag to 1 and zero initialize "__odata".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 7
        	__odata[i] := AES128Decrypt (__idata[i], __h[383:0])
        ENDFOR
        dst := ZF
        		

_mm_aesdecwide256kl_u8
----------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: unsigned char
:Param Types:
    __m128i* __odata, 
    const __m128i* __idata, 
    const void* __h
:Param ETypes:
    UI8 __odata, 
    UI8 __idata, 
    UI8 __h

.. code-block:: C

    unsigned char _mm_aesdecwide256kl_u8(__m128i* __odata, const __m128i* __idata, const void* __h);

.. admonition:: Intel Description

    Decrypt 10 rounds of 8 groups of unsigned 8-bit integers in "__idata" using 256-bit AES key specified in "__h", store the resulting unsigned 8-bit integers into the corresponding elements of "__odata", and set "dst" to the ZF flag status. If exception happens, set ZF flag to 1 and zero initialize "__odata".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 7
        	__odata[i] := AES256Decrypt (__idata[i], __h[511:0])
        ENDFOR
        dst := ZF
        		

_mm_aesencwide128kl_u8
----------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: unsigned char
:Param Types:
    __m128i* __odata, 
    const __m128i* __idata, 
    const void* __h
:Param ETypes:
    UI8 __odata, 
    UI8 __idata, 
    UI8 __h

.. code-block:: C

    unsigned char _mm_aesencwide128kl_u8(__m128i* __odata, const __m128i* __idata, const void* __h);

.. admonition:: Intel Description

    Encrypt 10 rounds of 8 groups of unsigned 8-bit integers in "__idata" using 128-bit AES key specified in "__h", store the resulting unsigned 8-bit integers into the corresponding elements of "__odata", and set "dst" to the ZF flag status. If exception happens, set ZF flag to 1 and zero initialize "__odata".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 7
        	__odata[i] := AES128Encrypt (__idata[i], __h[383:0])
        ENDFOR
        dst := ZF
        		

_mm_aesencwide256kl_u8
----------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: unsigned char
:Param Types:
    __m128i* __odata, 
    const __m128i* __idata, 
    const void* __h
:Param ETypes:
    UI8 __odata, 
    UI8 __idata, 
    UI8 __h

.. code-block:: C

    unsigned char _mm_aesencwide256kl_u8(__m128i* __odata, const __m128i* __idata, const void* __h);

.. admonition:: Intel Description

    Encrypt 10 rounds of 8 groups of unsigned 8-bit integers in "__idata" using 256-bit AES key specified in "__h", store the resulting unsigned 8-bit integers into the corresponding elements of "__odata", and set "dst" to the ZF flag status. If exception happens, set ZF flag to 1 and zero initialize "__odata".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 7
        	__odata[i] := AES256Encrypt (__idata[i], __h[512:0])
        ENDFOR
        dst := ZF
        		

_mm_sha1msg1_epu32
------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m128i _mm_sha1msg1_epu32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Perform an intermediate calculation for the next four SHA1 message values (unsigned 32-bit integers) using previous message values from "a" and "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        W0 := a[127:96]
        W1 := a[95:64]
        W2 := a[63:32]
        W3 := a[31:0]
        W4 := b[127:96]
        W5 := b[95:64]
        dst[127:96] := W2 XOR W0
        dst[95:64] := W3 XOR W1
        dst[63:32] := W4 XOR W2
        dst[31:0] := W5 XOR W3
        	

_mm_sha1msg2_epu32
------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m128i _mm_sha1msg2_epu32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Perform the final calculation for the next four SHA1 message values (unsigned 32-bit integers) using the intermediate result in "a" and the previous message values in "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        W13 := b[95:64]
        W14 := b[63:32]
        W15 := b[31:0]
        W16 := (a[127:96] XOR W13) <<< 1
        W17 := (a[95:64] XOR W14) <<< 1
        W18 := (a[63:32] XOR W15) <<< 1
        W19 := (a[31:0] XOR W16) <<< 1
        dst[127:96] := W16
        dst[95:64] := W17
        dst[63:32] := W18
        dst[31:0] := W19
        	

_mm_sha1nexte_epu32
-------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m128i _mm_sha1nexte_epu32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Calculate SHA1 state variable E after four rounds of operation from the current SHA1 state variable "a", add that value to the scheduled values (unsigned 32-bit integers) in "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp := (a[127:96] <<< 30)
        dst[127:96] := b[127:96] + tmp
        dst[95:64] := b[95:64]
        dst[63:32] := b[63:32]
        dst[31:0] := b[31:0]
        	

_mm_sha1rnds4_epu32
-------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b, 
    const int func
:Param ETypes:
    UI32 a, 
    UI32 b, 
    IMM func

.. code-block:: C

    __m128i _mm_sha1rnds4_epu32(__m128i a, __m128i b,
                                const int func)

.. admonition:: Intel Description

    Perform four rounds of SHA1 operation using an initial SHA1 state (A,B,C,D) from "a" and some pre-computed sum of the next 4 round message values (unsigned 32-bit integers), and state variable E from "b", and store the updated SHA1 state (A,B,C,D) in "dst". "func" contains the logic functions and round constants.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        IF (func[1:0] == 0)
        	f := f0()
        	K := K0
        ELSE IF (func[1:0] == 1)
        	f := f1()
        	K := K1
        ELSE IF (func[1:0] == 2)
        	f := f2()
        	K := K2
        ELSE IF (func[1:0] == 3)
        	f := f3()
        	K := K3
        FI
        A := a[127:96]
        B := a[95:64]
        C := a[63:32]
        D := a[31:0]
        W[0] := b[127:96]
        W[1] := b[95:64]
        W[2] := b[63:32]
        W[3] := b[31:0]
        A[1] := f(B, C, D) + (A <<< 5) + W[0] + K
        B[1] := A
        C[1] := B <<< 30
        D[1] := C
        E[1] := D
        FOR i := 1 to 3
        	A[i+1] := f(B[i], C[i], D[i]) + (A[i] <<< 5) + W[i] + E[i] + K
        	B[i+1] := A[i]
        	C[i+1] := B[i] <<< 30
        	D[i+1] := C[i]
        	E[i+1] := D[i]
        ENDFOR
        dst[127:96] := A[4]
        dst[95:64] := B[4]
        dst[63:32] := C[4]
        dst[31:0] := D[4]
        	

_mm_sha256msg1_epu32
--------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m128i _mm_sha256msg1_epu32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Perform an intermediate calculation for the next four SHA256 message values (unsigned 32-bit integers) using previous message values from "a" and "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        W4 := b[31:0]
        W3 := a[127:96]
        W2 := a[95:64]
        W1 := a[63:32]
        W0 := a[31:0]
        dst[127:96] := W3 + sigma0(W4)
        dst[95:64] := W2 + sigma0(W3)
        dst[63:32] := W1 + sigma0(W2)
        dst[31:0] := W0 + sigma0(W1)
        	

_mm_sha256msg2_epu32
--------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m128i _mm_sha256msg2_epu32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Perform the final calculation for the next four SHA256 message values (unsigned 32-bit integers) using previous message values from "a" and "b", and store the result in "dst"."

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        W14 := b[95:64]
        W15 := b[127:96]
        W16 := a[31:0] + sigma1(W14)
        W17 := a[63:32] + sigma1(W15)
        W18 := a[95:64] + sigma1(W16)
        W19 := a[127:96] + sigma1(W17)
        dst[127:96] := W19
        dst[95:64] := W18
        dst[63:32] := W17
        dst[31:0] := W16
        	

_mm_sha256rnds2_epu32
---------------------
:Tech: Other
:Category: Cryptography
:Header: immintrin.h
:Searchable: Other-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b, 
    __m128i k
:Param ETypes:
    UI32 a, 
    UI32 b, 
    UI32 k

.. code-block:: C

    __m128i _mm_sha256rnds2_epu32(__m128i a, __m128i b,
                                  __m128i k)

.. admonition:: Intel Description

    Perform 2 rounds of SHA256 operation using an initial SHA256 state (C,D,G,H) from "a", an initial SHA256 state (A,B,E,F) from "b", and a pre-computed sum of the next 2 round message values (unsigned 32-bit integers) and the corresponding round constants from "k", and store the updated SHA256 state (A,B,E,F) in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        A[0] := b[127:96]
        B[0] := b[95:64]
        C[0] := a[127:96]
        D[0] := a[95:64]
        E[0] := b[63:32]
        F[0] := b[31:0]
        G[0] := a[63:32]
        H[0] := a[31:0]
        W_K[0] := k[31:0]
        W_K[1] := k[63:32]
        FOR i := 0 to 1
        	A[i+1] := Ch(E[i], F[i], G[i]) + sum1(E[i]) + W_K[i] + H[i] + Maj(A[i], B[i], C[i]) + sum0(A[i])
        	B[i+1] := A[i]
        	C[i+1] := B[i]
        	D[i+1] := C[i]
        	E[i+1] := Ch(E[i], F[i], G[i]) + sum1(E[i]) + W_K[i] + H[i] + D[i]
        	F[i+1] := E[i]
        	G[i+1] := F[i]
        	H[i+1] := G[i]
        ENDFOR
        dst[127:96] := A[2]
        dst[95:64] := B[2]
        dst[63:32] := E[2]
        dst[31:0] := F[2]
        	

