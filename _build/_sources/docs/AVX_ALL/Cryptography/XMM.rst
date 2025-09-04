AVX_ALL-Cryptography-XMM
========================

_mm_sm3msg1_epi32
-----------------
:Tech: AVX_ALL
:Category: Cryptography
:Header: immintrin.h
:Searchable: AVX_ALL-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i __A, 
    __m128i __B, 
    __m128i __C
:Param ETypes:
    UI32 __A, 
    UI32 __B, 
    UI32 __C

.. code-block:: C

    __m128i _mm_sm3msg1_epi32(__m128i __A, __m128i __B,
                              __m128i __C)

.. admonition:: Intel Description

    The VSM3MSG1 intrinsic is one of the two SM3 message scheduling intrinsics. The intrinsic performs an initial calculation for the next four SM3 message words. The calculated results are stored in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ROL32(dword, n) {
        	count := n % 32
        	dest := (dword << count) | (dword >> (32 - count))
        	RETURN dest
        }
        DEFINE P1(x) {
        	RETURN x ^ ROL32(x, 15) ^ ROL32(x, 23)
        }
        W.dword[0] := __C.dword[0]
        W.dword[1] := __C.dword[1]
        W.dword[2] := __C.dword[2]
        W.dword[3] := __C.dword[3]
        W.dword[7] := __A.dword[0]
        W.dword[8] := __A.dword[1]
        W.dword[9] := __A.dword[2]
        W.dword[10] := __A.dword[3]
        W.dword[13] := __B.dword[0]
        W.dword[14] := __B.dword[1]
        W.dword[15] := __B.dword[2]
        TMP0 := W.dword[7] ^ W.dword[0] ^ ROL32(W.dword[13], 15)
        TMP1 := W.dword[8] ^ W.dword[1] ^ ROL32(W.dword[14], 15)
        TMP2 := W.dword[9] ^ W.dword[2] ^ ROL32(W.dword[15], 15)
        TMP3 := W.dword[10] ^ W.dword[3]
        dst.dword[0] := P1(TMP0)
        dst.dword[1] := P1(TMP1)
        dst.dword[2] := P1(TMP2)
        dst.dword[3] := P1(TMP3)
        

_mm_sm3msg2_epi32
-----------------
:Tech: AVX_ALL
:Category: Cryptography
:Header: immintrin.h
:Searchable: AVX_ALL-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i __A, 
    __m128i __B, 
    __m128i __C
:Param ETypes:
    UI32 __A, 
    UI32 __B, 
    UI32 __C

.. code-block:: C

    __m128i _mm_sm3msg2_epi32(__m128i __A, __m128i __B,
                              __m128i __C)

.. admonition:: Intel Description

    The VSM3MSG2 intrinsic is one of the two SM3 message scheduling intrinsics. The intrinsic performs the final calculation for the next four SM3 message words. The calculated results are stored in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ROL32(dword, n) {
        	count := n % 32
        	dest := (dword << count) | (dword >> (32-count))
        	RETURN dest
        }
        WTMP.dword[0] := __A.dword[0]
        WTMP.dword[1] := __A.dword[1]
        WTMP.dword[2] := __A.dword[2]
        WTMP.dword[3] := __A.dword[3]
        W.dword[3] := __B.dword[0]
        W.dword[4] := __B.dword[1]
        W.dword[5] := __B.dword[2]
        W.dword[6] := __B.dword[3]
        W.dword[10] := __C.dword[0]
        W.dword[11] := __C.dword[1]
        W.dword[12] := __C.dword[2]
        W.dword[13] := __C.dword[3]
        W.dword[16] := ROL32(W.dword[3], 7) ^ W.dword[10] ^ WTMP.dword[0]
        W.dword[17] := ROL32(W.dword[4], 7) ^ W.dword[11] ^ WTMP.dword[1]
        W.dword[18] := ROL32(W.dword[5], 7) ^ W.dword[12] ^ WTMP.dword[2]
        W.dword[19] := ROL32(W.dword[6], 7) ^ W.dword[13] ^ WTMP.dword[3]
        W.dword[19] := W.dword[19] ^ ROL32(W.dword[16], 6) ^ ROL32(W.dword[16], 15) ^ ROL32(W.dword[16], 30)
        dst.dword[0] := W.dword[16]
        dst.dword[1] := W.dword[17]
        dst.dword[2] := W.dword[18]
        dst.dword[3] := W.dword[19]
        

