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

package ohos.arkui.component.text
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.resource.*
import ohos.labels.APILevel




/**
* Defines the controller of Text.
*
* @relation declare class TextController
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextController <: RemoteDataLite {
    /**
    * Defines the TextController constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()
    
    /**
    * Close the select menu when menu is on.
    *
    * @relation closeSelectionMenu(): void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func closeSelectionMenu(): Unit
}


/**
* Provides a class for writing texts.
*
* @relation interface TextInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Text <: ContainerBase {
    /**
    * Called when writing text.
    *
    * @relation (content?: string | Resource, value?: TextOptions): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(content: ResourceStr, controller!: TextController = TextController())
    
    /**
    * Called when writing text.
    *
    * @relation (content?: string | Resource, value?: TextOptions): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(content: ResourceStr, controller!: TextController = TextController(), chid!: () -> Unit)
    
    /**
    * Called when writing text.
    *
    * @relation (content?: string | Resource, value?: TextOptions): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(controller!: TextController = TextController(), chid!: () -> Unit)
    
    /**
    * Called when writing text.
    *
    * @relation (content?: string | Resource, value?: TextOptions): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(controller!: TextController = TextController())
    
    /**
    * Set font line spacing.
    *
    * @param { Length } value - Default value is 0.
    * @returns { This }
    * @relation lineSpacing(value: LengthMetrics): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func lineSpacing(value: Length): This
    
    /**
    * Called when the font size is set.
    *
    * @param { Length } value - Default value is 16.fp.
    * @returns { This }
    * @relation lineSpacing(value: LengthMetrics): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontSize(value: Length): This
    
    /**
    * Called when the maximum font size of the font is set.
    *
    * @param { Length } value
    * @returns { This }
    * @relation maxFontSize(value: number | string | Resource): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func maxFontSize(value: Length): This
    
    /**
    * Called when the minimum font size of the font is set.
    *
    * @param { Length } value
    * @returns { This }
    * @relation minFontSize(value: number | string | Resource): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func minFontSize(value: Length): This
    
    /**
    * Called when the font color is set.
    *
    * @param { Length } value - Default value is '#e6182431'.The default value on wearable devices is '#c5ffffff'.
    * @returns { This }
    * @relation fontColor(value: ResourceColor): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontColor(value: ResourceColor): This
    
    /**
    * Called when the font style of a font is set.
    *
    * @param { FontStyle } value - Default value is FontStyle.Normal.
    * @returns { This }
    * @relation fontStyle(value: FontStyle): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontStyle(value: FontStyle): This
    
    /**
    * Called when the font weight is set.
    *
    * @param { FontStyle } value
    * @returns { This }
    * @relation fontWeight(value: number | FontWeight | ResourceStr): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontWeight(value: FontWeight): This
    
    /**
    * Called when the font list of text is set.
    *
    * @param { ResourceStr } value
    * @returns { This }
    * @relation fontFamily(value: string | Resource): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontFamily(value: ResourceStr): This
    
    /**
    * Called when the horizontal center mode of the font is set.
    *
    * @param { TextAlign } value - value - Default value is TextAlign.Start.
    * @returns { This }
    * @relation textAlign(value: TextAlign): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func textAlign(value: TextAlign): This
    
    /**
    * Called when the overflow mode of the font is set.
    *
    * @param { TextOverflowOptions } options - Text overflow options.
    * @returns { This }
    * @relation textOverflow(options: TextOverflowOptions): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func textOverflow(value: TextOverflow): This
    
    /**
    * Called when the maximum number of lines of text is set.
    * <br>By default, text is automatically folded.
    * <br>If this attribute is specified, the text will not exceed the specified number of lines.
    * <br>If there is extra text, you can use textOverflow to specify how it is displayed.
    * @param { Int32 } options - Text overflow options.
    * @returns { This }
    * @relation maxLines(value: number): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func maxLines(value: Int32): This
    
    /**
    * Called when the vertical center mode of the font is set.
    * <br>If the value is less than or equal to 0, the line height is not limited and the font size is adaptive.
    * <br>If the value is of the number type, the unit fp is used.
    * <br>For the string type, numeric string values with optional units.
    *
    * @param { Int32 } value
    * @returns { This }
    * @relation maxLines(value: number): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func lineHeight(value: Length): This
    
    /**
    * Called when the text decoration of the text is set.
    *
    * @param { TextDecorationType } decorationType - The type value of the decoration property object.
    * @param { ResourceColor } color - The color value of the decoration property object.
    * @param { TextDecorationStyle } decorationStyle - The style value of the decoration property object.
    * @returns { This }
    * @relation decoration(value: DecorationStyleInterface): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func decoration(decorationType!: TextDecorationType, color!: ResourceColor,
        decorationStyle!: TextDecorationStyle = TextDecorationStyle.SOLID): This
    
    /**
    * Called when the baseline offset is set.
    *
    * @param { Length } value
    * @returns { This }
    * @relation baselineOffset(value: number | ResourceStr): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func baselineOffset(value: Length): This
    
    /**
    * Called when the type of letter in the text font is set.
    *
    * @param { TextCase } value - Default value is TextCase.Normal.
    * @returns { This }
    * @relation textCase(value: TextCase): TextAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func textCase(value: TextCase): This
}


