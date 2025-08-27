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

package ohos.arkui.component.date_picker
import ohos.arkui.component.common.*
import ohos.arkui.component.text_clock.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.resource.*
import ohos.labels.APILevel
import std.time.*


/**
* Defines the struct of DatePickerResult.
*
* @class DatePickerResult
* @relation interface DatePickerResult
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DatePickerResult {
    /**
    * Year of the selected date.
    *
    * <p><strong>NOTE</strong>:
    * <br>Value range: depends on start and end.
    * If start and end are not set, the default range is [1970, 2100].
    * </p>
    *
    * @type { Int64 }
    * @relation year?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var year: Int64
    
    /**
    * Month index of the selected date.
    * The index is zero-based. 0 indicates January, and 11 indicates December.
    *
    * <p><strong>NOTE</strong>:
    * <br>Value range: depends on start and end. If start and end are not set, the default range is [0, 11].
    * </p>
    *
    * @type { Int64 }
    * @relation month?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var month: Int64
    
    /**
    * Day of the selected date.
    *
    * <p><strong>NOTE</strong>:
    * <br>Value range: depends on start and end. If start and end are not set, the default range is [1, 31].
    * </p>
    *
    * @type { Int64 }
    * @relation day?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var day: Int64
    
    /**
    * DatePickerResult constructor.
    *
    * @param { Int64 } year
    * @param { Int64 } month
    * @param { Int64 } day
    */
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


/**
* Defines DatePicker Component.
*
* @relation declare const DatePicker: DatePickerInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class DatePicker <: ViewBase {
    /**
    * Parameters of the date picker.
    *
    * @param { DateTime } start - Start date of the picker.
    * @param { DateTime } end - End date of the picker.
    * @param { DateTime } selected - Date of the selected item.
    * @returns { DatePicker }
    * @relation (options?: DatePickerOptions): DatePickerAttribute
    */
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
    
    /**
    * Specifies whether to display the lunar calendar.
    *
    * @param { Bool } value - Whether to display the lunar calendar.
    * <br>- <em>true</em>: Display the lunar calendar.
    * <br>- <em>false</em>: Do not display the lunar.
    * @default false
    * @returns { This }
    * @relation lunar(value: boolean): DatePickerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func lunar(value: Bool): This
    
    /**
    * Triggered when a date is selected.
    * Anonymous Object Rectification.
    *
    * @param { Callback<DateTime> } callback
    * @returns { This }
    * @relation onDateChange(callback: Callback<DateTime, Unit>): DatePickerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDateChange(callback: Callback<DateTime, Unit>): This
    
    /**
    * Sets the text style for the top and bottom items.
    *
    * @param { PickerTextStyle } value - Font color, font size, and font weight of the top and bottom items.
    * @default {<br>color: '#ff182431',<br>font: {<br>size: '14fp', <br>weight: FontWeight.Regular<br>}<br>}
    * @returns { This }
    * @relation disappearTextStyle(value: PickerTextStyle): DatePickerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func disappearTextStyle(value: PickerTextStyle): This
    
    /**
    * Sets the text style for all items except the top, bottom, and selected items.
    *
    * @param { PickerTextStyle } value - Font color, font size, and font weight of all items except the top,
    * <br>bottom, and selected items.
    * @default {<br>color: '#ff182431',<br>font: {<br>size: '16fp', <br>weight: FontWeight.Regular<br>}<br>}
    * @returns { This }
    * @relation textStyle(value: PickerTextStyle): DatePickerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func textStyle(value: PickerTextStyle): This
    
    /**
    * Sets the text style for the selected item.
    *
    * @param { PickerTextStyle } value - Font color, font size, and font weight of the selected item.
    * @default {<br>color: '#ff007dff',<br>font: {<br>size: '20fp', <br>weight: FontWeight.Medium<br>}<br>}
    * @returns { This }
    * @relation selectedTextStyle(value: PickerTextStyle): DatePickerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedTextStyle(value: PickerTextStyle): This
}


