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

package ohos.application.error_observer
import std.collection.*
import ohos.labels.*

import ohos.ffi.*

/**
* Error object.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class ErrorObject {
    /**
    * Error object name.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public let name: String
    
    /**
    * Error object message.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public let message: String
    
    /**
    * Error object stack.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public let stack: Option<String>
}


/**
* The observer will be called by system when an error occurs.
*
* @relaiton export default class ErrorObserver
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class ErrorObserver {
    /**
    * Will be called when the js runtime throws an exception which doesn't caught by user.
    *
    * @relation onUnhandledException(errMsg: string): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var onUnhandledException: (String) -> Unit
    
    /**
    * Will be called when the js runtime throws an exception which doesn't caught by user.
    *
    * @relation onException?(errObject: Error): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var onException: Option<(ErrorObject) -> Unit>
    
    /**
    * ErrorObserver constructor.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public init(
        onUnhandledException: (String) -> Unit,
        onException!: Option<(ErrorObject) -> Unit> = None
    )
}


