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

package ohos.crypto
import ohos.ffi.*
import ohos.labels.*
import ohos.base.*

import std.math.numeric.*
import std.deriving.*
import ohos.hilog.*

/**
* Create a cipher object for encryption and decryption operations according to the given specifications.
* Two different Cipher objects should be created when using RSA encryption and decryption,
* even with the same specifications.
*
* @param { String } transformation - indicates the description to be transformed to cipher specifications.
* @returns { Cipher } the cipher object returned by the function.
* @throws { BusinessException } 401 - invalid parameters.
* @throws { BusinessException } 801 - this operation is not supported.
* @throws { BusinessException } 17620001 - memory error.
* @brief createCipher(transformation: string): Cipher
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public func createCipher(transformation: String): Cipher


/**
* Provides the Cipher type, which is used for encryption and decryption operations.
*
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public class Cipher <: RemoteDataLite {
    /**
    * Indicates the algorithm name.
    *
    * @type { String }
    * @brief algName : string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public prop algName: String
    
    /**
    * Init the crypto operation with the given crypto mode, key and parameters.
    *
    * @param { CryptoMode } opMode - indicates the crypto mode is encryption or decryption.
    * @param { Key } key - indicates the symmetric key or the asymmetric key.
    * @param { ParamsSpec } params - indicates the algorithm parameters such as IV.
    * @throws { BusinessException } 401 - invalid parameters.
    * @throws { BusinessException } 17620001 - memory error.
    * @throws { BusinessException } 17620002 - runtime error.
    * @throws { BusinessException } 17630001 - crypto operation error.
    * @brief init(opMode : CryptoMode, key : Key, params : ParamsSpec) : Promise<void>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public func `init`(opMode: CryptoMode, key: Key, params: ?ParamsSpec): Unit
    
    /**
    * Update the crypto operation with the input data, and feed back the encrypted or decrypted data
    * this time. RSA is not supported in this function.
    *
    * @param { DataBlob } data - indicates the data to be encrypted or decrypted.
    * @returns { DataBlob } the data returned by the function.
    * @throws { BusinessException } 401 - invalid parameters.
    * @throws { BusinessException } 17620001 - memory error.
    * @throws { BusinessException } 17620002 - runtime error.
    * @throws { BusinessException } 17630001 - crypto operation error.
    * @brief update(data : DataBlob) : Promise<DataBlob>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public func update(data: DataBlob): DataBlob
    
    /**
    * Finish the crypto operation, encrypt or decrypt the input data, and then feed back the output data.
    * Data cannot be updated after the crypto operation is finished.
    *
    * @param { DataBlob } data - indicates the data to be finally encrypted or decrypted.
    * @returns { DataBlob } the data returned by the function.
    * @throws { BusinessException } 401 - invalid parameters.
    * @throws { BusinessException } 17620001 - memory error.
    * @throws { BusinessException } 17620002 - runtime error.
    * @throws { BusinessException } 17630001 - crypto operation error.
    * @brief doFinal(data : DataBlob) : Promise<DataBlob>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public func doFinal(data: ?DataBlob): DataBlob
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework"
]
public struct DataBlob {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    public DataBlob(
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Security.CryptoFramework"
        ]
        public let data: Array<UInt8>
    )
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public struct IvParamsSpec <: ParamsSpec {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public mut prop algName: String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public mut prop iv: DataBlob
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public init(algName: String, iv: DataBlob)
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public struct GcmParamsSpec <: ParamsSpec {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public mut prop algName: String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public mut prop aad: DataBlob
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public mut prop iv: DataBlob
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public mut prop authTag: DataBlob
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public init(algName: String, iv: DataBlob, add: DataBlob, authTag: DataBlob)
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public struct CcmParamsSpec <: ParamsSpec {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public mut prop algName: String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public mut prop authTag: DataBlob
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public mut prop aad: DataBlob
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public mut prop iv: DataBlob
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public init(algName: String, iv: DataBlob, add: DataBlob, authTag: DataBlob)
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework"
]
public enum Result <: ToString {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    INVALID_PARAMS |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    NOT_SUPPORT |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    ERR_OUT_OF_MEMORY |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    ERR_RUNTIME_ERROR |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    ERR_CRYPTO_OPERATION |
    ...
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    public func getValue(): Int32
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    public func toString(): String
}


@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public enum CryptoMode {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    ENCRYPT_MODE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    DECRYPT_MODE |
    ...
}



@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public enum CipherSpecItem {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    OAEP_MD_NAME_STR |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    OAEP_MGF_NAME_STR |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    OAEP_MGF1_MD_STR |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    OAEP_MGF1_PSRC_UINT8ARR |
    ...
}



/**
* Provides the Key type, which is the common parent class of keys.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Key"
]
public interface Key {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Key"
    ]
    prop format: String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Key"
    ]
    prop algName: String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Key"
    ]
    func getEncoded(): DataBlob
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public interface ParamsSpec {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    mut prop algName: String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    mut prop iv: DataBlob
}


/**
* @brief createMac(algName: string): Mac
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Mac"
]
public func createMac(algName: String): Mac


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Mac"
]
public class Mac <: RemoteDataLite {
    /**
    * @brief algName: string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Mac"
    ]
    public prop algName: String
    
    /**
    * @brief init(key : SymKey) : Promise<void>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Mac"
    ]
    public func `init`(key: SymKey): Unit
    
    /**
    * @brief update(input : DataBlob) : Promise<void>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Mac"
    ]
    public func update(input: DataBlob): Unit
    
    /**
    * @brief doFinal() : Promise<DataBlob>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Mac"
    ]
    public func doFinal(): DataBlob
    
    /**
    * @brief getMacLength() : number
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Mac"
    ]
    public func getMacLength(): UInt32
}


/**
* Provides the md create func.
*
* @param { String } algName - indicates the md algorithm name.
* @returns { Md } returns the created md instance.
* @throws { BusinessException } 401 - invalid parameters.
* @throws { BusinessException } 17620001 - memory error.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.MessageDigest"
]
public func createMd(algName: String): Md


/**
* Provides the Md type, which is used for Md generation.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.MessageDigest"
]
public class Md <: RemoteDataLite {
    /**
    * Indicates the algorithm name.
    *
    * @type { String }
    * @brief algName : string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.MessageDigest"
    ]
    public prop algName: String
    
    /**
    * Update md with DataBlob.
    *
    * @param { DataBlob } input - indicates the DataBlob.
    * @throws { BusinessException } 401 - invalid parameters.
    * @throws { BusinessException } 17630001 - crypto operation error.
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.MessageDigest"
    ]
    public func update(input: DataBlob): Unit
    
    /**
    * Output the result of md calculation.
    *
    * @throws { BusinessException } 17620001 - memory error.
    * @throws { BusinessException } 17630001 - crypto operation error.
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.MessageDigest"
    ]
    public func digest(): DataBlob
    
    /**
    * Output the length of md result.
    *
    * @returns { UInt32 } returns the length of the hmac result.
    * @throws { BusinessException } 17630001 - crypto operation error.
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.MessageDigest"
    ]
    public func getMdLength(): UInt32
}


/**
* Create a random generator instance.
*
* @returns { Random } returns the created rand instance.
* @throws { BusinessException } 17620001 - memory error.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Rand"
]
public func createRandom(): Random


/**
* Provides the random interface.
*
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Rand"
]
public class Random <: RemoteDataLite {
    /**
    * Indicates the algorithm name.
    *
    * @type { String }
    * @brief algName : string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Rand"
    ]
    public prop algName: String
    
    /**
    * Generate random DataBlob by given length.
    *
    * @param { Int32 } len - indicates the length of random DataBlob.
    * @returns { DataBlob } return the generated random blob.
    * @throws { BusinessException } 401 - invalid parameters.
    * @throws { BusinessException } 17620001 - memory error.
    * @throws { BusinessException } 17630001 - crypto operation error.
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Rand"
    ]
    public func generateRandom(len: Int32): DataBlob
    
    /**
    * Set seed by given DataBlob.
    *
    * @param { DataBlob } seed - indicates the seed DataBlob.
    * @throws { BusinessException } 17620001 - memory error.
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Rand"
    ]
    public func setSeed(seed: DataBlob): Unit
}


/**
* @brief createSign(algName: string): Sign
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Signature"
]
public func createSign(algName: String): Sign


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Signature"
]
public class Sign <: RemoteDataLite {
    /**
    * @brief algName: string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Signature"
    ]
    public prop algName: String
}


/**
* Provides the SymKey type, which is used for symmetric cryptography.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
]
public class SymKey <: RemoteDataLite & Key {
    /**
    * Indicates the algorithm name.
    *
    * @type { String }
    * @brief algName : string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Key"
    ]
    public prop algName: String
    
    /**
    * Indicates the format of the key object.
    *
    * @type { String }
    * @brief format: string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Key"
    ]
    public prop format: String
    
    /**
    * Encode the key object to binary data.
    *
    * @returns { DataBlob } the binary data of the key object.
    * @throws { BusinessException } 801 - this operation is not supported.
    * @throws { BusinessException } 17620001 - memory error.
    * @throws { BusinessException } 17630001 - crypto operation error.
    * @brief algName : getEncoded(): DataBlob
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Key"
    ]
    public func getEncoded(): DataBlob
    
    /**
    * Reset the key data to zero in the memory.
    *
    * @brief clearMem(): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
    ]
    public func clearMem(): Unit
}


/**
* Create a symmetric key generator according to the given algorithm name.
*
* @param { String } algName - indicates the algorithm name.
* @returns { SymKeyGenerator } the symmetric key generator instance.
* @throws { BusinessException } 401 - invalid parameters.
* @throws { BusinessException } 801 - this operation is not supported.
* @brief createSymKeyGenerator(algName: string): SymKeyGenerator
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
]
public func createSymKeyGenerator(algName: String): SymKeyGenerator


/**
* Provides the SymKeyGenerator type, which is used for generating symmetric key.
*
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
]
public class SymKeyGenerator <: RemoteDataLite {
    /**
    * Indicates the algorithm name.
    *
    * @type { String }
    * @brief algName : string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
    ]
    public prop algName: String
    
    /**
    * Generate a symmetric key object randomly.
    *
    * @returns { SymKey } the SymKey returned by the function.
    * @throws { BusinessException } 17620001 - memory error.
    * @brief generateSymKey() : Promise<SymKey>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
    ]
    public func generateSymKey(): SymKey
    
    /**
    * Generate a symmetric key object according to the provided binary key data.
    *
    * @param { DataBlob } key - the key data blob.
    * @returns { SymKey } the SymKey  returned by the function.
    * @throws { BusinessException } 401 - invalid parameters.
    * @throws { BusinessException } 17620001 - memory error.
    * @brief convertKey(key: DataBlob): Promise<SymKey>;
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
    ]
    public func convertKey(key: DataBlob): SymKey
}


