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

package ohos.arkui.component.image
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.resource.*
import ohos.labels.APILevel
import ohos.multimedia.image.PixelMap


/**
* @class ImageError
* @relation interface ImageError
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ImageError {
    /**
    * Component width.
    *
    * @type { Float64 }
    * @relation componentWidth: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var componentWidth: Float64 = 0.0
    
    /**
    * Component height.
    *
    * @type { Float64 }
    * @relation componentHeight: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var componentHeight: Float64 = 0.0
    
    /**
    * Message.
    *
    * @type { String }
    * @relation message: string
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var message: String = ""
}


/**
* The information about the successfully loaded image.
* 
* @class ImageLoadResult
* @relation interface ImageLoadResult
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ImageLoadResult {
    /**
    * The width of the image source.
    *
    * @type { Float64 }
    * @relation width: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var width: Float64 = 0.0
    
    /**
    * The height of the image source.
    *
    * @type { Float64 }
    * @relation height: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var height: Float64 = 0.0
    
    /**
    * The width of the component source.
    *
    * @type { Float64 }
    * @relation componentWidth: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var componentWidth: Float64 = 0.0
    
    /**
    * The height of the component source.
    *
    * @type { Float64 }
    * @relation componentHeight: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var componentHeight: Float64 = 0.0
    
    /**
    * The value of the status of the image being loaded successfully.
    * If the returned status value is 0, the image data is successfully loaded.
    * If the returned status value is 1, the image is successfully decoded.
    * 
    * @type { Int32 }
    * @relation loadingStatus: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var loadingStatus: Int32 = 0
    
    /**
    * The width of the picture that is actually drawn.
    *
    * @type { Float64 }
    * @relation contentWidth: number
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var contentWidth: Float64 = 0.0
    
    /**
    * The height of the picture that is actually drawn.
    *
    * @type { Float64 }
    * @relation contentHeight: number
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var contentHeight: Float64 = 0.0
    
    /**
    * The offset between image content and image component on the X-axis.
    *
    * @type { Float64 }
    * @relation contentOffsetX: number
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var contentOffsetX: Float64 = 0.0
    
    /**
    * The offset between image content and image component on the Y-axis.
    *
    * @type { Float64 }
    * @relation contentOffsetY: number
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var contentOffsetY: Float64 = 0.0
}


public type ImageCompleteCallback = (ImageLoadResult) -> Unit

public type ImageErrorCallback = (ImageError) -> Unit

/**
* Defines the ColorFilter object.
*
* @relation class ColorFilter
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    form: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ColorFilter {
    /**
    * Creates ColorFilter with 4*5 matrix.
    *
    * @param { Array<Float32> } value 4*5 color matrix values. The value[m*n] is located in the m row and n column. The matrix is row-first.
    * @relation constructor(value: number[])
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value: Array<Float32>)
}


/**
* Defines Image Component.
*
* <p>If flickering occurs during image loading, set <b>syncLoad</b> to <b>true</b>.
* For details, see [Concurrency Optimization]{@link 
* https://developer.huawei.com/consumer/en/doc/best-practices/bpta-click-to-click-response-optimization}</p>
* 
* <p>If white blocks persist during image loading, follow the steps in [Solution to White Image Blocks]{@link
* https://developer.huawei.com/consumer/en/doc/best-practices/bpta-image-white-lump-solution}</p>
* 
* <p>If image loading takes a long time, follow the steps in [Reducing the Loading Time of Preset Images]{@link
* https://developer.huawei.com/consumer/en/doc/best-practices/bpta-texture-compression-improve-performance}</p>
*
* @relation const Image: ImageInterface
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Image <: ViewBase {
    /**
    * Set src to obtain images
    *
    * @param { ResourceStr } src
    * @returns { Image }
    * @relation (src: PixelMap | ResourceStr | DrawableDescriptor): ImageAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(src: ResourceStr)
    
    /**
    * Set src to obtain images
    *
    * @param { PixelMap } src
    * @returns { Image }
    * @relation (src: PixelMap | ResourceStr | DrawableDescriptor): ImageAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(src: PixelMap)
    
    /**
    * Sets the placeholder image displayed during loading.
    * 
    * <p><strong>NOTE</strong>:
    * <br>This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
    * </p>
    * 
    * @param { ResourceStr } value - Placeholder image displayed during loading, Default value is null.
    * @returns { This }
    * @relation alt(value: string | Resource | PixelMap): ImageAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func alt(src: ResourceStr): This
    
    /**
    * Sets how the image is resized to fit its container.
    *
    * @param { ImageFit } value - How the image is resized to fit its container, Default value is ImageFit.Cover.
    * @returns { This }
    * @relation objectFit(value: ImageFit): ImageAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func objectFit(value: ImageFit): This
    
    /**
    * Set the repeat style of the picture
    *
    * <p><strong>NOTE</strong>:
    * <br>This attribute is not applicable to SVG images.
    * <br>This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
    * </p>
    *
    * @param { ImageRepeat } value - How the image is repeated, Default value is ImageRepeat.NoRepeat.
    * @returns { This }
    * @relation objectRepeat(value: ImageRepeat): ImageAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func objectRepeat(value: ImageRepeat): This
    
    /**
    * Sets the interpolation effect of the image, which can alleviate aliasing that occurs when the image is zoomed.
    *
    * <p><strong>NOTE</strong>:
    * <br>This attribute is not applicable to SVG images.
    * <br>This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
    * </p>
    *
    * @param { ImageInterpolation } value - Interpolation effect of the image, Default value is ImageInterpolation.Low.
    * @returns { This }
    * @relation interpolation(value: ImageInterpolation): ImageAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func interpolation(value: ImageInterpolation): This
    
    /**
    * Sets the rendering mode of the image.
    *
    * <p><strong>NOTE</strong>:
    * <br>This attribute is not applicable to SVG images.
    * <br>When ColorFilter is set, this attribute is not effective.
    * <br>This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
    * </p>
    *
    * @param { ImageRenderMode } value - Rendering mode of the image, Default value is ImageRenderMode.Original.
    * @returns { This }
    * @relation renderMode(value: ImageRenderMode): ImageAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func renderMode(value: ImageRenderMode): This
    
    /**
    * Sets the decoding size of the image. 
    * The original picture is decoded into a picture of a specified size. The unit of the number type is px.
    * Anonymous Object Rectification.
    *
    * <p><strong>NOTE</strong>:
    * <br>This attribute works only when the target size is smaller than the source size.
    * <br>This attribute is not applicable to SVG images or PixelMap objects.
    * <br>This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
    * </p>
    *
    * @param { Length } width - Decoding size of the image.
    * @param { Length } height - Decoding size of the image.
    * @returns { This }
    * @relation sourceSize(value: ImageSourceSize): ImageAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func sourceSize(width: Length, height: Length): This
    
    /**
    * Specifies whether to load the image synchronously.
    *
    * <p><strong>NOTE</strong>:
    * <br>This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
    * </p>
    *
    * @param { Bool } value - Whether to load the image synchronously, Default value is false.
    * @returns { This }
    * @relation syncLoad(value: boolean): ImageAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func syncLoad(value: Bool): This
    
    /**
    * Sets the fill color to be superimposed on the image.
    * By default, no fill color is applied. If an invalid value is passed, the system uses the default theme color:
    * black in light mode and white in dark mode.
    *
    * <p><strong>NOTE</strong>:
    * <br>This attribute applies only to SVG images.
    * <br>This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
    * </p>
    *
    * @param { ResourceColor } value - Fill color to be superimposed on the image.
    * @returns { This }
    * @relation fillColor(value: ResourceColor): ImageAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fillColor(value: ResourceColor): This
    
    /**
    * Specifies whether to resize the image source based on the size of the display area during image decoding.
    *
    * <p><strong>NOTE</strong>:
    * <br>This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor
    * or SVG.
    * </p>
    *
    * @param { Bool } value - Whether to resize the image source based on the size of the display area
    * during image decoding, Default value is false.
    * @returns { ImageAttribute }
    * @relation autoResize(value: boolean): ImageAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func autoResize(value: Bool): This
    
    /**
    * Specifies whether to display the image in the system language direction.
    *
    * <p><strong>NOTE</strong>:
    * <br>This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
    * </p>
    *
    * @param { Bool } value - Whether to display the image in the system language direction, Default value is false.
    * @returns { This }
    * @relation matchTextDirection(value: boolean): ImageAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func matchTextDirection(value: Bool): This
    
    /**
    * Sets whether the display size of the image follows the source size.
    *
    * <p><strong>NOTE</strong>:
    * <br>This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
    * </p>
    *
    * @param { Bool } value - Whether to fit the image to the size of the image source, Default value is false.
    * @returns { This }
    * @relation fitOriginalSize(value: boolean): ImageAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fitOriginalSize(value: Bool): This
    
    /**
    * Triggered when an image is successfully loaded or decoded.
    * The size of the image source that is successfully loaded is returned, in pixels.
    *
    * <p><strong>NOTE</strong>:
    * <br>This event is not triggered if the parameter type of the component is AnimatedDrawableDescriptor.
    * </p>
    *
    * @param { function } callback
    * @returns { This }
    * @relation onComplete
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onComplete(callback: ImageCompleteCallback): This
    
    /**
    * Triggered when an error occurs during image loading.
    * The field of "message" carries the detailed information of failed image loading.
    * 
    * <p><strong>NOTE</strong>:
    * <br>This event is not triggered if the parameter type of the component is AnimatedDrawableDescriptor.
    * </p>
    *
    * @param { ImageErrorCallback } callback
    * @returns { This }
    * @relation onError(callback: ImageErrorCallback): ImageAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onError(callback: ImageErrorCallback): This
    
    /**
    * When the loaded source file is a svg image, this callback is triggered when the playback of the svg image is complete.
    * If the svg image is a wireless loop image, this callback is not triggered.
    *
    * <p><strong>NOTE</strong>:
    * <br>Only SVG images are supported.
    * <br>This event is not triggered if the parameter type of the component is AnimatedDrawableDescriptor.
    * </p>
    *
    * @param { function } event
    * @returns { This }
    * @relation onFinish(event: () => void): ImageAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onFinish(event: () -> Unit): This
}


