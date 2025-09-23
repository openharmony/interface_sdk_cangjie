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

package ohos.settings
import ohos.app.ability.ui_ability.{UIAbilityContext, getStageContext}
import ohos.business_exception.{BusinessException, getUniversalErrorMsg}
import ohos.labels.*
import std.collection.HashMap


/**
* Get value from settingsdata.
* @throws { IllegalArgumentException } - The context is invalid.
*
* @relation function getValueSync(context: Context, name: string, defValue: string): string
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Applications.Settings.Core"
]
public func getValue<T>(context: UIAbilityContext, name: T, defValue: String): String where T <: ToString


/**
* Get value from settingsdata(synchronous method).
*
* @throws { IllegalArgumentException } - The context is invalid.
*
* @relation function getValueSync(context: Context, name: string, defValue: string, domainName: string): string
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Applications.Settings.Core"
]
public func getValue<T, P>(context: UIAbilityContext, name: T, defValue: String, domainName: P): String where T <: ToString,
    P <: ToString


/**
* Provide domain name for query.
*
* @relation namespace domainName
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Applications.Settings.Core"
]
public enum DomainName <: ToString {
    /**
    * Provide the domain name for device shared Key.
    *
    * @relation const DEVICE_SHARED: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    DeviceShared |
    /**
    * Provide the domain name for user property.
    *
    * @relation const USER_PROPERTY: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    UserProperty |
    ...
    /**
    * Obtains the string of DomainName.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    public override func toString(): String
}


/**
* Provides methods for setting time and date formats.
*
* @relation namespace date
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Applications.Settings.Core"
]
public enum Date <: ToString {
    /**
    * Indicates the date format.
    *
    * @relation const DATE_FORMAT: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    DateFormat |
    /**
    * Specifies whether the time is displayed in 12-hour or 24-hour format.
    *
    * @relation const TIME_FORMAT: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    TimeFormat |
    /**
    * Specifies whether the date, time, and time zone are automatically obtained from the Network
    * Identity and Time Zone (NITZ).
    *
    * @relation const AUTO_GAIN_TIME: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    AutoGainTime |
    /**
    * Specifies whether the time zone is automatically obtained from NITZ.
    *
    * @relation const AUTO_GAIN_TIME_ZONE: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    AutoGainTimeZone |
    ...
    /**
    * Obtains the string of Date.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    public override func toString(): String
}


/**
* Provides methods for setting the display effect, including the font size, screen brightness, screen rotation,
* animation factor, and display color.
*
* @relation namespace display
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Applications.Settings.Core"
]
public enum Display <: ToString {
    /**
    * Indicates the scaling factor of fonts, which is a float number.
    *
    * @relation const FONT_SCALE: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    FontScale |
    /**
    * Indicates the screen brightness. The value ranges from 0 to 255.
    *
    * @relation const SCREEN_BRIGHTNESS_STATUS: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    ScreenBrightnessStatus |
    /**
    * Specifies whether automatic screen brightness adjustment is enabled.
    *
    * @relation const AUTO_SCREEN_BRIGHTNESS: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    AutoScreenBrightness |
    /**
    * Indicates the duration that the device waits before going to sleep after a period of inactivity, in milliseconds.
    *
    * @relation const SCREEN_OFF_TIMEOUT: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    ScreenOffTimeout |
    /**
    * Indicates the screen rotation when no other policy is available.
    *
    * @relation const DEFAULT_SCREEN_ROTATION: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    DefaultScreenRotation |
    /**
    * Indicates the scaling factor for the animation duration.
    *
    * @relation const ANIMATOR_DURATION_SCALE: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    AnimatorDurationScale |
    /**
    * Indicates the scaling factor for transition animations.
    * If the value is 0, transition animations are disabled.
    *
    * @relation const TRANSITION_ANIMATION_SCALE: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    TransitionAnimationScale |
    /**
    * Indicates the scaling factor for normal window animations.
    * If the value is 0, window animations are disabled.
    *
    * @relation const WINDOW_ANIMATION_SCALE: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    WindowAnimationScale |
    /**
    * Specifies whether display color inversion is enabled.
    * If the value is 1, display color inversion is enabled. If the value is 0, display color inversion is disabled.
    *
    * @relation const DISPLAY_INVERSION_STATUS: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    DisplayInversionStatus |
    ...
    /**
    * Obtains the string of Display.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    public override func toString(): String
}



