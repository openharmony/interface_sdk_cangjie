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

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file.

package ohos.app.ability.error_manager

public import ohos.application.error_observer.*
import ohos.application.error_observer.*
import ohos.labels.*

/**
 * Error manager event type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum ErrorManagerEvent {
    /**
     * Error event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Error | ...
}

/**
 * This module provides the function of error manager.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class ErrorManager {
    /**
     * Register error observer.
     *
     * @param { ErrorManagerEvent } eventType - Indicates the error event type to observe.
     * @param { ErrorObserver } observer - The error observer.
     * @returns { Int32 } Returns the number code of the observer.
     * @throws { BusinessException } 16000003 - The specified ID does not exist.
     * @throws { BusinessException } 16000050 - Internal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true
    ]
    public static func on(eventType: ErrorManagerEvent, observer: ErrorObserver): Int32

    /**
     * Unregister error observer.
     *
     * @param { ErrorManagerEvent } eventType - Indicates the error event type to unregister.
     * @param { Int32 } observerId - Indicates the number code of the observer.
     * @throws { BusinessException } 16000003 - The specified ID does not exist.
     * @throws { BusinessException } 16000050 - Internal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core",
        throwexception: true,
        workerthread: true
    ]
    public static func off(eventType: ErrorManagerEvent, observerId: Int32): Unit
}
