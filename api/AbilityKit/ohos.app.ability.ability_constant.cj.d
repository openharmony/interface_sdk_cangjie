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

package ohos.app.ability.ability_constant
import std.deriving.Derive
import ohos.labels.*

import ohos.hilog.*

/**
* Defines the parameters for starting an ability.
* The parameter values are automatically passed in by the system when the ability is started. You do not need to
* change the values.
*
* @relation export interface LaunchParam
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class LaunchParam {
    /**
    * Ability launch reason, which is an enumerated type.
    *
    * @relation launchReason: LaunchReason
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var launchReason: LaunchReason
    
    /**
    * Reason for the last exit, which is an enumerated type.
    *
    * @relation lastExitReason: LastExitReason
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var lastExitReason: LastExitReason
}


/**
* Enumerates the initial ability launch reasons.
* You can use it together with the value of launchReason in
* onCreate(want, launchParam) of the UIAbility to complete different operations.
*
* @relation export enum LaunchReason
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum LaunchReason {
    /**
    * Unknown reason.
    * 
    * @relation UNKNOWN = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Unknown |
    /**
    * The ability is started by calling startAbility.
    *
    * @relation START_ABILITY = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    StartAbility |
    /**
    * The ability is started by calling startAbilityByCall.
    *
    * @relation CALL = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Call |
    /**
    * The ability is started by means of cross-device migration.
    *
    * @relation CONTINUATION = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Continuation |
    /**
    * The ability is automatically started when the application is restored from a fault.
    *
    * @relation APP_RECOVERY = 4
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    AppRecovery |
    ...
}


/**
* Enumerates the reasons for the last exit.
* You can use it together with the value of lastExitReason in
* onCreate(want, launchParam) of the UIAbility to complete different operations.
*
* @relation export enum LastExitReason
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum LastExitReason {
    /**
    * Unknown reason.
    *
    * @relation UNKNOWN = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Unknown |
    /**
    * The ability exits normally because the user closes the application.
    *
    * @relation NORMAL = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Normal |
    /**
    * The ability exits due to abnormal signals on the local host.
    *
    * @relation CPP_CRASH = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    CppCrash |
    /**
    * The ability exits because watchdog detects that the application is frozen.
    *
    * @relation APP_FREEZE = 5
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    AppFreeze |
    ...
}


/**
* Enumerates the ability continuation results.
* You can use it together with <code>onContinue(wantParam)</code> of the UIAbility to complete different
* operations.
*
* @relation export enum OnContinueResult
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum OnContinueResult {
    /**
    * The ability continuation is accepted.
    *
    * @relation AGREE = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Agree |
    /**
    * The ability continuation is rejected.
    * If the application is abnormal in onContinue, which results in abnormal display during data restoration, this
    * error code is returned.
    *
    * @relation REJECT = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Reject |
    /**
    * The version does not match.
    * The application on the initiator can obtain the version of the target application from onContinue. If the
    * ability continuation cannot be performed due to version mismatch, this error code is returned.
    *
    * @relation MISMATCH = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Mismatch |
    ...
}


/**
* Enumerates the window mode when the ability is started.
* It can be used together with startAbility to specify the window mode for starting the ability.
*
* @relation export enum WindowMode
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum WindowMode {
    /**
    * Full screen mode. It takes effect only on 2-in-1 devices and tablets.
    *
    * @relation WINDOW_MODE_FULLSCREEN = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    WindowModeFullscreen |
    /**
    * Primary screen (left screen in the case of horizontal orientation) in split-screen mode. It is valid only in
    * intra-app redirection scenarios.
    * It takes effect only on foldable devices and tablets.
    *
    * @relation WINDOW_MODE_SPLIT_PRIMARY = 100
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    WindowModeSplitPrimary |
    /**
    * Secondary screen (right screen in the case of horizontal orientation) in split-screen mode. It is valid only in
    * intra-app redirection scenarios.
    * It takes effect only on foldable devices and tablets.
    *
    * @relation WINDOW_MODE_SPLIT_SECONDARY = 101
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    WindowModeSplitSecondary |
    ...
}


/**
* Enumerates the memory levels. You can use it in onMemoryLevel(level) of the UIAbility to complete
* different operations.
*
* @relation export enum MemoryLevel
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum MemoryLevel {
    /**
    * Moderate memory usage.
    *
    * @relation MEMORY_LEVEL_MODERATE = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    MemoryLevelModerate |
    /**
    * Low memory usage.
    *
    * @relation MEMORY_LEVEL_LOW = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    MemoryLevelLow |
    /**
    * High memory usage.
    *
    * @relation MEMORY_LEVEL_CRITICAL = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    MemoryLevelCritical |
    ...
}



