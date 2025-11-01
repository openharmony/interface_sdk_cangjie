package ohos.arkui.component.date_picker

import ohos.arkui.component.common.*
import ohos.arkui.component.text_clock.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*
import std.time.*

/**
 * Defines the struct of DatePickerResult.
 */
@!APILevel[
    since: "22",
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
 */
@!APILevel[
    since: "22",
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
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var month: Int64

/**
 * Day of the selected date.
 *
 * <p><strong>NOTE</strong>:
 * <br>Value range: depends on start and end. If start and end are not set, the default range is [1, 31].
 * </p>
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var day: Int64

/**
 * DatePickerResult constructor.
 *
 * @param { Int64 } year - Year of the selected date.
 * @param { Int64 } month - Month index of the selected date (0-11).
 * @param { Int64 } day - Day of the selected date.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        year: Int64,
        month: Int64,
        day: Int64
    )
}

/**
 * Defines the DatePicker Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DatePicker <: CommonMethodComponent<DatePicker> & DatePickerAttribute {
/**
 * Parameters of the date picker.
 *
 * @param { ?DateTime } [start] - Start date of the picker.
 * @param { ?DateTime } [end] - End date of the picker.
 * @param { ?DateTime } [selected] - Date of the selected item.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        start!: ?DateTime = None,
        end!: ?DateTime = None,
        selected!: ?DateTime = None
    )

/**
 * Specifies whether to display the lunar calendar.
 *
 * @param { ?Bool } value - Whether to display the lunar calendar.
 * <br>- <em>true</em>: Display the lunar calendar.
 * <br>- <em>false</em>: Do not display the lunar.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func lunar(value: ?Bool): This

/**
 * Triggered when a date is selected.
 *
 * @param { ?Callback<DateTime, Unit> } callback - The callback on date change.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDateChange(callback: ?Callback<DateTime, Unit>): This

/**
 * Sets the text style for the top and bottom items.
 *
 * @param { ?PickerTextStyle } value - Font color, font size, and font weight of the top and bottom items.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func disappearTextStyle(value: ?PickerTextStyle): This

/**
 * Sets the text style for all items except the top, bottom, and selected items.
 *
 * @param { ?PickerTextStyle } value - Font color, font size, and font weight of all items except the top,
 *   <br>bottom, and selected items.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func textStyle(value: ?PickerTextStyle): This

/**
 * Sets the text style for the selected item.
 *
 * @param { ?PickerTextStyle } value - Font color, font size, and font weight of the selected item.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectedTextStyle(value: ?PickerTextStyle): This
}

/**
 * Defines the DatePicker component attributes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface DatePickerAttribute <: CommonMethod<DatePickerAttribute> {
/**
 * Specifies whether to display the lunar calendar.
 *
 * @param { ?Bool } value - Whether to display the lunar calendar. The default value is false.
 *     <br>- <em>true</em>: Display the lunar calendar.
 *     <br>- <em>false</em>: Do not display the lunar.
 * @returns { DatePickerAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func lunar(value: ?Bool): DatePickerAttribute

/**
 * Triggered when a date is selected.
 *
 * @param { ?Callback<DateTime, Unit> } callback - The callback function to invoke when the date changes.
 * @returns { DatePickerAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDateChange(callback: ?Callback<DateTime, Unit>): DatePickerAttribute

/**
 * Sets the text style for the top and bottom items.
 *
 * @param { ?PickerTextStyle } value - Font color, font size, and font weight of the top and bottom items.
 * @returns { DatePickerAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func disappearTextStyle(value: ?PickerTextStyle): DatePickerAttribute

/**
 * Sets the text style for all items except the top, bottom, and selected items.
 *
 * @param { ?PickerTextStyle } value - Font color, font size, and font weight of all items except the top,
 *   <br>bottom, and selected items.
 * @returns { DatePickerAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func textStyle(value: ?PickerTextStyle): DatePickerAttribute

/**
 * Sets the text style for the selected item.
 *
 * @param { ?PickerTextStyle } value - Font color, font size, and font weight of the selected item.
 * @returns { DatePickerAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectedTextStyle(value: ?PickerTextStyle): DatePickerAttribute
}