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

package ohos.app.ability.ability_stage
import std.collection.*
import ohos.ffi.*
import ohos.labels.*
import ohos.app.ability.configuration.*
import ohos.app.ability.want.*
import ohos.app.ability.ui_ability.*
import ohos.business_exception.BusinessException

import ohos.hilog.*


/**
* AbilityStage is a runtime class for HAP files.
* AbilityStage notifies you of when you can perform HAP initialization such as resource pre-loading and thread
* creation during the HAP loading.
*
* @relation declare class AbilityStage
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public open class AbilityStage <: FFIData {
    /**
    * register AbilityStage
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public static func registerCreator(moduleName: String, creator: () -> AbilityStage): Unit
    
    /**
    * Defines the context of AbilityStage.
    * The context is obtained in the callback invoked when initialization is performed during ability startup.
    *
    * @relation context: AbilityStageContext
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public mut prop context: AbilityStageContext
    
    /**
    * Called when the application is created.
    * This API returns the result synchronously and does not support asynchronous callbacks.
    *
    * @relation onCreate(): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public open func onCreate(): Unit
}


