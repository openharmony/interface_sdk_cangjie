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

package ohos.security_huks
import ohos.labels.*

import ohos.base.BusinessException
import std.collection.{ArrayList, collectArray, forEach, map}
import std.collection.ArrayList

/**
* Enum for huks exception error code.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksExceptionErrCode {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_PERMISSION_FAIL: Int32 = 201
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_ILLEGAL_ARGUMENT: Int32 = 401
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_NOT_SUPPORTED_API: Int32 = 801
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_FEATURE_NOT_SUPPORTED: Int32 = 12000001
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_MISSING_CRYPTO_ALG_ARGUMENT: Int32 = 12000002
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_INVALID_CRYPTO_ALG_ARGUMENT: Int32 = 12000003
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_FILE_OPERATION_FAIL: Int32 = 12000004
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_COMMUNICATION_FAIL: Int32 = 12000005
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_CRYPTO_FAIL: Int32 = 12000006
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_KEY_AUTH_PERMANENTLY_INVALIDATED: Int32 = 12000007
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_KEY_AUTH_VERIFY_FAILED: Int32 = 12000008
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_KEY_AUTH_TIME_OUT: Int32 = 12000009
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_SESSION_LIMIT: Int32 = 12000010
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_ITEM_NOT_EXIST: Int32 = 12000011
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_EXTERNAL_ERROR: Int32 = 12000012
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_CREDENTIAL_NOT_EXIST: Int32 = 12000013
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_INSUFFICIENT_MEMORY: Int32 = 12000014
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ERR_CODE_CALL_SERVICE_FAILED: Int32 = 12000015
}


/**
* Enum for huks key purpose.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksKeyPurpose {
    /* Usable with RSA, EC and AES keys. */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_ENCRYPT: HuksParamValue = HuksParamValue.uint32(1)
    
    /* Usable with RSA, EC and AES keys. */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_DECRYPT: HuksParamValue = HuksParamValue.uint32(2)
    
    /**
    * Usable with RSA, EC keys.
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_SIGN: HuksParamValue = HuksParamValue.uint32(4)
    
    /**
    * Usable with RSA, EC keys.
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_VERIFY: HuksParamValue = HuksParamValue.uint32(8)
    
    /**
    * Usable with EC keys.
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_DERIVE: HuksParamValue = HuksParamValue.uint32(16)
    
    /**
    * Usable with wrap key.
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_WRAP: HuksParamValue = HuksParamValue.uint32(32)
    
    /**
    * Usable with unwrap key.
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_UNWRAP: HuksParamValue = HuksParamValue.uint32(64)
    
    /**
    * Usable with mac.
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_MAC: HuksParamValue = HuksParamValue.uint32(128)
    
    /**
    * Usable with agree.
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_AGREE: HuksParamValue = HuksParamValue.uint32(256)
}


/**
* Enum for huks key digest.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksKeyDigest {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DIGEST_NONE: HuksParamValue = HuksParamValue.uint32(0)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DIGEST_MD5: HuksParamValue = HuksParamValue.uint32(1)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DIGEST_SM3: HuksParamValue = HuksParamValue.uint32(2)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DIGEST_SHA1: HuksParamValue = HuksParamValue.uint32(10)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DIGEST_SHA224: HuksParamValue = HuksParamValue.uint32(11)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DIGEST_SHA256: HuksParamValue = HuksParamValue.uint32(12)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DIGEST_SHA384: HuksParamValue = HuksParamValue.uint32(13)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DIGEST_SHA512: HuksParamValue = HuksParamValue.uint32(14)
}


/**
* Enum for huks key padding.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksKeyPadding {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_PADDING_NONE: HuksParamValue = HuksParamValue.uint32(0)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_PADDING_OAEP: HuksParamValue = HuksParamValue.uint32(1)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_PADDING_PSS: HuksParamValue = HuksParamValue.uint32(2)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_PADDING_PKCS1_V1_5: HuksParamValue = HuksParamValue.uint32(3)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_PADDING_PKCS5: HuksParamValue = HuksParamValue.uint32(4)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_PADDING_PKCS7: HuksParamValue = HuksParamValue.uint32(5)
}


/**
* Enum for huks cipher mode.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksCipherMode {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_MODE_ECB: HuksParamValue = HuksParamValue.uint32(1)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_MODE_CBC: HuksParamValue = HuksParamValue.uint32(2)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_MODE_CTR: HuksParamValue = HuksParamValue.uint32(3)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_MODE_OFB: HuksParamValue = HuksParamValue.uint32(4)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_MODE_CCM: HuksParamValue = HuksParamValue.uint32(31)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_MODE_GCM: HuksParamValue = HuksParamValue.uint32(32)
}


/**
* Enum for huks key size.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksKeySize {
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_RSA_KEY_SIZE_512: HuksParamValue = HuksParamValue.uint32(512)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_RSA_KEY_SIZE_768: HuksParamValue = HuksParamValue.uint32(768)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_RSA_KEY_SIZE_1024: HuksParamValue = HuksParamValue.uint32(1024)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_RSA_KEY_SIZE_2048: HuksParamValue = HuksParamValue.uint32(2048)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_RSA_KEY_SIZE_3072: HuksParamValue = HuksParamValue.uint32(3072)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_RSA_KEY_SIZE_4096: HuksParamValue = HuksParamValue.uint32(4096)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ECC_KEY_SIZE_224: HuksParamValue = HuksParamValue.uint32(224)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ECC_KEY_SIZE_256: HuksParamValue = HuksParamValue.uint32(256)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ECC_KEY_SIZE_384: HuksParamValue = HuksParamValue.uint32(384)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ECC_KEY_SIZE_521: HuksParamValue = HuksParamValue.uint32(521)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_AES_KEY_SIZE_128: HuksParamValue = HuksParamValue.uint32(128)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_AES_KEY_SIZE_192: HuksParamValue = HuksParamValue.uint32(192)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_AES_KEY_SIZE_256: HuksParamValue = HuksParamValue.uint32(256)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_AES_KEY_SIZE_512: HuksParamValue = HuksParamValue.uint32(512)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_CURVE25519_KEY_SIZE_256: HuksParamValue = HuksParamValue.uint32(256)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DH_KEY_SIZE_2048: HuksParamValue = HuksParamValue.uint32(2048)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DH_KEY_SIZE_3072: HuksParamValue = HuksParamValue.uint32(3072)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DH_KEY_SIZE_4096: HuksParamValue = HuksParamValue.uint32(4096)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_SM2_KEY_SIZE_256: HuksParamValue = HuksParamValue.uint32(256)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_SM4_KEY_SIZE_128: HuksParamValue = HuksParamValue.uint32(128)
}


/**
* Enum for huks key algorithm.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksKeyAlg {
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_RSA: HuksParamValue = HuksParamValue.uint32(1)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_ECC: HuksParamValue = HuksParamValue.uint32(2)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_DSA: HuksParamValue = HuksParamValue.uint32(3)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_AES: HuksParamValue = HuksParamValue.uint32(20)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_HMAC: HuksParamValue = HuksParamValue.uint32(50)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_HKDF: HuksParamValue = HuksParamValue.uint32(51)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_PBKDF2: HuksParamValue = HuksParamValue.uint32(52)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_ECDH: HuksParamValue = HuksParamValue.uint32(100)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_X25519: HuksParamValue = HuksParamValue.uint32(101)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_ED25519: HuksParamValue = HuksParamValue.uint32(102)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_DH: HuksParamValue = HuksParamValue.uint32(103)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_SM2: HuksParamValue = HuksParamValue.uint32(150)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_SM3: HuksParamValue = HuksParamValue.uint32(151)
    
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_SM4: HuksParamValue = HuksParamValue.uint32(152)
}


/**
* Enum for huks unwrap suite.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksUnwrapSuite {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_UNWRAP_SUITE_X25519_AES_256_GCM_NOPADDING: HuksParamValue = HuksParamValue.uint32(1)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_UNWRAP_SUITE_ECDH_AES_256_GCM_NOPADDING: HuksParamValue = HuksParamValue.uint32(2)
}


/**
* Enum for huks auth storage level.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksAuthStorageLevel {
    /**
    * Key file storage security level for device encryption standard.
    * @syscap SystemCapability.Security.Huks.Core
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_AUTH_STORAGE_LEVEL_DE: HuksParamValue = HuksParamValue.uint32(0)
    
    /**
    * Key file storage security level for credential encryption standard.
    * @syscap SystemCapability.Security.Huks.Core
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_AUTH_STORAGE_LEVEL_CE: HuksParamValue = HuksParamValue.uint32(1)
    
    /**
    * Key file storage security level for enhanced credential encryption standard.
    * @syscap SystemCapability.Security.Huks.Core
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_AUTH_STORAGE_LEVEL_ECE: HuksParamValue = HuksParamValue.uint32(2)
}


/**
* Enum for huks key generate type.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksKeyGenerateType {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_GENERATE_TYPE_DEFAULT: HuksParamValue = HuksParamValue.uint32(0)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_GENERATE_TYPE_DERIVE: HuksParamValue = HuksParamValue.uint32(1)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_GENERATE_TYPE_AGREE: HuksParamValue = HuksParamValue.uint32(2)
}


/**
* Enum for huks key flag.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksKeyFlag {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_FLAG_IMPORT_KEY: HuksParamValue = HuksParamValue.uint32(1)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_FLAG_GENERATE_KEY: HuksParamValue = HuksParamValue.uint32(2)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_FLAG_AGREE_KEY: HuksParamValue = HuksParamValue.uint32(3)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_FLAG_DERIVE_KEY: HuksParamValue = HuksParamValue.uint32(4)
}


/**
* Enum for huks key storage type.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksKeyStorageType {
    /**
    * @syscap SystemCapability.Security.Huks.Core
    * @deprecated
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_STORAGE_TEMP: HuksParamValue = HuksParamValue.uint32(0)
    
    /**
    * @syscap SystemCapability.Security.Huks.Core
    * @deprecated
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_STORAGE_PERSISTENT: HuksParamValue = HuksParamValue.uint32(1)
    
    /**
    * The key is stored and used only in HUKS. It is mutually exclusive with HUKS_STORAGE_KEY_EXPORT_ALLOWED.
    *
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_STORAGE_ONLY_USED_IN_HUKS: HuksParamValue = HuksParamValue.uint32(2)
    
    /**
    * The key can be exported. It is mutually exclusive with HUKS_STORAGE_ONLY_USED_IN_HUKS.
    *
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_STORAGE_KEY_EXPORT_ALLOWED: HuksParamValue = HuksParamValue.uint32(3)
}


/**
* Enum for huks import key type.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksImportKeyType {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_TYPE_PUBLIC_KEY: HuksParamValue = HuksParamValue.uint32(0)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_TYPE_PRIVATE_KEY: HuksParamValue = HuksParamValue.uint32(1)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_TYPE_KEY_PAIR: HuksParamValue = HuksParamValue.uint32(2)
}


/**
* Enum for rsa salt len type.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksRsaPssSaltLenType {
    /**
    * Salt length that matches the digest length.
    *
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_RSA_PSS_SALT_LEN_DIGEST: HuksParamValue = HuksParamValue.uint32(0)
    
    /**
    * Maximum salt length.
    *
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_RSA_PSS_SALT_LEN_MAX: HuksParamValue = HuksParamValue.uint32(1)
}


/**
* Enum for huks user auth type.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public class HuksUserAuthType {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_USER_AUTH_TYPE_FINGERPRINT: HuksParamValue = HuksParamValue.uint32(1 << 0)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_USER_AUTH_TYPE_FACE: HuksParamValue = HuksParamValue.uint32(1 << 1)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_USER_AUTH_TYPE_PIN: HuksParamValue = HuksParamValue.uint32(1 << 2)
}


/**
* Enum for huks auth access type.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public class HuksAuthAccessType {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_AUTH_ACCESS_INVALID_CLEAR_PASSWORD: HuksParamValue = HuksParamValue.uint32(1 << 0)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_AUTH_ACCESS_INVALID_NEW_BIO_ENROLL: HuksParamValue = HuksParamValue.uint32(1 << 1)
}


/**
* Enum for huks auth access challenge type.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public class HuksChallengeType {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_CHALLENGE_TYPE_NORMAL: HuksParamValue = HuksParamValue.uint32(0)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_CHALLENGE_TYPE_CUSTOM: HuksParamValue = HuksParamValue.uint32(1)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_CHALLENGE_TYPE_NONE: HuksParamValue = HuksParamValue.uint32(2)
}


/**
* Enum for huks challenge position.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public class HuksChallengePosition {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_CHALLENGE_POS_0: HuksParamValue = HuksParamValue.uint32(0)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_CHALLENGE_POS_1: HuksParamValue = HuksParamValue.uint32(1)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_CHALLENGE_POS_2: HuksParamValue = HuksParamValue.uint32(2)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_CHALLENGE_POS_3: HuksParamValue = HuksParamValue.uint32(3)
}


/**
* Enum for huks secure sign type.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public class HuksSecureSignType {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_SECURE_SIGN_WITH_AUTHINFO: HuksParamValue = HuksParamValue.uint32(1)
}


/**
* Enum for huks ipc send type.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksSendType {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_SEND_TYPE_ASYNC: HuksParamValue = HuksParamValue.uint32(0)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_SEND_TYPE_SYNC: HuksParamValue = HuksParamValue.uint32(1)
}


/**
* Enum for huks base tag type.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksTagType {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_TYPE_INVALID: UInt32 = 0 << 28
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_TYPE_INT: UInt32 = 1 << 28
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_TYPE_UINT: UInt32 = 2 << 28
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_TYPE_ULONG: UInt32 = 3 << 28
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_TYPE_BOOL: UInt32 = 4 << 28
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_TYPE_BYTES: UInt32 = 5 << 28
}


/**
* Enum for huks tag.
*
* @enum { number }
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public enum HuksTag {
    /* Store unknown value */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAGS_CANGJIE_UNKNOWN(UInt32) |
    /**
    * Invalid TAG
    *
    * @syscap SystemCapability.Security.Huks.Core
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_INVALID |
    /* Base algrithom TAG: 1 - 200 */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_ALGORITHM |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_PURPOSE |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_KEY_SIZE |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_DIGEST |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_PADDING |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_BLOCK_MODE |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_KEY_TYPE |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_ASSOCIATED_DATA |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_NONCE |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_IV |
    /* Key derivation TAG */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_INFO |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_SALT |
    /**
    * @syscap SystemCapability.Security.Huks.Core
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_PWD |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_ITERATION |
    /* choose from enum HuksKeyGenerateType */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_KEY_GENERATE_TYPE |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_DERIVE_MAIN_KEY |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_DERIVE_FACTOR |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_DERIVE_ALG |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_AGREE_ALG |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_AGREE_PUBLIC_KEY_IS_KEY_ALIAS |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_AGREE_PRIVATE_KEY_ALIAS |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_AGREE_PUBLIC_KEY |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_KEY_ALIAS |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_DERIVE_KEY_SIZE |
    /**
    * Choose from enum HuksImportKeyType
    *
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_IMPORT_KEY_TYPE |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_UNWRAP_ALGORITHM_SUITE |
    /**
    * Key storage type, which can be HUKS_STORAGE_ONLY_USED_IN_HUKS or HUKS_STORAGE_KEY_EXPORT_ALLOWED.
    *
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG |
    /**
    * RSA salt length type. For details, see HuksRsaPssSaltLenType.
    *
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_RSA_PSS_SALT_LEN_TYPE |
    /*
    * Key authentication related TAG: 201 - 300
    *
    * Start of validity
    *//**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ACTIVE_DATETIME |
    /**
    * Date when new "messages" should not be created.
    *
    * @syscap SystemCapability.Security.Huks.Core
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_ORIGINATION_EXPIRE_DATETIME |
    /**
    * Date when existing "messages" should not be used.
    *
    * @syscap SystemCapability.Security.Huks.Core
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_USAGE_EXPIRE_DATETIME |
    /**
    * Key creation time.
    *
    * @syscap SystemCapability.Security.Huks.Core
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_CREATION_DATETIME |
    /* Other authentication related TAG: 301 - 500 *//**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_ALL_USERS |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_USER_ID |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_NO_AUTH_REQUIRED |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_USER_AUTH_TYPE |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_AUTH_TIMEOUT |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_AUTH_TOKEN |
    /* Key secure access control and user auth TAG *//**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_KEY_AUTH_ACCESS_TYPE |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_KEY_SECURE_SIGN_TYPE |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_CHALLENGE_TYPE |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_CHALLENGE_POS |
    /**
    * Supported key secure access control purpose tag, the value from enum HuksKeyPurpose.
    *
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_KEY_AUTH_PURPOSE |
    /* Attestation related TAG: 501 - 600 *//**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_CHALLENGE |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_APPLICATION_ID |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_ID_BRAND |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_ID_DEVICE |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_ID_PRODUCT |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_ID_SERIAL |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_ID_IMEI |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_ID_MEID |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_ID_MANUFACTURER |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_ID_MODEL |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_ID_ALIAS |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_ID_SOCID |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_ID_UDID |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_ID_SEC_LEVEL_INFO |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_ID_VERSION_INFO |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_BASE64 |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_MODE |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ATTESTATION_APPLICATION_ID_TYPE |
    /*
    * Other reserved TAG: 601 - 1000
    *
    * Extention TAG: 1001 - 9999
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_IS_KEY_ALIAS |
    /* choose from enum HuksKeyStorageType */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_KEY_STORAGE_FLAG |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_IS_ALLOWED_WRAP |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_KEY_WRAP_TYPE |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_KEY_AUTH_ID |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_KEY_ROLE |
    /* choose from enum HuksKeyFlag */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_KEY_FLAG |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_IS_ASYNCHRONIZED |
    /**
    * @syscap SystemCapability.Security.Huks.Core
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_SECURE_KEY_ALIAS |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_SECURE_KEY_UUID |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_KEY_DOMAIN |
    /* Inner-use TAG: 10001 - 10999 *//**
    * @syscap SystemCapability.Security.Huks.Core
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_PROCESS_NAME |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_PACKAGE_NAME |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_ACCESS_TIME |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_USES_TIME |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_CRYPTO_CTX |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_KEY |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_KEY_VERSION |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    HUKS_TAG_PAYLOAD_LEN |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_AE_TAG |
    /**
    * @syscap SystemCapability.Security.Huks.Core
    * @deprecated
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_IS_KEY_HANDLE |
    /* Os version related TAG *//**
    * @syscap SystemCapability.Security.Huks.Core
    * @deprecated
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_OS_VERSION |
    /**
    * @syscap SystemCapability.Security.Huks.Core
    * @deprecated
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_OS_PATCHLEVEL |
    /*
    * Reversed TAGs for SOTER: 11000 - 12000
    *
    * Other TAGs: 20001 - N
    * TAGs used for paramSetOut
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_SYMMETRIC_KEY_DATA |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_ASYMMETRIC_PUBLIC_KEY_DATA |
    /**
    * @syscap SystemCapability.Security.Huks.Extension
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    HUKS_TAG_ASYMMETRIC_PRIVATE_KEY_DATA |
    ...
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public func getValue(): UInt32
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static func parse(val: UInt32): HuksTag
}


/**
* Get SDK version
*
* @return { String } - Return SDK version.
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    deprecated: 21,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public func getSdkVersion(): String


/**
* Check whether the key exists.
*
* @param { String } keyAlias - keyAlias indicates the key's name.
* @param { HuksOptions } options - options indicates the properties of the key.
* @return { Bool } - whether the key exists.
* @throws { BusinessException } 401 - argument is invalid
* @throws { BusinessException } 801 - api is not supported
* @throws { BusinessException } 12000002 - algorithm param is missing
* @throws { BusinessException } 12000003 - algorithm param is invalid
* @throws { BusinessException } 12000004 - operating file failed
* @throws { BusinessException } 12000005 - IPC communication failed
* @throws { BusinessException } 12000006 - error occured in crypto engine
* @throws { BusinessException } 12000012 - external error
* @throws { BusinessException } 12000014 - memory is insufficient
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public func isKeyItemExist(keyAlias: String, options: HuksOptions): Bool


/**
* Get properties of the key.
*
* @param { String } keyAlias - keyAlias indicates the key's name.
* @param { HuksOptions } options - options indicates the properties of the key.
* @return { Array<HuksParam> } - the key item properties.
* @throws { BusinessException } 401 - argument is invalid
* @throws { BusinessException } 801 - api is not supported
* @throws { BusinessException } 12000001 - algorithm mode is not supported
* @throws { BusinessException } 12000002 - algorithm param is missing
* @throws { BusinessException } 12000003 - algorithm param is invalid
* @throws { BusinessException } 12000004 - operating file failed
* @throws { BusinessException } 12000005 - IPC communication failed
* @throws { BusinessException } 12000006 - error occured in crypto engine
* @throws { BusinessException } 12000011 - queried entity does not exist
* @throws { BusinessException } 12000012 - external error
* @throws { BusinessException } 12000014 - memory is insufficient
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public func getKeyItemProperties(keyAlias: String, _: HuksOptions): Array<HuksParam>


/**
* Key Attestation.
*
* @param { String } keyAlias - keyAlias indicates the key's name.
* @param { HuksOptions } options - options indicates the properties of the key attestation operation.
* @return { Array<String> } - the certchain of key.
* @throws { BusinessException } 201 - check permission failed
* @throws { BusinessException } 401 - argument is invalid
* @throws { BusinessException } 801 - api is not supported
* @throws { BusinessException } 12000001 - algorithm mode is not supported
* @throws { BusinessException } 12000002 - algorithm param is missing
* @throws { BusinessException } 12000003 - algorithm param is invalid
* @throws { BusinessException } 12000004 - operating file failed
* @throws { BusinessException } 12000005 - IPC communication failed
* @throws { BusinessException } 12000006 - error occured in crypto engine
* @throws { BusinessException } 12000011 - queried entity does not exist
* @throws { BusinessException } 12000012 - external error
* @throws { BusinessException } 12000014 - memory is insufficient
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public func attestKeyItem(keyAlias: String, options: HuksOptions): Array<String>


/**
* Anonymous key Attestation.
*
* @param { String } keyAlias - keyAlias indicates the key's name.
* @param { HuksOptions } options - options indicates the properties of the key attestation operation.
* @return { Array<String> } - the certchain of key.
* @throws { BusinessException } 201 - check permission failed
* @throws { BusinessException } 401 - argument is invalid
* @throws { BusinessException } 801 - api is not supported
* @throws { BusinessException } 12000001 - algorithm mode is not supported
* @throws { BusinessException } 12000002 - algorithm param is missing
* @throws { BusinessException } 12000003 - algorithm param is invalid
* @throws { BusinessException } 12000004 - operating file failed
* @throws { BusinessException } 12000005 - IPC communication failed
* @throws { BusinessException } 12000006 - error occured in crypto engine
* @throws { BusinessException } 12000011 - queried entity does not exist
* @throws { BusinessException } 12000012 - external error
* @throws { BusinessException } 12000014 - memory is insufficient
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public func anonAttestKeyItem(keyAlias: String, options: HuksOptions): Array<String>


/**
* Export Key.
*
* @param { String } keyAlias - keyAlias indicates the key's name.
* @param { HuksOptions } options - options indicates the properties of the key.
* @return { Array<UInt8> } - the exported key
* @throws { BusinessException } 401 - argument is invalid
* @throws { BusinessException } 801 - api is not supported
* @throws { BusinessException } 12000001 - algorithm mode is not supported
* @throws { BusinessException } 12000002 - algorithm param is missing
* @throws { BusinessException } 12000003 - algorithm param is invalid
* @throws { BusinessException } 12000004 - operating file failed
* @throws { BusinessException } 12000005 - IPC communication failed
* @throws { BusinessException } 12000006 - error occured in crypto engine
* @throws { BusinessException } 12000011 - queried entity does not exist
* @throws { BusinessException } 12000012 - external error
* @throws { BusinessException } 12000014 - memory is insufficient
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public func exportKeyItem(keyAlias: String, _: HuksOptions): Bytes


/**
* Import Wrapped Key.
*
* @param { String } keyAlias - keyAlias indicates the name of key to be imported.
* @param { String } wrappingKeyAlias - wrappingKeyAlias indicates the name of key for wrapping the key to be imported.
* @param { HuksOptions } options - options indicates the properties of the key.
* @throws { BusinessException } 401 - argument is invalid
* @throws { BusinessException } 801 - api is not supported
* @throws { BusinessException } 12000001 - algorithm mode is not supported
* @throws { BusinessException } 12000002 - algorithm param is missing
* @throws { BusinessException } 12000003 - algorithm param is invalid
* @throws { BusinessException } 12000004 - operating file failed
* @throws { BusinessException } 12000005 - IPC communication failed
* @throws { BusinessException } 12000006 - error occured in crypto engine
* @throws { BusinessException } 12000011 - queried entity does not exist
* @throws { BusinessException } 12000012 - external error
* @throws { BusinessException } 12000013 - queried credential does not exist
* @throws { BusinessException } 12000014 - memory is insufficient
* @throws { BusinessException } 12000015 - call service failed
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public func importWrappedKeyItem(keyAlias: String, wrappingKeyAlias: String, options: HuksOptions): Unit


/**
* Key generation.
*
* @param { String } keyAlias - keyAlias indicates the key's name.
* @param { HuksOptions } options - options indicates the properties of the key.
* @throws { BusinessException } 401 - argument is invalid
* @throws { BusinessException } 801 - api is not supported
* @throws { BusinessException } 12000001 - algorithm mode is not supported
* @throws { BusinessException } 12000002 - algorithm param is missing
* @throws { BusinessException } 12000003 - algorithm param is invalid
* @throws { BusinessException } 12000004 - operating file failed
* @throws { BusinessException } 12000005 - IPC communication failed
* @throws { BusinessException } 12000006 - error occured in crypto engine
* @throws { BusinessException } 12000012 - external error
* @throws { BusinessException } 12000013 - queried credential does not exist
* @throws { BusinessException } 12000014 - memory is insufficient
* @throws { BusinessException } 12000015 - call service failed
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public func generateKeyItem(keyAlias: String, options: HuksOptions): Unit


/**
* Key deletion.
*
* @param { String } keyAlias - keyAlias indicates the key's name.
* @param { HuksOptions } options - options indicates the properties of the key.
* @throws { BusinessException } 401 - argument is invalid
* @throws { BusinessException } 801 - api is not supported
* @throws { BusinessException } 12000004 - operating file failed
* @throws { BusinessException } 12000005 - IPC communication failed
* @throws { BusinessException } 12000011 - queried entity does not exist
* @throws { BusinessException } 12000012 - external error
* @throws { BusinessException } 12000014 - memory is insufficient
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public func deleteKeyItem(keyAlias: String, _: HuksOptions): Unit


/**
* Import key.
*
* @param { String } keyAlias - keyAlias indicates the key's name.
* @param { HuksOptions } options - options indicates the properties of the key.
* @throws { BusinessException } 401 - argument is invalid
* @throws { BusinessException } 801 - api is not supported
* @throws { BusinessException } 12000001 - algorithm mode is not supported
* @throws { BusinessException } 12000002 - algorithm param is missing
* @throws { BusinessException } 12000003 - algorithm param is invalid
* @throws { BusinessException } 12000004 - operating file failed
* @throws { BusinessException } 12000005 - IPC communication failed
* @throws { BusinessException } 12000006 - error occured in crypto engine
* @throws { BusinessException } 12000011 - queried entity does not exist
* @throws { BusinessException } 12000012 - external error
* @throws { BusinessException } 12000013 - queried credential does not exist
* @throws { BusinessException } 12000014 - memory is insufficient
* @throws { BusinessException } 12000015 - call service failed
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public func importKeyItem(keyAlias: String, options: HuksOptions): Unit


/**
* Init Operation.
*
* @param { String } keyAlias - keyAlias indicates the key's name.
* @param { HuksOptions } options - options indicates the properties of the key.
* @return { HuksSessionHandle } - the session handle.
* @throws { BusinessException } 401 - argument is invalid
* @throws { BusinessException } 801 - api is not supported
* @throws { BusinessException } 12000001 - algorithm mode is not supported
* @throws { BusinessException } 12000002 - algorithm param is missing
* @throws { BusinessException } 12000003 - algorithm param is invalid
* @throws { BusinessException } 12000004 - operating file failed
* @throws { BusinessException } 12000005 - IPC communication failed
* @throws { BusinessException } 12000006 - error occured in crypto engine
* @throws { BusinessException } 12000010 - the number of sessions has reached limit
* @throws { BusinessException } 12000011 - queried entity does not exist
* @throws { BusinessException } 12000012 - external error
* @throws { BusinessException } 12000014 - memory is insufficient
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public func initSession(keyAlias: String, options: HuksOptions): HuksSessionHandle


/**
* Update Operation.
*
* @param { HuksHandle } handle - the handle of the init operation.
* @param { HuksOptions } options - options indicates the properties of the update operation.
* @param { Bytes } token - token indicates the value of AuthToken from USER IAM service.
* @return { Option<Array<UInt8>> } - the output data of update operation.
* @throws { BusinessException } 401 - argument is invalid
* @throws { BusinessException } 801 - api is not supported
* @throws { BusinessException } 12000001 - algorithm mode is not supported
* @throws { BusinessException } 12000002 - algorithm param is missing
* @throws { BusinessException } 12000003 - algorithm param is invalid
* @throws { BusinessException } 12000004 - operating file failed
* @throws { BusinessException } 12000005 - IPC communication failed
* @throws { BusinessException } 12000006 - error occured in crypto engine
* @throws { BusinessException } 12000007 - this credential is already invalidated permanently
* @throws { BusinessException } 12000008 - verify authtoken failed
* @throws { BusinessException } 12000009 - authtoken is already timeout
* @throws { BusinessException } 12000011 - queried entity does not exist
* @throws { BusinessException } 12000012 - external error
* @throws { BusinessException } 12000014 - memory is insufficient
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public func updateSession(handle: HuksHandle, options: HuksOptions): Option<Bytes>


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public func updateSession(handle: HuksHandle, options: HuksOptions, token: Bytes): Option<Bytes>


/**
* Finish Operation.
*
* @param { HuksHandle } handle - indicates the handle of the init operation.
* @param { HuksOptions } options - options indicates the properties of the finish operation.
* @param { Bytes } token - token indicates the value of AuthToken from USER IAM service.
* @return { Option<Array<UInt8>> } - the output data of update operation.
* @throws { BusinessException } 401 - argument is invalid
* @throws { BusinessException } 801 - api is not supported
* @throws { BusinessException } 12000001 - algorithm mode is not supported
* @throws { BusinessException } 12000002 - algorithm param is missing
* @throws { BusinessException } 12000003 - algorithm param is invalid
* @throws { BusinessException } 12000004 - operating file failed
* @throws { BusinessException } 12000005 - IPC communication failed
* @throws { BusinessException } 12000006 - error occured in crypto engine
* @throws { BusinessException } 12000007 - this credential is already invalidated permanently
* @throws { BusinessException } 12000008 - verify authtoken failed
* @throws { BusinessException } 12000009 - authtoken is already timeout
* @throws { BusinessException } 12000011 - queried entity does not exist
* @throws { BusinessException } 12000012 - external error
* @throws { BusinessException } 12000014 - memory is insufficient
* @syscap SystemCapability.Security.Huks.Extension
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public func finishSession(handle: HuksHandle, options: HuksOptions): Option<Bytes>


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public func finishSession(handle: HuksHandle, options: HuksOptions, token: Bytes): Option<Bytes>


/**
* Abort Operation.
*
* @param { HuksHandle } handle - indicates the handle of the init operation.
* @param { HuksOptions } options - options indicates the properties of the abort operation.
* @throws { BusinessException } 401 - argument is invalid
* @throws { BusinessException } 801 - api is not supported
* @throws { BusinessException } 12000004 - operating file failed
* @throws { BusinessException } 12000005 - IPC communication failed
* @throws { BusinessException } 12000006 - error occured in crypto engine
* @throws { BusinessException } 12000012 - external error
* @throws { BusinessException } 12000014 - memory is insufficient
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public func abortSession(handle: HuksHandle, options: HuksOptions): Unit


/**
* Interface of huks param.
*
* @typedef HuksParam
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksParam {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public HuksParam(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Security.Huks.Core"
        ]
        public let tag: HuksTag,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Security.Huks.Core"
        ]
        public let value: HuksParamValue
    )
}


type Bytes = Array<UInt8>
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public enum HuksParamValue {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    boolean(Bool) |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    int32(Int32) |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    uint32(UInt32) |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    uint64(UInt64) |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    bytes(Bytes) |
    ...
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public func toBool(): Option<Bool>
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public func toInt32(): Option<Int32>
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public func toUInt32(): Option<UInt32>
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public func toUInt64(): Option<UInt64>
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public func toBytes(): Option<Bytes>
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public operator func |(other: HuksParamValue): HuksParamValue
}


/**
* Interface of huks option.
*
* @typedef HuksOptions
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksOptions {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public HuksOptions(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Security.Huks.Core"
        ]
        public var properties: Option<Array<HuksParam>>,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Security.Huks.Core"
        ]
        public var inData: Option<Bytes>
    )
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static let NONE: HuksOptions = HuksOptions(None, None)
}


/**
* Interface of huks handle.
*
* @typedef HuksSessionHandle
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksSessionHandle {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public HuksSessionHandle(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Security.Huks.Core"
        ]
        public let handle: HuksHandle,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Security.Huks.Core"
        ]
        public let challenge: Option<Bytes>
    )
}


@!APILevel[
    21,
    deprecated: 21,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Extension"
]
public class HuksHandle {
}


/**
* Interface of huks result.
*
* @typedef HuksReturnResult
* @syscap SystemCapability.Security.Huks.Core
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksReturnResult {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public HuksReturnResult(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Security.Huks.Core"
        ]
        public let outData: Option<Bytes>,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Security.Huks.Core"
        ]
        public let properties: Option<Array<HuksParam>>,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Security.Huks.Core"
        ]
        public let certChains: Option<Array<String>>
    )
}


