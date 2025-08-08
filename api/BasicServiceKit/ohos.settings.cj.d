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
import std.collection.HashMap

// import ohos.ability.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.*

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Applications.Settings.Core"
]
public func getValue<T>(context: StageContext, name: T, defValue: String): String where T <: ToString


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Applications.Settings.Core"
]
public func getValue<T, P>(context: StageContext, name: T, defValue: String, domainName: P): String where T <: ToString,
    P <: ToString


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Applications.Settings.Core"
]
public enum DomainName <: ToString {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Audio.Core"
    ]
    DEVICE_SHARED |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Audio.Core"
    ]
    USER_PROPERTY |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    public override func toString(): String
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Applications.Settings.Core"
]
public enum Date <: ToString {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Audio.Core"
    ]
    DATE_FORMAT |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Audio.Core"
    ]
    TIME_FORMAT |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Audio.Core"
    ]
    AUTO_GAIN_TIME |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Audio.Core"
    ]
    AUTO_GAIN_TIME_ZONE |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    public override func toString(): String
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Applications.Settings.Core"
]
public enum Display <: ToString {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Audio.Core"
    ]
    FONT_SCALE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Audio.Core"
    ]
    SCREEN_BRIGHTNESS_STATUS |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Audio.Core"
    ]
    AUTO_SCREEN_BRIGHTNESS |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Audio.Core"
    ]
    SCREEN_OFF_TIMEOUT |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Audio.Core"
    ]
    DEFAULT_SCREEN_ROTATION |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Audio.Core"
    ]
    ANIMATOR_DURATION_SCALE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Audio.Core"
    ]
    TRANSITION_ANIMATION_SCALE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Audio.Core"
    ]
    WINDOW_ANIMATION_SCALE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Audio.Core"
    ]
    DISPLAY_INVERSION_STATUS |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Applications.Settings.Core"
    ]
    public override func toString(): String
}



