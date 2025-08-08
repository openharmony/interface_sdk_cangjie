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

package ohos.multimedia.photo_accesshelper
import ohos.labels.*
import ohos.ffi.*
import ohos.base.*
import ohos.multimedia.fetchdata.*

import ohos.ability.*
import ohos.bundle_manager.{BundleManager, BundleInfo, BundleFlag}
import ohos.hilog.*
import std.sync.*
import std.collection.*
import ohos.resource_manager.ResourceManager
import ohos.image.*
import ohos.data_share_predicates.*
import std.deriving.*

/**
* Defines the album.
*
* @interface Album
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @crossplatform
*/
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class Album <: RemoteDataLite {
    /**
    * Album type
    *
    * @type { AlbumType }
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop albumType: AlbumType
    
    /**
    * Album subtype
    *
    * @type { AlbumSubtype }
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop albumSubtype: AlbumSubtype
    
    /**
    * Album name.
    *
    * @type { string }
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public mut prop albumName: String
    
    /**
    * Album uri.
    *
    * @type { string }
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop albumUri: String
    
    /**
    * Cover uri for the album
    *
    * @type { string }
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop coverUri: String
    
    /**
    * Number of assets in the album
    *
    * @type { number }
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop count: Int32
    
    /**
    * Number of image assets in the album
    *
    * @type { ?number }
    * @readonly
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    * @since 12
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop imageCount: Int32
    
    /**
    * Number of video assets in the album
    *
    * @type { ?number }
    * @readonly
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop videoCount: Int32
    
    /**
    * Fetch assets in an album.
    *
    * @permission ohos.permission.READ_IMAGEVIDEO
    * @param { FetchOptions } options - Fetch options.
    * @returns { Promise<FetchResult<PhotoAsset>> } Returns the fetch result
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getAssets(options: FetchOptions): FetchResult<PhotoAsset>
    
    /**
    * Modify metadata for the album
    *
    * @permission ohos.permission.WRITE_IMAGEVIDEO
    * @returns { Promise<void> } Returns void
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func commitModify(): Unit
}


@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
extend Album <: FetchData<Album> {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public static func create(id: Int64): Album
}


/**
* The fetch result of assets or albums
*
* @interface FetchResult
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @crossplatform
*/
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class FetchResult<T> <: RemoteDataLite where T <: RemoteDataLite & FetchData<T> {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func close(): Unit
    
    /**
    * Obtains the total number of objects in the fetch result.
    *
    * @returns { Int32 } Total number of objects.
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getCount(): Int32
    
    /**
    * Checks whether the result set points to the last row.
    * You need to check whether the object is the last one before calling getNextObject.
    *
    * @returns { Bool } Whether the object is the last one in the fetch result.
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func isAfterLast(): Bool
    
    /**
    * Obtains the first object in the fetch result.
    *
    * @returns { Promise<T> } Returns the first object in the fetch result.
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getFirstObject(): T
    
    /**
    * Obtains the next object in the fetch result.
    * Before calling this method, you must use isAfterLast() to check whether the current position is the last row
    * in the fetch result. This method only works when the current position is not the last row.
    *
    * @returns { Promise<T> } Returns the next object
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getNextObject(): T
    
    /**
    * Obtains the last object in the fetch result
    *
    * @returns { Promise<T> } Returns the last object
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getLastObject(): T
    
    /**
    * Obtains the object with the specified index in the fetch result.
    *
    * @param { number } index - Index of the asset to obtain.
    * @returns { Promise<T> } Returns the object
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getObjectByPosition(position: Int32): T
    
    /**
    * Obtains all objects in the fetch result.
    *
    * @returns { Promise<Array<T>> } Returns all the objects
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getAllObjects(): Array<T>
}


/**
* Defines the class of media album change request.
*
* @implements MediaChangeRequest
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
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
    public init(album: Album)
    
    /**
    * Get the album.
    *
    * @returns { Album } - Returns the album
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getAlbum(): ?Album
    
    /**
    * Set name of the album.
    *
    * @param { string } name - the new name to set
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func setAlbumName(name: String): Unit
    
    /**
    * Add assets into the album.
    *
    * @param { Array<PhotoAsset> } assets - the assets to add
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @throws { BusinessException } 14000016 - Operation Not Support
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func addAssets(assets: Array<PhotoAsset>): Unit
    
    /**
    * Remove assets from the album.
    *
    * @param { Array<PhotoAsset> } assets - the assets to be removed
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @throws { BusinessException } 14000016 - Operation Not Support
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func removeAssets(assets: Array<PhotoAsset>): Unit
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public interface MediaChangeRequest {
}


/**
* Defines the class of media asset change request.
*
* @implements MediaChangeRequest
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @atomicservice
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class MediaAssetChangeRequest <: RemoteDataLite & MediaChangeRequest {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public init(asset: PhotoAsset)
    
    /**
    * Create image asset change request.
    *
    * @param { Context } context - Hap context information
    * @param { string } fileUri - File uri
    * @returns { MediaAssetChangeRequest } - Returns a MediaAssetChangeRequest instance
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900002 - No such file
    * @throws { BusinessException } 14000011 - System inner fail
    * @static
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @atomicservice
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public static func createImageAssetRequest(context: UIAbilityContext, fileUri: String): MediaAssetChangeRequest
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public static func createVideoAssetRequest(context: UIAbilityContext, fileUri: String): MediaAssetChangeRequest
    
    /**
    * Create asset change request.
    *
    * @param { Context } context - Hap context information
    * @param { string } displayName - Asset name
    * @param { PhotoCreateOptions } [options] - Optional photo create option
    * @returns { MediaAssetChangeRequest } - Returns a MediaAssetChangeRequest instance
    * @throws { BusinessException } 202 - Called by non-system application
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000001 - Invalid display name
    * @throws { BusinessException } 14000011 - System inner fail
    * @static
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @systemapi
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public static func createAssetRequest(context: UIAbilityContext, photoType: PhotoType, extension: String,
        options!: CreateOptions = CreateOptions()): MediaAssetChangeRequest
    
    /**
    * Delete assets.
    *
    * @permission ohos.permission.WRITE_IMAGEVIDEO
    * @param { Context } context - Hap context information
    * @param { Array<PhotoAsset> } assets - Assets to delete
    * @returns { Promise<void> } - Returns void
    * @throws { BusinessException } 201 - Permission denied
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @static
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    */
    @!APILevel[
        21,
        permission: "ohos.WRITE_IMAGEVIDEO",
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public static func deleteAssets(context: UIAbilityContext, assets: Array<PhotoAsset>): Unit
    
    /**
    * Delete assets.
    *
    * @permission ohos.permission.WRITE_IMAGEVIDEO
    * @param { Context } context - Hap context information
    * @param { Array<string> } uriList - Uris of assets to delete
    * @returns { Promise<void> } - Returns void
    * @throws { BusinessException } 201 - Permission denied
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000002 - Invalid asset uri
    * @throws { BusinessException } 14000011 - System inner fail
    * @static
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    */
    @!APILevel[
        21,
        permission: "ohos.WRITE_IMAGEVIDEO",
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public static func deleteAssets(context: UIAbilityContext, assets: Array<String>): Unit
    
    /**
    * Get the asset.
    *
    * @returns { PhotoAsset } - Returns the asset
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @atomicservice
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getAsset(): ?PhotoAsset
    
    /**
    * Set title of the asset.
    *
    * @param { string } title - the new title of the asset
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @atomicservice
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func setTitle(title: String): Unit
    
    /**
    * Get write cache handler.
    *
    * @permission ohos.permission.WRITE_IMAGEVIDEO
    * @returns { Promise<number> } Returns the write cache handler
    * @throws { BusinessException } 201 - Permission denied
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 14000011 - System inner fail
    * @throws { BusinessException } 14000016 - Operation Not Support
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    */
    @!APILevel[
        21,
        permission: "ohos.WRITE_IMAGEVIDEO",
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getWriteCacheHandler(): Int32
    
    /**
    * Add resource of the asset using file uri.
    *
    * @param { ResourceType } type - Resource type
    * @param { string } fileUri - File uri
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900002 - No such file
    * @throws { BusinessException } 14000011 - System inner fail
    * @throws { BusinessException } 14000016 - Operation Not Support
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @atomicservice
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func addResource(resourceType: ResourceType, fileUri: String): Unit
    
    /**
    * Add resource of the asset using ArrayBuffer.
    *
    * @param { ResourceType } type - Resource type
    * @param { ArrayBuffer } data - Data buffer to add
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @throws { BusinessException } 14000016 - Operation Not Support
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @atomicservice
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func addResource(resourceType: ResourceType, data: Array<Byte>): Unit
    
    /**
    * Save the photo asset captured by camera.
    *
    * @throws { BusinessException } 14000011 - System inner fail
    * @throws { BusinessException } 14000016 - Operation Not Support
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func saveCameraPhoto(): Unit
    
    /**
    * Discard the photo asset captured by camera.
    *
    * @throws { BusinessException } 14000011 - Internal system error
    * @throws { BusinessException } 14000016 - Operation Not Support
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func discardCameraPhoto(): Unit
}


/**
* Helper functions to access photos and albums.
*
* @interface PhotoAccessHelper
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @crossplatform
* @atomicservice
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class PhotoAccessHelper <: RemoteDataLite {
    /**
    * Release PhotoAccessHelper instance
    *
    * @returns { Promise<void> } Returns void
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
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
    * @permission ohos.permission.READ_IMAGEVIDEO
    * @param { FetchOptions } options - Retrieval options.
    * @returns { Promise<FetchResult<PhotoAsset>> } Returns the fetch result.
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getAssets(options: FetchOptions): FetchResult<PhotoAsset>
    
    /**
    * Fetch a group of burst assets
    *
    * @permission ohos.permission.READ_IMAGEVIDEO
    * @param { string } burstKey - Burst asset uuid
    * @param { FetchOptions } options - Retrieval options.
    * @returns { Promise<FetchResult<PhotoAsset>> } Returns the fetch result.
    * @throws { BusinessException } 201 - Permission denied
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - Internal system error
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getBurstAssets(burstKey: String, options: FetchOptions): FetchResult<PhotoAsset>
    
    /**
    * Fetch albums.
    *
    * @permission ohos.permission.READ_IMAGEVIDEO
    * @param { AlbumType } type - Album type.
    * @param { AlbumSubtype } subtype - Album subtype.
    * @param { FetchOptions } [options] - options to fetch albums
    * @returns { Promise<FetchResult<Album>> } - Returns the fetch result
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getAlbums(`type`: AlbumType, subtype: AlbumSubtype, options!: FetchOptions = FetchOptions()): FetchResult<Album>
    
    /**
    * Register change notify for the specified uri.
    *
    * @param { string } uri - PhotoAsset's uri, album's uri or DefaultChangeUri
    * @param { boolean } forChildUris - Monitor the child uris.
    * @param { Callback<ChangeData> } callback - Returns the changed data
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func registerChange(uri: String, forChildUris: Bool, callback: Callback1Argument<ChangeData>): Unit
    
    /**
    * Unregister change notify for the specified uri.
    *
    * @param { string } uri - PhotoAsset's uri, album's uri or DefaultChangeUri
    * @param { Callback<ChangeData> } [callback] - The callback function to unregister.
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
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
    * @param { Array<string> } srcFileUris - List of the file uris to be saved
    * @param { Array<PhotoCreationConfig> } photoCreationConfigs - List of the photo asset creation configs
    * @returns { Promise<Array<string>> } - Returns the media library file uri list to application which has been authorized
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - Internal system error
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @atomicservice
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func showAssetsCreationDialog(srcFileUris: Array<String>, photoCreationConfigs: Array<PhotoCreationConfig>,
        callback: Callback1Argument<Array<String>>): Unit
    
    /**
    * Apply the change request of asset or album.
    *
    * @permission ohos.permission.WRITE_IMAGEVIDEO
    * @param { MediaChangeRequest } mediaChangeRequest - The change request to be applied
    * @returns { Promise<void> } Returns void
    * @throws { BusinessException } 201 - Permission denied
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @atomicservice
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func applyChanges(mediaChangeRequest: MediaChangeRequest): Unit
}


/**
* Indicates the type of photo asset member.
*
* @typedef { number | string | boolean } MemberType
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @crossplatform
*/
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum MemberType {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    INT64(Int64) |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    STRING(String) |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    BOOL(Bool) |
    ...
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getNumber(): Int64
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getString(): String
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getBool(): Bool
}


/**
* Options to fetch assets or albums
*
* @interface FetchOptions
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @crossplatform
*/
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class FetchOptions {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public FetchOptions(
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public var fetchColumns!: Array<String> = [],
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public var predicates!: DataSharePredicates = DataSharePredicates()
    )
}


/**
* Album type.
*
* @enum { number } AlbumType
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @crossplatform
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum AlbumType {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    USER |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    SYSTEM |
    ...
}



/**
* Album subtype
*
* @enum { number } AlbumSubtype
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @crossplatform
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum AlbumSubtype {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    USER_GENERIC |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    FAVORITE |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    VIDEO |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    IMAGE |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    ANY |
    ...
}



/**
* Enumeration of different types of photos
*
* @enum { number } PhotoType
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @crossplatform
* @atomicservice
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum PhotoType {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    IMAGE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    VIDEO |
    ...
}



/**
* Enumeration of different categories of photos
*
* @enum { number } PhotoSubtype
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @atomicservice
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum PhotoSubtype {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DEFAULT |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    MOVING_PHOTO |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    BURST |
    ...
}



/**
* Enumeration of delivery mode.
*
* @enum { number } DeliveryMode
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum DeliveryMode {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    FAST_MODE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    HIGH_QUALITY_MODE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    BALANCE_MODE |
    ...
}



/**
* PhotoViewMIMETypes represents the type of media resource that photo picker selects.
*
* @enum { string } PhotoViewMIMETypes
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @crossplatform
* @atomicservice
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum PhotoViewMIMETypes {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    IMAGE_TYPE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    VIDEO_TYPE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    IMAGE_VIDEO_TYPE |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    MOVING_PHOTO_IMAGE_TYPE |
    ...
}



/**
* Enumeration of different recommendation type
*
* @enum { number } RecommendationType
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @atomicservice
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum RecommendationType {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    QR_OR_BAR_CODE |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    QR_CODE |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    BAR_CODE |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    ID_CARD |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    PROFILE_PICTURE |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    PASSPORT |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    BANK_CARD |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DRIVER_LICENSE |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DRIVING_LICENSE |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    FEATURED_SINGLE_PORTRAIT |
    ...
}



/**
* Enumeration of dynamic range type
*
* @enum { number } DynamicRangeType
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum DynamicRangeType {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    SDR |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    HDR |
    ...
}



/**
* Enumeration of resource type.
*
* @enum { number } ResourceType
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @atomicservice
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum ResourceType {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    IMAGE_RESOURCE |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    VIDEO_RESOURCE |
    ...
}



/**
* Config to create photo asset
*
* @interface PhotoCreationConfig
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @atomicservice
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public struct PhotoCreationConfig {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public PhotoCreationConfig(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public let fileNameExtension: String,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public let photoType: PhotoType,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public let title!: String = "",
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public let subtype!: PhotoSubtype = DEFAULT
    )
}


/**
* Enumeration types of data change.
*
* @enum { number } NotifyType
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum NotifyType {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    NOTIFY_ADD |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    NOTIFY_UPDATE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    NOTIFY_REMOVE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    NOTIFY_ALBUM_ADD_ASSET |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    NOTIFY_ALBUM_REMOVE_ASSET |
    ...
}



/**
* Defines the change data
*
* @interface ChangeData
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class ChangeData {
}


/**
* Options to create a photo asset
*
* @interface CreateOptions
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @atomicservice
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public struct CreateOptions {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public CreateOptions(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public var title!: ?String = None,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public var subtype!: ?PhotoSubtype = None
    )
}


/**
* Options to request media asset
*
* @interface RequestOptions
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class RequestOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public RequestOptions(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public var deliveryMode: DeliveryMode
    )
}


/**
* PhotoSelectResult Object
*
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @crossplatform
* @atomicservice
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public struct PhotoSelectResult {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public PhotoSelectResult(
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public var photoUris: Array<String>,
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public var isOriginalPhoto: Bool
    )
}


/**
* Defines the text context info.
*
* @interface TextContextInfo
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @atomicservice
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public struct TextContextInfo {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public TextContextInfo(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public let text!: String = ""
    )
}


/**
* Options for recommend photos
*
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @atomicservice
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public struct RecommendationOptions {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public RecommendationOptions(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public var recommendationType!: ?RecommendationType = None,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public var textContextInfo!: ?TextContextInfo = None
    )
}


/**
* Class BaseSelectOptions, which is extracted from class PhotoSelectOptions
*
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @crossplatform
* @atomicservice
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public open class BaseSelectOptions {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public BaseSelectOptions(
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public var MIMEType!: PhotoViewMIMETypes = IMAGE_VIDEO_TYPE,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public var maxSelectNumber!: Int32 = 50,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public var isPhotoTakingSupported!: Bool = true,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public var isSearchSupported!: Bool = true,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public var recommendationOptions!: RecommendationOptions = RecommendationOptions(),
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public var preselectedUris!: Array<String> = Array<String>(),
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
        ]
        public var isPreviewForSingleSelectionSupported!: Bool = true
    )
}


/**
* PhotoSelectOptions extends base class BaseSelectOptions
*
* @extends BaseSelectOptions
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @crossplatform
* @atomicservice
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class PhotoSelectOptions <: BaseSelectOptions {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var isEditSupported: Bool = true
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var isOriginalSupported: Bool = false
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var subWindowName: ?String = None
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public init(
        MIMEType!: PhotoViewMIMETypes = IMAGE_VIDEO_TYPE,
        maxSelectNumber!: Int32 = 50,
        isPhotoTakingSupported!: Bool = true,
        isSearchSupported!: Bool = true,
        recommendationOptions!: RecommendationOptions = RecommendationOptions(),
        preselectedUris!: Array<String> = Array<String>(),
        isPreviewForSingleSelectionSupported!: Bool = true,
        isEditSupported!: Bool = true,
        isOriginalSupported!: Bool = false,
        subWindowName!: ?String = None
    )
}


/**
* Enumeration of photo asset members
*
* @enum { string } PhotoKeys
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @crossplatform
*/
@Derive[Equatable]
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum PhotoKeys <: ToString {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    URI |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    PHOTO_TYPE |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DISPLAY_NAME |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    SIZE |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DATE_ADDED |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DATE_MODIFIED |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DURATION |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    WIDTH |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    HEIGHT |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DATE_TAKEN |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    ORIENTATION |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    FAVORITE |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    TITLE |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DATE_ADDED_MS |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DATE_MODIFIED_MS |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    PHOTO_SUBTYPE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DYNAMIC_RANGE_TYPE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    COVER_POSITION |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    BURST_KEY |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    LCD_SIZE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    THM_SIZE |
    ...
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}



/**
* Enumeration uris for registerChange.
*
* @enum { string } DefaultChangeUri
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum DefaultChangeUri <: ToString {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DEFAULT_PHOTO_URI |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DEFAULT_ALBUM_URI |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}



/**
* Enumeration of photo album members.
*
* @enum { string } AlbumKeys
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @crossplatform
*/
@Derive[Equatable]
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum AlbumKeys <: ToString {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    URI |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    ALBUM_NAME |
    ...
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}



/**
* Defines the photo asset
*
* @interface PhotoAsset
* @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
* @crossplatform
* @atomicservice
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class PhotoAsset <: RemoteDataLite {
    /**
    * uri of the asset.
    *
    * @type { string }
    * @readonly
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    * @atomicservice
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop uri: String
    
    /**
    * Photo type, image or video
    *
    * @type { PhotoType }
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop photoType: PhotoType
    
    /**
    * Display name (with a file name extension) of the asset.
    *
    * @type { string }
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop displayName: String
    
    /**
    * Returns the value of the specified member.
    *
    * @param { string } member - Photo asset member. for example : get(PhotoKeys.SIZE.toString())
    * @returns { MemberType } Returns the value of the specified photo asset member
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000014 - Member is not a valid PhotoKey
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func get(member: String): MemberType
    
    /**
    * Set a new value to the specified member
    *
    * @param { string } member - Photo asset member
    * @param { string } data - The new value of the member.
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000014 - Member is not a valid PhotoKey
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @example : set(PhotoKeys.TITLE.toString(), "newTitle"), call commitModify after set
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func set(member: String, data: String): Unit
    
    /**
    * Modify metadata of the asset
    *
    * @permission ohos.permission.WRITE_IMAGEVIDEO
    * @returns { void } Returns void
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000001 - Invalid display name
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    * @atomicservice
    */
    @!APILevel[
        21,
        atomicservice: true,
        permission: "ohos.WRITE_IMAGEVIDEO",
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func commitModify(): Unit
    
    /**
    * Get thumbnail of the asset
    *
    * @permission ohos.permission.READ_IMAGEVIDEO
    * @param { PixelMap } Returns the thumbnail's pixelMap.
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 14000011 - System inner fail
    * @syscap SystemCapability.FileManagement.PhotoAccessHelper.Core
    */
    @!APILevel[
        21,
        permission: "ohos.WRITE_IMAGEVIDEO",
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func getThumbnail(size!: ?Size = None): PixelMap
}


extend PhotoAsset <: FetchData<PhotoAsset> {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public static func create(id: Int64): PhotoAsset
}

