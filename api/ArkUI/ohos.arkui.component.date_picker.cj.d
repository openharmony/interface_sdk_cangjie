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

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package ohos.arkui.component.date_picker
import ohos.arkui.component.common.*
import ohos.arkui.component.text_clock.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.resource.*
import ohos.labels.APILevel
import std.time.*


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DatePickerResult {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var year: Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var month: Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var day: Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        year: Int64,
        month: Int64,
        day: Int64
    )
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class DatePicker <: ViewBase {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        start!: DateTime = DateTime.of(year: 1970, month: Month.of(1), dayOfMonth: 1),
        end!: DateTime = DateTime.of(year: 2100, month: Month.of(12), dayOfMonth: 31),
        selected!: DateTime = DateTime.now()
    )
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func lunar(value: Bool): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDateChange(callback: Callback<DateTime, Unit>): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func disappearTextStyle(value: PickerTextStyle): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func textStyle(value: PickerTextStyle): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedTextStyle(value: PickerTextStyle): This
}

