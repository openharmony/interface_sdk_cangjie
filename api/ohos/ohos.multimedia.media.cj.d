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

package ohos.multimedia.media
import ohos.ffi.*
import ohos.business_exception.*
import ohos.multimedia.image.PixelMap
import ohos.labels.*

import ohos.hilog.HilogChannel
import ohos.labels.APILevel
import std.deriving.Derive
import std.collection.*

/**
* Creates an **AVImageGenerator** instance. The API can be used to obtain a video thumbnail.
*
* @returns { AVImageGenerator } 
* If the operation is successful, an **AVImageGenerator** instance is returned; otherwise, **null** is returned.
* @throws { BusinessException } 5400101 - No memory.
* @throws { IllegalArgumentException } - Invalid object.
* @relation function createAVImageGenerator(): Promise<AVImageGenerator>
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
]
public func createAVImageGenerator(): AVImageGenerator


/**
* Provides APIs to obtain a thumbnail from a video. Before calling any API of **AVImageGenerator**,
* you must use [createAVImageGenerator()]{@link #createAVImageGenerator} to create an **AVImageGenerator** instance.
*
* @relation interface AVImageGenerator
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
]
public class AVImageGenerator <: RemoteDataLite {
    /**
    * Media file descriptor, which specifies the data source.
    *
    * @relation fdSrc ?: AVFileDescriptor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    public mut prop fdSrc: AVFileDescriptor
    
    /**
    * Obtains a video thumbnail. This API uses a promise to return the result.
    *
    * @param { Int64 } timeUs - Time of the video for which a thumbnail is to be obtained, in μs.
    * @param { AVImageQueryOptions } option - Relationship between the time passed in and the video frame.
    * @param { PixelMapParams } param - Format parameters of the thumbnail to be obtained.
    * @returns { PixelMap } Promise used to return the video thumbnail.
    * @throws { BusinessException } 5400101 - No memory. Create AVImageGenerator failed.
    * @relation fetchFrameByTime(timeUs: number, options: AVImageQueryOptions, param: PixelMapParams): Promise<image.PixelMap>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    public func fetchFrameByTime(timeUs: Int64, options: AVImageQueryOptions, param: PixelMapParams): PixelMap
    
    /**
    * Releases this **AVImageGenerator** instance. 
    * 
    * @throws { BusinessException } 5400102 - Operation not allowed.
    * @relation release(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    public func release(): Unit
}


/**
* Media file descriptor. The caller needs to ensure that the fd is valid and
* the offset and length are correct.
*
* @relation interface AVFileDescriptor
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Media.Core"
]
public class AVFileDescriptor {
    /**
    * The file descriptor of audio or video source from file system. The caller
    * is responsible to close the file descriptor.
    *
    * @relation fd: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    public var fd: Int32
    
    /**
    * The offset into the file where the data to be read, in bytes. By default,
    * the offset is zero.
    *
    * @relation offset?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    public var offset: Int64
    
    /**
    * The length in bytes of the data to be read. By default, the length is the
    * rest of bytes in the file from the offset.
    *
    * @relation length?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    public var length: Int64
    
    /**
    * AVFileDescriptor constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    public init(
        fd: Int32,
        offset!: Int64 = 0,
        length!: Int64 = -1
    )
}


/**
* Defines the format parameters of the video thumbnail to be obtained.
*
* @relation interface PixelMapParams
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
]
public class PixelMapParams {
    /**
    * Width of the thumbnail. The value must be greater than 0 and less than or equal to the width of the original
    * video. Otherwise, the returned thumbnail will not be scaled.
    *
    * @relation width?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    public var width: Int32
    
    /**
    * Height of the thumbnail. The value must be greater than 0 and less than or equal to the height of the original
    * video. Otherwise, the returned thumbnail will not be scaled.
    *
    * @relation height?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    public var height: Int32
    
    /**
    * PixelMapParams constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    public init(width!: Int32 = -1, height!: Int32 = -1)
}


/**
* Enumerates the relationship between the video frame and the time at which the video thumbnail is obtained.
*
* @relation enum AVImageQueryOptions
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
]
public enum AVImageQueryOptions {
    /**
    * The key frame at or next to the specified time is selected.
    *
    * @relation AV_IMAGE_QUERY_NEXT_SYNC = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    AvImageQueryNextSync |
    /**
    * The key frame at or prior to the specified time is selected.
    *
    * @relation AV_IMAGE_QUERY_PREVIOUS_SYNC = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    AvImageQueryPreviousSync |
    /**
    * The key frame closest to the specified time is selected.
    *
    * @relation AV_IMAGE_QUERY_CLOSEST_SYNC = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    AvImageQueryClosestSync |
    /**
    * The frame (not necessarily a key frame) closest to the specified time is selected.
    *
    * @relation AV_IMAGE_QUERY_CLOSEST = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    AvImageQueryClosest |
    ...
}



