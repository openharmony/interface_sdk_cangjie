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

package ohos.file_fileuri
import ohos.ffi.*
import ohos.hilog.*
import ohos.base.*
import ohos.labels.*


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.AppFileService"
]
public class FileUri <: RemoteDataLite & ToString {
    /**
    * Constructor for obtaining the instance of the FileUri class.
    *
    * @param { String } uriOrPath - Uri or Path.
    * @since 10
    * @brief constructor(uriOrPath: string)
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.AppFileService"
    ]
    public init(uriOrPath: String)
    
    /**
    * Obtains the file path of uri.
    *
    * @type { String }
    * @readonly
    * @brief readonly path: string
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.AppFileService"
    ]
    public prop path: String
    
    /**
    * Obtains the file name of uri.
    *
    * @type { String }
    * @readonly
    * @brief readonly name: string
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.AppFileService"
    ]
    public prop name: String
    
    /**
    * Get the uri string
    *
    * @returns { string } Return the file uri string
    * @brief toString(): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.AppFileService"
    ]
    public func toString(): String
    
    /**
    * Get the uri from the path of file in app sandbox
    *
    * @param { string } path the path of file in app sandbox
    * @returns { string } Return the file uri
    * @brief getUriFromPath(path: string): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.AppFileService"
    ]
    public static func getUriFromPath(path: String): String
}


