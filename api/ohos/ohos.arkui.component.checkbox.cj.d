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

package ohos.arkui.component.checkbox
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel


public type OnCheckboxChangeCallback = (Bool) -> Unit

/**
* Defines Checkbox Component.
*
* @relation const Checkbox: CheckboxInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Checkbox <: ViewBase {
    /**
    * Construct the Checkbox component.
    * Called when the Checkbox component is used.
    *
    * @param { String } name
    * @param { String } group
    * @param { ?CustomBuilder } indicatorBuilder
    * @returns { Checkbox }
    * @relation (options?: CheckboxOptions): CheckboxAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(name!: String = "", group!: String = "", indicatorBuilder!: ?CustomBuilder = None)
    
    /**
    * setting whether checkbox is selected.
    *
    * @param { Bool } value
    * @returns { This }
    * @relation select(value: boolean): CheckboxAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func select(value: Bool): This
    
    /**
    * setting the display color of checkbox.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation selectedColor(value: ResourceColor): CheckboxAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedColor(value: ResourceColor): This
    
    /**
    * Called when the selection status changes.
    * Anonymous Object Rectification.
    *
    * @param { OnCheckboxChangeCallback } callback
    * @returns { This }
    * @relation onChange(callback: OnCheckboxChangeCallback): CheckboxAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(callback: OnCheckboxChangeCallback): This
    
    /**
    * setting the shape of checkbox.
    *
    * @param { CheckBoxShape } value - The configuration of checkbox shape.
    * @returns { This }
    * @relation shape(value: CheckBoxShape): CheckboxAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func shape(value: CheckBoxShape): This
}


