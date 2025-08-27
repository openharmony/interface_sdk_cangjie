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

package ohos.arkui.component.pattern_lock
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.arkui.component.view.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel


/**
* Provides methods for control pattern lock component.
*
* @relation class PatternLockController
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PatternLockController <: RemoteDataLite {
    /**
    * A constructor used to create a PatternLockController instance.
    *
    * @relation constructor()
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()
    
    /**
    * Reset pattern lock.
    *
    * @relation reset(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func reset(): Unit
}


/**
* Defines PatternLock Component.
*
* @relation const PatternLock: PatternLockInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PatternLock <: ViewBase {
    /**
    * Constructor.
    *
    * @param { PatternLockController } [controller]  controller
    * @returns { PatternLock }
    * @relation (controller?: PatternLockController): PatternLockAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(controller!: ?PatternLockController = None)
    
    /**
    * Sets the fill color of the grid dot in the selected state.
    *
    * @param { ResourceColor } value - Fill color of the grid dot in the selected state, Default value is '#ff182431'.
    * @returns { This }
    * @relation selectedColor(value: ResourceColor): PatternLockAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedColor(value: ResourceColor): This
    
    /**
    * Sets the path color.
    *
    * @param { ResourceColor } value - Path color, Default value is '#33182431'.
    * @returns { This }
    * @relation pathColor(value: ResourceColor): PatternLockAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func pathColor(value: ResourceColor): This
    
    /**
    * Sets the fill color of the grid dot in the activated state, which is when the dot is highlighted but not selected.
    *
    * @param { ResourceColor } value - Fill color of the grid dot in the activated state, Default value is '#ff182431'.
    * @returns { This }
    * @relation activeColor(value: ResourceColor): PatternLockAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func activeColor(value: ResourceColor): This
    
    /**
    * Sets the fill color of the grid dot in the unselected state.
    *
    * @param { ResourceColor } value - Fill color of the grid dot in the unselected state, Default value is '#ff182431'.
    * @returns { This }
    * @relation regularColor(value: ResourceColor): PatternLockAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func regularColor(value: ResourceColor): This
    
    /**
    * Sets whether to allow the user to reset the component status (that is, clear the input) by touching the component
    * again after the input is complete.
    *
    * @param { Bool } value - Whether to allow the user to reset the component status (that is, clear the input) by
    * touching the component again after the input is complete, Default value is true.
    * @returns { This }
    * @relation autoReset(value: boolean): PatternLockAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func autoReset(value: Bool): This
    
    /**
    * Sets the radius of the dots in a grid.
    *
    * <p><strong>NOTE</strong>:
    * <br>If this attribute is set to 0 or a negative value, the default value is used.
    * </p>
    *
    * @param { Length } value - Radius of the dots in a grid, Default value is 6vp.
    * @returns { This }
    * @relation circleRadius(value: Length): PatternLockAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func circleRadius(value: Length): This
    
    /**
    * Sets the width and height (same value) of the component.
    *
    * <p><strong>NOTE</strong>:
    * <br>If this attribute is set to 0 or a negative number, the component is not displayed.
    * </p>
    *
    * @param { Length } value - Width and height of the component, Default value is 288vp.
    * @returns { This }
    * @relation sideLength(value: Length): PatternLockAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func sideLength(value: Length): This
    
    /**
    * Sets the width of the path stroke.
    *
    * <p><strong>NOTE</strong>:
    * <br>If this attribute is set to **0** or a negative value, the path stroke is not displayed.
    * </p>
    *
    * @param { Length } value - Width of the path stroke, Default value is 12vp.
    * @returns { This }
    * @relation pathStrokeWidth(value: number | string): PatternLockAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func pathStrokeWidth(value: Length): This
    
    /**
    * Invoked when the pattern password input is complete.
    *
    * @param { function } callback
    * @returns { This }
    * @relation onPatternComplete(callback: (input: Array<number>) => void): PatternLockAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onPatternComplete(callback: (Array<Int32>) -> Unit): This
}


