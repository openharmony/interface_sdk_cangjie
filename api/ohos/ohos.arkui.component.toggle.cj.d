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

package ohos.arkui.component.toggle
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel


/**
* Defines Toggle Component.
*
* @relation declare const Toggle: ToggleInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Toggle <: ContainerBase {
    /**
    * Set parameters to obtain the toggle.
    *
    * @param { ToggleType } toggleType
    * @param { Bool } isOn
    * @returns { This }
    * @relation (options: ToggleOptions): ToggleAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(toggleType: ToggleType, isOn!: Bool = false)
    
    /**
    * Set parameters to obtain the toggle.
    *
    * @param { ToggleType } toggleType
    * @param { Bool } isOn
    * @param { () -> Unit } subcomponent
    * @returns { This }
    * @relation (options: ToggleOptions): ToggleAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(toggleType: ToggleType, isOn: Bool, subcomponent: () -> Unit)
    
    /**
    * Called when the color of the selected button is set.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation selectedColor(value: ResourceColor): ToggleAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedColor(value: ResourceColor): This
    
    /**
    * Called when the color of the selected button is set.
    *
    * @param { ResourceColor } color
    * @returns { This }
    * @relation switchPointColor(color: ResourceColor): ToggleAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func switchPointColor(color: ResourceColor): This
    
    /**
    * Called when the selected state of the component changes.
    *
    * @param { (Bool) -> Unit } callback
    * @returns { This }
    * @relation onChange(callback: (isOn: boolean) => void): ToggleAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(callback: (Bool) -> Unit): This
}


