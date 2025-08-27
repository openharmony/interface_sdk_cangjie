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

package ohos.arkui.component.canvas
import ohos.arkui.component.common.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

import ohos.arkui.component.path_2d.*
import ohos.arkui.component.util.*
import ohos.multimedia.image.*
import ohos.arkui.component.native_struct.*
import std.deriving.Derive
import ohos.multimedia.image.PixelMap

/**
* Describes an opaque object of a template, which is created using the createPattern() method.
*
* @relation interface CanvasPattern
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CanvasPattern <: RemoteDataLite {
    /**
    * The 2D transformation effect is added. The current transformation matrix is not overwritten and
    *    the transformations are superimposed for multiple times.
    *
    * @param { Matrix2D } transform - 2D transformation matrix.
    * @relation setTransform(transform?: Matrix2D): void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setTransform(transform: Matrix2D): Unit
}


/**
* Draw context object for the Canvas component.
*
* @relation declare class CanvasRenderingContext2D extends CanvasRenderer
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CanvasRenderingContext2D <: RemoteDataLite {
    /**
    * Init function of the canvas drawing context object, which is used to create a drawing context object.
    *
    * @relation constructor(settings?: RenderingContextSettings);
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(settings: RenderingContextSettings)
    
    /**
    * Attributes that describe the fill color and style. The options are as follows:
    *
    * @type { string | number | CanvasGradient | CanvasPattern }
    * string: Color String.
    * number: Indicates the color with number.
    * CanvasGradient: Color gradient object. For details, see {@link CanvasGradient}.
    * CanvasPattern: Template object. For details, see {@link CanvasPattern}.
    * @default #000000 (black)
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @crossplatform
    * @form
    * @atomicservice
    * @since 11
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fillStyle(color: ResourceColor): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fillStyle(gradient: CanvasGradient): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fillStyle(pattern: CanvasPattern): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop lineWidth: Option<Float64>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeStyle(color: ResourceColor): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeStyle(gradient: CanvasGradient): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeStyle(pattern: CanvasPattern): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop lineCap: Option<LineCapStyle>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop lineJoin: Option<LineJoinStyle>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop miterLimit: Option<Float64>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func font(
        style!: FontStyle = FontStyle.Normal,
        weight!: FontWeight = FontWeight.Normal,
        size!: Length = 14.px,
        family!: String = "sans-serif"
    ): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop textAlign: Option<TextAlignStyle>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop textBaseline: Option<TextBaseline>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop globalAlpha: Option<Float64>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setLineDash(dashArr: Array<Float64>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop lineDashOffset: Option<Float64>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop globalCompositeOperation: Option<CompositeOperation>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop shadowBlur: Option<Float64>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop shadowColor: Option<ResourceColor>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop shadowOffsetX: Option<Float64>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop shadowOffsetY: Option<Float64>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop imageSmoothingEnabled: Option<Bool>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop imageSmoothingQuality: Option<QualityType>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop direction: Option<CanvasDirection>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop filter: Option<String>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fillRect(x: Float64, y: Float64, width: Float64, height: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeRect(x: Float64, y: Float64, width: Float64, height: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func clearRect(x: Float64, y: Float64, width: Float64, height: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fillText(text: String, x: Float64, y: Float64, maxWidth!: Option<Float64> = Option.None): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeText(text: String, x: Float64, y: Float64, maxWidth!: Option<Float64> = Option.None): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func measureText(text: String): TextMetrics
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func stroke(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func stroke(path2D: Path2D): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func beginPath(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func moveTo(x: Float64, y: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func lineTo(x: Float64, y: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func closePath(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func createPattern(image: ImageBitmap, repetition: Repetition): CanvasPattern
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bezierCurveTo(cp1x: Float64, cp1y: Float64, cp2x: Float64, cp2y: Float64, x: Float64, y: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func quadraticCurveTo(cpx: Float64, cpy: Float64, x: Float64, y: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func arc(
        x: Float64,
        y: Float64,
        radius: Float64,
        startAngle: Float64,
        endAngle: Float64,
        counterclockwise!: Bool = false
    ): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func arcTo(x1: Float64, y1: Float64, x2: Float64, y2: Float64, radius: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func ellipse(
        x: Float64,
        y: Float64,
        radiusX: Float64,
        radiusY: Float64,
        rotation: Float64,
        startAngle: Float64,
        endAngle: Float64,
        counterclockwise!: Bool = false
    ): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func rect(x: Float64, y: Float64, width: Float64, height: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fill(fillRule!: CanvasFillRule = CanvasFillRule.nonzero): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fill(path: Path2D, fillRule!: CanvasFillRule = CanvasFillRule.nonzero): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func clip(fillRule!: CanvasFillRule = CanvasFillRule.nonzero): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func clip(path: Path2D, fillRule!: CanvasFillRule = CanvasFillRule.nonzero): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func rotate(angle: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func scale(x: Float64, y: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func transform(
        scaleX: Float64,
        skewX: Float64,
        skewY: Float64,
        scaleY: Float64,
        translateX: Float64,
        translateY: Float64
    ): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setTransform(
        scaleX: Float64,
        skewX: Float64,
        skewY: Float64,
        scaleY: Float64,
        translateX: Float64,
        translateY: Float64
    ): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setTransform(matrix: Option<Matrix2D>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func translate(x: Float64, y: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func restore(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func save(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func createLinearGradient(x0: Float64, y0: Float64, x1: Float64, y1: Float64): CanvasGradient
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func createRadialGradient(x0: Float64, y0: Float64, r0: Float64, x1: Float64, y1: Float64, r1: Float64): CanvasGradient
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func createConicGradient(startAngle: Float64, x: Float64, y: Float64): CanvasGradient
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func drawImage(image: ImageBitmap, dx: Float64, dy: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func drawImage(image: ImageBitmap, dx: Float64, dy: Float64, dWidth: Float64, dHeight: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func drawImage(
        image: ImageBitmap,
        sx: Float64,
        sy: Float64,
        sWidth: Float64,
        sHeight: Float64,
        dx: Float64,
        dy: Float64,
        dWidth: Float64,
        dHeight: Float64
    ): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func drawImage(pixelMap: PixelMap, dx: Float64, dy: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func drawImage(pixelMap: PixelMap, dx: Float64, dy: Float64, dWidth: Float64, dHeight: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func drawImage(
        pixelMap: PixelMap,
        sx: Float64,
        sy: Float64,
        sWidth: Float64,
        sHeight: Float64,
        dx: Float64,
        dy: Float64,
        dWidth: Float64,
        dHeight: Float64
    ): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getPixelMap(left: Float64, top: Float64, width: Float64, height: Float64): PixelMap
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func reset(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func saveLayer(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func restoreLayer(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func resetTransform(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getTransform(): Matrix2D
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func transferFromImageBitmap(bitmap: ImageBitmap): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop height: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop width: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setPixelMap(pixelMap: Option<PixelMap>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getLineDash(): Array<Float64>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func toDataURL(imageType!: ImageType = ImageType.png, quality!: Float64 = 0.92): String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func createImageData(sw: Float64, sh: Float64): ImageData
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func createImageData(imageData: ImageData): ImageData
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getImageData(sx: Float64, sy: Float64, sw: Float64, sh: Float64): ImageData
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func putImageData(imageData: ImageData, dx: Length, dy: Length): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func putImageData(
        imageData: ImageData,
        dx: Float64,
        dy: Float64,
        dirtyX: Float64,
        dirtyY: Float64,
        dirtyWidth: Float64,
        dirtyHeight: Float64
    ): Unit
}


@!APILevel[
    12,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RenderingContextSettings {
    public var antialias: Bool
    
    public init(antialias!: Bool = false)
}


@!APILevel[
    12,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextMetrics {
    @!APILevel[
        12,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public let width: Float64
    
    @!APILevel[
        12,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public let height: Float64
}


@!APILevel[
    12,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Canvas <: ViewBase {
    @!APILevel[
        12,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(context: Option<CanvasRenderingContext2D>)
    
    @!APILevel[
        12,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onReady(callback: () -> Unit): This
}


@!APILevel[
    12,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CanvasGradient <: RemoteDataLite {
    @!APILevel[
        12,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func addColorStop(offset: Float64, color: ResourceColor): Unit
}


/**
* Bitmap image object that can be drawn onto the current Canvas
*
* @relation declare class ImageBitmap
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ImageBitmap <: RemoteData {
    /**
    * Indicates the width of the CSS pixel unit of ImageData.
    *
    * @relation readonly width: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop width: Float64
    
    /**
    * Indicates the height of the CSS pixel unit of ImageData.
    *
    * @relation readonly height: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop height: Float64
    
    /**
    * Create an ImageBitmap object based on the transferred image path.
    *
    * @param { String } src - Path of the image object.
    * @returns { This }
    * @relation constructor(src: string)
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(src: String)
}


/**
* Image data object
*
* @relation declare class ImageData
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ImageData <: RemoteDataLite {
    /**
    * Width of the image.
    *
    * @relation readonly height: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop width: Int32
    
    /**
    * Height of the image.
    *
    * @relation readonly height(): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop height: Int32
    
    /**
    * Array containing image pixel data
    *
    * @relation readonly data: Uint8ClampedArray
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop data: Array<UInt8>
    
    /**
    * Create an ImageData object based on the input parameters.
    *
    * @param { Float64 } width - Width of the image.
    * @param { Float64 } height - Height of the image.
    * @param { Array<UInt8> } data - Data of the image. If this parameter is not specified, the default value is a black rectangular image.
    * @param { LengthMetricsUnit } unit - the unit mode
    * @returns { This }
    * @relation constructor(width: number, height: number, data?: Uint8ClampedArray, unit?: LengthMetricsUnit)
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(width: Float64, height: Float64, data!: Array<UInt8>,
        unit!: LengthMetricsUnit = LengthMetricsUnit.DEFAULT)
    
    /**
    * Create an ImageData object based on the input parameters.
    *
    * @param { Float64 } width - Width of the image.
    * @param { Float64 } height - Height of the image.
    * @param { LengthMetricsUnit } unit - the unit mode
    * @returns { This }
    * @relation constructor(width: number, height: number, data?: Uint8ClampedArray, unit?: LengthMetricsUnit)
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(width: Float64, height: Float64, unit!: LengthMetricsUnit = LengthMetricsUnit.DEFAULT)
}


/**
* 2D transformation matrix, supporting rotation, translation, and scaling of the X-axis and Y-axis
*
* @relation declare class Matrix2D
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Matrix2D <: RemoteDataLite {
    /**
    * Constructs a 2D change matrix object. The default value is the unit matrix.
    *
    * @param { LengthMetricsUnit } unit - the unit mode
    * @returns { This }
    * @relation constructor(unit: LengthMetricsUnit)
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(unit!: LengthMetricsUnit = LengthMetricsUnit.DEFAULT)
    
    /**
    * Horizontal Zoom
    *
    * @relation scaleX?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop scaleX: Float64
    
    /**
    * Vertical Zoom
    *
    * @relation scaleY?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop scaleY: Float64
    
    /**
    * Horizontal Tilt
    *
    * @relation rotateX?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop rotateX: Float64
    
    /**
    * Vertical Tilt
    *
    * @relation rotateY?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop rotateY: Float64
    
    /**
    * Horizontal movement
    *
    * @relation translateX?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop translateX: Float64
    
    /**
    * Vertical movement
    *
    * @relation translateY?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public mut prop translateY: Float64
    
    /**
    * Transforms the current 2D matrix back to the identity matrix (i.e., without any rotational
    * translation scaling effect)
    *
    * @returns { This }
    * @relation identity(): Matrix2D
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func identity(): This
    
    /**
    * Transform the current 2D matrix into an inverse matrix (that is, the transformation effect
    * is the opposite effect of the original)
    *
    * @returns { This }
    * @relation invert(): Matrix2D
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func invert(): This
    
    /**
    * Adds the rotation effect of the X and Y axes to the current matrix.
    *
    * @param { Float64 } degree - The rotation angle, clockwise in radians.
    * @param { Float64 } rx - Rotation effect of the X-axis
    * @param { Float64 } ry - Rotation effect of the Y-axis
    * @returns { This }
    * @relation rotate(degree: number, rx?: number, ry?: number): Matrix2D
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func rotate(degree: Float64, rx!: Float64 = 0.0, ry!: Float64 = 0.0): This
    
    /**
    * Adds the translation effect of the X and Y axes to the current matrix.
    *
    * @param { Float64 } tx - X-axis translation effect
    * @param { Float64 } ty - Y-axis translation effect
    * @returns { This }
    * @relation translate(tx?: number, ty?: number): Matrix2D
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func translate(tx!: Float64 = 0.0, ty!: Float64 = 0.0): This
    
    /**
    * Adds the scaling effect of the X and Y axes to the current matrix.
    *
    * @param { Float64 } sx - X-axis scaling effect
    * @param { Float64 } sy - Y-axis scaling effect
    * @returns { This }
    * @relation scale(sx?: number, sy?: number): Matrix2D
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func scale(sx!: Float64 = 1.0, sy!: Float64 = 1.0): This
}


