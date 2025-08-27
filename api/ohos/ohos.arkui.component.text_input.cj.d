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

package ohos.arkui.component.text_input
import ohos.arkui.component.common.*
import ohos.arkui.component.text_field.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.resource.*
import ohos.labels.APILevel


/**
* Provides the method of switching the cursor position.
*
* @relation declare class TextInputController extends TextContentControllerBase
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextInputController <: RemoteDataLite {
    /**
    * constructor.
    *
    * @relation constructor();
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()
    
    /**
    * Called when the position of the insertion cursor is set.
    * <br>If the value is less than 0, the value 0 is u    sed.
    * <br>If the value exceeds the text length, the caret is placed at the end of the text.
    *
    * @param { Int32 } value
    * @relation caretPosition(value: number): void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func caretPosition(value: Int32): Unit
    
    /**
    * Text selection is achieved by specifying the start and end positions of the text.
    *
    * <br>If the value is less than 0, the value 0 is used.
    * <br>If the value exceeds the text length, the caret is placed at the end of the text.
    *
    * @param { Int32 } selectionStart - The start position of the selected text.The start position of text in the text box is 0.
    * @param { Int32 } selectionEnd - The end position of the selected text.
    * @param { MenuPolicy } options - Indicates the options of the text selection.Default value is MenuPolicy.DEFAULT.
    * @relation setTextSelection(selectionStart: number, selectionEnd: number, options?: SelectionOptions): void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setTextSelection(selectionStart: Int32, selectionEnd: Int32, options!: MenuPolicy = MenuPolicy.Default): Unit
    
    /**
    * Exit edit state.
    *
    * @relation stopEditing(): void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func stopEditing(): Unit
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextInput <: ViewBase {
    /**
    * Called when writing a single line of text.
    *
    * @param { ResourceStr } placeholder - The place holder text string.
    * @param { ResourceStr } text - Sets the current value of TextInput.
    * @param { TextInputController } controller - Called when the position of the insertion cursor is set.
    * @relation (value?: TextInputOptions): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(placeholder!: ResourceStr = "", text!: ResourceStr = "", controller!: TextInputController = TextInputController())
    
    /**
    * Called when the type of soft keyboard input button is set.
    *
    * @param { EnterKeyType } value - Default value is EnterKeyType.Done.
    * @returns { This }
    * @relation enterKeyType(value: EnterKeyType): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func enterKeyType(value: EnterKeyType): This
    
    /**
    * Called when the text align is set.
    * <br>Available options are TextAlign.Start, TextAlign.Center, and TextAlign.End.
    * <br>To set vertical alignment for the text, use the align attribute.
    * <br>The align attribute alone does not control the horizontal position of the text.
    * <br>In other words, Alignment.TopStart, Alignment.Top, and Alignment.TopEnd produce the same effect, top-aligning the text;
    * Alignment.Start, Alignment.Center, and Alignment.End produce the same effect, centered-aligning the text vertically;
    * Alignment.BottomStart, Alignment.Bottom, and Alignment.BottomEnd produce the same effect, bottom-aligning the text.
    * @param { TextAlign } value - Default value is TextAlign.Start.
    * @returns { This }
    * @relation textAlign(value: TextAlign): TextInputAttribute;
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
    * @param { ResourceColor } value - Default value follows the theme.The default value on wearable devices is '#99ffffff'.
    * @returns { This }
    * @relation placeholderColor(value: ResourceColor): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func placeholderColor(value: ResourceColor): This
    
    /**
    * Called when the color of the insertion cursor is set.
    *
    * @param { ResourceColor } value - Default value is '#007DFF'.
    * @returns { This }
    * @relation caretColor(value: ResourceColor): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func caretColor(value: ResourceColor): This
    
    /**
    * Called when the font property of the placeholder is set.
    *
    * @returns { This }
    * @relation placeholderFont(value?: Font): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func placeholderFont(size!: Length, weight!: FontWeight = FontWeight.W400, family!: String = "",
        style!: FontStyle = FontStyle.Normal): This
    
    /**
    * Called when the input of maximum text length is set.
    *
    * @param { UInt32 } value - Default value is Infinity, indicating that there is no upper limit on the number of characters that can be entered.
    * @returns { This }
    * @relation maxLength(value: number): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func maxLength(value: UInt32): This
    
    /**
    * Called when the font size is set.
    * <br>If fontSize is of the number type, the unit fp is used.
    * <br>The default font size is 16.fp.
    * <br>The value cannot be a percentage.
    * <br>The default value on wearable devices is 18.fp.
    *
    * @param { Length } value
    * @returns { This }
    * @relation fontSize(value: Length): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontSize(value: Length): This
    
    /**
    * Called when the font color is set.
    * @param { ResourceColor } value - The default value on wearable devices is '#dbffffff'.
    * @returns { This }
    * @relation fontColor(value: ResourceColor): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontColor(value: ResourceColor): This
    
    /**
    * Called when the font weight is set.
    *
    * @param { FontWeight } value - Default value is FontWeight.Normal.
    * @returns { This }
    * @relation fontWeight(value: number | FontWeight | ResourceStr): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontWeight(value: FontWeight): This
    
    /**
    * Called when the font style of a font is set.
    *
    * @param { FontStyle } value - Default value is FontStyle.Normal.
    * @returns { This }
    * @relation fontStyle(value: FontStyle): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontStyle(value: FontStyle): This
    
    /**
    * Called when the font list of text is set.
    * <br>Default font: 'HarmonyOS Sans'
    * <br>The 'HarmonyOS Sans' font and registered custom fonts are supported for applications.
    * <br>Only the 'HarmonyOS Sans' font is supported for widgets.
    *
    * @param { ResourceStr } value
    * @returns { This }
    * @relation fontFamily(value: ResourceStr): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontFamily(value: ResourceStr): This
    
    /**
    * Called when the inputFilter of text is set.
    *
    * @param { ResourceStr } value
    * @param { (String) -> Unit } error
    * @returns { This }
    * @relation inputFilter(value: ResourceStr, error?: Callback<string>): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func inputFilter(value: ResourceStr, error!: ?(String) -> Unit = None): This
    
    /**
    * Called when submitted.
    *
    * @param { (EnterKeyType) -> Unit } callback - Callback of the listened event.
    * @returns { This }
    * @relation onSubmit(callback: OnSubmitCallback): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onSubmit(callback: (EnterKeyType) -> Unit): This
    
    /**
    * Called when using the Clipboard menu.
    *
    * @param { (String) -> Unit }  callback - Callback used to return the copied text content.
    * @returns { This }
    * @relation onSubmit(callback: OnSubmitCallback): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onCopy(callback: (String) -> Unit): This
    
    /**
    * Called when using the Clipboard menu.
    *
    * @param { (String) -> Unit }  callback
    * @returns { This }
    * @relation onCut(callback: Callback<string>): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onCut(callback: (String) -> Unit): This
    
    /**
    * Called when the input of the input box changes.
    *
    * @param { (String) -> Unit }  callback
    * @returns { This }
    * @relation onChange(callback: EditableTextOnChangeCallback): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(callback: (String) -> Unit): This
    
    /**
    * Called when using the Clipboard menu.
    *
    * @param { (String) -> Unit } callback - Executed when a paste operation is performed.
    * @returns { This }
    * @relation onPaste(callback: OnPasteCallback): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onPaste(callback: (String) -> Unit): This
    
    /**
    * Called when judging whether the text editing change finished.
    *
    * @param { (Bool) -> Unit} callback
    * @returns { This }
    * @relation onEditChange(callback: Callback<boolean>): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onEditChange(callback: (Bool) -> Unit): This
    
    /**
    * Define custom keyboard of the text input.
    *
    * @param { CustomBuilder } value - Set up a custom keyboard of TextInput
    * @param { Bool } supportAvoidance - Indicates the custom keyboard options of TextInput
    * @returns { This }
    * @relation customKeyboard(value: CustomBuilder, options?: KeyboardOptions): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func customKeyboard(value: CustomBuilder, supportAvoidance!: Bool = false): This
    
    /**
    * Text input style
    *
    * @param { TextInputStyle } value - Text input style.Default value is TextInputStyle.Default.
    * @returns { This }
    * @relation style(value: TextInputStyle | TextContentStyle): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func style(value: TextInputStyle): This
    
    /**
    * Sets whether request keyboard or not when on focus.
    * Sets whether to enable the input method when the TextInput component obtains focus in a way other than clicking.
    * @param { Bool } value - Default value is true.
    * @returns { This }
    * @relation enableKeyboardOnFocus(value: boolean): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func enableKeyboardOnFocus(value: Bool): This
    
    /**
    * Controls whether the selection menu pops up.
    *
    * @param { Bool } value - Default value is false.
    * @returns { This }
    * @relation selectionMenuHidden(value: boolean): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectionMenuHidden(value: Bool): This
    
    /**
    * Define the show underline of the text input.
    *
    * @param { Bool } value - Default value is false.
    * @returns { This }
    * @relation showUnderline(value: boolean): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showUnderline(value: Bool): This
    
    /**
    * Define max lines of the text input.
    *
    * @param { Int32 } value - Default value is 3.
    * @returns { This }
    * @relation maxLines(value: number): TextInputAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func maxLines(value: Int32): This
}


