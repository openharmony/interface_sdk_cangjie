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

package ohos.app.ability.start_options

import ohos.app.ability.ability_constant.*
import ohos.labels.*

/**
 * StartOptions is the basic communication component of the system.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public open class StartOptions {
    /**
     * The type of WindowMode
     * WindowModeSplitPrimary and WindowModeSplitSecondary are
     * valid only in intra-app redirection scenarios.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var windowMode: ?WindowMode

    /**
     * The type of displayId
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var displayId: Int32

    /**
     * StartOptions constructor.
     *
     * @param { ?WindowMode } [windowMode] - The type of WindowMode. The default value is None.
     * @param { Int32 } [displayId] - The type of displayId. The default value is 0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public init(
        windowMode!: ?WindowMode = None,
        displayId!: Int32 = 0
    )
}
