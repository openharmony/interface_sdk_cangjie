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

package ohos.arkui.component.data_panel
import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel



/**
* ColorStop type
*
* @relation interface ColorStop
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ColorStop {
    /**
    * Color property.
    * @type { ResourceColor } color - the color value.
    * @relation color: ResourceColor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var color: ResourceColor
    
    /**
    * Offset property.
    * @type { Length } offset - the color offset.
    * @relation offset: Length
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offset: Length
    
    /**
    * ColorStop constructor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(color: ResourceColor, offset: Length)
}


/**
* LinearGradient class
*
* @relation class LinearGradient
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class LinearGradient {
    /**
    * Constructor.
    *
    * @param { Array<ColorStop> } colorStops - the LinearGradient constructor parameter.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(colorStops: Array<ColorStop>)
    
    /**
    * Constructor.
    *
    * @param { ResourceColor } color - the LinearGradient constructor parameter.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(color: ResourceColor)
}


/**
* Defines the options of Shadow.
*
* @extends MultiShadowOptions
* @class DataPanelShadowOptions
* @relation interface DataPanelShadowOptions extends MultiShadowOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DataPanelShadowOptions <: MultiShadowOptions {
    /**
    * Current shadow colors.
    *
    * @type { Array<LinearGradient> }
    * @default Consistent with valueColors
    * @relation colors?: Array<ResourceColor | LinearGradient>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var colors: Array<LinearGradient>
    
    /**
    * DataPanelShadowOptions Constructor.
    *
    * @param { Length } radius
    * @param { Array<LinearGradient> } colors
    * @param { Length } offsetX
    * @param { Length } offsetY
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(radius!: Length = 20.vp, colors!: Array<LinearGradient> = [], offsetX!: Length = 5.vp, offsetY!: Length = 5.vp)
}


/**
* Defines DataPanel Component.
*
* @relation const DataPanel: DataPanelInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DataPanel <: ViewBase {
    /**
    * Return a DataPanel.
    *
    * @param { Array<Float64> } values
    * @param { Float64 } max
    * @param { DataPanelType } panelType
    * @returns { DataPanel }
    * @relation (options: DataPanelOptions): DataPanelAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(values!: Array<Float64>, max!: Float64 = 100.0, panelType!: DataPanelType = DataPanelType.CircleType)
    
    /**
    * Disable the special effect of the data ratio chart.
    *
    * @param { Bool } value
    * @returns { This }
    * @relation closeEffect(value: boolean): DataPanelAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func closeEffect(value: Bool): This
    
    /**
    * Set the value colors of the data ratio chart.
    *
    * @param { Array<LinearGradient> } value - the value colors of the data ratio chart.
    * @returns { This }
    * @relation valueColors(value: Array<ResourceColor | LinearGradient>): DataPanelAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func valueColors(value: Array<LinearGradient>): This
    
    /**
    * Set track background color of the data ratio chart.
    *
    * @param { ResourceColor } value - track background color of the data ratio chart.
    * @returns { This }
    * @relation trackBackgroundColor(value: ResourceColor): DataPanelAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func trackBackgroundColor(value: ResourceColor): This
    
    /**
    * Set the stroke width of the data ratio chart.
    *
    * @param { Length } value - the stroke width of the data ratio chart.
    * @returns { This }
    * @relation strokeWidth(value: Length): DataPanelAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeWidth(value: Length): This
    
    /**
    * Set the shadow width of the data ratio chart.
    *
    * @param { DataPanelShadowOptions } value - the track shadow width of the data ratio chart.
    * @returns { This }
    * @relation trackShadow(value: DataPanelShadowOptions): DataPanelAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func trackShadow(value: DataPanelShadowOptions): This
}


