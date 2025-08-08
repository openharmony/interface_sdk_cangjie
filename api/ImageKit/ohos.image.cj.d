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

package ohos.image
import ohos.labels.*
import ohos.color_manager.*
import ohos.ffi.*
import ohos.base.*

import std.deriving.*
import ohos.hilog.*
import std.collection.HashMap
import ohos.resource_manager.RawFileDescriptor

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class ImageInfo {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var size: Size
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var density: Int32
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var stride: Int32
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var pixelFormat: PixelMapFormat
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var alphaType: AlphaType
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var mimeType: String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var isHdr: Bool
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class SourceOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var sourceDensity: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var sourcePixelFormat: PixelMapFormat
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var sourceSize: Size
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(sourceDensity: Int32, sourcePixelFormat!: PixelMapFormat = PixelMapFormat.UNKNOWN, sourceSize!: Size = Size(0, 0))
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class InitializationOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var alphaType: AlphaType
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var editable: Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var srcPixelFormat: PixelMapFormat
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var pixelFormat: PixelMapFormat
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var scaleMode: ScaleMode
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var size: Size
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(alphaType!: AlphaType = AlphaType.PREMUL, editable!: Bool = false, srcPixelFormat!: PixelMapFormat = PixelMapFormat.BGRA_8888,
        pixelFormat!: PixelMapFormat = PixelMapFormat.BGRA_8888, scaleMode!: ScaleMode = ScaleMode.FIT_TARGET_SIZE,
        size!: Size)
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class DecodingOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var sampleSize: UInt32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var rotate: UInt32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var editable: Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var desiredSize: Size
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var desiredRegion: Region
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var desiredPixelFormat: PixelMapFormat
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var index: UInt32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var fitDensity: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var desiredColorSpace: ?ColorSpaceManager
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var desiredDynamicRange: DecodingDynamicRange
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(sampleSize!: UInt32 = 1, rotate!: UInt32 = 0, editable!: Bool = false,
        desiredSize!: Size = Size(0, 0), desiredRegion!: Region = Region(Size(0, 0), 0, 0),
        desiredPixelFormat!: PixelMapFormat = UNKNOWN, index!: UInt32 = 0, fitDensity!: Int32 = 0,
        desiredColorSpace!: ?ColorSpaceManager = None, desiredDynamicRange!: DecodingDynamicRange = SDR)
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class PositionArea {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var pixels: Array<UInt8>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var offset: UInt32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var stride: UInt32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var region: Region
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(pixels: Array<UInt8>, offset: UInt32, stride: UInt32, region: Region)
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class Size {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var height: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var width: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(height: Int32, width: Int32)
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class Region {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var size: Size
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var x: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var y: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(size: Size, x: Int32, y: Int32)
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class Component {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public let componentType: ComponentType
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public let rowStride: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public let pixelStride: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public let byteBuffer: Array<UInt8>
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class PackingOption {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var format: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var quality: UInt8
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var bufferSize: UInt64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var desiredDynamicRange: PackingDynamicRange
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var needsPackProperties: Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(format: String, quality: UInt8, desiredDynamicRange: PackingDynamicRange, needsPackProperties: Bool,
        bufferSize!: UInt64 = 25 * 1024 * 1024)
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class ImagePropertyOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var index: UInt32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var defaultValue: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public ImagePropertyOptions(index!: UInt32 = 0, defaultValue!: String = "")
}


@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    form: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum PixelMapFormat {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    UNKNOWN |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    RGB_565 |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    RGBA_8888 |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    BGRA_8888 |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    RGB_888 |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ALPHA_8 |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    RGBA_F16 |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    NV21 |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    NV12 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    RGBA_1010102 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    YCBCR_P010 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    YCRCB_P010 |
    ...
}



@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    form: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum AlphaType {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    UNKNOWN |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    OPAQUE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    PREMUL |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    UNPREMUL |
    ...
}



@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    form: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum ScaleMode {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FIT_TARGET_SIZE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    CENTER_CROP |
    ...
}



@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum ImageFormat {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    YCBCR_422_SP |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    JPEG |
    ...
}



@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum ComponentType {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    YUV_Y |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    YUV_U |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    YUV_V |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    JPEG |
    ...
}



@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum PropertyKey <: ToString {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    IMAGE_WIDTH |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    IMAGE_LENGTH |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    BITS_PER_SAMPLE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    IMAGE_DESCRIPTION |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    MAKE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    MODEL |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ORIENTATION |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    DATE_TIME |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    PHOTO_MODE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    EXPOSURE_TIME |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    F_NUMBER |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GPS_LATITUDE_REF |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GPS_LATITUDE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GPS_LONGITUDE_REF |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GPS_LONGITUDE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GPS_TIME_STAMP |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GPS_DATE_STAMP |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ISO_SPEED_RATINGS |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SENSITIVITY_TYPE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    STANDARD_OUTPUT_SENSITIVITY |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    RECOMMENDED_EXPOSURE_INDEX |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ISO_SPEED |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    DATE_TIME_ORIGINAL |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    APERTURE_VALUE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    EXPOSURE_BIAS_VALUE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    METERING_MODE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    LIGHT_SOURCE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FLASH |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FOCAL_LENGTH |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SCENE_FOOD_CONF |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SCENE_STAGE_CONF |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SCENE_BLUE_SKY_CONF |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SCENE_GREEN_PLANT_CONF |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SCENE_BEACH_CONF |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SCENE_SNOW_CONF |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SCENE_SUNSET_CONF |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SCENE_FLOWERS_CONF |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SCENE_NIGHT_CONF |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SCENE_TEXT_CONF |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FACE_COUNT |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    CAPTURE_MODE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ROLL_ANGLE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    PITCH_ANGLE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    PHYSICAL_APERTURE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FOCUS_MODE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    USER_COMMENT |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    PIXEL_X_DIMENSION |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    PIXEL_Y_DIMENSION |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SCENE_TYPE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    WHITE_BALANCE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FOCAL_LENGTH_IN_35_MM_FILM |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func toString(): String
}



@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum DecodingDynamicRange {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    AUTO |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SDR |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    HDR |
    ...
}



@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum PackingDynamicRange {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    AUTO |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SDR |
    ...
}



@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class Image <: RemoteDataLite {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public prop clipRect: Region
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public prop size: Size
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public prop format: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func getComponent(componentType: ComponentType): Component
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func release(): Unit
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.ImageCreator"
]
public class ImageCreator <: RemoteDataLite {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageCreator"
    ]
    public prop capacity: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageCreator"
    ]
    public prop format: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageCreator"
    ]
    public func dequeueImage(): Image
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageCreator"
    ]
    public func queueImage(image: Image): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageCreator"
    ]
    public func release(): Unit
}


