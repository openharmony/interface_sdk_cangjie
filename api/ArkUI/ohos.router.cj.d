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

package ohos.router
import ohos.base.*
import ohos.hilog.HilogChannel
import ohos.ffi.*
import std.collection.*
import ohos.labels.APILevel
import std.deriving.Derive


 {
    Standard |
    Single |
    ...
}

 {
    
    
    
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RouterState {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var index: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var name: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var path: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var params: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        index!: Int32,
        name!: String,
        path!: String,
        params!: String
    )
}

