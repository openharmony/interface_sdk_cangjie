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

package ohos.arkui.component.image_span
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.image.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.resource.*
import ohos.labels.APILevel
import ohos.multimedia.image.PixelMap


/**
* Defines ImageSpan Component instance.
*
* @relation const ImageSpan: ImageSpanInterface
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ImageSpan <: ViewBase {
    /**
    * Called when image is entered in span.
    *
    * @param { ResourceStr } value - The image resource.
    * @returns { ImageSpan } The attribute of the image span.
    * @relation (value: ResourceStr | PixelMap): ImageSpanAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value: ResourceStr)
    
    /**
    * Called when image is entered in span.
    *
    * @param { PixelMap } value - The image resource.
    * @returns { ImageSpan } The attribute of the image span.
    * @relation (value: ResourceStr | PixelMap): ImageSpanAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value: PixelMap)
    
    /**
    * Called when the alignment of image span is set.
    *
    * @param { ImageSpanAlignment } value - The alignment type of image span.
    * @returns { This } The attribute of the image span.
    * @relation verticalAlign(value: ImageSpanAlignment): ImageSpanAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func verticalAlign(value: ImageSpanAlignment): This
    
    /**
    * Sets the zoom type of an image.
    *
    * @param { ImageFit } value - Image display mode.
    * @returns { This } The attribute of the image span.
    * @relation objectFit(value: ImageFit): ImageSpanAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func objectFit(value: ImageFit): This
    
    /**
    * Sets the color filter effect on the image span.
    *
    * @param { ColorFilter } filter ColorFilter object.
    * @returns { This } The attribute of the image span.
    * @relation colorFilter(filter: ColorFilter | DrawingColorFilter): ImageSpanAttribute
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func colorFilter(filter: ColorFilter): This
    
    /**
    * Sets a callback which is triggered when the image is successfully loaded.
    * The size of the image source that is successfully loaded is returned, in pixels.
    *
    * @param { ImageCompleteCallback } callback - Triggered when the image is successfully loaded.
    * @returns { ImageSpanAttribute } The attribute of the image span.
    * @relation onComplete(callback: ImageCompleteCallback): ImageSpanAttribute
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onComplete(callback: ImageCompleteCallback): This
    
    /**
    * Sets a callback which is triggered when an exception occurs during image loading.
    * The field of "message" returned in the callback carries the detailed information of failed image loading.
    *
    * @param { ImageErrorCallback } callback - Triggered when an exception occurs during image loading.
    * @returns { This } The attribute of the image span.
    * @relation onError(callback: ImageErrorCallback): ImageSpanAttribute
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onError(callback: ImageErrorCallback): This
}