_mm_sm3rnds2_epi32
------------------
:Tech: AVX_ALL
:Category: Cryptography
:Header: immintrin.h
:Searchable: AVX_ALL-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i __A, 
    __m128i __B, 
    __m128i __C, 
    const int imm8
:Param ETypes:
    UI32 __A, 
    UI32 __B, 
    UI32 __C, 
    IMM imm8

.. code-block:: C

    __m128i _mm_sm3rnds2_epi32(__m128i __A, __m128i __B,
                               __m128i __C, const int imm8)

.. admonition:: Intel Description

    The intrinsic performs two rounds of SM3 operation using initial SM3 state (C, D, G, H) from "__A", an initial SM3 states (A, B, E, F) from "__B" and a pre-computed words from the "__C". "__A" with initial SM3 state of (C, D, G, H) assumes input of non-rotated left variables from previous state. The updated SM3 state (A, B, E, F) is written to "__A". The "imm8" should contain the even round number for the first of the two rounds computed by this instruction. The computation masks the "imm8" value by ANDing it with 0x3E so that only even round numbers from 0 through 62 are used for this operation. The calculated results are stored in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ROL32(dword, n) {
        	count := n % 32
        	dest := (dword << count) | (dword >> (32-count))
        	RETURN dest
        }
        DEFINE P0(x) {
        	RETURN x ^ ROL32(x, 9) ^ ROL32(x, 17)
        }
        DEFINE FF(x, y, z, round) {
        	IF round < 16
        		RETURN (x ^ y ^ z)
        	ELSE
        		RETURN (x & y) | (x & z) | (y & z)
        	FI
        }
        DEFINE GG(x, y, z, round){
        	IF round < 16
        		RETURN (x ^ y ^ z)
        	ELSE
        		RETURN (x & y) | (~x & z)
        	FI
        }
        A.dword[0] := __B.dword[3]
        B.dword[0] := __B.dword[2]
        C.dword[0] := __A.dword[3]
        D.dword[0] := __A.dword[2]
        E.dword[0] := __B.dword[1]
        F.dword[0] := __B.dword[0]
        G.dword[0] := __A.dword[1]
        H.dword[0] := __A.dword[0]
        W.dword[0] := __C.dword[0]
        W.dword[1] := __C.dword[1]
        W.dword[4] := __C.dword[2]
        W.dword[5] := __C.dword[3]
        C.dword[0] := ROL32(C.dword[0], 9)
        D.dword[0] := ROL32(D.dword[0], 9)
        G.dword[0] := ROL32(G.dword[0], 19)
        H.dword[0] := ROL32(H.dword[0], 19)
        ROUND := imm8 & 0x3E
        IF ROUND < 16
        	CONST.dword[0] := 0x79CC4519
        ELSE
        	CONST.dword[0] := 0x7A879D8A
        FI
        CONST.dword[0] := ROL32(CONST.dword[0], ROUND)
        FOR i:= 0 to 1
        	temp.dword[0] := ROL32(A.dword[i], 12) + E.dword[i] + CONST.dword[0]
        	S1.dword[0] := ROL32(temp.dword[0], 7)
        	S2.dword[0] := S1.dword[0] ^ ROL32(A.dword[i], 12)
        	T1.dword[0] := FF(A.dword[i], B.dword[i], C.dword[i], ROUND) + D.dword[i] + S2.dword[0] + (W.dword[i] ^ W.dword[i+4])
        	T2.dword[0] := GG(E.dword[i], F.dword[i], G.dword[i], ROUND) + H.dword[i] + S1.dword[0] + W.dword[i]
        	D.dword[i+1] := C.dword[i]
        	C.dword[i+1] := ROL32(B.dword[i], 9)
        	B.dword[i+1] := A.dword[i]
        	A.dword[i+1] := T1.dword[0]
        	H.dword[i+1] := G.dword[i]
        	G.dword[i+1] := ROL32(F.dword[i], 19)
        	F.dword[i+1] := E.dword[i]
        	E.dword[i+1] := P0(T2.dword[0])
        	CONST.dword[0] := ROL32(CONST.dword[0], 1)
        ENDFOR
        dst.dword[3] := A.dword[2]
        dst.dword[2] := B.dword[2]
        dst.dword[1] := E.dword[2]
        dst.dword[0] := F.dword[2]
        

