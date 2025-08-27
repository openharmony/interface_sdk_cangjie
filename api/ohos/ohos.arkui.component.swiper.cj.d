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

package ohos.arkui.component.swiper
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel


/**
* Defines the font used for text.
*
* @relation interface Font
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class FontOptions {
    /**
    * font size.
    *
    * @relation size?: Length
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var size: Length
    
    /**
    * font weight.
    *
    * @relaiton weight?: FontWeight | number | string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var weight: FontWeight
    
    /**
    * FontOptions constructor.
    *
    * @param { Length } size
    * @param { FontWeight } weight
    * @returns { FontOptions }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(size!: Length = 14.vp, weight!: FontWeight = FontWeight.Normal)
}


/**
* Defines the indicator class.
*
* @relation class Indicator<T>
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class Indicator {
    /**
    * DotIndicator class object.
    *
    * @returns { DotIndicator }
    * @relation static dot(): DotIndicator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func dot(): DotIndicator
    
    /**
    * DigitIndicator class object.
    *
    * @returns { DigitIndicator }
    * @relation static digit(): DigitIndicator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func digit(): DigitIndicator
    
    /**
    * Sets the position of the navigation indicator relative to the left edge of the Swiper component.
    *
    * @param { Length } value - the indicator to the left.
    * @returns { This }
    * @relaiton left(value: Length): T
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func left(value: Length): This
    
    /**
    * Sets the position of the navigation indicator relative to the top edge of the Swiper component.
    *
    * @param { Length } value - the indicator to the left.
    * @returns { This }
    * @relation top(value: Length): T
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func top(value: Length): This
    
    /**
    * Sets the position of the navigation indicator relative to the right edge of the Swiper component.
    *
    * @param { Length } value - the indicator to the left.
    * @returns { This }
    * @relation right(value: Length): T
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func right(value: Length): This
    
    /**
    * Sets the position of the navigation indicator relative to the bottom edge of the Swiper component.
    *
    * @param { Length } value - the indicator to the left.
    * @returns { This }
    * @relation bottom(value: Length): T
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bottom(value: Length): This
    
    /**
    * Sets the distance between the navigation indicator and the right edge (in right-to-left scripts) 
    * or the left edge (in left-to-right scripts) of the Swiper component.
    *
    * @param { Length } value - the indicator to the right in LTR, indicator to the left in RTL
    * @returns { This }
    * @relation start(value: LengthMetrics): T
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func start(value: Length): This
    
    /**
    * Sets the distance between the navigation indicator and the left edge (in right-to-left scripts)
    * or the right edge (in left-to-right scripts) of the Swiper component.
    *
    * @param { Length } value - the indicator to the left in RTL, Set the indicator to the right in LTR
    * @returns { This }
    * @relation end(value: LengthMetrics): T
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func end(value: Length): This
}


/**
* Define DotIndicator, the indicator type is dot.
*
* @relation class DotIndicator extends Indicator<DotIndicator>
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DotIndicator <: Indicator {
    /**
    * DotIndicator constructor.
    *
    * @returns { This }
    * @relation constructor()
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()
    
    /**
    * Sets the width of the dot-style navigation indicator.
    *
    * @param { Length } value - Width of the dot-style navigation indicator. Default value is 6vp.
    * This parameter cannot be set in percentage.
    * @returns { This }
    * @relation itemWidth(value: Length): DotIndicator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func itemWidth(value: Length): This
    
    /**
    * Sets the height of the dot-style navigation indicator.
    *
    * @param { Length } value - Height of the dot-style navigation indicator. Default value is 6vp.
    * This parameter cannot be set in percentage.
    * @returns { This }
    * @relation itemHeight(value: Length): DotIndicator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func itemHeight(value: Length): This
    
    /**
    * Sets the width of the selected dot in the dot-style navigation indicator.
    *
    * @param { Length } value - Width of the selected dot in the dot-style navigation indicator.
    * Default value is 12vp. This parameter cannot be set in percentage.
    * @returns { This }
    * @relaiton selectedItemWidth(value: Length): DotIndicator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedItemWidth(value: Length): This
    
    /**
    * Sets the height of the selected dot in the dot-style navigation indicator.
    *
    * @param { Length } value - Height of the selected dot in the dot-style navigation indicator. 
    * Default value is 6vp. This parameter cannot be set in percentage.
    * @returns { This }
    * @relaiton selectedItemHeight(value: Length): DotIndicator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedItemHeight(value: Length): This
    
    /**
    * Sets whether to enable the mask for the dot-style navigation indicator.
    *
    * @param { Bool } value - Whether to enable the mask for the dot-style navigation indicator.
    * Default value is false.
    * @returns { This }
    * @relation mask(value: boolean): DotIndicator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func mask(value: Bool): This
    
    /**
    * Sets the color of the dot-style navigation indicator.
    *
    * @param { ResourceColor } value - Color of the dot-style navigation indicator.
    * Default value is 0x182431(10% opacity).
    * @returns { DotIndicator }
    * @relation color(value: ResourceColor): DotIndicator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func color(value: ResourceColor): This
    
    /**
    * Sets the color of the selected dot in the dot-style navigation indicator.
    *
    * @param { ResourceColor } value - Color of the selected dot in the dot-style navigation indicator.
    * Default value is 0x007DFF.
    * @returns { This }
    * @relation selectedColor(value: ResourceColor): DotIndicator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedColor(value: ResourceColor): This
    
    /**
    * Sets the maximum number of navigation dots in the dot-style navigation indicator.
    *
    * @param { UInt32 } maxDisplayCount - Maximum number of navigation dots in the dot-style navigation indicator.
    * @returns { This } return the DotIndicator
    * @relation maxDisplayCount(maxDisplayCount: number): DotIndicator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func maxDisplayCount(value: UInt32): This
}


/**
* Define DigitIndicator, the indicator type is digit.
*
* @relation class DigitIndicator extends Indicator<DigitIndicator>
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DigitIndicator <: Indicator {
    /**
    * DigitIndicator constructor.
    *
    * @returns { This }
    * @relation constructor()
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()
    
    /**
    * Sets the font color of the digit-style navigation indicator.
    *
    * @param { ResourceColor } value - Font color of the digit-style navigation indicator. Default value is #ff182431.
    * @returns { This }
    * @relaiton fontColor(value: ResourceColor): DigitIndicator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontColor(value: ResourceColor): This
    
    /**
    * Sets the font color of the selected digit in the digit-style navigation indicator.
    *
    * @param { ResourceColor } value - Font color of the selected digit in the digit-style navigation indicator.
    * Default value is 0xff182431.
    * @returns { This }
    * @relation selectedFontColor(value: ResourceColor): DigitIndicator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedFontColor(value: ResourceColor): This
    
    /**
    * Sets the font style of the digit-style navigation indicator.
    * 
    * <p><strong>NOTE</strong>:
    * <br>Only the size and weight parameters in Font are adjustable.
    * <brSetting family and style has no effect.
    * </p>
    *
    * @param { FontOptions } value - Font style of the digit-style navigation indicator.
    * Default value is FontOptions(14.vp, FontWeight.Normal).
    * @returns { This }
    * @relation digitFont(value: Font): DigitIndicator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func digitFont(value: FontOptions): This
    
    /**
    * Sets the font style of the selected digit in the digit-style navigation indicator.
    *
    * @param { FontOptions } value - Font style of the selected digit in the digit-style navigation indicator.
    * Default value is FontOptions(14.vp, FontWeight.Normal).
    * @returns { This }
    * @relaiton selectedDigitFont(value: Font): DigitIndicator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedDigitFont(value: FontOptions): This
}


/**
* Provides methods for switching components.
*
* @relation class SwiperController
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SwiperController <: RemoteDataLite {
    /**
    * SwiperController constructor.
    *
    * @returns { This }
    * @relation constructor()
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()
    
    /**
    * Called when the next child component is displayed.
    *
    * @relation showNext(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showNext(): Unit
    
    /**
    * Called when the previous subcomponent is displayed.
    *
    * @relation showPrevious(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showPrevious(): Unit
    
    /**
    * Called when need to stop the swiper animation.
    *
    * @relation finishAnimation(callback?: VoidCallback): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func finishAnimation(): Unit
    
    /**
    * Called when need to stop the swiper animation.
    *
    * @param { () -> Unit } callback
    * @relation finishAnimation(callback?: VoidCallback): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func finishAnimation(callback: () -> Unit): Unit
}


/**
* Defines Swiper Component.
*
* @relation declare const Swiper: SwiperInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Swiper <: ContainerBase {
    /**
    * Create a Swiper with controller and child component.
    * 
    * @param { SwiperController } controller
    * @param { () -> Unit } child
    * @returns { This }
    * @relation (controller?: SwiperController): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(controller: SwiperController, child: () -> Unit)
    
    /**
    * Create a Swiper with child component.
    * 
    * @param { () -> Unit } child
    * @returns { This }
    * @relation (controller?: SwiperController): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(child: () -> Unit)
    
    /**
    * Sets whether to enable automatic playback for child component switching.
    * 
    * <p><strong>NOTE</strong>:
    * <br>If loop is set to false, the playback stops when the last page is reached.
    * <br>The playback continues when the page is not the last page after a swipe gesture. 
    * <br>If the Swiper component becomes invisible, the playback stops.
    * </p>
    *
    * @param { Bool } value - Whether to enable automatic playback for child component switching.
    * Default value is false.
    * @returns { This }
    * @relation autoPlay(value: boolean): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func autoPlay(value: Bool): This
    
    /**
    * Sets the duration of the animation for child component switching.
    *
    * @param { UInt32 } value - Duration of the autoplay for child component switching. Default value is 400,
    * @returns { This }
    * @relation duration(value: number): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func duration(value: UInt32): This
    
    /**
    * Sets the index of the child component currently displayed in the container.
    *
    * @param { UInt32 } value - Index of the child component currently displayed in the container. Default value is 0.
    * @returns { This }
    * @relation index(value: number): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func index(value: UInt32): This
    
    /**
    * Sets the interval for automatic playback.
    *
    * @param { UInt32 } value - Interval for automatic playback. Default value is 3000, the unit is ms.
    * @returns { This }
    * @relation interval(value: number): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func interval(value: UInt32): This
    
    /**
    * Sets whether to enable loop playback.
    *
    * @param { Bool } value - Whether to enable loop playback. Default value is true.
    * @returns { This }
    * @relaiton loop(value: boolean): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func loop(value: Bool): This
    
    /**
    * Sets whether vertical swiping is used.
    *
    * @param { Bool } value - Whether vertical swiping is used. Default value is false.
    * @returns { This }
    * @relation vertical(value: boolean): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func vertical(value: Bool): This
    
    /**
    * Sets the style of the navigation indicator.
    *
    * @param { Bool } value - Style of the navigation indicator.
    * Default value is true, default style is DotIndicator.
    * @returns { This }
    * @relation indicator(value: DotIndicator | DigitIndicator | boolean): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func indicator(indicator: Bool): This
    
    /**
    * Sets the style of the navigation indicator.
    *
    * @param { DotIndicator } value - Style of the navigation indicator.
    * @returns { This }
    * @relation indicator(value: DotIndicator | DigitIndicator | boolean): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func indicator(indicator: DotIndicator): This
    
    /**
    * Sets the style of the navigation indicator.
    *
    * @param { DigitIndicator } value - Style of the navigation indicator.
    * @returns { This }
    * @relation indicator(value: DotIndicator | DigitIndicator | boolean): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func indicator(indicator: DigitIndicator): This
    
    /**
    * Sets the space between child components.
    * 
    * <p><strong>NOTE</strong>:
    * <br>If the type is Length, the default unit is vp. 
    * if the unit is not specified, for example, '10', the default unit vp is used.
    * </p>
    *
    * @param { Length } value - Space between child components. Default value is 0,
    * Minimum value is 0. If a value less than 0 is set, the default value is used.
    * @returns { This }
    * @relation itemSpace(value: number | string): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func itemSpace(value: Length): This
    
    /**
    * Sets the mode in which elements are displayed along the main axis.
    * This API takes effect only when displayCount is not set.
    *
    * @param { SwiperDisplayMode } value - Mode in which elements are displayed along the main axis.
    * Default value is SwiperDisplayMode.Stretch.
    * @returns { This }
    * @relation displayMode(value: SwiperDisplayMode): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func displayMode(value: SwiperDisplayMode): This
    
    /**
    * Sets the effect used when the component is at one of the edges.
    * 
    * <p><strong>NOTE</strong>:
    * <br>This attribute takes effect when loop is set to false.
    * </p>
    *
    * @param { EdgeEffect } value - Effect used when the component is at one of the edges.
    * Default value is EdgeEffect.Spring.
    * @returns { This }
    * @relation effectMode(value: EdgeEffect): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func effectMode(value: EdgeEffect): This
    
    /**
    * Sets the number of elements to display per page.
    *
    * If swipeByGroup is set to true:
    * 1、All sub-items are grouped from index 0.
    * 2、The number of sub-items in each group is the value of displayCount.
    * 3、If the number of sub-items in the last group is less than displayCount, placeholder items are added to supplement the number of last group.
    * 4、Placeholder items do not display any content and are only used as placeholders.
    * 5、When turning pages, turn pages by group.
    *
    * @param { Int32 } value - Number of elements to display per page. Default value is 1.
    * @param { Bool } swipeByGroup - Whether to turn pages by group. Default value is false.
    * @returns { This }
    * @relation displayCount(value: number | string | SwiperAutoFill, swipeByGroup?: boolean): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func displayCount(value: Int32, swipeByGroup!: Bool = false): This
    
    /**
    * Sets the number of child components to be preloaded(cached).
    * 
    * <p><strong>NOTE</strong>:
    * <br>Which are needed for the specific number of pages immediately before and after the current page.
    * <br>If swipeByGroup in displayCount is set to true, child components are cached by group.
    * </p>
    *
    * @param { Int32 } value - Number of child components to be preloaded (cached). Default value is 1. 
    * Minimum value is 0. If a value less than 0 is set, the default value is used.
    * @returns { This }
    * @relation cachedCount(value: number): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func cachedCount(value: Int32): This
    
    /**
    * Sets whether to disable the swipe feature.
    *
    * @param { Bool } value - Whether to disable the swipe feature. Default value is false.
    * @returns { This }
    * @relation disableSwipe(value: boolean): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func disableSwipe(value: Bool): This
    
    /**
    * Sets the animation curve.
    *
    * @param { Curve } value - Animation curve.
    * Default value is Curve.Linear.
    * @returns { This }
    * @relation curve(value: Curve | string | ICurve): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func curve(value: Curve): This
    
    /**
    * Triggered when the index of the currently displayed child component changes.
    *
    * @param { (Int32) -> Unit } event
    * @returns { This }
    * @relation onChange(event: Callback<number>): SwiperAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(callback: (Int32) -> Unit): This
}


