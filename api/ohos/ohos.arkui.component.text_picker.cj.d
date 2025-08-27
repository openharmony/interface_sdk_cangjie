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

package ohos.arkui.component.text_picker
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel


public type OnTextPickerChangeCallback = (String, UInt32) -> Unit

/**
* Creates a text picker based on the selection range specified by range.
*
* @relation const TextPicker: TextPickerInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextPicker <: ViewBase {
    /**
    * Defines the TextPicker constructor.
    *
    * @param { Array<String> } range
    * @param { ?UInt32 } selected
    * @param { ?String } value
    * @returns { TextPicker }
    * @relation (options?: TextPickerOptions): TextPickerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        range!: Array<String>,
        selected!: ?UInt32 = Option.None,
        value!: ?String = Option.None
    )
    
    /**
    * Sets the height of each item in the picker.
    *
    * @param { Length } value - Height of each item in the picker.
    * <br>For the number type, the value range is [0, +∞).
    * <br>For the string type, only numeric string values, for example, "56", are supported.
    * @returns { This }
    * @default 56 vp (selected) and 36 vp (unselected).
    * @relation defaultPickerItemHeight(value: number | string): TextPickerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func defaultPickerItemHeight(value: Length): This
    
    /**
    * Sets whether scrolling is loopable.
    *
    * @param { Bool } value - Whether scrolling is loopable. true: loopable; false: not loopable.
    * @default true
    * @returns { This }
    * @relation canLoop(value: boolean): TextPickerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func canLoop(value: Bool): This
    
    /**
    * Triggered when an item in the picker is selected.
    * When the picker contains text only or both text and imagery,
    * value indicates the text of the selected item.
    * When the picker contains imagery only, value is empty.
    *
    * @param { OnTextPickerChangeCallback } callback - the callback of onChange.
    * @returns { This }
    * @relation onChange(callback: (value: string | string[], index: number | number[]) => void): TextPickerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(callback: OnTextPickerChangeCallback): This
}


