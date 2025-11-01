package ohos.arkui.component.text_clock

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*
import std.convert.*

/**
 * Defines the options for a DateTimeOptions object. Since API version 9, the DateTimeOptions attribute is changed
 * from mandatory to optional.
 * Provides configuration options for date and time formatting in TextClock component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DateTimeOptions {
/**
 * Valid locale ID, for example, "zh-Hans-CN". The default value is the current system locale.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var locale: ?String

/**
 * Date display format. The value can be: "long", "short", "medium", "full", or "auto".
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var dateStyle: ?String

/**
 * Time display format. The value can be: "long", "short", "medium", "full", or "auto".
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var timeStyle: ?String

/**
 * Hour cycle. The value can be: "h11", "h12", "h23", or "h24".
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var hourCycle: ?String

/**
 * Time zone in use. The value is a valid IANA time zone ID.
 * Specifies the time zone for date and time display.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var timeZone: ?String

/**
 * Numbering system. The value can be: "adlm", "ahom", "arab", "arabext", "bali", "beng", "bhks",
 * "brah", "cakm", "cham", "deva", "diak", "fullwide", "gong", "gonm", "gujr", "guru", "hanidec", "hmng", "hmnp",
 * "java", "kali", "khmr", "knda", "lana", "lanatham", "laoo", "latn", "lepc", "limb", "mathbold", "mathdbl",
 * "mathmono", "mathsanb", "mathsans", "mlym", "modi", "mong", "mroo", "mtei", "mymr", "mymrshan", "mymrtlng",
 * "newa", "nkoo", "olck", "orya", "osma", "rohg", "saur", "segment", "shrd", "sind", "sinh", "sora", "sund",
 * "takr", "talu", "tamldec", "telu", "thai", "tibt", "tirh", "vaii", "wara", or "wcho".
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var numberingSystem: ?String

/**
 * Whether to use the 12-hour clock. The value true means to use the 12-hour clock, and the value false means the
 * opposite. If both hour12 and hourCycle are set, hourCycle does not take effect. If hour12 and hourCycle are not
 * set and the 24-hour clock is turned on.
 * Controls whether to use 12-hour or 24-hour time format.
 * @default false
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var hour12: ?Bool

/**
 * Week display format. The value can be: "long", "short", "narrow", or "auto".
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var weekday: ?String

/**
 * Epoch display format. The value can be: "long", "short", "narrow", or "auto".
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var era: ?String

/**
 * Year display format. The value can be: "numeric" or "2-digit".
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var year: ?String

/**
 * Month display format. The value can be: "numeric", "2-digit", "long", "short", "narrow", or "auto".
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var month: ?String

/**
 * Day display format. The value can be: "numeric" or "2-digit".
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var day: ?String

/**
 * Hour display format. The value can be: "numeric" or "2-digit".
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var hour: ?String

/**
 * Minute display format. The value can be: "numeric" or "2-digit".
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var minute: ?String

/**
 * Second display format. The value can be: "numeric" or "2-digit".
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var second: ?String

/**
 * Localized representation of a time zone name. The value can be: "long", "short", or "auto".
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var timeZoneName: ?String

/**
 * Time period display format. The value can be: "long", "short", "narrow", or "auto".
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var dayPeriod: ?String

/**
 * Locale matching algorithm. The value can be:
 * "lookup": exact match.
 * "best fit": best match.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var localeMatcher: ?String

/**
 * Format matching algorithm. The value can be:
 * "basic": exact match.
 * "best fit": best match.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var formatMatcher: ?String

/**
 * Creates a new DateTimeOptions instance with the specified formatting options.
 *
 * @param { ?String } [locale] - Valid locale ID, for example, "zh-Hans-CN".
 * @param { ?String } [dateStyle] - Date display format.
 * @param { ?String } [timeStyle] - Time display format.
 * @param { ?String } [hourCycle] - Hour cycle.
 * @param { ?String } [timeZone] - Time zone in use.
 * @param { ?String } [numberingSystem] - Numbering system.
 * @param { ?Bool } [hour12] - Whether to use the 12-hour clock.
 * @param { ?String } [weekday] - Week display format.
 * @param { ?String } [era] - Epoch display format.
 * @param { ?String } [year] - Year display format.
 * @param { ?String } [month] - Month display format.
 * @param { ?String } [day] - Day display format.
 * @param { ?String } [hour] - Hour display format.
 * @param { ?String } [minute] - Minute display format.
 * @param { ?String } [second] - Second display format.
 * @param { ?String } [timeZoneName] - Localized representation of a time zone name.
 * @param { ?String } [dayPeriod] - Time period display format.
 * @param { ?String } [localeMatcher] - Locale matching algorithm.
 * @param { ?String } [formatMatcher] - Format matching algorithm.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(locale!: ?String = None, dateStyle!: ?String = None, timeStyle!: ?String = None,
        hourCycle!: ?String = None, timeZone!: ?String = None, numberingSystem!: ?String = None, hour12!: ?Bool = None,
        weekday!: ?String = None, era!: ?String = None, year!: ?String = None, month!: ?String = None,
        day!: ?String = None, hour!: ?String = None, minute!: ?String = None, second!: ?String = None,
        timeZoneName!: ?String = None, dayPeriod!: ?String = None, localeMatcher!: ?String = None,
        formatMatcher!: ?String = None)
}

/**
 * Provides a way to control the textclock status.
 * Allows starting and stopping the TextClock component updates.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextClockController <: RemoteDataLite {
/**
 * TextClockController constructor.
 * Creates a new TextClockController instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Provides a start event for textclock.
 * Starts the TextClock updates.
 *
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func start(): Unit

/**
 * Provides a stop event for textclock.
 * Stops the TextClock updates.
 *
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func stop(): Unit
}

/**
 * A component that displays the current date and time, automatically updating at regular intervals.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextClock <: CommonMethodComponent<TextClock> & TextClockAttribute {
/**
 * Construct the text clock component.
 * Specifies the current time zone.
 * The valid value is an integer ranging from -14 to 12,
 * where a negative value indicates the western time zone and a positive value indicates the eastern time zone.
 *
 * @param { ?Float32 } [timeZoneOffset] - The time zone offset in hours.
 * @param { ?TextClockController } [controller] - The controller for the text clock.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(timeZoneOffset!: ?Float32 = None, controller!: ?TextClockController = None)

/**
 * Provides a date change callback.
 * The callback parameter is Unix Time Stamp,
 * The number of milliseconds that have elapsed since January 1, 1970 (UTC).
 * The minimum callback interval for this event default is seconds when TextClock is not in a form.
 * The minimum callback interval for this event is minutes when TextClock is in a form.
 * If visibility is Hidden the callback be disabled when TextClock is in a form.
 * You can listen to this callback,
 * Use the format attribute method to customize data display in the callback.
 *
 * @param { ?(Int64) -> Unit } event - Listening date event callback.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDateChange(event: ?(Int64) -> Unit): This

/**
 * Set display time format, such as "yyyy/mm/dd","yyyy-mm-dd".
 * Supports time format: yyyy,mm,mmm(English month abbreviation),mmmm(Full name of the month in English),
 * dd,ddd(English Week abbreviation),dddd(Full name of the week in English),
 * HH/hh(24-hour clock/12-hour clock),MM/mm(minute),SS/ss(second).
 * The default value is "hh:mm:ss" when TextClock is not in a form.
 * The default value is "hh:mm" when TextClock is in a form.
 * If the value has second or millisecond, the value will be set to the default value.
 *
 * @param { ?ResourceStr } value - The time format string.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func format(value: ?ResourceStr): This

/**
 * Set the value of TextClock fontSize.
 *
 * @param { ?Length } value - The font size.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontSize(value: ?Length): This

/**
 * Set the value of TextClock fontColor.
 *
 * @param { ?ResourceColor } value - The font color resource.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontColor(value: ?ResourceColor): This

/**
 * Set the value of TextClock fontWeight.
 *
 * @param { ?FontStyle } value - The font style.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontStyle(value: ?FontStyle): This

/**
 * Set the value of TextClock fontWeight.
 *
 * @param { ?FontWeight } value - The font weight.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontWeight(value: ?FontWeight): This

/**
 * Set the value of TextClock fontFamily.
 *
 * @param { ?ResourceStr } value - The font family.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontFamily(value: ?ResourceStr): This

/**
 * Set the value of TextClock fontColor.
 *
 * @param { ?Array<ShadowOptions> } value - The shadow options.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func textShadow(value: ?Array<ShadowOptions>): This

/**
 * Set the value of TextClock fontColor.
 *
 * @param { ?ShadowOptions } value - The shadow options.
 * @returns { This } Returns the TextClock instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func textShadow(value: ?ShadowOptions): This
}

/**
 * Defines the TextClock component attributes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface TextClockAttribute <: CommonMethod<TextClockAttribute> {
/**
 * Provides a date change callback.
 * The callback parameter is Unix Time Stamp,
 * The number of milliseconds that have elapsed since January 1, 1970 (UTC).
 * The minimum callback interval for this event default is seconds when TextClock is not in a form.
 * The minimum callback interval for this event is minutes when TextClock is in a form.
 * If visibility is Hidden the callback be disabled when TextClock is in a form.
 * You can listen to this callback,
 * Use the format attribute method to customize data display in the callback.
 *
 * @param { ?(Int64) -> Unit } event - Listening date event callback.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDateChange(event: ?(Int64) -> Unit): TextClockAttribute

/**
 * set display time format,such as "yyyy/mm/dd", "yyyy-mm-dd".
 * support time format：yyyy,mm,mmm(English month abbreviation), mmmm(Full name of the month in English),
 * dd,ddd(English Week abbreviation), dddd(Full name of the week in English),
 * HH/hh(24-hour clock/12-hour clock), MM/mm(minute), SS/ss(second).
 * The default value is "hh:mm:ss" when TextClock is not in a form.
 * The default value is "hh:mm" when TextClock is in a form.
 * If the value has second or millisecond, the value will be set to the default value.
 *
 * @param { ?ResourceStr } value - The time format string.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func format(value: ?ResourceStr): TextClockAttribute

/**
 * Set when the value of TextClock fontSize is set.
 *
 * @param { ?Length } value - The font size.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontSize(value: ?Length): TextClockAttribute

/**
 * Set the value of TextClock fontColor.
 *
 * @param { ?ResourceColor } value - The font color resource.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontColor(value: ?ResourceColor): TextClockAttribute

/**
 * Set the value of TextClock fontStyle.
 *
 * @param { ?FontStyle } value - The font style.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontStyle(value: ?FontStyle): TextClockAttribute

/**
 * Set the value of TextClock fontWeight.
 *
 * @param { ?FontWeight } value - The font weight.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontWeight(value: ?FontWeight): TextClockAttribute

/**
 * Set the value of TextClock fontFamily.
 *
 * @param { ?ResourceStr } value - The font family.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontFamily(value: ?ResourceStr): TextClockAttribute

/**
 * Set the text shadow.
 *
 * @param { ?Array<ShadowOptions> } values - The shadow options.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func textShadow(values: ?Array<ShadowOptions>): TextClockAttribute

/**
 * Set the text shadow.
 *
 * @param { ?ShadowOptions } value - The shadow options.
 * @returns { TextClockAttribute } Returns the text clock attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func textShadow(value: ?ShadowOptions): TextClockAttribute
}