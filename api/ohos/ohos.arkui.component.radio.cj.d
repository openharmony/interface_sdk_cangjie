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

package ohos.arkui.component.radio
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.arkui.component.view
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel


/**
* Defines Radio Component.
*
* @relation declare const Radio: RadioInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Radio <: ViewBase {
    /**
    * Create a radio box.
    *
    * @param { String } value
    * @param { String } group
    * @returns { This }
    * @relation (options: RadioOptions): RadioAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: String, group!: String)
    
    /**
    * Called when the radio box is selected.
    *
    * @param { Bool } value
    * @returns { This }
    * @relation checked(value: boolean): RadioAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func checked(value: Bool): This
    
    /**
    * Called when the radio box selection status changes.
    *
    * @param { (Bool) -> Unit } callback
    * @returns { This }
    * @relation onChange(callback: (isChecked: boolean) => void): RadioAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(callback: (Bool) -> Unit): This
}