/**
* @brief  function createImageCreator(width: number, height: number, format: number, capacity: number): ImageCreator
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.ImageCreator"
]
public func createImageCreator(size: Size, format: Int32, capacity: Int32): ImageCreator


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.ImagePacker"
]
public class ImagePacker <: RemoteDataLite {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public prop supportedFormats: Array<String>
    
    /**
    * Compresses or packs an image and uses a promise to return the result.
    *
    * @param { ImageSource } source Image to be processed.
    * @param { PackingOption } option Option for image packing.
    * @returns { Array<UInt8> } Return the compressed or packed data.
    * @throws { BusinessException } 62980115 - If the parameter is invalid.
    * @throws { BusinessException } 62980096 - The Operation failed.
    * @throws { BusinessException } 62980101 - The image data is abnormal.
    * @throws { BusinessException } 62980106 - The image is too large.
    * @throws { BusinessException } 62980113 - Unknown image format.
    * @throws { BusinessException } 62980119 - If encoder occur error during encoding.
    * @throws { BusinessException } 62980120 - Add pixelmap out of range.
    * @throws { BusinessException } 62980172 - Failed to encode icc.
    * @throws { BusinessException } 62980252 - Failed to create surface.
    * @relation packToData(source: ImageSource, options: PackingOption): Promise<ArrayBuffer>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public func packToData(source: ImageSource, option: PackingOption): Array<UInt8>
    
    /**
    * Compresses or packs an image and uses a promise to return the result.
    *
    * @param { PixelMap } source PixelMap to be processed.
    * @param { PackingOption } option Option for image packing.
    * @returns { Array<UInt8> } Return the compressed or packed data.
    * @throws { BusinessException } 62980115 - If the parameter is invalid.
    * @throws { BusinessException } 62980096 - The Operation failed.
    * @throws { BusinessException } 62980101 - The image data is abnormal.
    * @throws { BusinessException } 62980106 - The image is too large.
    * @throws { BusinessException } 62980113 - Unknown image format.
    * @throws { BusinessException } 62980119 - If encoder occur error during encoding.
    * @throws { BusinessException } 62980120 - Add pixelmap out of range.
    * @throws { BusinessException } 62980172 - Failed to encode icc.
    * @throws { BusinessException } 62980252 - Failed to create surface.
    * @relation packToData(source: PixelMap, options: PackingOption): Promise<ArrayBuffer>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public func packToData(source: PixelMap, option: PackingOption): Array<UInt8>
    
    /**
    * Compresses or packs an image into a file and uses a callback to return the result.
    *
    * @param { PixelMap } source PixelMap to be processed.
    * @param { IntNative } fd ID of a file descriptor.
    * @param { PackingOption } options Options for image packing.
    * @throws { BusinessException } 62980096 - The Operation failed.
    * @throws { BusinessException } 62980101 - The image data is abnormal.
    * @throws { BusinessException } 62980106 - The image is too large.
    * @throws { BusinessException } 62980113 - Unknown image format.
    * @throws { BusinessException } 62980115 - If the parameter is invalid.
    * @throws { BusinessException } 62980119 - If encoder occur error during encoding.
    * @throws { BusinessException } 62980120 - Add pixelmap out of range.
    * @throws { BusinessException } 62980172 - Failed to encode icc.
    * @throws { BusinessException } 62980252 - Failed to create surface.
    * @relation packToFile(source: PixelMap, fd: number, options: PackingOption): Promise<void>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public func packToFile(source: PixelMap, fd: Int32, option: PackingOption): Unit
    
    /**
    * Compresses or packs an image into a file and uses a promise to return the result.
    *
    * @param { ImageSource } source Image to be processed.
    * @param { IntNative } fd ID of a file descriptor.
    * @param { PackingOption } options Options for image packing.
    * @throws { BusinessException } 62980096 - The Operation failed.
    * @throws { BusinessException } 62980101 - The image data is abnormal.
    * @throws { BusinessException } 62980106 - The image is too large.
    * @throws { BusinessException } 62980113 - Unknown image format.
    * @throws { BusinessException } 62980115 - If the parameter is invalid.
    * @throws { BusinessException } 62980119 - If encoder occur error during encoding.
    * @throws { BusinessException } 62980120 - Add pixelmap out of range.
    * @throws { BusinessException } 62980172 - Failed to encode icc.
    * @throws { BusinessException } 62980252 - Failed to create surface.
    * @relation packToFile(source: ImageSource, fd: number, options: PackingOption): Promise<void>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public func packToFile(source: ImageSource, fd: Int32, option: PackingOption): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public func release(): Unit
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.ImagePacker"
]
public func createImagePacker(): ImagePacker


/**
* @brief createImageReceiver(width: number, height: number, format: number, capacity: number): ImageReceiver
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
]
public func createImageReceiver(size: Size, format: ImageFormat, capacity: Int32): ImageReceiver


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
]
public class ImageReceiver <: RemoteDataLite {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    public prop size: Size
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    public prop capacity: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    public prop format: ImageFormat
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    public func getReceivingSurfaceId(): String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    public func release(): Unit
}


/**
* Creates an ImageSource instance based on the URI.
*
* @param { String } uri - Image source URI.
* @brief createImageSource(uri: string): ImageSource
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public func createImageSource(uri: String): ImageSource


/**
* Creates an ImageSource instance based on the URI.
*
* @param { String } uri - Image source URI.
* @param { SourceOptions } options - The config of Image source.
* @brief createImageSource(uri: string, options: SourceOptions): ImageSource
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public func createImageSource(uri: String, options: SourceOptions): ImageSource


/**
* Creates an ImageSource instance based on the file descriptor.
*
* @param { Int32 } fd - ID of a file descriptor.
* @brief createImageSource(fd: number): ImageSource
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public func createImageSource(fd: Int32): ImageSource


/**
* Creates an ImageSource instance based on the file descriptor.
*
* @param { Int32 } fd - ID of a file descriptor.
* @param { SourceOptions } options - The config of Image source.
* @brief createImageSource(fd: number, options: SourceOptions): ImageSource
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public func createImageSource(fd: Int32, options: SourceOptions): ImageSource


/**
* Creates an ImageSource instance based on the buffer.
*
* @param { Array<UInt8> } buf - The buffer of the image.
* @brief createImageSource(buf: ArrayBuffer): ImageSource
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public func createImageSource(buf: Array<UInt8>): ImageSource


/**
* Creates an ImageSource instance based on the buffer.
*
* @param { Array<UInt8> } buf - The buffer of the image.
* @param { SourceOptions } options - The config of Image source.
* @brief createImageSource(buf: ArrayBuffer, options: SourceOptions): ImageSource
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public func createImageSource(buf: Array<UInt8>, options: SourceOptions): ImageSource


/**
* Creates an ImageSource instance based on the raw file descriptor.
*
* @param { resourceManager.RawFileDescriptor } rawfile - The raw file descriptor of the image.
* @param { SourceOptions } options - The config of Image source.
* @brief function createImageSource(rawfile: resourceManager.RawFileDescriptor, options?: SourceOptions): ImageSource
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public func createImageSource(rawfile: RawFileDescriptor, options!: SourceOptions = SourceOptions(0)): ImageSource


/**
* Creates an ImageSource instance based on the buffer in incremental.
*
* @param { Array<UInt8> } buf - Image buffer array.
* @param { SourceOptions } options - The config of Image source.
* @brief function CreateIncrementalSource(buf: ArrayBuffer, options?: SourceOptions): ImageSource
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public func createIncrementalSource(buf: Array<UInt8>, options!: SourceOptions = SourceOptions(0)): ImageSource


/**
* ImageSource instance.
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public class ImageSource <: RemoteDataLite {
    /**
    * Supported image formats.
    *
    * @brief readonly supportedFormats: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public prop supportedFormats: Array<String>
    
    /**
    * Obtains the count of frame in an image. This method uses a promise to return the number.
    *
    * @returns { UInt32> } An instance used to return the number.
    * @throws { BusinessException } 62980096 - If the operation failed.
    * @throws { BusinessException } 62980110 - If the image source data error.
    * @throws { BusinessException } 62980111 - If the image source data incomplete.
    * @throws { BusinessException } 62980113 - If the image format unknown.
    * @throws { BusinessException } 62980116 - If the image decode failed.
    * @throws { BusinessException } 62980118 - If the image plugin create failed.
    * @throws { BusinessException } 62980122 - If the image decode head abnormal.
    * @brief getFrameCount(): Promise<number>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func getFrameCount(): UInt32
    
    /**
    * Get image information from image source.
    *
    * @param { Int32 } index Sequence number of an image. If this parameter is not specified,
    *  the default value 0 is used.
    * @returns { ImageInfo } An instance used to return the image information.
    * @brief getImageInfo(index?: number): Promise<ImageInfo>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func getImageInfo(index!: UInt32 = 0): ImageInfo
    
    /**
    * Obtains the value of a property in an image with the specified index. This method return the property value in a
    * string.
    *
    * @param { string } key Name of the property whose value is to be obtained.
    * @param { GetImagePropertyOptions } options Index of the image.
    * @returns { String } return the property value. If the operation fails, the default value is returned.
    * @brief getImageProperty(key: string, options?: GetImagePropertyOptions): Promise<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func getImageProperty(key: PropertyKey, options!: ImagePropertyOptions = ImagePropertyOptions()): String
    
    /**
    * Modify the value of a property in an image with the specified key. This method uses a
    * promise to return the property value in a string.
    *
    * @param { String } key Name of the property whose value is to be modified.
    * @param { String } value The value to be set to property.
    * @brief modifyImageProperty(key: string, value: string): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func modifyImageProperty(key: PropertyKey, value: String): Unit
    
    /**
    * Update the data in the incremental ImageSource.
    *
    * @param { Array<UInt8> } buf The data to be updated.
    * @param { Bool } isFinished If is it finished.
    * @param { UInt32 } value The offset of data.
    * @param { UInt32 } length The length fo buf.
    * @brief updateData(buf: ArrayBuffer, isFinished: boolean, value: number, length: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func updateData(buf: Array<UInt8>, isFinished: Bool, offset: UInt32, length: UInt32): Unit
    
    /**
    * Creates a PixelMap object based on image decoding parameters. This method uses a promise to
    * return the object.
    *
    * @param { DecodingOptions } options Image decoding parameters.
    * @returns { PixelMap } An instance used to return the PixelMap object.
    * @brief createPixelMap(options?: DecodingOptions): Promise<PixelMap>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func createPixelMap(options!: DecodingOptions = DecodingOptions()): PixelMap
    
    /**
    * Creates a PixelMap array based on image decoding parameters. This method uses a promise to
    * return the array.
    *
    * @param { DecodingOptions } options Image decoding parameters.
    * @returns { Array<PixelMap> } An instance used to return the PixelMap array.
    * @throws { BusinessException } 62980096 - If the operation failed.
    * @throws { BusinessException } 62980103 - If the image data unsupport.
    * @throws { BusinessException } 62980110 - If the image source data error.
    * @throws { BusinessException } 62980111 - If the image source data incomplete.
    * @throws { BusinessException } 62980118 - If the image plugin create failed.
    * @brief createPixelMapList(options?: DecodingOptions): Promise<Array<PixelMap>>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func createPixelMapList(options!: DecodingOptions = DecodingOptions()): Array<PixelMap>
    
    /**
    * Obtains the array of delay time in an image. This method uses a promise to return the array.
    *
    * @returns { Array<UInt32> } An instance used to return the array.
    * @throws { BusinessException } 62980096 - If the operation failed.
    * @throws { BusinessException } 62980110 - If the image source data error.
    * @throws { BusinessException } 62980111 - If the image source data incomplete.
    * @throws { BusinessException } 62980113 - If the image format unknown.
    * @throws { BusinessException } 62980116 - If the image decode failed.
    * @throws { BusinessException } 62980118 - If the image plugin create failed.
    * @throws { BusinessException } 62980122 - If the image decode head abnormal.
    * @brief getDelayTimeList(): Promise<Array<number>>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func getDelayTimeList(): Array<Int32>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func release(): Unit
}


/**
* Create pixelmap by data buffer.
*
* @param {Array<UInt8> } colors The image color buffer.
* @param { InitializationOptions } options Initialization options for pixelmap.
* @returns { PixelMap } A Promise instance used to return the PixelMap object.
* @brief createPixelMap(colors: ArrayBuffer, options: InitializationOptions): Promise<PixelMap>
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public func createPixelMap(colors: Array<UInt8>, options: InitializationOptions): PixelMap


/**
* PixelMap instance.
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class PixelMap <: RemoteDataLite {
    /**
    * Whether the image pixel map can be edited.
    *
    * @type { Bool }
    *
    * @brief readonly isEditable: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public prop isEditable: Bool
    
    /**
    * Whether the image pixel map can be edited.
    *
    * @type { Bool }
    *
    * @brief readonly isEditable: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public prop isStrideAlignment: Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func release(): Unit
    
    /**
    * Reads image pixel map data and writes the data to an ArrayBuffer. This method uses
    * a promise to return the result.
    *
    * @param { Array<UInt8> } dst A buffer to which the image pixel map data will be written.
    * @brief readPixelsToBuffer(dst: ArrayBuffer): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func readPixelsToBuffer(dst: Array<UInt8>): Unit
    
    /**
    * Reads image data in an ArrayBuffer and writes the data to a PixelMap object. This method
    * uses a promise to return the result.
    *
    * @param { Array<UInt8> } src A buffer from which the image data will be read.
    * @brief writeBufferToPixels(src: ArrayBuffer): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func writeBufferToPixels(src: Array<UInt8>): Unit
    
    /**
    * Obtains pixel map information about this image. This method uses a promise to return the information.
    *
    * @returns { ImageInfo } An instance used to return the image pixel map information. If the operation fails,
    *  an error message is returned.
    * @brief getImageInfo(): Promise<ImageInfo>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func getImageInfo(): ImageInfo
    
    /**
    * Obtains the number of bytes in each line of the image pixel map.
    *
    * @returns { UInt32 } Number of bytes in each line.
    * @brief getBytesNumberPerRow(): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func getBytesNumberPerRow(): UInt32
    
    /**
    * Obtains the total number of bytes of the image pixel map.
    *
    * @returns { UInt32 } Total number of bytes.
    * @brief getPixelBytesNumber(): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func getPixelBytesNumber(): UInt32
    
    /**
    * Obtains the density of the image pixel map.
    *
    * @returns { Int32 } The number of density.
    * @brief getDensity():number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func getDensity(): Int32
    
    /**
    * Set the transparent rate of pixel map. This method return the operation result.
    *
    * @param { Float32 } rate The value of transparent rate.
    * @brief opacity(rate: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func opacity(rate: Float32): Unit
    
    /**
    * Image zoom in width and height. This method return the operation result.
    *
    * @param { Float32 } x The zoom value of width.
    * @param { Float32 } y The zoom value of height.
    * @brief scale(x: number, y: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func scale(x: Float32, y: Float32): Unit
    
    /**
    * Image position transformation. This method return the operation result.
    *
    * @param { Float32 } x The position value of width.
    * @param { Float32 } y The position value of height.
    * @brief translate(x: number, y: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func translate(x: Float32, y: Float32): Unit
    
    /**
    * Image rotation. This method return the operation result.
    *
    * @param { Float32 } angle The rotation angle.
    * @brief rotate(angle: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func rotate(angle: Float32): Unit
    
    /**
    * Image flipping. This method return the operation result.
    *
    * @param { Bool } horizontal Is flip in horizontal.
    * @param { Bool } vertical Is flip in vertical.
    * @brief flip(horizontal: boolean, vertical: boolean): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func flip(horizontal: Bool, vertical: Bool): Unit
    
    /**
    * Crop the image. This method return the operation result.
    *
    * @param { Region } region The region to crop.
    * @brief crop(region: Region): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func crop(region: Region): Unit
    
    /**
    * Writes image pixel map data to the specified area. This method uses a promise to return
    * the operation result.
    *
    * @param { PositionArea } area Area to which the image pixel map data will be written.
    * @brief writePixels(area: PositionArea): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func writePixels(area: PositionArea): Unit
    
    /**
    * Reads image pixel map data in an area. This method return the data read.
    *
    * @param { PositionArea } area Area from which the image pixel map data will be read.
    * readPixels(area: PositionArea): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func readPixels(area: PositionArea): Unit
    
    /**
    * Obtains new pixel map with alpha information. This method uses a promise to return the information.
    *
    * @returns { PixelMap } An instance used to return the new image pixel map. If the operation fails,
    *  an error message is returned.
    * @brief createAlphaPixelmap(): PixelMap
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func createAlphaPixelmap(): PixelMap
    
    /**
    * Set color space of pixel map.
    *
    * @param { ColorSpaceManager } colorSpace The color space for pixel map.
    * @throws { BusinessException } 62980111 - If the operation invalid.
    * @throws { BusinessException } 62980115 - If the image parameter invalid.
    * @brief setColorSpace(colorSpace: colorSpaceManager.ColorSpaceManager): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func setColorSpace(colorSpace: ColorSpaceManager): Unit
    
    /**
    * Get color space of pixel map.
    *
    * @throws { BusinessException } 62980101 - If the image data abnormal.
    * @throws { BusinessException } 62980103 - If the image data unsupport.
    * @throws { BusinessException } 62980115 - If the image parameter invalid.
    * @brief getColorSpace(): colorSpaceManager.ColorSpaceManager
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func getColorSpace(): ColorSpaceManager
    
    /**
    * Apply color space of pixel map, the pixels will be changed by input color space.
    *
    * @param { ColorSpaceManager } targetColorSpace - The color space for pixel map.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @throws { BusinessException } 62980108 - Failed to convert the color space.
    * @throws { BusinessException } 62980115 - Invalid image parameter.
    * @brief applyColorSpace(targetColorSpace: colorSpaceManager.ColorSpaceManager): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func applyColorSpace(targetColorSpace: ColorSpaceManager): Unit
}


