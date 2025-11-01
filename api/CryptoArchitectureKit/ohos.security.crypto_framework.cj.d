/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file.

package ohos.security.crypto_framework

import ohos.labels.APILevel	

/**
 * Create a cipher object for encryption and decryption operations according to the given specifications.
 * Two different Cipher objects should be created when using RSA encryption and decryption,
 * even with the same specifications.
 *
 * @param { String } transformation - indicates the description to be transformed to cipher specifications.
 *                                    Multiple parameters need to be concatenated by "|".
 * @returns { Cipher } the cipher object returned by the function.
 * @throws { BusinessException } 801 - this operation is not supported.
 * @throws { BusinessException } 17620001 - memory operation failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Cipher",
    throwexception: true
]
public func createCipher(transformation: String): Cipher

/**
 * Provides the Cipher type, which is used for encryption and decryption operations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public class Cipher {
    /**
     * Indicates the algorithm name of the cipher object.
     *
     * @returns { String } algName representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public prop algName: String

    /**
     * Init the crypto operation with the given crypto mode, key and parameters.
     * init, update, and doFinal must be used together. init and doFinal are mandatory, and update is optional.
     *
     * @param { CryptoMode } opMode - indicates the crypto mode is encryption or decryption.
     * @param { Key } key - indicates the symmetric key or the asymmetric key.
     * @param { ?ParamsSpec } params - indicates the algorithm parameters such as IV.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17620002 - failed to convert parameters between cj and c.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher",
        throwexception: true
    ]
    public func initialize(opMode: CryptoMode, key: Key, params: ?ParamsSpec): Unit

    /**
     * Update the crypto operation with the input data, and feed back the encrypted or decrypted data
     * this time. RSA is not supported in this function.
     *
     * @param { DataBlob } data - indicates the data to be encrypted or decrypted.
     * @returns { DataBlob } the data returned by the function.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17620002 - failed to convert parameters between cj and c.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher",
        throwexception: true,
        workerthread: true
    ]
    public func update(data: DataBlob): DataBlob

    /**
     * Finish the crypto operation, encrypt or decrypt the input data, and then feed back the output data.
     * Data cannot be updated after the crypto operation is finished.
     *
     * @param { DataBlob } data - indicates the data to be finally encrypted or decrypted.
     * @returns { DataBlob } the data returned by the function.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17620002 - failed to convert parameters between cj and c.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher",
        throwexception: true,
        workerthread: true
    ]
    public func doFinal(data: ?DataBlob): DataBlob
}

/**
 * Defines a buffer array of the Binary Large Object (BLOB) type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework"
]
public class DataBlob {
    /**
     * Indicates the content of data blob.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    public var data: Array<UInt8>

    /**
     * DataBlob constructor.
     *
     * @param { Array<UInt8> } data - indicates the  data blob.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    public init(data: Array<UInt8>)
}

/**
 * Defines the child class of ParamsSpec. It is a parameter of init for symmetric encryption or decryption.
 * IvParamsSpec applies to the cipher modes such as CBC, CTR, OFB, and CFB, which use only the IV.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public class IvParamsSpec <: ParamsSpec {
    /**
     * IV for encryption or decryption.
     * Options:
     * - AES CBC, CTR, OFB, or CFB mode: 16-byte IV
     * - 3DES CBC, OFB, or CFB mode: 8-byte IV
     * - SM4 CBC, CTR, OFB, or CFB mode: 16-byte IV
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public var iv: DataBlob

    /**
     * IvParamsSpec constructor.
     *
     * @param { String } algName - Indicates the algorithm name.
     * @param { DataBlob } iv - indicates the data blob.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public init(algName: String, iv: DataBlob)
}

/**
 * Provides the GcmParamsSpec type, including the parameter iv, aad and authTag.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public class GcmParamsSpec <: ParamsSpec {
    /**
     * Indicates the additional Authenticated Data in GCM mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public var aad: DataBlob

    /**
     * Indicates the GCM algorithm parameters such as iv.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public var iv: DataBlob

    /**
     * Indicates the output tag from the encryption operation. The tag is used for integrity check.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public var authTag: DataBlob

    /**
     * GcmParamsSpec constructor.
     *
     * @param { String } algName - Indicates the algorithm name.
     * @param { DataBlob } iv - Indicates the GCM algorithm parameters such as iv.
     * @param { DataBlob } aad - Indicates the additional Authenticated Data in GCM mode.
     * @param { DataBlob } authTag - Indicates the output tag from the encryption operation. The tag is used for integrity check.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public init(algName: String, iv: DataBlob, aad: DataBlob, authTag: DataBlob)
}

/**
 * Provides the CcmParamsSpec type, including the parameter iv, aad and authTag.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public class CcmParamsSpec <: ParamsSpec {
    /**
     * Indicates the output tag from the encryption operation. The tag is used for integrity check.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public var authTag: DataBlob

    /**
     * Indicates the Additional Authenticated Data in CCM mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public var aad: DataBlob

    /**
     * Indicates the GCM algorithm parameters such as IV.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public var iv: DataBlob

    /**
     * CcmParamsSpec constructor.
     *
     * @param { String } algName - Indicates the algorithm name.
     * @param { DataBlob } iv - Indicates the GCM algorithm parameters such as IV.
     * @param { DataBlob } aad - Indicates the Additional Authenticated Data in CCM mode.
     * @param { DataBlob } authTag - Indicates the output tag from the encryption operation. The tag is used for integrity check.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public init(algName: String, iv: DataBlob, aad: DataBlob, authTag: DataBlob)
}

/**
 * Enum for result code.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework"
]
public enum Result <: ToString {
    /**
     * Indicates that input parameters is invalid.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    InvalidParams
    | 
    /**
     * Indicates that function or algorithm is not supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    NotSupport
    | 
    /**
     * Indicates the memory operation failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    ErrOutOfMemory
    | 
    /**
     * Indicates that failed to convert parameters between cj and c.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    ErrRuntimeError
    | 
    /**
     * Indicates that crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    ErrCryptoOperation
    | ...

    /**
     * Get the corresponding mapping value.
     *
     * @returns Int32 representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    public func getValue(): Int32

    /**
     * Return the string of the enumeration value.
     */
    /**
     * Converts the Result to its string representation.
     * @returns { String } A representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    public func toString(): String
}

/**
 * Enumerates the cryptographic operations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public enum CryptoMode {
    /**
     * The value of encryption operation for AES, 3DES and RSA.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    EncryptMode
    | 
    
    /**
     * The value of decryption operation for AES, 3DES and RSA.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    DecryptMode
    | ...
}


extend CryptoMode <: ToString {
    
    /**
     * Converts the CryptoMode to its string representation.
     * @returns { String } A representation of the CryptoMode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public func toString(): String
}


extend CryptoMode <: Equatable<CryptoMode> {
    
    /**
     * Compares this CryptoMode with another for equality.
     * @param { CryptoMode } other - The CryptoMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public operator func ==(other: CryptoMode): Bool
    
    /**
     * Compares this CryptoMode with another for inequality.
     * @param { CryptoMode } other - The CryptoMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public operator func !=(other: CryptoMode): Bool
}

/**
 * Enum for encryption specified parameters.
 * You can use setCipherSpec to set cipher parameters, and use getCipherSpec to obtain cipher parameters.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public enum CipherSpecItem {
    /**
     * Indicates the algorithm name of the message digest function. It is used during RSA encryption.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    OaepMdNameStr
    | 

    /**
     * Indicates the algorithm name for the mask generation function. It is used during RSA encryption.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    OaepMgfNameStr
    | 

    /**
     * Indicates the message digest parameter for the MGF1 mask generation function. It is used during RSA encryption.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    OaepMgf1MdStr
    | 
    
    /**
     * Indicates the source of the encoding input P. It is used during RSA encryption.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    OaepMgf1PsrcUint8Arr
    | ...
}


extend CipherSpecItem <: ToString {
    
    /**
     * Converts the CipherSpecItem to its string representation.
     * @returns { String } A representation of the CipherSpecItem.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public func toString(): String
}


extend CipherSpecItem <: Equatable<CipherSpecItem> {
    
    /**
     * Compares this CipherSpecItem with another for equality.
     * @param { CipherSpecItem } other -  The CipherSpecItem to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public operator func ==(other: CipherSpecItem): Bool
    
    /**
     * Compares this CipherSpecItem with another for inequality.
     * @param { CipherSpecItem } other -  The CipherSpecItem to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public operator func !=(other: CipherSpecItem): Bool
}

/**
 * Provides the Key type, which is the common parent class of keys.
 * Before performing cryptographic operations, you need to construct a child class object of Key and pass it to init of
 * the Cipher instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Key"
]
public interface Key {
    /**
     * Indicates the format of the key object.
     *
     * @returns { String } format representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key"
    ]
    prop format: String

    /**
     * Indicates the algorithm name of the key object. This parameter contains the key length if the key is a symmetric
     * key.
     *
     * @returns { String } algName representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key"
    ]
    prop algName: String

    /**
     * Encode the key object to binary data.
     * The key can be a symmetric key, public key, or private key.
     * The public key must be in DER encoding format and comply with the ASN.1 syntax and X.509 specifications.
     * The private key must be in DER encoding format and comply with the ASN.1 syntax and PKCS#8 specifications.
     *
     * @returns { DataBlob } the binary data of the key object.
     * @throws { BusinessException } 801 - this operation is not supported.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key",
        throwexception: true
    ]
    func getEncoded(): DataBlob
}

/**
 * Encapsulates the parameters used for encryption or decryption.You need to construct its child class object and
 * pass it to init for symmetric encryption or decryption.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public open class ParamsSpec {
    /**
     * Indicates the algorithm name. Should be set before initialization of a cipher object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public var algName: String
}

/**
 * Creates a Mac instance for MAC operations.
 *
 * @param { String } algName - indicates the mac algorithm name.
 * @returns { Mac } returns the created mac instance.
 * @throws { BusinessException } 17620001 - memory operation failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Mac",
    throwexception: true
]
public func createMac(algName: String): Mac

/**
 * Provides the Mac type, which is used for Mac generation.
 * Before using any API of the Mac class, you must create a Mac instance by using createMac.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Mac"
]
public class Mac {
    /**
     * Indicates the algorithm name.
     *
     * @returns { String } algName representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Mac"
    ]
    public prop algName: String

    /**
     * Init mac with given SymKey.
     * This API uses an asynchronous callback to return the result. init, update, and doFinal must be used together.
     * init and doFinal are mandatory, and update is optional.
     *
     * @param { SymKey } key - indicates the SymKey.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Mac",
        throwexception: true
    ]
    public func initialize(key: SymKey): Unit

    /**
     * Update mac with DataBlob.
     *
     * @param { DataBlob } input - indicates the DataBlob.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Mac",
        throwexception: true,
        workerthread: true
    ]
    public func update(input: DataBlob): Unit

    /**
     * Output the result of mac calculation.
     *
     * @returns { DataBlob } returns the data blob of the result.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17620002 - failed to convert parameters between cj and c.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Mac",
        throwexception: true,
        workerthread: true
    ]
    public func doFinal(): DataBlob

    /**
     * Output the length of hmac result.
     *
     * @returns { UInt32 } returns the length of the mac result.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Mac",
        throwexception: true
    ]
    public func getMacLength(): UInt32
}

/**
 * Creates an Md instance for MD operations.
 *
 * @param { String } algName - indicates the md algorithm name.
 * @returns { Md } returns the created md instance.
 * @throws { BusinessException } 17620001 - memory operation failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.MessageDigest",
    throwexception: true
]
public func createMd(algName: String): Md

/**
 * Provides the Md type, which is used for Md generation.
 * Before using any API of the Md class, you must create an Md instance by using createMd.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.MessageDigest"
]
public class Md {
    /**
     * Indicates the algorithm name.
     *
     * @returns { String } algName representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.MessageDigest"
    ]
    public prop algName: String

    /**
     * Update md with DataBlob.
     *
     * @param { DataBlob } input - indicates the DataBlob.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.MessageDigest",
        throwexception: true
    ]
    public func update(input: DataBlob): Unit

    /**
     * Output the result of md calculation.
     *
     * @returns { DataBlob } Return DataBlob of the result.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17620002 - failed to convert parameters between cj and c.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.MessageDigest",
        throwexception: true,
        workerthread: true
    ]
    public func digest(): DataBlob

    /**
     * Output the length of md result.
     *
     * @returns { UInt32 } returns the length of the md result.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.MessageDigest",
        throwexception: true
    ]
    public func getMdLength(): UInt32
}

/**
 * Create a random generator instance.
 *
 * @returns { Random } returns the created rand instance.
 * @throws { BusinessException } 17620001 - memory operation failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Rand",
    throwexception: true
]
public func createRandom(): Random

/**
 * Provides APIs for computing random numbers and setting seeds.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Rand"
]
public class Random {
    /**
     * Indicates the random generation algorithm name. Currently, only CTR_DRBG is supported.
     *
     * @returns { String } algName representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Rand"
    ]
    public prop algName: String

    /**
     * Generate random DataBlob by given length synchronously.
     *
     * @param { Int32 } len - indicates the length of random DataBlob.
     * @returns { DataBlob } return the generated random blob.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Rand",
        throwexception: true
    ]
    public func generateRandom(len: Int32): DataBlob

    /**
     * Set seed by given DataBlob.
     *
     * @param { DataBlob } seed - indicates the seed DataBlob.
     * @throws { BusinessException } 17620001 - memory operation failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Rand",
        throwexception: true
    ]
    public func setSeed(seed: DataBlob): Unit
}

/**
 * Provides APIs for symmetric key operations.
 * Its objects need to be passed to init of the Cipher instance in symmetric encryption and decryption.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
]
public class SymKey <: Key {
    /**
     * Indicates the algorithm name of the key object. This parameter contains the key length if the key is a symmetric
     * key.
     *
     * @returns { String } algName representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
    ]
    public prop algName: String

    /**
     * Indicates the format of the key object.
     *
     * @returns { String } format representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
    ]
    public prop format: String

    /**
     * Encode the key object to binary data.
     * The key can be a symmetric key, public key, or private key.
     * The public key must be in DER encoding format and comply with the ASN.1 syntax and X.509 specifications.
     * The private key must be in DER encoding format and comply with the ASN.1 syntax and PKCS#8 specifications.
     *
     * @returns { DataBlob } the binary data of the key object.
     * @throws { BusinessException } 801 - this operation is not supported.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey",
        throwexception: true
    ]
    public func getEncoded(): DataBlob

    /**
     * Clears the keys in the memory. This API returns the result synchronously.
     * You are advised to use this API when symmetric key instances are no longer used.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
    ]
    public func clearMem(): Unit
}

/**
 * Create a symmetric key generator according to the given algorithm name.
 *
 * @param { String } algName - indicates the algorithm name. Multiple parameters need to be concatenated by "|".
 * @returns { SymKeyGenerator } the symmetric key generator instance.
 * @throws { BusinessException } 801 - this operation is not supported.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey",
    throwexception: true
]
public func createSymKeyGenerator(algName: String): SymKeyGenerator

/**
 * Provides the SymKeyGenerator type, which is used for generating symmetric key.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
]
public class SymKeyGenerator {
    /**
     * Indicates the algorithm name of the SymKeyGenerator object.
     *
     * @returns { String } algName representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
    ]
    public prop algName: String

    /**
     * Generate a symmetric key object randomly.
     *
     * @returns { SymKey } the SymKey returned by the function.
     * @throws { BusinessException } 17620001 - memory operation failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey",
        throwexception: true,
        workerthread: true
    ]
    public func generateSymKey(): SymKey

    /**
     * Used to convert symmetric key data to a symmetric key object.
     *
     * @param { DataBlob } key - the key data blob.
     * @returns { SymKey } the SymKey  returned by the function.
     * @throws { BusinessException } 17620001 - memory operation failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey",
        throwexception: true,
        workerthread: true
    ]
    public func convertKey(key: DataBlob): SymKey
}
