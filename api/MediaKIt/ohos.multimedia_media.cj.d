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

package ohos.multimedia_media
import ohos.ffi.*
import ohos.base.*
import ohos.image.PixelMap
import ohos.labels.*

import ohos.hilog.HilogChannel
import std.deriving.*
import std.collection.*
import ohos.labels.APILevel

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
]
public func createAVImageGenerator(): AVImageGenerator


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
]
public class AVImageGenerator <: RemoteDataLite {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    public mut prop fdSrc: AVFileDescriptor
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    public func fetchFrameByTime(timeUs: Int64, option: AVImageQueryOptions, param: PixelMapParams): PixelMap
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    public func release(): Unit
}


public type MediaDescription = HashMap<String, ValueType>

public type PlaybackInfo = HashMap<PlaybackInfoKey, ValueType>

/**
* Media file descriptor. The caller needs to ensure that the fd is valid and
* the offset and length are correct.
*
* @typedef AVFileDescriptor
* @syscap SystemCapability.Multimedia.Media.Core
* @crossplatform
* @atomicservice
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Media.Core"
]
public class AVFileDescriptor {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    public AVFileDescriptor(
        /**
         * The file descriptor of audio or video source from file system. The caller
         * is responsible to close the file descriptor.
         * @type { Int32 }
         * @syscap SystemCapability.Multimedia.Media.Core
         * @crossplatform
         * @atomicservice
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Multimedia.Media.Core"
        ]
        public var fd: Int32,
        /**
         * The offset into the file where the data to be read, in bytes. By default,
         * the offset is zero.
         * @type { ?Int64 }
         * @syscap SystemCapability.Multimedia.Media.Core
         * @crossplatform
         * @atomicservice
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Multimedia.Media.Core"
        ]
        public var offset: ?Int64,
        /**
         * The length in bytes of the data to be read. By default, the length is the
         * rest of bytes in the file from the offset.
         * @type { ?Int64 }
         * @syscap SystemCapability.Multimedia.Media.Core
         * @crossplatform
         * @atomicservice
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Multimedia.Media.Core"
        ]
        public var length: ?Int64
    )
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    public init(fd: Int32)
}


/**
* Enumerates statistics info keys for player.
*
* @enum { string }
* @syscap SystemCapability.Multimedia.Media.Core
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Media.Core"
]
public enum PlaybackInfoKey <: ToString & Hashable {
    /**
    * IP address of current network stream.
    * @syscap SystemCapability.Multimedia.Media.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    SERVER_IP_ADDRESS |
    /**
    * Average download rate during playing except for suspend downloading.
    * @syscap SystemCapability.Multimedia.Media.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    AVG_DOWNLOAD_RATE |
    /**
    * Current download rate of the last second except for suspend downloading.
    * @syscap SystemCapability.Multimedia.Media.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    DOWNLOAD_RATE |
    /**
    * Boolean value, true for current is downloading, false for suspend downloading.
    * @syscap SystemCapability.Multimedia.Media.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    IS_DOWNLOADING |
    /**
    * Cached duration in milliseconds.
    * @syscap SystemCapability.Multimedia.Media.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    BUFFER_DURATION |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    public func toString(): String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    public func hashCode(): Int64
}



@!APILevel[
    21,
    stagemodelonly: true
]
public enum ValueType {
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    INT(Int32) |
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    INT64(Int64) |
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    DOUBLE(Float64) |
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    STRING(String) |
    ...
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
]
public class PixelMapParams {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    public PixelMapParams(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
        ]
        public var width: Int32,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
        ]
        public var height: Int32
    )
}


@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
]
public enum AVImageQueryOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    AV_IMAGE_QUERY_NEXT_SYNC |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    AV_IMAGE_QUERY_PREVIOUS_SYNC |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    AV_IMAGE_QUERY_CLOSEST_SYNC |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    AV_IMAGE_QUERY_CLOSEST |
    ...
}



