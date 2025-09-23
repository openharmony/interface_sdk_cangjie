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

package ohos.multimedia.image
import ohos.graphics.color_space_manager.*
import ohos.labels.*
import ohos.ffi.*
import ohos.business_exception.*

import std.deriving.Derive
import ohos.hilog.*
import std.collection.HashMap
import ohos.business_exception.BusinessException
import ohos.callback_invoke.*
import ohos.resource_manager.RawFileDescriptor

/**
* Describes image information.
*
* @relation interface ImageInfo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class ImageInfo {
    /**
    * Indicates image dimensions.
    *
    * @relation size: Size
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var size: Size
    
    /**
    * Indicates image default density.
    *
    * @relation density: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var density: Int32
    
    /**
    * The number of byte per row.
    *
    * @relation stride: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var stride: Int32
    
    /**
    * Indicates image format.
    *
    * @relation pixelFormat: PixelMapFormat
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var pixelFormat: PixelMapFormat
    
    /**
    * Indicates image alpha type.
    *
    * @relation alphaType: AlphaType
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var alphaType: AlphaType
    
    /**
    * Indicates image mime type.
    *
    * @relation mimeType: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var mimeType: String
    
    /**
    * Indicates whether the image high dynamic range.
    *
    * @relation isHdr: boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var isHdr: Bool
}


/**
* Initialization options for ImageSource.
*
* @relation interface SourceOptions
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class SourceOptions {
    /**
    * The density for ImageSource.
    *
    * @relation sourceDensity: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var sourceDensity: Int32
    
    /**
    * PixelMap expected format.
    *
    * @relation sourcePixelFormat?: PixelMapFormat
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var sourcePixelFormat: PixelMapFormat
    
    /**
    * PixelMap size.
    *
    * @relation sourceSize?: Size
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var sourceSize: Size
    
    /**
    * SourceOptions constructor .
    *
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(sourceDensity: Int32, sourcePixelFormat!: PixelMapFormat = PixelMapFormat.Unknown, sourceSize!: Size = Size(0, 0))
}


/**
* Initialization options for pixelmap.
*
* @relation interface InitializationOptions
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class InitializationOptions {
    /**
    * PixelMap expected alpha type.
    *
    * @relation alphaType?: AlphaType
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var alphaType: AlphaType
    
    /**
    * Editable or not.
    *
    * @relation editable?: boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var editable: Bool
    
    /**
    * PixelMap source format.
    *
    * @relation srcPixelFormat?: PixelMapFormat
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var srcPixelFormat: PixelMapFormat
    
    /**
    * PixelMap expected format.
    *
    * @relation pixelFormat?: PixelMapFormat
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var pixelFormat: PixelMapFormat
    
    /**
    * PixelMap expected scaling effect.
    *
    * @relation scaleMode?: ScaleMode
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var scaleMode: ScaleMode
    
    /**
    * PixelMap size.
    *
    * @relation size: Size
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var size: Size
    
    /**
    * InitializationOptions constructor.
    *
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(size: Size, alphaType!: AlphaType = AlphaType.Premul, editable!: Bool = false, srcPixelFormat!: PixelMapFormat = PixelMapFormat.Bgra8888,
        pixelFormat!: PixelMapFormat = PixelMapFormat.Bgra8888, scaleMode!: ScaleMode = ScaleMode.FitTargetSize)
}


/**
* Describes image decoding parameters.
*
* @relation interface DecodingOptions
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public class DecodingOptions {
    /**
    * Sampling ratio of the image pixel map.
    *
    * @relation sampleSize?: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var sampleSize: UInt32
    
    /**
    * Rotation angle of the image pixel map. The value ranges from 0 to 360.
    *
    * @relation rotate?: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var rotate: UInt32
    
    /**
    * Whether the image pixel map is editable.
    *
    * @relation editable?: boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var editable: Bool
    
    /**
    * Width and height of the image pixel map. The value (0, 0) indicates that the pixels are decoded
    * based on the original image size.
    *
    * @relation desiredSize?: Size
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var desiredSize: Size
    
    /**
    * Cropping region of the image pixel map.
    *
    * @relation desiredRegion?: Region
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var desiredRegion: Region
    
    /**
    * Data format of the image pixel map.
    *
    * @relation desiredPixelFormat?: PixelMapFormat
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var desiredPixelFormat: PixelMapFormat
    
    /**
    * Number of image frames.
    *
    * @relation index?: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var index: UInt32
    
    /**
    * The density for image pixel map.
    *
    * @relation fitDensity?: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var fitDensity: Int32
    
    /**
    * Color space of the image pixel map.
    *
    * @relation desiredColorSpace?: colorSpaceManager.ColorSpaceManager
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var desiredColorSpace: ?ColorSpaceManager
    
    /**
    * The desired dynamic range of the image pixelmap.
    *
    * @relation desiredDynamicRange?: DecodingDynamicRange
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var desiredDynamicRange: DecodingDynamicRange
    
    /**
    * DecodingOptions constructor.
    *
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public init(sampleSize!: UInt32 = 1, rotate!: UInt32 = 0, editable!: Bool = false,
        desiredSize!: Size = Size(0, 0), desiredRegion!: Region = Region(Size(0, 0), 0, 0),
        desiredPixelFormat!: PixelMapFormat = Unknown, index!: UInt32 = 0, fitDensity!: Int32 = 0,
        desiredColorSpace!: ?ColorSpaceManager = None, desiredDynamicRange!: DecodingDynamicRange = Sdr)
}


/**
* Describes area information in an image.
*
* @relation interface PositionArea
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class PositionArea {
    /**
    * Image data that will be read or written.
    *
    * @relation pixels: ArrayBuffer
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var pixels: Array<UInt8>
    
    /**
    * Offset for data reading.
    *
    * @relation offset: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var offset: UInt32
    
    /**
    * Number of bytes to read.
    *
    * @relation stride: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var stride: UInt32
    
    /**
    * Region to read.
    *
    * @relation region: Region
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var region: Region
    
    /**
    * PositionArea constructor.
    *
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(pixels: Array<UInt8>, offset: UInt32, stride: UInt32, region: Region)
}


/**
* Describes the size of an image.
*
* @relation interface Size
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class Size {
    /**
    * Height.
    *
    * @relation height: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var height: Int32
    
    /**
    * Width.
    *
    * @relation width: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var width: Int32
    
    /**
    * Size constructor.
    *
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(height: Int32, width: Int32)
}


/**
* Describes region information.
*
* @relation interface Region
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class Region {
    /**
    * Image size.
    *
    * @relation size: Size
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var size: Size
    
    /**
    * x-coordinate at the upper left corner of the image.
    *
    * @relation x: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var x: Int32
    
    /**
    * y-coordinate at the upper left corner of the image.
    *
    * @relation y: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var y: Int32
    
    /**
    * Region constructor.
    *
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(size: Size, x: Int32, y: Int32)
}


/**
* Describes image color components.
*
* @relation interface Component
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class Component {
    /**
    * Component type.
    *
    * @relation readonly componentType: ComponentType
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public let componentType: ComponentType
    
    /**
    * Row stride.
    *
    * @relation readonly rowStride: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public let rowStride: Int32
    
    /**
    * Pixel stride.
    *
    * @relation readonly pixelStride: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public let pixelStride: Int32
    
    /**
    * Component buffer.
    *
    * @relation readonly byteBuffer: ArrayBuffer
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public let byteBuffer: Array<UInt8>
}


/**
* Describes the option for image packing.
*
* @relation interface PackingOption
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImagePacker"
]
public class PackingOption {
    /**
    * Multipurpose Internet Mail Extensions (MIME) format of the target image, for example, image/jpeg.
    *
    * @relation format: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public var format: String
    
    /**
    * Quality of the target image. The value is an integer ranging from 0 to 100. A larger value indicates better.
    *
    * @relation quality: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public var quality: UInt8
    
    /**
    * BufferSize of the target image.
    * If bufferSize is equal to 0, then a suitable value is used instead of 0.
    *
    * @relation bufferSize?: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public var bufferSize: UInt64
    
    /**
    * The desired dynamic range of the target image.
    *
    * @relation desiredDynamicRange?: PackingDynamicRange
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public var desiredDynamicRange: PackingDynamicRange
    
    /**
    * Whether the image properties can be saved, like Exif.
    *
    * @relation needsPackProperties?: boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public var needsPackProperties: Bool
    
    /**
    * PackingOption constructor.
    *
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public init(format: String, quality: UInt8, bufferSize!: UInt64 = 0,
        desiredDynamicRange!: PackingDynamicRange = Sdr, needsPackProperties!: Bool = false)
}


/**
* Describes image properties.
*
* @relation interface ImagePropertyOptions
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public class ImagePropertyOptions {
    /**
    * Index of an image.
    *
    * @relation index?: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var index: UInt32
    
    /**
    * Default property value.
    *
    * @relation defaultValue?: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var defaultValue: String
    
    /**
    * ImagePropertyOptions constructor.
    *
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public init(index!: UInt32 = 0, defaultValue!: String = "")
}


/**
* Enumerates pixel map formats.
*
* @relation enum PixelMapFormat
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum PixelMapFormat {
    /**
    * Indicates an unknown format.
    *
    * @relation UNKNOWN = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Unknown |
    /**
    * Indicates that each pixel is stored on 16 bits. Only the R, G, and B components are encoded
    * from the higher-order to the lower-order bits: red is stored with 5 bits of precision,
    * green is stored with 6 bits of precision, and blue is stored with 5 bits of precision.
    *
    * @relation RGB_565 = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Rgb565 |
    /**
    * Indicates that each pixel is stored on 32 bits. Each pixel contains 4 components：B(8bits), G(8bits), R(8bits), A(8bits)
    * and are stored from the higher-order to the lower-order bits.
    *
    * @relation RGBA_8888 = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Rgba8888 |
    /**
    * Indicates that each pixel is stored on 32 bits. Each pixel contains 4 components：B(8bits), G(8bits), R(8bits), A(8bits)
    * and are stored from the higher-order to the lower-order bits.
    *
    * @relation BGRA_8888 = 4
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Bgra8888 |
    /**
    * Indicates that each pixel is stored on 24 bits. Each pixel contains 3 components：R(8bits), G(8bits), B(8bits)
    * and are stored from the higher-order to the lower-order bits.
    *
    * @relation RGB_888 = 5
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Rgb888 |
    /**
    * Indicates that each pixel is stored on 8 bits. Each pixel contains 1 component：ALPHA(8bits)
    * and is stored from the higher-order to the lower-order bits.
    *
    * @relation ALPHA_8 = 6
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Alpha8 |
    /**
    * Indicates that each pixel is stored on 32 bits. Each pixel contains 4 components：B(8bits), G(8bits), R(8bits), A(8bits)
    * and are stored from the higher-order to the lower-order bits in F16.
    *
    * @relation RGBA_F16 = 7
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    RgbaF16 |
    /**
    * Indicates that the storage order is to store Y first and then V U alternately each occupies 8 bits
    * and are stored from the higher-order to the lower-order bits.
    *
    * @relation NV21 = 8
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Nv21 |
    /**
    * Indicates that the storage order is to store Y first and then U V alternately each occupies 8 bits
    * and are stored from the higher-order to the lower-order bits.
    *
    * @relation NV12 = 9
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Nv12 |
    /**
    * Indicates that each pixel is stored on 32 bits. Each pixel contains 4 components：
    * R(10bits), G(10bits), B(10bits), A(2bits) and are stored from the higher-order to the lower-order bits.
    *
    * @relation RGBA_1010102 = 10
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Rgba1010102 |
    /**
    * Indicates that the storage order is to store Y first and then U V alternately each occupies 10 bits
    * and are stored from the higher-order to the lower-order bits.
    *
    * @relation YCBCR_P010 = 11
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    YcbcrP010 |
    /**
    * Indicates that the storage order is to store Y first and then V U alternately each occupies 10 bits
    * and are stored from the higher-order to the lower-order bits.
    *
    * @relation YCRCB_P010 = 12
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    YcrcbP010 |
    ...
}



/**
* Enumerates alpha types.
*
* @relation enum AlphaType
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum AlphaType {
    /**
    * Indicates an unknown alpha type.
    *
    * @relation UNKNOWN = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Unknown |
    /**
    * Indicates that the image has no alpha channel, or all pixels in the image are fully opaque.
    *
    * @relation OPAQUE = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Opaque |
    /**
    * Indicates that RGB components of each pixel in the image are premultiplied by alpha.
    *
    * @relation PREMUL = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Premul |
    /**
    * Indicates that RGB components of each pixel in the image are independent of alpha and are not premultiplied by alpha.
    *
    * @relation UNPREMUL = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    UnPremul |
    ...
}



/**
* Enum for image scale mode.
*
* @relation enum ScaleMode
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum ScaleMode {
    /**
    * Indicates the effect that fits the image into the target size.
    *
    * @relation FIT_TARGET_SIZE = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FitTargetSize |
    /**
    * Indicates the effect that scales an image to fill the target image area and center-crops the part outside the area.
    *
    * @relation CENTER_CROP = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    CenterCrop |
    ...
}



/**
* Enum for image formats.
*
* @relation enum ImageFormat
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum ImageFormat {
    /**
    * YCBCR422 semi-planar format.
    *
    * @relation YCBCR_422_SP = 1000
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Ycbcr422Sp |
    /**
    * JPEG encoding format.
    *
    * @relation JPEG = 2000
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Jpeg |
    ...
}



/**
* The component type of image.
*
* @relation enum ComponentType
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
]
public enum ComponentType {
    /**
    * Luma info.
    *
    * @relation YUV_Y = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    YuvY |
    /**
    * Chrominance info.
    *
    * @relation YUV_U = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    YuvU |
    /**
    * Chroma info.
    *
    * @relation YUV_V = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    YuvV |
    /**
    * Jpeg type.
    *
    * @relation JPEG = 4
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    Jpeg |
    ...
}



/**
* Enumerates exchangeable image file format (Exif) information types of an image.
*
* @relation enum PropertyKey
*/
@Derive[Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum PropertyKey <: ToString {
    /**
    * Image width.
    *
    * @relation IMAGE_WIDTH = 'ImageWidth'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ImageWidth |
    /**
    * Image length.
    *
    * @relation IMAGE_LENGTH = 'ImageLength'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ImageLength |
    /**
    * Number of bits in each pixel of an image.
    *
    * @relation BITS_PER_SAMPLE = 'BitsPerSample'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    BitsPerSample |
    /**
    * Image description.
    *
    * @relation IMAGE_DESCRIPTION = 'ImageDescription'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ImageDescription |
    /**
    * Make.
    *
    * @relation MAKE = 'Make'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Make |
    /**
    * Model.
    *
    * @relation MODEL = 'Model'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Model |
    /**
    * Image rotation mode.
    *
    * @relation ORIENTATION = 'Orientation'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Orientation |
    /**
    * Date time.
    *
    * @relation DATE_TIME = 'DateTime'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    DateTime |
    /**
    * Photo mode.
    *
    * @relation PHOTO_MODE = 'PhotoMode'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    PhotoMode |
    /**
    * Exposure time.
    *
    * @relation EXPOSURE_TIME = 'ExposureTime'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ExposureTime |
    /**
    * Aperture value.
    *
    * @relation F_NUMBER = 'FNumber'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FNumber |
    /**
    * GPS latitude reference. For example, N indicates north latitude and S indicates south latitude.
    *
    * @relation GPS_LATITUDE_REF = 'GPSLatitudeRef'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GpsLatitudeRef |
    /**
    * GPS latitude.
    *
    * @relation GPS_LATITUDE = 'GPSLatitude'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GpsLatitude |
    /**
    * GPS longitude reference. For example, E indicates east longitude and W indicates west longitude.
    *
    * @relation GPS_LONGITUDE_REF = 'GPSLongitudeRef'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GpsLongitudeRef |
    /**
    * GPS longitude.
    *
    * @relation GPS_LONGITUDE = 'GPSLongitude'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GpsLongitude |
    /**
    * GPS time stamp.
    *
    * @relation GPS_TIME_STAMP = 'GPSTimeStamp'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GpsTimeStamp |
    /**
    * GPS date stamp.
    *
    * @relation GPS_DATE_STAMP = 'GPSDateStamp'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GpsDateStamp |
    /**
    * ISO speedratings.
    *
    * @relation ISO_SPEED_RATINGS = 'ISOSpeedRatings'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    IsoSpeedRatings |
    /**
    * Sensitivity type.
    *
    * @relation SENSITIVITY_TYPE = 'SensitivityType'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SensitivityType |
    /**
    * Standard output sensitivity.
    *
    * @relation STANDARD_OUTPUT_SENSITIVITY = 'StandardOutputSensitivity'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    StandardOutputSensitivity |
    /**
    * Recommended exposure index.
    *
    * @relation RECOMMENDED_EXPOSURE_INDEX = 'RecommendedExposureIndex'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    RecommendedExposureIndex |
    /**
    * ISO speed.
    *
    * @relation ISO_SPEED = 'ISOSpeedRatings'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    IsoSpeed |
    /**
    * Shooting time.
    *
    * @relation DATE_TIME_ORIGINAL = 'DateTimeOriginal'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    DateTimeOriginal |
    /**
    * Aperture value.
    *
    * @relation APERTURE_VALUE = 'ApertureValue'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ApertureValue |
    /**
    * Exposure bias value.
    *
    * @relation EXPOSURE_BIAS_VALUE = 'ExposureBiasValue'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ExposureBiasValue |
    /**
    * Metering mode.
    *
    * @relation METERING_MODE = 'MeteringMode'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    MeteringMode |
    /**
    * Light source.
    *
    * @relation LIGHT_SOURCE = 'LightSource'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    LightSource |
    /**
    * Flash.
    *
    * @relation FLASH = 'Flash'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Flash |
    /**
    * Focal length.
    *
    * @relation FOCAL_LENGTH = 'FocalLength'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FocalLength |
    /**
    * Capture Scene: Food.
    *
    * @relation SCENE_FOOD_CONF = 'HwMnoteSceneFoodConf'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneFoodConf |
    /**
    * Capture Scene: Stage.
    *
    * @relation SCENE_STAGE_CONF = 'HwMnoteSceneStageConf'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneStageConf |
    /**
    * Capture Scene: Blue Sky.
    *
    * @relation SCENE_BLUE_SKY_CONF = 'HwMnoteSceneBlueSkyConf'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneBlueSkyConf |
    /**
    * Capture Scene: Green Plant.
    *
    * @relation SCENE_GREEN_PLANT_CONF = 'HwMnoteSceneGreenPlantConf'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneGreenPlantConf |
    /**
    * Capture Scene: Beach.
    *
    * @relation SCENE_BEACH_CONF = 'HwMnoteSceneBeachConf'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneBeachConf |
    /**
    * Capture Scene: Snow.
    *
    * @relation SCENE_SNOW_CONF = 'HwMnoteSceneSnowConf'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneSnowConf |
    /**
    * Capture Scene: Sunset.
    *
    * @relation SCENE_SUNSET_CONF = 'HwMnoteSceneSunsetConf'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneSunsetConf |
    /**
    * Capture Scene: Flowers.
    *
    * @relation SCENE_FLOWERS_CONF = 'HwMnoteSceneFlowersConf'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneFlowersConf |
    /**
    * Capture Scene: Night.
    *
    * @relation SCENE_NIGHT_CONF = 'HwMnoteSceneNightConf'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneNightConf |
    /**
    * Capture Scene: Text.
    *
    * @relation SCENE_TEXT_CONF = 'HwMnoteSceneTextConf'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneTextConf |
    /**
    * Face Count.
    *
    * @relation FACE_COUNT = 'HwMnoteFaceCount'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FaceCount |
    /**
    * Capture mode.
    *
    * @relation CAPTURE_MODE = 'HwMnoteCaptureMode'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    CaptureMode |
    /**
    * Roll Angle.
    *
    * @relation ROLL_ANGLE = 'HwMnoteRollAngle'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    RollAngle |
    /**
    * Pitch Angle.
    *
    * @relation PITCH_ANGLE = 'HwMnotePitchAngle'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    PitchAngle |
    /**
    * Physical aperture.
    *
    * @relation PHYSICAL_APERTURE = 'HwMnotePhysicalAperture'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    PhysicalAperture |
    /**
    * Focus Mode.
    *
    * @relation FOCUS_MODE = 'HwMnoteFocusMode'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FocusMode |
    /**
    * User comment.
    *
    * @relation USER_COMMENT = 'UserComment'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    UserComment |
    /**
    * Pixel x dimension.
    *
    * @relation PIXEL_X_DIMENSION = 'PixelXDimension'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    PixelXDimension |
    /**
    * Pixel y dimension.
    *
    * @relation PIXEL_Y_DIMENSION = 'PixelYDimension'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    PixelYDimension |
    /**
    * Scene type.
    *
    * @relation SCENE_TYPE = 'SceneType'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneType |
    /**
    * White balance.
    *
    * @relation WHITE_BALANCE = 'WhiteBalance'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    WhiteBalance |
    /**
    * Focal length in 35mm film.
    *
    * @relation FOCAL_LENGTH_IN_35_MM_FILM = 'FocalLengthIn35mmFilm'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FocalLengthIn35mmFilm |
    ...
    /**
    * Return the string of the enumeration value.
    *
    * @throws IllegalArgumentException - The type is not supported yet.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func toString(): String
}



/**
* Enumerates decoding dynamic range.
*
* @relation enum DecodingDynamicRange
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum DecodingDynamicRange {
    /**
    * Decoding according to the content of the image.
    *
    * @relation AUTO = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Auto |
    /**
    * Decoding to standard dynamic range.
    *
    * @relation SDR = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Sdr |
    /**
    * Decoding to high dynamic range.
    *
    * @relation HDR = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Hdr |
    ...
}



/**
* Enumerates packing dynamic range.
*
* @relation enum PackingDynamicRange
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum PackingDynamicRange {
    /**
    * Packing according to the content of the image.
    *
    * @relation AUTO = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Auto |
    /**
    * Packing to standard dynamic range.
    *
    * @relation SDR = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Sdr |
    ...
}



/**
* Provides basic image operations, including obtaining image information, and reading and writing image data.
*
* @relation interface Image
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class Image <: RemoteDataLite {
    /**
    * Gets the image area to crop, default is size.
    *
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation clipRect: Region
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public prop clipRect: Region
    
    /**
    * Image size.
    *
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation readonly size: Size
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public prop size: Size
    
    /**
    * Image format.
    *
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation readonly format: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public prop format: Int32
    
    /**
    * Get component buffer from image.
    *
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation getComponent(componentType: ComponentType): Promise<Component>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func getComponent(componentType: ComponentType): Component
    
    /**
    * Release current image to receive another.
    *
    * @relation release(): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func release(): Unit
}


/**
* ImagePacker instance.
*
* @relation interface ImagePacker
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImagePacker"
]
public class ImagePacker <: RemoteDataLite {
    /**
    * Supported image formats.
    *
    * @throws { BusinessException } 62980098 - Failed to malloc memory.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation readonly supportedFormats: Array<string>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public prop supportedFormats: Array<String>
    
    /**
    * Compresses or packs an image.
    *
    * @param { ImageSource } source Image to be processed.
    * @param { PackingOption } option Option for image packing.
    * @returns { Array<UInt8> } Return the compressed or packed data.
    * @throws { BusinessException } 62980096 - The operation failed. Possible cause: 1.Image upload exception.
    * 2. Decoding process exception. 3. Insufficient memory.
    * @throws { BusinessException } 62980101 - The image data is abnormal.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @throws { BusinessException } 62980106 - The image data is too large. This status code is thrown when an error occurs during the process of checking size.
    * @throws { BusinessException } 62980113 - Unknown image format. The image data provided is not in a recognized or supported format, or it may be occorrupted.
    * @throws { BusinessException } 62980115 - If the parameter is invalid.
    * @throws { BusinessException } 62980119 - Failed to encode the image.
    * @throws { BusinessException } 62980120 - Add pixelmap out of range.
    * @throws { BusinessException } 62980172 - Failed to encode icc.
    * @throws { BusinessException } 62980252 - Failed to create surface.
    * @relation packToData(source: ImageSource, options: PackingOption): Promise<ArrayBuffer>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public func packToData(source: ImageSource, options: PackingOption): Array<UInt8>
    
    /**
    * Compresses or packs an image.
    *
    * @param { PixelMap } source PixelMap to be processed.
    * @param { PackingOption } option Option for image packing.
    * @returns { Array<UInt8> } Return the compressed or packed data.
    * @throws { BusinessException } 62980096 - The operation failed. Possible cause: 1.Image upload exception.
    * 2. Decoding process exception. 3. Insufficient memory.
    * @throws { BusinessException } 62980101 - The image data is abnormal.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @throws { BusinessException } 62980106 - The image data is too large. This status code is thrown when an error occurs during the process of checking size.
    * @throws { BusinessException } 62980113 - Unknown image format. The image data provided is not in a recognized or supported format, or it may be occorrupted.
    * @throws { BusinessException } 62980115 - If the parameter is invalid.
    * @throws { BusinessException } 62980119 - Failed to encode the image.
    * @throws { BusinessException } 62980120 - Add pixelmap out of range.
    * @throws { BusinessException } 62980172 - Failed to encode icc.
    * @throws { BusinessException } 62980252 - Failed to create surface.
    * @relation packToData(source: PixelMap, options: PackingOption): Promise<ArrayBuffer>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public func packToData(source: PixelMap, options: PackingOption): Array<UInt8>
    
    /**
    * Compresses or packs an image into a file.
    *
    * @param { ImageSource } source Image to be processed.
    * @param { Int32 } fd ID of a file descriptor.
    * @param { PackingOption } options Options for image packing.
    * @throws { BusinessException } 62980096 - The operation failed. Possible cause: 1.Image upload exception.
    * 2. Decoding process exception. 3. Insufficient memory.
    * @throws { BusinessException } 62980101 - The image data is abnormal.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @throws { BusinessException } 62980106 - The image data is too large. This status code is thrown when an error occurs during the process of checking size.
    * @throws { BusinessException } 62980113 - Unknown image format.
    * The image data provided is not in a recognized or supported format, or it may be occorrupted.
    * @throws { BusinessException } 62980115 - Invalid input parameter.
    * @throws { BusinessException } 62980119 - Failed to encode the image.
    * @throws { BusinessException } 62980120 - Add pixelmap out of range.
    * @throws { BusinessException } 62980172 - Failed to encode icc.
    * @throws { BusinessException } 62980252 - Failed to create surface.
    * @relation packToFile(source: ImageSource, fd: int, options: PackingOption): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public func packToFile(source: ImageSource, fd: Int32, options: PackingOption): Unit
    
    /**
    * Compresses or packs an image into a file and uses a callback to return the result.
    *
    * @param { PixelMap } source PixelMap to be processed.
    * @param { Int32 } fd ID of a file descriptor.
    * @param { PackingOption } options Options for image packing.
    * @throws { BusinessException } 62980096 - The operation failed. Possible cause: 1.Image upload exception.
    * 2. Decoding process exception. 3. Insufficient memory.
    * @throws { BusinessException } 62980101 - The image data is abnormal.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @throws { BusinessException } 62980106 - The image data is too large. This status code is thrown when an error occurs during the process of checking size.
    * @throws { BusinessException } 62980113 - Unknown image format.
    * The image data provided is not in a recognized or supported format, or it may be occorrupted.
    * @throws { BusinessException } 62980115 - Invalid input parameter.
    * @throws { BusinessException } 62980119 - Failed to encode the image.
    * @throws { BusinessException } 62980120 - Add pixelmap out of range.
    * @throws { BusinessException } 62980172 - Failed to encode icc.
    * @throws { BusinessException } 62980252 - Failed to create surface.
    * @relation packToFile(source: PixelMap, fd: int, options: PackingOption): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public func packToFile(source: PixelMap, fd: Int32, options: PackingOption): Unit
    
    /**
    * Releases an ImagePacker instance
    *
    * @relation release(): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public func release(): Unit
}


/**
* Creates an ImagePacker instance.
*
* @relation function createImagePacker(): ImagePacker
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImagePacker"
]
public func createImagePacker(): ImagePacker


/**
* Creates an ImageReceiver instance.
*
* @throws { BusinessException } 62980104 - Failed to initialize the internal object.
* @throws { BusinessException } 62980115 - Parameter error.Possible causes: 1.Mandatory parameters are left unspecified; 2.Incorrect parameter types.
* @relation function createImageReceiver(size: Size, format: ImageFormat, capacity: int): ImageReceiver
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
]
public func createImageReceiver(size: Size, format: ImageFormat, capacity: Int32): ImageReceiver


/**
* Image receiver object.
*
* @relation interface ImageReceiver
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
]
public class ImageReceiver <: RemoteDataLite {
    /**
    * Image size.
    *
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation readonly size: Size
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    public prop size: Size
    
    /**
    * Image capacity.
    *
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation readonly capacity: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    public prop capacity: Int32
    
    /**
    * Image format.
    *
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation readonly format: ImageFormat
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    public prop format: ImageFormat
    
    /**
    * Get an id which indicates a surface and can be used to set to Camera or other component can receive a surface.
    *
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation getReceivingSurfaceId(): Promise<string>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    public func getReceivingSurfaceId(): String
    
    /**
    * Get lasted image from receiver.
    *
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation readLatestImage(): Promise<Image>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    public func readLatestImage(): Image
    
    /**
    * Get next image from receiver.
    *
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation readNextImage(): Promise<Image>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    public func readNextImage(): Image
    
    /**
    * Subscribe callback when receiving an image.
    *
    * @relation on(type: 'imageArrival', callback: AsyncCallback<void>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    public func on(eventType: ReceiveType, callback: Callback0Argument): Unit
    
    /**
    * Remove callback subscriptions when releasing buffer.
    *
    * @relation off(type: 'imageArrival', callback?: AsyncCallback<void>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    public func off(eventType: ReceiveType): Unit
    
    /**
    * Release image receiver instance.
    *
    * @relation release(): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    public func release(): Unit
}


/**
* Enum of callback.
*
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
]
public enum ReceiveType {
    /**
    * imageArrival.
    *
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    ImageArrival |
    ...
}


/**
* Creates an ImageSource instance based on the URI.
*
* @param { String } uri - Image source URI.
* @throws { BusinessException } 62980104 - Failed to initialize the internal object.
* @relation function createImageSource(uri: string): ImageSource
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public func createImageSource(uri: String): ImageSource


/**
* Creates an ImageSource instance based on the URI.
*
* @param { String } uri - Image source URI.
* @param { SourceOptions } options - The config of Image source.
* @throws { BusinessException } 62980104 - Failed to initialize the internal object.
* @relation function createImageSource(uri: string, options: SourceOptions): ImageSource
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public func createImageSource(uri: String, options: SourceOptions): ImageSource


/**
* Creates an ImageSource instance based on the file descriptor.
*
* @param { Int32 } fd - ID of a file descriptor.
* @throws { BusinessException } 62980104 - Failed to initialize the internal object.
* @relation function createImageSource(fd: int): ImageSource
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public func createImageSource(fd: Int32): ImageSource


/**
* Creates an ImageSource instance based on the file descriptor.
*
* @param { Int32 } fd - ID of a file descriptor.
* @param { SourceOptions } options - The config of Image source.
* @throws { BusinessException } 62980104 - Failed to initialize the internal object.
* @relation function createImageSource(fd: int, options: SourceOptions): ImageSource
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public func createImageSource(fd: Int32, options: SourceOptions): ImageSource


/**
* Creates an ImageSource instance based on the buffer.
*
* @param { Array<UInt8> } buf - The buffer of the image.
* @throws { BusinessException } 62980104 - Failed to initialize the internal object.
* @relation function createImageSource(buf: ArrayBuffer): ImageSource
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public func createImageSource(buf: Array<UInt8>): ImageSource


/**
* Creates an ImageSource instance based on the buffer.
*
* @param { Array<UInt8> } buf - The buffer of the image.
* @param { SourceOptions } options - The config of Image source.
* @throws { BusinessException } 62980104 - Failed to initialize the internal object.
* @relation function createImageSource(buf: ArrayBuffer, options: SourceOptions): ImageSource
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public func createImageSource(buf: Array<UInt8>, options: SourceOptions): ImageSource


/**
* Creates an ImageSource instance based on the raw file descriptor.
*
* @param { resourceManager.RawFileDescriptor } rawfile - The raw file descriptor of the image.
* @param { SourceOptions } options - The config of Image source.
* @throws { BusinessException } 62980104 - Failed to initialize the internal object.
* @relation function createImageSource(rawfile: resourceManager.RawFileDescriptor, options?: SourceOptions): ImageSource
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public func createImageSource(rawfile: RawFileDescriptor, options!: SourceOptions = SourceOptions(0)): ImageSource


/**
* ImageSource instance.
*
* @relation interface ImageSource
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public class ImageSource <: RemoteDataLite {
    /**
    * Supported image formats.
    *
    * @throws { BusinessException } 62980102 - Failed to malloc memory.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation readonly supportedFormats: Array<string>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public prop supportedFormats: Array<String>
    
    /**
    * Obtains the count of frame in an image.
    *
    * @returns { UInt32> } An instance used to return the number.
    * @throws { BusinessException } 62980096 - The operation failed. Possible cause: 1.Image upload exception.
    * 2. Decoding process exception. 3. Insufficient memory.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @throws { BusinessException } 62980111 - The image source data is incomplete.
    * @throws { BusinessException } 62980112 - The image format does not match.
    * @throws { BusinessException } 62980113 - Unknown image format.
    * The image data provided is not in a recognized or supported format, or it may be occorrupted.
    * @throws { BusinessException } 62980115 - Invalid image parameter.
    * @throws { BusinessException } 62980116 - Failed to decode the image.
    * @throws { BusinessException } 62980118 - Failed to create the image plugin.
    * @throws { BusinessException } 62980122 - Failed to decode the image header.
    * @throws { BusinessException } 62980137 - Invalid media operation.
    * @relation getFrameCount(): Promise<int>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func getFrameCount(): UInt32
    
    /**
    * Get image information from image source synchronously.
    *
    * @param { UInt32 } index Sequence number of an image. If this parameter is not specified,
    *  the default value 0 is used.
    * @returns { ImageInfo } An instance used to return the image information.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation getImageInfoSync(index?: int): ImageInfo
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func getImageInfo(index!: UInt32 = 0): ImageInfo
    
    /**
    * Obtains the value of a property in an image with the specified index. This method return the property value in a string.
    *
    * @throws { BusinessException } 62980096 - The operation failed. Possible cause: 1.Image upload exception.
    * 2. Decoding process exception. 3. Insufficient memory.
    * @throws { BusinessException } 62980103 - The image data is not supported.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @throws { BusinessException } 62980110 - The image source data is incorrect.
    * @throws { BusinessException } 62980111 - The image source data is incomplete.
    * @throws { BusinessException } 62980112 - The image format does not match.
    * @throws { BusinessException } 62980113 - Unknown image format.
    * The image data provided is not in a recognized or supported format, or it may be occorrupted.
    * @throws { BusinessException } 62980115 - Invalid image parameter.
    * @throws { BusinessException } 62980118 - Failed to create the image plugin.
    * @throws { BusinessException } 62980122 - Failed to decode the image header.
    * @throws { BusinessException } 62980123 - The image does not support EXIF decoding.
    * @throws { BusinessException } 62980135 - The EXIF value is invalid.
    * @relation getImageProperty(key: PropertyKey, options?: ImagePropertyOptions): Promise<string>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func getImageProperty(key: PropertyKey, options!: ImagePropertyOptions = ImagePropertyOptions()): String
    
    /**
    * Modify the value of a property in an image with the specified key. 
    *
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @throws { BusinessException } 62980115 - Parameter error.Possible causes: 1.Mandatory parameters are left unspecified; 2.Incorrect parameter types.
    * @throws { BusinessException } 62980123 - The image does not support EXIF decoding.
    * @throws { BusinessException } 62980133 - The EXIF data is out of range.
    * @throws { BusinessException } 62980135 - The EXIF value is invalid.
    * @throws { BusinessException } 62980146 - The EXIF data failed to be written to the file.
    * @relation modifyImageProperty(key: PropertyKey, value: string): Promise<void>
    */
    @!APILevel[
        22,
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
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation updateData(buf: ArrayBuffer, isFinished: boolean, value: int, length: int): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func updateData(buf: Array<UInt8>, isFinished: Bool, offset: UInt32, length: UInt32): Unit
    
    /**
    * Create a PixelMap object based on image decoding parameters synchronously.
    *
    * @param { DecodingOptions } options Image decoding parameters.
    * @returns { PixelMap } An instance used to return the PixelMap object.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation createPixelMapSync(options?: DecodingOptions): PixelMap
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func createPixelMap(options!: DecodingOptions = DecodingOptions()): PixelMap
    
    /**
    * Creates a PixelMap array based on image decoding parameters.
    *
    * @param { DecodingOptions } options Image decoding parameters.
    * @returns { Array<PixelMap> } An instance used to return the PixelMap array.
    * @throws { BusinessException } 62980096 - The operation failed. Possible cause: 1.Image upload exception.
    * 2. Decoding process exception. 3. Insufficient memory.
    * @throws { BusinessException } 62980099 - The shared memory data is abnormal.
    * @throws { BusinessException } 62980101 - The image data is abnormal.
    * @throws { BusinessException } 62980102 - Failed to malloc memory.
    * @throws { BusinessException } 62980103 - The image data is not supported.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @throws { BusinessException } 62980106 - The image data is too large. This status code is thrown when an error occurs during the process of checking size.
    * @throws { BusinessException } 62980109 - Failed to crop the image.
    * @throws { BusinessException } 62980111 - The image source data is incomplete.
    * @throws { BusinessException } 62980115 - Invalid image parameter.
    * @throws { BusinessException } 62980116 - Failed to decode the image.
    * @throws { BusinessException } 62980118 - Failed to create the image plugin.
    * @throws { BusinessException } 62980137 - Invalid media operation.
    * @throws { BusinessException } 62980173 - The DMA memory does not exist.
    * @throws { BusinessException } 62980174 - The DMA memory data is abnormal.
    * @relation createPixelMapList(options?: DecodingOptions): Promise<Array<PixelMap>>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func createPixelMapList(options!: DecodingOptions = DecodingOptions()): Array<PixelMap>
    
    /**
    * Obtains the array of delay time in an image. 
    *
    * @returns { Array<UInt32> } An instance used to return the array.
    * @throws { BusinessException } 62980096 - The operation failed. Possible cause: 1.Image upload exception.
    * 2. Decoding process exception. 3. Insufficient memory.
    * @throws { BusinessException } 62980102 - Failed to malloc memory.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @throws { BusinessException } 62980110 - The image source data is incorrect.
    * @throws { BusinessException } 62980111 - The image source data is incomplete.
    * @throws { BusinessException } 62980115 - Invalid image parameter.
    * @throws { BusinessException } 62980116 - Failed to decode the image.
    * @throws { BusinessException } 62980118 - Failed to create the image plugin.
    * @throws { BusinessException } 62980122 - Failed to decode the image header.
    * @throws { BusinessException } 62980149 - Invalid MIME type for the image source.
    * @relation getDelayTimeList(): Promise<Array<int>>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func getDelayTimeList(): Array<Int32>
    
    /**
    * Releases an ImageSource instance.
    *
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation release(): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public func release(): Unit
}


/**
* Create pixelmap by data buffer.
*
* @param {Array<UInt8> } colors The image color buffer.
* @param { InitializationOptions } options Initialization options for pixelmap.
* @returns { PixelMap } Return the PixelMap object.
* @throws { BusinessException } 62980104 - Failed to initialize the internal object.
* @throws { BusinessException } 62980115 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified.
* 2.Incorrect parameter types. 3.Parameter verification failed.
* @relation function createPixelMapSync(colors: ArrayBuffer, options: InitializationOptions): PixelMap
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public func createPixelMap(colors: Array<UInt8>, options: InitializationOptions): PixelMap


/**
* PixelMap instance.
*
* @relation interface PixelMap
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class PixelMap <: RemoteDataLite {
    /**
    * Whether the image pixel map can be edited.
    *
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation readonly isEditable: boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public prop isEditable: Bool
    
    /**
    * Is it stride Alignment.
    *
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation readonly isStrideAlignment: boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public prop isStrideAlignment: Bool
    
    /**
    * Releases this PixelMap object.
    *
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation release(): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func release(): Unit
    
    /**
    * Reads image pixel map data and writes the data to an ArrayBuffer.
    *
    * @param { Array<UInt8> } dst A buffer to which the image pixel map data will be written.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation readPixelsToBuffer(dst: ArrayBuffer): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func readPixelsToBuffer(dst: Array<UInt8>): Unit
    
    /**
    * Reads image data in an ArrayBuffer and writes the data to a PixelMap object. 
    *
    * @param { Array<UInt8> } src A buffer from which the image data will be read.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation writeBufferToPixels(src: ArrayBuffer): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func writeBufferToPixels(src: Array<UInt8>): Unit
    
    /**
    * Obtains pixel map information about this image. 
    *
    * @returns { ImageInfo } An instance used to return the image pixel map information.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation getImageInfo(): Promise<ImageInfo>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func getImageInfo(): ImageInfo
    
    /**
    * Obtains the number of bytes in each line of the image pixel map.
    *
    * @returns { UInt32 } Number of bytes in each line.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation getBytesNumberPerRow(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func getBytesNumberPerRow(): UInt32
    
    /**
    * Obtains the total number of bytes of the image pixel map.
    *
    * @returns { UInt32 } Total number of bytes.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation getPixelBytesNumber(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func getPixelBytesNumber(): UInt32
    
    /**
    * Obtains the density of the image pixel map.
    *
    * @returns { Int32 } The number of density.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation getDensity():number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func getDensity(): Int32
    
    /**
    * Set the transparent rate of pixel map.
    *
    * @param { Float32 } rate The value of transparent rate.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation opacity(rate: number): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func opacity(rate: Float32): Unit
    
    /**
    * Image zoom in width and height.
    *
    * @param { Float32 } x The zoom value of width.
    * @param { Float32 } y The zoom value of height.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation scale(x: number, y: number): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func scale(x: Float32, y: Float32): Unit
    
    /**
    * Image position transformation.
    *
    * @param { Float32 } x The position value of width.
    * @param { Float32 } y The position value of height.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation translate(x: number, y: number): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func translate(x: Float32, y: Float32): Unit
    
    /**
    * Image rotation.
    *
    * @param { Float32 } angle The rotation angle.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation rotate(angle: number): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func rotate(angle: Float32): Unit
    
    /**
    * Image flipping. 
    *
    * @param { Bool } horizontal Is flip in horizontal.
    * @param { Bool } vertical Is flip in vertical.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation flip(horizontal: boolean, vertical: boolean): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func flip(horizontal: Bool, vertical: Bool): Unit
    
    /**
    * Crop the image.
    *
    * @param { Region } region The region to crop.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation crop(region: Region): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func crop(region: Region): Unit
    
    /**
    * Writes image pixel map data to the specified area. 
    *
    * @param { PositionArea } area Area to which the image pixel map data will be written.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation writePixels(area: PositionArea): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func writePixels(area: PositionArea): Unit
    
    /**
    * Reads image pixel map data in an area. This method return the data read.
    *
    * @param { PositionArea } area Area from which the image pixel map data will be read.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation readPixels(area: PositionArea): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func readPixels(area: PositionArea): Unit
    
    /**
    * Obtains new pixel map with alpha information. 
    *
    * @returns { PixelMap } An instance used to return the new image pixel map.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @relation createAlphaPixelmapSync(): PixelMap
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func createAlphaPixelmap(): PixelMap
    
    /**
    * Set color space of pixel map.
    *
    * @param { ColorSpaceManager } colorSpace The color space for pixel map.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @throws { BusinessException } 62980111 - The image source data is incomplete.
    * @throws { BusinessException } 62980115 - If the image parameter invalid.
    * @relation setColorSpace(colorSpace: colorSpaceManager.ColorSpaceManager): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func setColorSpace(colorSpace: ColorSpaceManager): Unit
    
    /**
    * Get color space of pixel map.
    *
    * @throws { BusinessException } 62980101 - If the image data abnormal.
    * @throws { BusinessException } 62980103 - If the image data unsupport.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @throws { BusinessException } 62980115 - If the image parameter invalid.
    * @relation getColorSpace(): colorSpaceManager.ColorSpaceManager
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func getColorSpace(): ColorSpaceManager
    
    /**
    * Apply color space of pixel map, the pixels will be changed by input color space.
    *
    * @param { ColorSpaceManager } targetColorSpace - The color space for pixel map.
    * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
    * @throws { BusinessException } 62980108 - Failed to convert the color space.
    * @throws { BusinessException } 62980115 - Invalid image parameter.
    * @relation applyColorSpace(targetColorSpace: colorSpaceManager.ColorSpaceManager): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func applyColorSpace(targetColorSpace: ColorSpaceManager): Unit
}


