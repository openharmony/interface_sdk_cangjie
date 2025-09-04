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

package ohos.file.photo_access_helper
import ohos.labels.*
import ohos.ffi.*

import ohos.app.ability.ui_ability.*
import ohos.business_exception.*
import ohos.callback_invoke.*
import ohos.bundle.bundle_manager.{BundleManager, BundleInfo, BundleFlag}
import ohos.hilog.*
import std.sync.*
import std.collection.*
import ohos.resource_manager.ResourceManager
import ohos.data.data_share_predicates.*
import ohos.multimedia.image.*
import ohos.business_exception.{ UNIVERSAL_ERROR_MAP, BusinessException}
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
public open class AbsAlbum <: RemoteDataLite {
    /**
    * Album type
    *
    * @relation readonly albumType: AlbumType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop albumType: AlbumType
    
    /**
    * Album subtype
    *
    * @relation readonly albumSubtype: AlbumSubtype
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop albumSubtype: AlbumSubtype
    
    /**
    * Album name.
    *
    * @relation albumName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public mut prop albumName: String
    
    /**
    * Album uri.
    *
    * @relation readonly albumUri: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop albumUri: String
    
    /**
    * Number of assets in the album
    *
    * @relation readonly count: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop count: Int32
    
    /**
    * Cover uri for the album
    *
    * @relation readonly coverUri: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop coverUri: String
    
    /**
    * Fetch assets in an album.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 201 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getAssets(options: FetchOptions): Promise<FetchResult<PhotoAsset>>
    */
    @!APILevel[
        21,
        permission: "ohos.READ_IMAGEVIDEO",
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getAssets(options: FetchOptions): PhotoAssetResult
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
public class Album <: AbsAlbum {
    /**
    * Number of image assets in the album
    *
    * @relation readonly imageCount: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop imageCount: Int32
    
    /**
    * Number of video assets in the album
    *
    * @relation readonly videoCount: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop videoCount: Int32
    
    /**
    * Modify metadata for the album
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 201 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation commitModify(): Promise<void>
    */
    @!APILevel[
        21,
        permission: "ohos.WRITE_IMAGEVIDEO",
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func commitModify(): Unit
}


/**
* Provides APIs to manage the file retrieval result.
*
* @relation interface FetchResult<T>
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public open class FetchResult <: RemoteDataLite {
    /**
    * Release the fetch result.
    *
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation close(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func close(): Unit
    
    /**
    * Obtains the total number of objects in the fetch result.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getCount(): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getCount(): Int32
    
    /**
    * Checks whether the result set points to the last row.
    * You need to check whether the object is the last one before calling getNextObject.
    *
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation isAfterLast(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func isAfterLast(): Bool
}


/**
* Provides APIs to manage the file retrieval album result.
*
* @relation interface FetchResult<T>
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class AlbumResult <: FetchResult {
    /**
    * Obtains the first object in the fetch result.
    *
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getFirstObject(): Promise<T>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getFirstObject(): Album
    
    /**
    * Obtains the next object in the fetch result.
    * Before calling this method, you must use isAfterLast() to check whether the current position is the last row
    * in the fetch result. This method only works when the current position is not the last row.
    *
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getNextObject(): Promise<T>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getNextObject(): Album
    
    /**
    * Obtains the last object in the fetch result
    *
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getLastObject(): Promise<T>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getLastObject(): Album
    
    /**
    * Obtains the object with the specified index in the result set.
    *
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getObjectByPosition(index: number): Promise<T>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getObjectByPosition(index: Int32): Album
    
    /**
    * Obtains all objects in the fetch result.
    *
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getAllObjects(): Promise<Array<T>>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getAllObjects(): Array<Album>
}


/**
* Provides APIs to manage the file retrieval photoasset result.
*
* @relation interface FetchResult<T>
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class PhotoAssetResult <: FetchResult {
    /**
    * Obtains the first object in the fetch result.
    *
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getFirstObject(): Promise<T>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getFirstObject(): PhotoAsset
    
    /**
    * Obtains the next object in the fetch result.
    * Before calling this method, you must use isAfterLast() to check whether the current position is the last row
    * in the fetch result. This method only works when the current position is not the last row.
    *
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getNextObject(): Promise<T>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getNextObject(): PhotoAsset
    
    /**
    * Obtains the last object in the fetch result
    *
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getLastObject(): Promise<T>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getLastObject(): PhotoAsset
    
    /**
    * Obtains the object with the specified index in the result set.
    *
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getObjectByPosition(index: number): Promise<T>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getObjectByPosition(index: Int32): PhotoAsset
    
    /**
    * Obtains all objects in the fetch result.
    *
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getAllObjects(): Promise<Array<T>>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getAllObjects(): Array<PhotoAsset>
}


/**
* Defines the class of media album change request.
*
* @relation class MediaAlbumChangeRequest implements MediaChangeRequest
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class MediaAlbumChangeRequest <: RemoteDataLite & MediaChangeRequest {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    /**
    * The constructor to create a MediaAlbumChangeRequest instance.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation constructor(album: Album)
    */
    public init(album: Album)
    
    /**
    * Obtains the album in the current album change request.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getAlbum(): Album
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getAlbum(): Album
    
    /**
    * Sets the album name.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation setAlbumName(name: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func setAlbumName(name: String): Unit
    
    /**
    * Add assets to the album.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @throws { BusinessException } 14000016 - Operation Not Support
    * @relation addAssets(assets: Array<PhotoAsset>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func addAssets(assets: Array<PhotoAsset>): Unit
    
    /**
    * Removes assets from the album.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @throws { BusinessException } 14000016 - Operation Not Support
    * @relation removeAssets(assets: Array<PhotoAsset>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func removeAssets(assets: Array<PhotoAsset>): Unit
}


/**
* Defines the interface of media change request.
*
* @relation interface MediaChangeRequest {}
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public interface MediaChangeRequest {
}


/**
* Defines the class of media asset change request.
*
* @relation class MediaAssetChangeRequest implements MediaChangeRequest
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class MediaAssetChangeRequest <: RemoteDataLite & MediaChangeRequest {
    /**
    * Constructor used to initialize an asset change request.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation constructor(asset: PhotoAsset)
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public init(asset: PhotoAsset)
    
    /**
    * Creates an image asset change request.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900002 - The file corresponding to the URI is not in the app sandbox.
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation static createImageAssetRequest(context: Context, fileUri: string): MediaAssetChangeRequest
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public static func createImageAssetRequest(context: UIAbilityContext, fileUri: String): MediaAssetChangeRequest
    
    /**
    * Creates a video asset change request.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900002 - The file corresponding to the URI is not in the app sandbox.
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation static createVideoAssetRequest(context: Context, fileUri: string): MediaAssetChangeRequest
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public static func createVideoAssetRequest(context: UIAbilityContext, fileUri: String): MediaAssetChangeRequest
    
    /**
    * Create an asset change request based on the file type and filename extension.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation static createAssetRequest(context: Context, photoType: PhotoType, extension: string, options?: CreateOptions): MediaAssetChangeRequest
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public static func createAssetRequest(context: UIAbilityContext, photoType: PhotoType, extension: String,
        options!: CreateOptions = CreateOptions(title: "", subtype: Default)): MediaAssetChangeRequest
    
    /**
    * Deletes media assets. This API uses a promise to return the result. The deleted assets are moved to the trash.
    *
    * @throws { BusinessException } 201 - Permission denied
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation static deleteAssets(context: Context, assets: Array<PhotoAsset>): Promise<void>
    */
    @!APILevel[
        21,
        permission: "ohos.permission.WRITE_IMAGEVIDEO",
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public static func deleteAssets(context: UIAbilityContext, assets: Array<PhotoAsset>): Unit
    
    /**
    * Deletes media assets. This API uses a promise to return the result. The deleted assets are moved to the trash.
    *
    * @throws { BusinessException } 201 - Permission denied
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000002 - The uri format is incorrect or does not exist.
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation static deleteAssets(context: Context, uriList: Array<string>): Promise<void>
    */
    @!APILevel[
        21,
        permission: "ohos.permission.WRITE_IMAGEVIDEO",
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public static func deleteAssets(context: UIAbilityContext, assets: Array<String>): Unit
    
    /**
    * Obtains the asset in this asset change request.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getAsset(): PhotoAsset
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getAsset(): PhotoAsset
    
    /**
    * Sets the media asset title.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation setTitle(title: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func setTitle(title: String): Unit
    
    /**
    * Obtains the handler used for writing a file to cache.
    *
    * @throws { BusinessException } 201 - Permission denied
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 14000011 - System inner fail
    * @throws { BusinessException } 14000016 - Operation Not Support
    * @relation getWriteCacheHandler(): Promise<number>
    */
    @!APILevel[
        21,
        permission: "ohos.permission.WRITE_IMAGEVIDEO",
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getWriteCacheHandler(): Int32
    
    /**
    * Adds a resource using fileUri.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900002 - The file corresponding to the URI is not in the app sandbox.
    * @throws { BusinessException } 14000011 - System inner fail
    * @throws { BusinessException } 14000016 - Operation Not Support
    * @relation addResource(type: ResourceType, fileUri: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func addResource(resourceType: ResourceType, fileUri: String): Unit
    
    /**
    * Adds a resource using ArrayBuffer data.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @throws { BusinessException } 14000016 - Operation Not Support
    * @relation addResource(type: ResourceType, data: ArrayBuffer): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func addResource(resourceType: ResourceType, data: Array<Byte>): Unit
    
    /**
    * Saves the photo taken by the camera.
    *
    * @throws { BusinessException } 14000011 - System inner fail
    * @throws { BusinessException } 14000016 - Operation Not Support
    * @relation saveCameraPhoto(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func saveCameraPhoto(): Unit
    
    /**
    * Discards the photo taken by the camera.
    *
    * @throws { BusinessException } 14000011 - Internal system error
    * @throws { BusinessException } 14000016 - Operation Not Support
    * @relation discardCameraPhoto(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func discardCameraPhoto(): Unit
}


/**
* Returns an instance of PhotoAccessHelper
*
* @throws { BusinessException } 13900020 - Invalid argument
* @relation function getPhotoAccessHelper(context: Context): PhotoAccessHelper
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public func getPhotoAccessHelper(context: UIAbilityContext): PhotoAccessHelper


/**
* Helper functions to access photos and albums.
*
* @relation interface PhotoAccessHelper
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class PhotoAccessHelper <: RemoteDataLite {
    /**
    * Release PhotoAccessHelper instance
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation release(): Promise<void>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func release(): Unit
    
    /**
    * Fetch photo assets
    *
    * @throws { BusinessException } 201 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getAssets(options: FetchOptions): Promise<FetchResult<PhotoAsset>>;
    */
    @!APILevel[
        21,
        permission: "ohos.READ_IMAGEVIDEO",
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getAssets(options: FetchOptions): PhotoAssetResult
    
    /**
    * Fetch a group of burst assets
    *
    * @throws { BusinessException } 201 - Permission denied
    * @throws { BusinessException } 14000011 - Internal system error
    * @relation getBurstAssets(burstKey: string, options: FetchOptions): Promise<FetchResult<PhotoAsset>>;
    */
    @!APILevel[
        21,
        permission: "ohos.READ_IMAGEVIDEO",
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getBurstAssets(burstKey: String, options: FetchOptions): PhotoAssetResult
    
    /**
    * Obtains albums based on the specified options and album type.
    * Before the operation, ensure that the albums to obtain exist.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 201 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation getAlbums(type: AlbumType, subtype: AlbumSubtype, options?: FetchOptions): Promise<FetchResult<Album>>;
    */
    @!APILevel[
        21,
        permission: "ohos.READ_IMAGEVIDEO",
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getAlbums(albumType: AlbumType, subtype: AlbumSubtype,
        options!: FetchOptions = FetchOptions(["uri", "album_name"], DataSharePredicates())): AlbumResult
    
    /**
    * Registers listening for the specified URI. This API uses a callback to return the result.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @relation registerChange(uri: string, forChildUris: boolean, callback: Callback<ChangeData>): void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func registerChange(uri: String, forChildUris: Bool, callback: Callback1Argument<ChangeData>): Unit
    
    /**
    * Unregisters listening for the specified URI. Multiple callbacks can be registered for a URI for listening.
    * You can use this API to unregister the listening of the specified callbacks or all callbacks.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @relation unRegisterChange(uri: string, callback?: Callback<ChangeData>): void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func unRegisterChange(uri: String, callback!: ?Callback1Argument<ChangeData> = None): Unit
    
    /**
    * Create a save dialog to save photos
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - Internal system error
    * @relation showAssetsCreationDialog(srcFileUris: Array<string>, photoCreationConfigs: Array<PhotoCreationConfig>): Promise<Array<string>>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func showAssetsCreationDialog(srcFileUris: Array<String>, photoCreationConfigs: Array<PhotoCreationConfig>,
        callback: Callback1Argument<Array<String>>): Unit
    
    /**
    * Applies media changes.
    *
    * @throws { BusinessException } 201 - Permission denied
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @relation applyChanges(mediaChangeRequest: MediaChangeRequest): Promise<void>;
    */
    @!APILevel[
        21,
        permission: "ohos.WRITE_IMAGEVIDEO",
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func applyChanges(mediaChangeRequest: MediaChangeRequest): Unit
}


/**
* Enumerate the album subtypes.
*
* @relation enum AlbumSubtype
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum AlbumSubtype {
    /**
    * Generic user-created albums.
    *
    * @relation USER_GENERIC = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    UserGeneric |
    /**
    * Favorite album, which assets are marked as favorite.
    *
    * @relation FAVORITE = 1025
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Favorite |
    /**
    * Video album, which contains all video assets.
    *
    * @relation VIDEO
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Video |
    /**
    * Image album
    *
    * @relation IMAGE = 1031
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Image |
    /**
    * Any album
    *
    * @relation ANY = 2147483647
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    AnyAlbum |
    ...
}



/**
* Enumerates the album types.
*
* @relation enum AlbumType
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum AlbumType {
    /**
    * User album.
    *
    * @relation USER = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    User |
    /**
    * System album.
    *
    * @relation SYSTEM = 1024
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    System |
    ...
}



/**
* Defines the options for fetching media files.
*
* @relation interface FetchOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class FetchOptions {
    /**
    * Indicates the members to query.
    *
    * @relation fetchColumns: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var fetchColumns: Array<String>
    
    /**
    * Predicates that specify the fetch criteria.
    *
    * @relation predicates: dataSharePredicates.DataSharePredicates;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var predicates: DataSharePredicates
    
    /**
    * Create fetchOptions instance.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public init(fetchColumns: Array<String>, predicates: DataSharePredicates)
}


/**
* Enumerates the PhotoAsset types.
*
* @relation enum PhotoSubtype
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum PhotoSubtype {
    /**
    * Default Photo Type
    *
    * @relation DEFAULT = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Default |
    /**
    * Moving Photo Type
    *
    * @relation MOVING_PHOTO = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    MovingPhoto |
    /**
    * Burst Photo Type
    *
    * @relation BURST = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Burst |
    ...
}



/**
* Enumerates the asset delivery modes.
*
* @relation enum DeliveryMode
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum DeliveryMode {
    /**
    * Fast mode.
    *
    * @relation FAST_MODE = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    FastMode |
    /**
    * High-quality mode.
    *
    * @relation HIGH_QUALITY_MODE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    HighQualityMode |
    /**
    * Balance mode.
    *
    * @relation BALANCE_MODE = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    BalanceMode |
    ...
}



/**
* PhotoViewMIMETypes represents the type of media resource that photo picker selects.
*
* @relation export enum PhotoViewMIMETypes
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum PhotoViewMIMETypes {
    /**
    * IMAGE_TYPE indicates that the selected media resources are images.
    *
    * @relation IMAGE_TYPE = 'image/\*'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    ImageType |
    /**
    * VIDEO_TYPE indicates that the selected media resources are videos.
    *
    * @relation VIDEO_TYPE = 'video/\*'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    VideoType |
    /**
    * IMAGE_VIDEO_TYPE indicates that the selected media resources are images and videos.
    *
    * @relation IMAGE_VIDEO_TYPE = '*\/\*',
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    ImageVideoType |
    /**
    * MOVING_PHOTO_IMAGE_TYPE indicates that the selected media resources are moving photos.
    *
    * @relation MOVING_PHOTO_IMAGE_TYPE = 'image/movingPhoto'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    MovingPhotoImageType |
    ...
}



/**
* Enumerates the types of recommended images.
*
* @relation enum RecommendationType
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum RecommendationType {
    /**
    * QR_OR_BAR_CODE indicates that QR code or barcode photos can be recommended
    *
    * @relation QR_OR_BAR_CODE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    QrOrBarCode |
    /**
    * QR_CODE indicates that QR code photos can be recommended
    *
    * @relation QR_CODE = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    QrCode |
    /**
    * BAR_CODE indicates that barcode photos can be recommended
    *
    * @relation BAR_CODE = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    BarCode |
    /**
    * ID_CARD indicates that QR code or barcode photos can be recommended
    *
    * @relation ID_CARD = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    IdCard |
    /**
    * PROFILE_PICTURE indicates that profile picture photos can be recommended
    *
    * @relation PROFILE_PICTURE = 5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    ProfilePicture |
    /**
    * PASSPORT indicates that passport photos can be recommended
    *
    * @relation PASSPORT = 6
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    PassPort |
    /**
    * BANK_CARD indicates that bank card photos can be recommended
    *
    * @relation BANK_CARD = 7
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    BankCard |
    /**
    * DRIVER_LICENSE indicates that driver license photos can be recommended
    *
    * @relation DRIVER_LICENSE = 8
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DriverLicense |
    /**
    * DRIVING_LICENSE indicates that driving license photos can be recommended
    *
    * @relation DRIVING_LICENSE = 9
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DrivingLicense |
    /**
    * FEATURED_SINGLE_PORTRAIT indicates that featured single portrait photos can be recommended
    *
    * @relation FEATURED_SINGLE_PORTRAIT = 10
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    FeaturedSinglePortrait |
    ...
}



/**
* Enumerates the formats for displaying media assets.
*
* @relation enum DynamicRangeType
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum DynamicRangeType {
    /**
    * Standard dynamic range (SDR).
    *
    * @relation SDR = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Sdr |
    /**
    * High dynamic range (HDR).
    *
    * @relation HDR = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Hdr |
    ...
}



/**
* Enumerates the types of the resources to write.
*
* @relation enum ResourceType
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum ResourceType {
    /**
    * Image resource
    *
    * @relation IMAGE_RESOURCE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    ImageResource |
    /**
    * Video resource
    *
    * @relation VIDEO_RESOURCE = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    VideoResource |
    ...
}



/**
* Config to create photo asset
*
* @relation interface PhotoCreationConfig
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class PhotoCreationConfig {
    /**
    * Extension of the asset
    *
    * @relation fileNameExtension: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var fileNameExtension: String
    
    /**
    * Specify photo type of the asset to create, include image or video
    *
    * @relation photoType: PhotoType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var photoType: PhotoType
    
    /**
    * Title of the asset
    *
    * @relation title?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var title: String
    
    /**
    * Specify photo subtype of the asset to create, include default or moving_photo
    *
    * @relation subtype?: PhotoSubtype
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var subtype: PhotoSubtype
    
    /**
    * Create PhotoCreationConfig instance
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public init(fileNameExtension: String, photoType: PhotoType, title!: String = "", subtype!: PhotoSubtype = Default)
}


/**
* Enumeration types of data change.
*
* @relation enum NotifyType
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum NotifyType {
    /**
    * Data(assets or albums) have been newly created
    *
    * @relation NOTIFY_ADD
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    NotifyAdd |
    /**
    * Data(assets or albums) have been modified
    *
    * @relation NOTIFY_UPDATE
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    NotifyUpdate |
    /**
    * Data(assets or albums) have been removed
    *
    * @relation NOTIFY_REMOVE
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    NotifyRemove |
    /**
    * Assets have been added to an album.
    *
    * @relation NOTIFY_ALBUM_ADD_ASSET
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    NotifyAlbumAddAsset |
    /**
    * Assets have been removed from an album.
    *
    * @relation NOTIFY_ALBUM_REMOVE_ASSET
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    NotifyAlbumRemoveAsset |
    ...
}



/**
* Defines the change data
*
* @relation interface ChangeData
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class ChangeData {
    /**
    * The NotifyType of ChangeData
    *
    * @relation type: NotifyType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var notifyType: NotifyType
    
    /**
    * The changed uris
    *
    * @relation uris: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var uris: Array<String>
    
    /**
    * Change details of the asset uris to an album.
    *
    * @relation extraUris: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var extraUris: Array<String>
}


/**
* Options for creating an image or video asset.
*
* @relation interface CreateOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class CreateOptions {
    /**
    * Title of the asset
    *
    * @relation title?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var title: String = ""
    
    /**
    * Specify subtype of the asset to create
    *
    * @relation subtype?: PhotoSubtype
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var subtype: PhotoSubtype
    
    /**
    * Create CreateOptions instance
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public init(title!: String = "", subtype!: PhotoSubtype = Default)
}


/**
* Options to request media asset
*
* @relation interface RequestOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class RequestOptions {
    /**
    * Indicates the delivery mode
    *
    * @relation deliveryMode: DeliveryMode
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var deliveryMode: DeliveryMode
}


/**
* Enumeration of photo asset members
*
* @relation enum PhotoKeys
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum PhotoKeys <: ToString {
    /**
    * Asset uri, read only
    *
    * @relation URI = 'uri'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Uri |
    /**
    * Photo type of the asset, read only
    *
    * @relation PHOTO_TYPE = 'media_type'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    PhotoType |
    /**
    * Asset name, read only
    *
    * @relation DISPLAY_NAME = 'display_name'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DisplayName |
    /**
    * Size of the asset, read only
    *
    * @relation SIZE = 'size'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Size |
    /**
    * Creation date of the asset, read only
    *
    * @relation DATE_ADDED = 'date_added'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DateAdded |
    /**
    * Modified date of the asset, read only
    *
    * @relation DATE_MODIFIED = 'date_modified'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DateModified |
    /**
    * Duration of video files, read only
    *
    * @relation DURATION = 'duration'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Duration |
    /**
    * Width of the image asset, read only
    *
    * @relation WIDTH = 'width'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Width |
    /**
    * Height of the image asset, read only
    *
    * @relation HEIGHT = 'height'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Height |
    /**
    * Date taken of the asset, read only
    *
    * @relation DATE_TAKEN = 'date_taken'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DateTaken |
    /**
    * Orientation of the image asset, read only
    *
    * @relation ORIENTATION = 'orientation'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Orientation |
    /**
    * Favorite state of the asset, read only
    *
    * @relation FAVORITE = 'is_favorite'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Favorite |
    /**
    * Title of the asset
    *
    * @relation TITLE = 'title'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Title |
    /**
    * Creation time of the asset in milliseconds, read only
    *
    * @relation DATE_ADDED_MS = 'date_added_ms',
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DateAddedMs |
    /**
    * Modified time of the asset in milliseconds, read only
    *
    * @relation DATE_MODIFIED_MS = 'date_modified_ms'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DateModifiedMs |
    /**
    * Photo subtype of the asset, read only
    *
    * @relation PHOTO_SUBTYPE = 'subtype'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    PhotoSubtype |
    /**
    * Dynamic range type of the asset, read only
    *
    * @relation DYNAMIC_RANGE_TYPE = 'dynamic_range_type'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DynamicRangeType |
    /**
    * Cover position of the asset, read only
    *
    * @relation COVER_POSITION = 'cover_position'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    CoverPosition |
    /**
    * Unique uuid of the burst photos, read only
    *
    * @relation BURST_KEY = 'burst_key'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    BurstKey |
    /**
    * Width and height information of lcd picture, read only
    *
    * @relation LCD_SIZE = 'lcd_size'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    LcdSize |
    /**
    * Width and height information of thumbnail picture, read only
    *
    * @relation THM_SIZE = 'thm_size'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    ThmSize |
    ...
    /**
    * Obtaining the string value of enum
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}



/**
* Enumeration uris for registerChange.
*
* @relation enum DefaultChangeUri
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum DefaultChangeUri <: ToString {
    /**
    * Uri for default PhotoAsset, use with forDescendant{true}, will receive all PhotoAsset's change notifications
    *
    * @relation DEFAULT_PHOTO_URI = 'file://media/Photo'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DefaultPhotoUri |
    /**
    * Uri for default Album, use with forDescendant{true}, will receive all Album's change notifications
    *
    * @relation DEFAULT_ALBUM_URI = 'file://media/PhotoAlbum'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DefaultAlbumUri |
    ...
    /**
    * Obtaining the string value of enum
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}



/**
* Enumerates the key album attributes.
*
* @relation enum AlbumKeys
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum AlbumKeys <: ToString {
    /**
    * URI of the album.
    *
    * @relation URI = 'uri'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Uri |
    /**
    * Name of the album.
    *
    * @relation ALBUM_NAME = 'album_name',
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    AlbumName |
    ...
    /**
    * Obtaining the string value of enum
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
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
    Int64Value(Int64) |
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
    StringValue(String) |
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