_mm_sm4key4_epi32
-----------------
:Tech: AVX_ALL
:Category: Cryptography
:Header: immintrin.h
:Searchable: AVX_ALL-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i __A, 
    __m128i __B
:Param ETypes:
    UI32 __A, 
    UI32 __B

.. code-block:: C

    __m128i _mm_sm4key4_epi32(__m128i __A, __m128i __B);

.. admonition:: Intel Description

    This intrinsic performs four rounds of SM4 key expansion. The intrinsic operates on independent 128-bit lanes. The calculated results are stored in "dst". 

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        BYTE sbox[256] = {
        0xD6, 0x90, 0xE9, 0xFE, 0xCC, 0xE1, 0x3D, 0xB7, 0x16, 0xB6, 0x14, 0xC2, 0x28, 0xFB, 0x2C, 0x05,
        0x2B, 0x67, 0x9A, 0x76, 0x2A, 0xBE, 0x04, 0xC3, 0xAA, 0x44, 0x13, 0x26, 0x49, 0x86, 0x06, 0x99,
        0x9C, 0x42, 0x50, 0xF4, 0x91, 0xEF, 0x98, 0x7A, 0x33, 0x54, 0x0B, 0x43, 0xED, 0xCF, 0xAC, 0x62,
        0xE4, 0xB3, 0x1C, 0xA9, 0xC9, 0x08, 0xE8, 0x95, 0x80, 0xDF, 0x94, 0xFA, 0x75, 0x8F, 0x3F, 0xA6,
        0x47, 0x07, 0xA7, 0xFC, 0xF3, 0x73, 0x17, 0xBA, 0x83, 0x59, 0x3C, 0x19, 0xE6, 0x85, 0x4F, 0xA8,
        0x68, 0x6B, 0x81, 0xB2, 0x71, 0x64, 0xDA, 0x8B, 0xF8, 0xEB, 0x0F, 0x4B, 0x70, 0x56, 0x9D, 0x35,
        0x1E, 0x24, 0x0E, 0x5E, 0x63, 0x58, 0xD1, 0xA2, 0x25, 0x22, 0x7C, 0x3B, 0x01, 0x21, 0x78, 0x87,
        0xD4, 0x00, 0x46, 0x57, 0x9F, 0xD3, 0x27, 0x52, 0x4C, 0x36, 0x02, 0xE7, 0xA0, 0xC4, 0xC8, 0x9E,
        0xEA, 0xBF, 0x8A, 0xD2, 0x40, 0xC7, 0x38, 0xB5, 0xA3, 0xF7, 0xF2, 0xCE, 0xF9, 0x61, 0x15, 0xA1,
        0xE0, 0xAE, 0x5D, 0xA4, 0x9B, 0x34, 0x1A, 0x55, 0xAD, 0x93, 0x32, 0x30, 0xF5, 0x8C, 0xB1, 0xE3,
        0x1D, 0xF6, 0xE2, 0x2E, 0x82, 0x66, 0xCA, 0x60, 0xC0, 0x29, 0x23, 0xAB, 0x0D, 0x53, 0x4E, 0x6F,
        0xD5, 0xDB, 0x37, 0x45, 0xDE, 0xFD, 0x8E, 0x2F, 0x03, 0xFF, 0x6A, 0x72, 0x6D, 0x6C, 0x5B, 0x51,
        0x8D, 0x1B, 0xAF, 0x92, 0xBB, 0xDD, 0xBC, 0x7F, 0x11, 0xD9, 0x5C, 0x41, 0x1F, 0x10, 0x5A, 0xD8,
        0x0A, 0xC1, 0x31, 0x88, 0xA5, 0xCD, 0x7B, 0xBD, 0x2D, 0x74, 0xD0, 0x12, 0xB8, 0xE5, 0xB4, 0xB0,
        0x89, 0x69, 0x97, 0x4A, 0x0C, 0x96, 0x77, 0x7E, 0x65, 0xB9, 0xF1, 0x09, 0xC5, 0x6E, 0xC6, 0x84,
        0x18, 0xF0, 0x7D, 0xEC, 0x3A, 0xDC, 0x4D, 0x20, 0x79, 0xEE, 0x5F, 0x3E, 0xD7, 0xCB, 0x39, 0x48
        }
        DEFINE ROL32(dword, n) {
        	count := n % 32
        	dest := (dword << count) | (dword >> (32-count))
        	RETURN dest
        }
        DEFINE SBOX_BYTE(dword, i) {
        	RETURN sbox[dword.byte[i]]
        }
        DEFINE lower_t(dword) {
        	tmp.byte[0] := SBOX_BYTE(dword, 0)
        	tmp.byte[1] := SBOX_BYTE(dword, 1)
        	tmp.byte[2] := SBOX_BYTE(dword, 2)
        	tmp.byte[3] := SBOX_BYTE(dword, 3)
        	RETURN tmp
        }
        DEFINE L_KEY(dword) {
        	RETURN dword ^ ROL32(dword, 13) ^ ROL32(dword, 23)
        }
        DEFINE T_KEY(dword) {
        	RETURN L_KEY(lower_t(dword))
        }
        DEFINE F_KEY(X0, X1, X2, X3, round_key) {
        	RETURN X0 ^ T_KEY(X1 ^ X2 ^ X3 ^ round_key)
        }
        P.dword[0] := __A.dword[0]
        P.dword[1] := __A.dword[1]
        P.dword[2] := __A.dword[2]
        P.dword[3] := __A.dword[3]
        C.dword[0] := F_KEY(P.dword[0], P.dword[1], P.dword[2], P.dword[3], __B.dword[0])
        C.dword[1] := F_KEY(P.dword[1], P.dword[2], P.dword[3], C.dword[0], __B.dword[1])
        C.dword[2] := F_KEY(P.dword[2], P.dword[3], C.dword[0], C.dword[1], __B.dword[2])
        C.dword[3] := F_KEY(P.dword[3], C.dword[0], C.dword[1], C.dword[2], __B.dword[3])
        dst.dword[0] := C.dword[0]
        dst.dword[1] := C.dword[1]
        dst.dword[2] := C.dword[2]
        dst.dword[3] := C.dword[3]
        dst[MAX:128] := 0
        

