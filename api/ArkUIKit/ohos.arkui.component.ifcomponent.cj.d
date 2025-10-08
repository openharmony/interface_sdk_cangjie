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

package ohos.arkui.component.ifcomponent
import ohos.arkui.component.common.*
import ohos.labels.APILevel


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class If <: UINodeBase {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(subcomponent: () -> Unit)
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func branchId(value: Int32): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func getBranchId(): Int32
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func initial(): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func update(): Unit
}

