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

package ohos.app.ability.context_constant
import std.deriving.Derive
import ohos.labels.*


/**
* File area mode
*
* @relation export enum AreaMode
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum AreaMode {
    /**
    * System level device encryption area
    *
    * @relation EL1 = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    El1 |
    /**
    * User credential encryption area
    *
    * @relation EL2 = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    El2 |
    /**
    * User credential encryption area
    * when screen locked, can read/write, and create file
    *
    * @relation EL3 = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    El3 |
    /**
    * User credential encryption area
    * when screen locked, FEB2.0 can read/write, FEB3.0 can't
    * read/write, and all can't create file
    *
    * @relation EL4 = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    El4 |
    /**
    * User privacy sensitive encryption area
    * when the screen locked, a closed file cannot be opened, read, or written,
    * a file can be created and then opened, read, or written.
    *
    * @relation EL5 = 4
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    El5 |
    ...
}



