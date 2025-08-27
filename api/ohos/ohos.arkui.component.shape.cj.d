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

package ohos.arkui.component.shape
import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.resource.*
import ohos.labels.APILevel
import ohos.multimedia.image.PixelMap


/**
* Defines ShapeComponent Component.
*
* @relation const ShapeComponent: ShapeInstance
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public abstract class ShapeComponent <: ContainerBase {
    /**
    * Called when the fill color is set.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation fill(value: ResourceColor): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fill(value: ResourceColor): This
    
    /**
    * Called when the transparency of the border is set.
    *
    * @param { Float64 } value
    * @returns { This }
    * @relation fillOpacity(value: number | string | Resource): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fillOpacity(value: Float64): This
    
    /**
    * Called when the transparency of the border is set.
    *
    * @param { AppResource } value
    * @returns { This }
    * @relation fillOpacity(value: number | string | Resource): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fillOpacity(value: AppResource): This
    
    /**
    * Called when the border color is set.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation stroke(value: ResourceColor): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func stroke(value: ResourceColor): This
    
    /**
    * Called when the gap of the border is set.
    *
    * @param { Array<Length> } value
    * @returns { This }
    * @relation strokeDashArray(value: Array<any>): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeDashArray(value: Array<Length>): This
    
    /**
    * Called when the offset of the starting point of border drawing is set.
    *
    * @param { Length } value
    * @returns { This }
    * @relation strokeDashOffset(value: Length): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeDashOffset(value: Length): This
    
    /**
    * Called when the path endpoint drawing style is set.
    *
    * @param { LineCapStyle } value
    * @returns { This }
    * @relation strokeLineCap(value: LineCapStyle): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeLineCap(value: LineCapStyle): This
    
    /**
    * Called when the border corner drawing style is set.
    *
    * @param { LineJoinStyle } value
    * @returns { This }
    * @relation strokeLineJoin(value: LineJoinStyle): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeLineJoin(value: LineJoinStyle): This
    
    /**
    * Called when the limit value for drawing acute angles as oblique angles is set.
    *
    * @param { Float64 } miterLimit
    * @returns { This }
    * @relation strokeMiterLimit(value: Length): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeMiterLimit(miterLimit: Float64): This
    
    /**
    * Called when the opacity of the border is set.
    *
    * @param { Float64 } value
    * @returns { This }
    * @relation strokeOpacity(value: number | string | Resource): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeOpacity(value: Float64): This
    
    /**
    * Called when the opacity of the border is set.
    *
    * @param { AppResource } value
    * @returns { This }
    * @relation strokeOpacity(value: number | string | Resource): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeOpacity(value: AppResource): This
    
    /**
    * Called when the width of the border is set.
    *
    * @param { Length } value
    * @returns { This }
    * @relation strokeWidth(value: Length): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeWidth(value: Length): This
    
    /**
    * Called when setting whether anti aliasing is on.
    *
    * @param { boolean } value
    * @returns { This }
    * @relation antiAlias(value: boolean): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func antiAlias(value: Bool): This
    
    /**
    * Viewport width.
    *
    * @param { Length } value
    * @returns { This }
    * @relation width?: Length;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func width(value: Length): This
    
    /**
    * Viewport height.
    *
    * @param { Length } value
    * @returns { This }
    * @relation height?: Length;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func height(value: Length): This
}


/**
* Defines Shape Component.
*
* @relation const Shape: ShapeInterface;
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Shape <: ShapeComponent {
    /**
    * Defines Shape Component instance.
    *
    * @param { () -> Unit } child
    * @returns { This }
    * relation (value?: PixelMap): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(child!: () -> Unit = { => })
    
    /**
    * Defines Shape Component instance.
    *
    * @param { PixelMap } value
    * @returns { This }
    * relation (value?: PixelMap): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: PixelMap)
    
    /**
    * Viewport of shape
    * Anonymous Object Rectification.
    *
    * @param { Length } x 
    * @param { Length } y
    * @param { Length } width
    * @param { Length } height  
    * @returns { This }
    * @relation viewPort(value: ViewportRect): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func viewPort(
        x!: Length = 0.vp,
        y!: Length = 0.vp,
        width!: Length = 0.vp,
        height!: Length = 0.vp
    ): This
    
    /**
    * Called when shape mesh.
    *
    * @param { Array<Float64> } value
    * @param { UInt32 } column
    * @param { UInt32 } row
    * @returns { This }
    * @relation mesh(value: Array<any>, column: number, row: number): ShapeAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func mesh(array: Array<Float64>, column: UInt32, row: UInt32): This
}


