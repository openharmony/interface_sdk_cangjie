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

package ohos.arkui.component.gauge
import ohos.arkui.component.common.*
import ohos.arkui.component.data_panel.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.resource.*
import ohos.labels.APILevel




/**
* Defines the Gauge component.
*
* @relation declare const Gauge: GaugeInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Gauge <: ContainerBase {
    /**
    * The constructor of Gauge.
    *
    * @param { Float64 } value
    * @param { Float64 } min
    * @param { Float64 } max
    * @param { () -> Unit } child
    * @returns { This }
    * @relation (options: GaugeOptions): GaugeAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: Float64, min!: Float64 = 0.0, max!: Float64 = 100.0, child!: () -> Unit = { => })
    
    /**
    * Sets the value for the current profile.
    *
    * @param { Float32 } value
    * @returns { This }
    * @relation value(value: number): GaugeAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func value(value: Float32): This
    
    /**
    * Set the start angle. Clock 0 is 0 degrees and clockwise is positive.
    *
    * @param { Float64 } angle
    * @returns { This }
    * @relation startAngle(angle: number): GaugeAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func startAngle(angle: Float64): This
    
    /**
    * Sets the end angle position. Clock 0 is 0 degrees and clockwise is positive.
    *
    * @param { Float64 } angle
    * @returns { This }
    * @relation endAngle(angle: number): GaugeAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func endAngle(angle: Float64): This
    
    /**
    * Set the color of the chart. You can set the solid color and segmented gradient color.
    *
    * @param { Array<(ResourceColor, Float32)> } value
    * @returns { This }
    * @relation colors(colors: ResourceColor | LinearGradient | Array<[ResourceColor | LinearGradient, number]>): GaugeAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func colors(value: Array<(ResourceColor, Float32)>): This
    
    /**
    * Set the color of the chart. You can set the solid color and segmented gradient color.
    *
    * @param { Array<(LinearGradient, Float32)> } value
    * @returns { This }
    * @relation colors(colors: ResourceColor | LinearGradient | Array<[ResourceColor | LinearGradient, number]>): GaugeAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func colors(value: Array<(LinearGradient, Float32)>): This
    
    /**
    * Set the color of the chart. You can set the solid color and segmented gradient color.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation colors(colors: ResourceColor | LinearGradient | Array<[ResourceColor | LinearGradient, number]>): GaugeAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func colors(value: ResourceColor): This
    
    /**
    * Set the color of the chart. You can set the solid color and segmented gradient color.
    *
    * @param { LinearGradient } value
    * @returns { This }
    * @relation colors(colors: ResourceColor | LinearGradient | Array<[ResourceColor | LinearGradient, number]>): GaugeAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func colors(value: LinearGradient): This
    
    /**
    * Sets the thickness of the ring chart.
    *
    * @param { Length } length
    * @returns { This }
    * @relation strokeWidth(length: Length): GaugeAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func strokeWidth(length: Length): This
    
    /**
    * Sets track shadow of the ring chart.
    *
    * @param { Float64 } radius
    * @param { Float64 } offsetX
    * @param { Float64 } offsetY
    * @returns { This }
    * @relation trackShadow(value: GaugeShadowOptions): GaugeAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func trackShadow(radius!: Float64 = 20.0, offsetX!: Float64 = 5.0, offsetY!: Float64 = 5.0): This
    
    /**
    * Sets indicator options of the ring chart.
    *
    * @param { ResourceStr } icon
    * @param { Length } space
    * @returns { This }
    * @relation indicator(value: GaugeIndicatorOptions): GaugeAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func indicator(icon!: ResourceStr = "default", space!: Length = 8.0.vp): This
    
    /**
    * Sets description content of the ring chart.
    *
    * @param { () -> Unit } builder
    * @returns { This }
    * @relation description(value: CustomBuilder): GaugeAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func description(builder: () -> Unit): This
}


