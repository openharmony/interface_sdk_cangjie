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

package ohos.arkui.component_utils
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel


/**
* Defines the size property.
*
* @relation export interface Size
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Size {
    /**
    * Defines the width property.
    *
    * @relation width: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var width: Float32
    
    /**
    * Defines the height property.
    *
    * @relation height: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var height: Float32
    
    /**
    * Create an Object of Size.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(width: Float32, height: Float32)
}


/**
* Defines the offset property.
*
* @relation export interface Offset
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Offset {
    /**
    * Coordinate x of the Position.
    *
    * @relation x: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Float32
    
    /**
    * Coordinate y of the Position.
    *
    * @relation y: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Float32
    
    /**
    * Create an Object of Offset.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(x: Float32, y: Float32)
}


/**
* Translation Result
*
* @relation export interface TranslateResult
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TranslateResult {
    /**
    * Indicates the translation distance of the x-axis, in vp.
    *
    * @relation x: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Float32
    
    /**
    * Indicates the translation distance of the y-axis, in vp.
    *
    * @relation y: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Float32
    
    /**
    * Indicates the translation distance of the z-axis, in vp.
    *
    * @relation z: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var z: Float32
    
    /**
    * Create an Object of Offset.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(x: Float32, y: Float32, z: Float32)
}


/**
* Scale Result
*
* @relation export interface ScaleResult
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ScaleResult {
    /**
    * Zoom factor of the x-axis.
    *
    * @relation x: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Float32
    
    /**
    * Zoom factor of the y-axis.
    *
    * @relation z: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Float32
    
    /**
    * Zoom factor of the z-axis.
    *
    * @relation z: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var z: Float32
    
    /**
    * Transform the x-axis coordinate of the center point.
    *
    * @relation centerX: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var centerX: Float32
    
    /**
    * Transform the y-axis coordinate of the center point.
    *
    * @relation centerY: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var centerY: Float32
    
    /**
    * Defines ScaleResult Type.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(x: Float32, y: Float32, z: Float32, centerX: Float32, centerY: Float32)
}


/**
* Rotation Result.
*
* @relation export interface RotateResult
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RotateResult {
    /**
    * Axis of rotation vector x coordinate.
    *
    * @relation x: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Float32
    
    /**
    * Axis of rotation vector y coordinate.
    *
    * @relation y: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Float32
    
    /**
    * Axis of rotation vector z coordinate.
    *
    * @relation z: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var z: Float32
    
    /**
    * Transform the x-axis coordinate of the center point.
    *
    * @relation centerX: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var centerX: Float32
    
    /**
    * Transform the y-axis coordinate of the center point.
    *
    * @relation centerY: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var centerY: Float32
    
    /**
    * Rotation angle.
    *
    * @relation angle: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var angle: Float32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    /**
    * Defines RotateResult Type.
    */
    public init(x: Float32, y: Float32, z: Float32, centerX: Float32, centerY: Float32, angle: Float32)
}


/**
* Component information.
*
* @relation export interface ComponentInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ComponentInfo {
    /**
    * component size.
    *
    * @relation size: Size
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var size: Size
    
    /**
    * Obtain attribute information relative to the local.
    *
    * @relation localOffset: Offset
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var localOffset: Offset
    
    /**
    * Obtain attribute information relative to the window.
    *
    * @relation windowOffset: Offset
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var windowOffset: Offset
    
    /**
    * Obtain attribute information relative to the screen.
    *
    * @relation screenOffset: Offset
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var screenOffset: Offset
    
    /**
    * Obtain attribute information for translation.
    *
    * @relation translate: TranslateResult
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var translate: TranslateResult
    
    /**
    * Obtain attribute information for rotate.
    *
    * @relation scale: ScaleResult
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var scale: ScaleResult
    
    /**
    * Obtain attribute information for rotate.
    *
    * @relation rotate: RotateResult
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var rotate: RotateResult
    
    /**
    * Obtain attribute information of the transformation matrix.
    *
    * @relation transform: Matrix4Result
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var transform: VArray<Float32, $16>
    
    /**
    * constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(size: Size, localOffset: Offset, windowOffset: Offset, screenOffset: Offset, translate: TranslateResult,
        scale: ScaleResult, rotate: RotateResult, transform: VArray<Float32, $16>)
}


/**
* This module provides functionality for component coordinates and sizes.
*
* @relation declare namespace componentUtils
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ComponentUtils {
    /**
    * Provide the ability to obtain the coordinates and size of component drawing areas.
    *
    * @param {string} id - component id.
    * @relation unction getRectangleById(id: string): ComponentInfo;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func getRectangleById(id: String): ComponentInfo
}