_mm_sm4rnds4_epi32
------------------
:Tech: AVX_ALL
:Category: Cryptography
:Header: immintrin.h
:Searchable: AVX_ALL-Cryptography-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i __A, 
    __m128i __B
:Param ETypes:
    UI32 __A, 
    UI32 __B

.. code-block:: C

    __m128i _mm_sm4rnds4_epi32(__m128i __A, __m128i __B);

.. admonition:: Intel Description

    This intrinisc performs four rounds of SM4 encryption. The intrinisc operates on independent 128-bit lanes. The calculated results are stored in "dst". 

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        BYTE sbox[256] = {
        0xD6, 0x90, 0xE9, 0xFE, 0xCC, 0xE1, 0x3D, 0xB7, 0x16, 0xB6, 0x14, 0xC2, 0x28, 0xFB, 0x2C, 0x05,
        0x2B, 0x67, 0x9A, 0x76, 0x2A, 0xBE, 0x04, 0xC3, 0xAA, 0x44, 0x13, 0x26, 0x49, 0x86, 0x06, 0x99,
        0x9C, 0x42, 0x50, 0xF4, 0x91, 0xEF, 0x98, 0x7A, 0x33, 0x54, 0x0B, 0x43, 0xED, 0xCF, 0xAC, 0x62,
        0xE4, 0xB3, 0x1C, 0xA9, 0xC9, 0x08, 0xE8, 0x95, 0x80, 0xDF, 0x94, 0xFA, 0x75, 0x8F, 0x3F, 0xA6,
        0x47, 0x07, 0xA7, 0xFC, 0xF3, 0x73, 0x17, 0xBA, 0x83, 0x59, 0x3C, 0x19, 0xE6, 0x85, 0x4F, 0xA8,
        0x68, 0x6B, 0x81, 0xB2, 0x71, 0x64, 0xDA, 0x8B, 0xF8, 0xEB, 0x0F, 0x4B, 0x70, 0x56, 0x9D, 0x35,
        0x1E, 0x24, 0x0E, 0x5E, 0x63, 0x58, 0xD1, 0xA2, 0x25, 0x22, 0x7C, 0x3B, 0x01, 0x21, 0x78, 0x87,
        0xD4, 0x00, 0x46, 0x57, 0x9F, 0xD3, 0x27, 0x52, 0x4C, 0x36, 0x02, 0xE7, 0xA0, 0xC4, 0xC8, 0x9E,
        0xEA, 0xBF, 0x8A, 0xD2, 0x40, 0xC7, 0x38, 0xB5, 0xA3, 0xF7, 0xF2, 0xCE, 0xF9, 0x61, 0x15, 0xA1,
        0xE0, 0xAE, 0x5D, 0xA4, 0x9B, 0x34, 0x1A, 0x55, 0xAD, 0x93, 0x32, 0x30, 0xF5, 0x8C, 0xB1, 0xE3,
        0x1D, 0xF6, 0xE2, 0x2E, 0x82, 0x66, 0xCA, 0x60, 0xC0, 0x29, 0x23, 0xAB, 0x0D, 0x53, 0x4E, 0x6F,
        0xD5, 0xDB, 0x37, 0x45, 0xDE, 0xFD, 0x8E, 0x2F, 0x03, 0xFF, 0x6A, 0x72, 0x6D, 0x6C, 0x5B, 0x51,
        0x8D, 0x1B, 0xAF, 0x92, 0xBB, 0xDD, 0xBC, 0x7F, 0x11, 0xD9, 0x5C, 0x41, 0x1F, 0x10, 0x5A, 0xD8,
        0x0A, 0xC1, 0x31, 0x88, 0xA5, 0xCD, 0x7B, 0xBD, 0x2D, 0x74, 0xD0, 0x12, 0xB8, 0xE5, 0xB4, 0xB0,
        0x89, 0x69, 0x97, 0x4A, 0x0C, 0x96, 0x77, 0x7E, 0x65, 0xB9, 0xF1, 0x09, 0xC5, 0x6E, 0xC6, 0x84,
        0x18, 0xF0, 0x7D, 0xEC, 0x3A, 0xDC, 0x4D, 0x20, 0x79, 0xEE, 0x5F, 0x3E, 0xD7, 0xCB, 0x39, 0x48
        }
        DEFINE ROL32(dword, n) {
        	count := n % 32
        	dest := (dword << count) | (dword >> (32-count))
        	RETURN dest
        }
        DEFINE SBOX_BYTE(dword, i) {
        	RETURN sbox[dword.byte[i]]
        }
        DEFINE lower_t(dword) {
        	tmp.byte[0] := SBOX_BYTE(dword, 0)
        	tmp.byte[1] := SBOX_BYTE(dword, 1)
        	tmp.byte[2] := SBOX_BYTE(dword, 2)
        	tmp.byte[3] := SBOX_BYTE(dword, 3)
        	RETURN tmp
        }
        DEFINE L_RND(dword) {
        	tmp := dword
        	tmp := tmp ^ ROL32(dword, 2)
        	tmp := tmp ^ ROL32(dword, 10)
        	tmp := tmp ^ ROL32(dword, 18)
        	tmp := tmp ^ ROL32(dword, 24)
        	RETURN tmp
        }
        DEFINE T_RND(dword) {
        	RETURN L_RND(lower_t(dword))
        }
        DEFINE F_RND(X0, X1, X2, X3, round_key) {
        	RETURN X0 ^ T_RND(X1 ^ X2 ^ X3 ^ round_key)
        }
        P.dword[0] := __A.dword[0]
        P.dword[1] := __A.dword[1]
        P.dword[2] := __A.dword[2]
        P.dword[3] := __A.dword[3]
        C.dword[0] := F_RND(P.dword[0], P.dword[1], P.dword[2], P.dword[3], __B.dword[0])
        C.dword[1] := F_RND(P.dword[1], P.dword[2], P.dword[3], C.dword[0], __B.dword[1])
        C.dword[2] := F_RND(P.dword[2], P.dword[3], C.dword[0], C.dword[1], __B.dword[2])
        C.dword[3] := F_RND(P.dword[3], C.dword[0], C.dword[1], C.dword[2], __B.dword[3])
        dst.dword[0] := C.dword[0]
        dst.dword[1] := C.dword[1]
        dst.dword[2] := C.dword[2]
        dst.dword[3] := C.dword[3]
        dst[MAX:128] := 0
        

