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

package ohos.arkui.component.page_transition
import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import std.deriving.Derive


public type PageTransitionCallback = (RouteType, Float64) -> Unit

 {
    None |
    Push |
    Pop |
    ...
}

 {
    
    
    
}

 {
    Left |
    Right |
    Top |
    Bottom |
    ...
}

 {
    
    
    
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed abstract class CommonTransition {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func slide(value: SlideEffect): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func translate(x!: Length = 0.vp, y!: Length = 0.vp, z!: Length = 0.vp): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func scale(
        x!: Float32 = 1.0,
        y!: Float32 = 1.0,
        z!: Float32 = 1.0,
        centerX!: Length = 50.percent,
        centerY!: Length = 50.percent
    ): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func opacity(value: Float64): This
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PageTransitionEnter <: CommonTransition {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        routeType!: RouteType = RouteType.None,
        duration!: Int32 = 1000,
        curve!: Curve = Curve.Linear,
        delay!: Int32 = 0
    )
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onEnter(event: PageTransitionCallback)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PageTransitionExit <: CommonTransition {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        routeType!: RouteType = RouteType.None,
        duration!: Int32 = 1000,
        curve!: Curve = Curve.Linear,
        delay!: Int32 = 0
    )
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onExit(event: PageTransitionCallback)
}

