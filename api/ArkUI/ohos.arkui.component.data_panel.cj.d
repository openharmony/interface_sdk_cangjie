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

package ohos.arkui.component.data_panel
import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel



@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ColorStop {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var color: ResourceColor
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offset: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(color: ResourceColor, offset: Length)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class LinearGradient {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(colorStops: Array<ColorStop>)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(color: ResourceColor)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DataPanelShadowOptions <: MultiShadowOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var colors: Array<LinearGradient>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(radius!: Length = 20.vp, colors!: Array<LinearGradient> = [], offsetX!: Length = 5.vp, offsetY!: Length = 5.vp)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DataPanel <: ViewBase {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(values!: Array<Float64>, max!: Float64 = 100.0, panelType!: DataPanelType = DataPanelType.Circle)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func closeEffect(value: Bool): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func valueColors(value: Array<LinearGradient>): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func trackBackgroundColor(value: ResourceColor): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeWidth(value: Length): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func trackShadow(value: DataPanelShadowOptions): This
}

