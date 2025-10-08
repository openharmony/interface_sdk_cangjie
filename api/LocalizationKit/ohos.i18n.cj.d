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

package ohos.i18n
import ohos.business_exception.BusinessException
import ohos.ffi.{RemoteDataLite, releaseFFIData}
import ohos.labels.APILevel

import std.time.DateTime
import ohos.business_exception.getUniversalErrorMsg
import std.collection.HashMap

/**
* Obtains the Calendar object for the specified locale and calendar type.
*
* @param { String } locale - Locale ID, which consists of the language, script, and country/region,
*                            for example, zh-Hans-CN.
* @param { ?CalendarType } calendarType - Calendar. For details about the meanings and application scenarios of
*                            different values, see Calendar Setting.
* @returns { Calendar } Calendar object
* @relation export function getCalendar(locale: string, type?: string): Calendar
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Global.I18n"
]
public func getCalendar(locale: String, calendarType!: ?CalendarType = None): Calendar


/**
* Provides the API for accessing Calendar name, time and date related information.
*
* @relation export class Calendar
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Global.I18n"
]
public class Calendar <: RemoteDataLite {
    /**
    * Sets the date and time for a Calendar object.
    *
    * @relation setTime(time: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    public func setTime(time: Float64): Unit
    
    /**
    * Sets the year, month, day, hour, minute, and second for this Calendar object.
    *
    * @relation set(year: number, month: number, date: number, hour?: number, minute?: number, second?: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    public func set(year: Int32, month: Int32, date: Int32, hour!: ?Int32 = None, minute!: ?Int32 = None, second!: ?Int32 = None): Unit
    
    /**
    * Sets the time zone of this Calendar object.
    *
    * @relation setTimeZone(timezone: string): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    public func setTimeZone(timeZone: String): Unit
    
    /**
    * Obtains the time zone ID of this Calendar object.
    *
    * @relation getTimeZone(): string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    public func getTimeZone(): String
    
    /**
    * Obtains the first day of a week for this Calendar object.
    *
    * @relation getFirstDayOfWeek(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    public func getFirstDayOfWeek(): Int32
    
    /**
    * Sets the first day of a week for this Calendar object.
    *
    * @relation setFirstDayOfWeek(value: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    public func setFirstDayOfWeek(value: Int32): Unit
    
    /**
    * Obtains the minimum number of days in the first week for this Calendar object.
    *
    * @relation getMinimalDaysInFirstWeek(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    public func getMinimalDaysInFirstWeek(): Int32
    
    /**
    * Sets the minimum number of days in the first week for this Calendar object.
    *
    * @relation setMinimalDaysInFirstWeek(value: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    public func setMinimalDaysInFirstWeek(value: Int32): Unit
    
    /**
    * Obtains the values of the calendar attributes in this Calendar object.
    *
    * @param { string } field - Calendar attributes. The following table lists the supported attribute values.
    * @returns { Int32 } Value of the calendar attribute. For example, if the year of the internal date of the
    *                     current Calendar object is 1990, get('year') returns 1990.
    * @relation get(field: string): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    public func get(field: String): Int32
    
    /**
    * Obtains calendar display name in the specified language.
    *
    * @param { string } locale - System locale, which consists of the language, script, and country/region.
    * @returns { string } Calendar display name in the specified language. For example, buddhist is displayed as
    *                     Buddhist Calendar if the locale is en-US.
    * @relation getDisplayName(locale: string): string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    public func getDisplayName(locale: String): String
    
    /**
    * Performs addition or subtraction on the calendar attributes of this Calendar object.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified;
    *                                 2.Incorrect parameter types.
    * @throws { BusinessException } 890001 - Invalid parameter. Possible causes: Parameter verification failed.
    * @relation add(field: string, amount: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    public func add(field: String, amount: Int32): Unit
    
    /**
    * Obtains the timestamp of this Calendar object.
    *
    * @relation getTimeInMillis(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    public func getTimeInMillis(): Float64
}


/**
* Calendar type.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Global.I18n"
]
public enum CalendarType {
    /**
    * buddhist calendar type
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    Buddhist |
    /**
    * chinese calendar type
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    Chinese |
    /**
    * coptic calendar type
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    Coptic |
    /**
    * ethiopic calendar type
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    Ethiopic |
    /**
    * hebrew calendar type
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    Hebrew |
    /**
    * gregory calendar type
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    Gregory |
    /**
    * indian calendar type
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    Indian |
    /**
    * islamic_civil calendar type
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    IslamicCivil |
    /**
    * islamic_tbla calendar type
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    IslamicTbla |
    /**
    * islamic_umalqura calendar type
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    IslamicUmalqura |
    /**
    * japanese calendar type
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    Japanese |
    /**
    * persian calendar type
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    Persian |
    ...
}


/**
* Provides system functions.
*
* @relation export class System
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Global.I18n"
]
public class System {
    /**
    * Obtains the preferred language of an application.
    *
    * @relation static getAppPreferredLanguage(): string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Global.I18n"
    ]
    public static func getAppPreferredLanguage(): String
}


