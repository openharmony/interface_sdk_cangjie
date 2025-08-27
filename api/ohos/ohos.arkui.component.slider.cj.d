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

package ohos.arkui.component.slider
import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel


/**
* Defines Slider Component.
*
* @relation const Slider: SliderInterface;
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Slider <: ViewBase {
    /**
    * Defines Slider Component instance.
    *
    * @param { Float64 } min
    * @param { Float64 } max
    * @param { Float64 } step
    * @param { Float64 } value
    * @param { SliderStyle } style
    * @param { Axis } direction
    * @param { Bool } reverse
    * @returns { This }
    * @relation (options?: SliderOptions): SliderAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        min!: Float64 = 0.0,
        max!: Float64 = 100.0,
        step!: Float64 = 1.0,
        value!: Float64 = min,
        style!: SliderStyle = SliderStyle.OutSet,
        direction!: Axis = Axis.Horizontal,
        reverse!: Bool = false
    )
    
    /**
    * Called when the slider color of the slider bar is set.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation blockColor(value: ResourceColor): SliderAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func blockColor(value: ResourceColor): This
    
    /**
    * Called when the track color of the slider is set.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation trackColor(value: ResourceColor | LinearGradient): SliderAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func trackColor(value: ResourceColor): This
    
    /**
    * Called when the slider of the slider bar is set to slide over the area color.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation selectedColor(value: ResourceColor): SliderAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedColor(value: ResourceColor): This
    
    /**
    * Called when setting whether to display step size.
    *
    * @param { boolean } value
    * @returns { This }
    * @relation showSteps(value: boolean): SliderAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showSteps(value: Bool): This
    
    /**
    * Called when the percentage of bubble prompt is set when sliding.
    *
    * @param { Bool } value
    * @param { ResourceStr } content
    * @returns { This }
    * @relation showTips(value: boolean, content?: ResourceStr): SliderAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showTips(value: Bool, content!: ?ResourceStr = None): This
    
    /**
    * Called when the thickness of track is set.
    *
    * @param { Length } value
    * @returns { This }
    * @relation trackThickness(value: Length): SliderAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func trackThickness(value: Length): This
    
    /**
    * Triggered when the slider is dragged or clicked.
    *
    * @param { (Float64, SliderChangeMode) -> Unit } callback
    * @returns { This }
    * @relation onChange(callback: (value: number, mode: SliderChangeMode) => void): SliderAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(callback: (Float64, SliderChangeMode) -> Unit): This
    
    /**
    * Called when the border color of block is set.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation blockBorderColor(value: ResourceColor): SliderAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func blockBorderColor(value: ResourceColor): This
}


