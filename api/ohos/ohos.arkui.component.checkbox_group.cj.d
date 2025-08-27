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

package ohos.arkui.component.checkbox_group
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import std.collection.ArrayList


public type OnCheckboxGroupChangeCallback = (CheckboxGroupResult) -> Unit

/**
* Defines the options of CheckboxGroupResult.
*
* @class CheckboxGroupResult
* @relation interface CheckboxGroupResult
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CheckboxGroupResult {
    /**
    * Set the group of status.
    *
    * @type { SelectStatus }
    * @relation status: SelectStatus
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var status: SelectStatus
    
    /**
    * Checkbox name.
    *
    * @type { Array<string> }
    * @relation name: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var name: Array<String>
    
    /**
    * CheckboxGroupResult constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        status: SelectStatus,
        name: Array<String>
    )
}


/**
* Defines CheckboxGroup Component.
* 
* @relation const CheckboxGroup: CheckboxGroupInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CheckboxGroup <: ViewBase {
    /**
    * Called when the CheckboxGroup component is used.
    *
    * @param { String } group
    * @returns { CheckboxGroup }
    * @relation (options?: CheckboxGroupOptions): CheckboxGroupAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(group!: String = "")
    
    /**
    * setting whether all checkbox is selected.
    *
    * @param { Bool } isAllSelected
    * @returns { This }
    * @relation selectAll(value: boolean): CheckboxGroupAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectAll(value: Bool): This
    
    /**
    * setting the display color of checkbox.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation selectedColor(value: ResourceColor): CheckboxGroupAttribute
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
    * @param { OnCheckboxGroupChangeCallback } callback
    * @returns { This }
    * @relation onChange(callback: OnCheckboxGroupChangeCallback): CheckboxGroupAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(callback: OnCheckboxGroupChangeCallback): This
}


