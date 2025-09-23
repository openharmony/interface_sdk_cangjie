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

package ohos.app.ability.error_manager
public import ohos.application.error_observer.*
import ohos.application.error_observer.*
import ohos.labels.*
import ohos.business_exception.BusinessException

import ohos.hilog.*

/**
* Error manager event type.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum ErrorManagerEvent {
    /**
    * Error event.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Error |
    ...
}


/**
* This module provides the function of error manager.
*
* @relation declare namespace errorManager
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class ErrorManager {
    /**
    * Register error observer.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * 2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 16000003 - The specified ID does not exist.
    * @relation function on(type: 'error', observer: ErrorObserver): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public static func on(eventType: ErrorManagerEvent, observer: ErrorObserver): Int32
    
    /**
    * Unregister error observer.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * 2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 16000003 - The specified ID does not exist.
    * @relation function off(type: 'error', observerId: number): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public static func off(eventType: ErrorManagerEvent, observerId: Int32): Unit
}


