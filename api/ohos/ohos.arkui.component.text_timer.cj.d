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

package ohos.arkui.component.text_timer
import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.ffi.*
import ohos.base.*
import ohos.resource.*
import ohos.labels.APILevel



extend ShadowOptions {
}

/**
* Provides a way to control the process.
*
* @relation class TextTimerController
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextTimerController <: RemoteDataLite {
    /**
    * constructor.
    * A constructor used to create a TextTimerController object.
    *
    * @relation constructor()
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()
    
    /**
    * Provides a start event for timer.
    *
    * @relation start():void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func start(): Unit
    
    /**
    * Provides a pause event for timer.
    *
    * @relation pause():void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func pause(): Unit
    
    /**
    * Provides an event to reset timer.
    *
    * @relation reset():void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func reset(): Unit
}


/**
* Defines TextTimer Component.
*
* @relation const TextTimer: TextTimerInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class TextTimer <: ViewBase {
    /**
    * A constructor used to create a TextTimerController object.
    *
    * @param { Bool } isCountDown
    * @param { Int64 } count
    * @param { TextTimerController } controller
    * @returns { TextTimer }
    * @relation (options?: TextTimerOptions): TextTimerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(isCountDown!: Bool = false, count!: Int64 = 60000,
        controller!: TextTimerController = TextTimerController())
    
    /**
    * Sets the custom format.
    * The value must contain at least one of the following keywords: HH, mm, ss, and SS.
    *
    * <p><strong>NOTE</strong>:
    * <br>If the specified date format is yy, MM, or dd, the default value is used instead.
    * </p>
    *
    * @param { String } value - Custom format.Default value: 'HH:mm:ss.SS'
    * @returns { This }
    * @relation format(value: string): TextTimerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func format(value: String): This
    
    /**
    * Triggered when the time text changes.
    * This event is not triggered when the screen is locked or the application is running in the background.
    * When high-precision formats (such as SSS or SS) are used, the callback interval may vary.
    *
    * @param { (Int64, Int64) -> Unit } event
    * @returns { This }
    * @relation onTimer(event: (utc: number, elapsedTime: number) => void): TextTimerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onTimer(event: (Int64, Int64) -> Unit): This
    
    /**
    * Sets the font size.
    *
    * @param { Length } value - Font size.The default font size is 16 fp.
    * <br>If fontSize is of the number type, the unit fp is used.
    * <br>The value cannot be a percentage.
    * @returns { This }
    * @relation fontSize(value: Length): TextTimerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontSize(value: Length): This
    
    /**
    * Sets the font color.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation fontColor(value: ResourceColor): TextTimerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontColor(value: ResourceColor): This
    
    /**
    * Sets the font style.
    *
    * @param { FontStyle } value - Font style.Default value: FontStyle.Normal
    * @returns { This }
    * @relation fontStyle(value: FontStyle): TextTimerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontStyle(value: FontStyle): This
    
    /**
    * Sets the font weight.
    *
    * <p><strong>NOTE</strong>:
    * <br>If the value is too large, the text may be clipped depending on the font.
    * </p>
    *
    * @param { FontWeight } value - Font weight.
    * <br>For the number type, Value range: [100, 900], at an interval of 100.The default value is 400.
    * <br>A larger value indicates a heavier font weight.
    * <br>For the string type, only strings that represent a number.
    * @returns { This }
    * @relation fontWeight(value: number | FontWeight | ResourceStr): TextTimerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontWeight(value: FontWeight): This
    
    /**
    * Sets the font family.
    *
    * @param { ResourceStr } value - Font family. Default font: 'HarmonyOS Sans'
    * @returns { This }
    * @relation fontFamily(value: ResourceStr): TextTimerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontFamily(value: ResourceStr): This
    
    /**
    * Sets the text shadow.
    * It supports input parameters in an array to implement multiple text shadows.
    * This API does not work with the fill attribute or coloring strategy.
    *
    * @param { Array<ShadowOptions> } value - The shadow options.
    * @returns { TextTimerAttribute }
    * @relation textShadow(value: ShadowOptions | Array<ShadowOptions>): TextTimerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func textShadow(value: Array<ShadowOptions>): This
    
    /**
    * Sets the text shadow.
    * It supports input parameters in an array to implement multiple text shadows.
    * This API does not work with the fill attribute or coloring strategy.
    *
    * @param { ShadowOptions } value - The shadow options.
    * @returns { TextTimerAttribute }
    * @relation textShadow(value: ShadowOptions | Array<ShadowOptions>): TextTimerAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func textShadow(value: ShadowOptions): This
}


