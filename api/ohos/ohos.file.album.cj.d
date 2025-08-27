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

package ohos.file.album
import ohos.labels.*
import ohos.ffi.*

import std.collection.*
import ohos.multimedia.image.*
import ohos.business_exception.{ BusinessException, UNIVERSAL_ERROR_MAP}
import ohos.data.data_share_predicates.*
import ohos.hilog.*
import std.deriving.Derive

/**
* Defines the abstract interface of albums.
*
* @relation interface AbsAlum
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public open class AbsAlum <: RemoteDataLite {
}


/**
* Defines the album.
*
* @relation interface Album extends AbsAlbum
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class Album <: AbsAlum {
}


/**
* Enumerates media file types.
*
* @relation enum PhotoType
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum PhotoType {
    /**
    * Image asset
    *
    * @relation IMAGE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Image |
    /**
    * Video asset
    *
    * @relation VIDEO = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Video |
    ...
}



/**
* Indicates the type of photo asset member.
*
* @relation type MemberType = number | string | boolean
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum MemberType {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Int64Value(Int64) |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    StringValue(String) |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    BoolValue(Bool) |
    ...
}


/**
* Provides APIs for encapsulating file asset attributes.
*
* @relation interface PhotoAsset
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class PhotoAsset <: RemoteDataLite {
    /**
    * uri of the asset.
    *
    * @relation readonly uri: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop uri: String
    
    /**
    * Photo type, image or video
    *
    * @relation readonly photoType: PhotoType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop photoType: PhotoType
    
    /**
    * Display name (with a file name extension) of the asset.
    *
    * @relation readonly displayName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop displayName: String
    
    /**
    * Obtains a PhotoAsset member parameter.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000014 - The provided member must be a property name of PhotoKey.
    * @relation get(member: string): MemberType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func get(member: String): MemberType
    
    /**
    * Sets a PhotoAsset member parameter.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000014 - The provided member must be a property name of PhotoKey.
    * @relation set(member: string, value: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func set(member: String, value: String): Unit
    
    /**
    * Commits the modification on the file metadata to the database.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 201 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000001 - Invalid display name
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation commitModify(): Promise<void>
    */
    @!APILevel[
        21,
        permission: "ohos.permission.WRITE_IMAGEVIDEO",
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func commitModify(): Unit
    
    /**
    * Obtains the file thumbnail of the given size.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getThumbnail(size?: image.Size): Promise<image.PixelMap>
    */
    @!APILevel[
        21,
        permission: "ohos.permission.WRITE_IMAGEVIDEO",
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getThumbnail(size!: ?Size = Size(256, 256)): PixelMap
}


