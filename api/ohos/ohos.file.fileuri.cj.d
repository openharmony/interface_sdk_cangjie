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

package ohos.file.fileuri
import ohos.ffi.*
import ohos.hilog.*
import ohos.business_exception.*
import ohos.labels.*
import ohos.uri.Uri


/**
* FileUri represents the uri of the file.
*
* @relation class FileUri extends uri.URI
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.AppFileService"
]
public class FileUri <: Uri {
    /**
    * Constructor for obtaining the instance of the FileUri class.
    *
    * @param { String } uriOrPath - Uri or Path.
    * @throws { BusinessException } 13900005 - I/O error
    * @throws {BusinessException} 13900011 - Out of memory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 14300002 - Invalid uri
    * @relation constructor(uriOrPath: string)
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.AppFileService"
    ]
    public init(uriOrPath: String)
    
    /**
    * Obtains the file path of uri.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.AppFileService"
    ]
    public prop path: String
    
    /**
    * Obtains the file name of uri.
    *
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation readonly name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.AppFileService"
    ]
    public prop name: String
    
    /**
    * Get the uri string
    *
    * @returns { String } Return the file uri string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.AppFileService"
    ]
    public override func toString(): String
    
    /**
    * Get the uri from the path of file in app sandbox
    *
    * @throws { BusinessException } 401 - The input parameter is invalid.
    * @relation function getUriFromPath(path: string): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.AppFileService"
    ]
    public static func getUriFromPath(path: String): String
}


