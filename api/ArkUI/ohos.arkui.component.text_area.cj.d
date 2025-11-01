package ohos.arkui.component.text_area

import ohos.arkui.component.common.*
import ohos.arkui.component.text_field.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * Provides the method of switching the cursor position.
 * TextAreaController allows you to control the caret position in a TextArea component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextAreaController <: RemoteDataLite {
/**
 * TextAreaController constructor.
 * Creates a new instance of TextAreaController.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Set the position of the insertion cursor.
 *
 * @param { ?Int32 } value  - Length from the start of the string to the position where the caret is located.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func caretPosition(value: ?Int32): Unit
}

/**
 * Defines the options of TextArea.
 * TextArea is a multi-line text input component that allows users to input and edit text.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextArea <: CommonMethodComponent<TextArea> & TextAreaAttribute {
/**
 * The TextArea constructor.
 *
 * @param { ?ResourceStr } [placeholder] - The place holder text string. Text displayed when there is no input.
 * @param { ?ResourceStr } [text] - Sets the current value of TextArea.
 * @param { ?TextAreaController } [controller] - Called when the position of the insertion cursor is set.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(placeholder!: ?ResourceStr = None, text!: ?ResourceStr = None, controller!: ?TextAreaController = None)

/**
 * Set the insertion cursor color.
 *
 * @param { ?ResourceColor } value - Default value is 0x007DFF.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func caretColor(value: ?ResourceColor): This

/**
 * Set the font property of the placeholder.
 * The 'HarmonyOS Sans' font and registered custom fonts are supported.
 *
 * @param { ?Length } size - Font size of the placeholder text.
 * @param { ?FontWeight } [weight] - Font weight of the placeholder text.
 * @param { ?String } [family] - Font family of the placeholder text.
 * @param { ?FontStyle } [style] - Font style of the placeholder text.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func placeholderFont(size!: ?Length, weight!: ?FontWeight = None, family!: ?String = None,
        style!: ?FontStyle = None): This

/**
 * Called when the alignment of the contents of a multiline text box is set.
 *
 * NOTE:
 * <br>To set vertical alignment for the text, use the align attribute.
 * <br>The align attribute alone does not control the horizontal position of the text.
 * <br>In other words, Alignment.TopStart, Alignment.Top, and Alignment.TopEnd produce the same effect,
 * top-aligning the text; Alignment.Start, Alignment.Center, and Alignment.End produce the same effect,
 * centered-aligning the text vertically; Alignment.BottomStart, Alignment.Bottom,
 * and Alignment.BottomEnd produce the same effect, bottom-aligning the text.
 * <br>When textAlign is set to TextAlign.Justify, the text in the last line is horizontally aligned with the start edge.
 *
 * @param { ?TextAlign } value - Default value is TextAlign.Start.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func textAlign(value: ?TextAlign): This

/**
 * Set font size.
 *
 * @param { ?Length } value - Default value is 16.fp.
 * The default value on wearable devices is 18.fp. If fontSize is of the number type, the unit fp is used.
 * This parameter cannot be set in percentage.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontSize(value: ?Length): This

/**
 * Set font color.
 *
 * @param { ?ResourceColor } value - Color of the text. The default value is 0xe6182431.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontColor(value: ?ResourceColor): This

/**
 * Set font weight.
 *
 * @param { ?FontWeight } value - Weight of the font.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontWeight(value: ?FontWeight): This

/**
 * Set font style.
 *
 * @param { ?FontStyle } value - Default value is FontStyle.Normal.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontStyle(value: ?FontStyle): This

/**
 * Set font family.
 * <br>Default font: 'HarmonyOS Sans'
 * <br>The 'HarmonyOS Sans' font and registered custom fonts are supported for applications.
 * <br>Only the 'HarmonyOS Sans' font is supported for widgets.
 *
 * @param { ?ResourceStr } value - Default value is 'HarmonyOS Sans'.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fontFamily(value: ?ResourceStr): This

/**
 * Set the type of soft keyboard input button.
 *
 * @param { ?EnterKeyType } value - Type of the enter key.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func enterKeyType(value: ?EnterKeyType): This

/**
 * Called when the inputFilter of text is set.
 *
 * <p><strong>NOTE</strong>:
 * <br>Only inputs that comply with the regular expression can be displayed.
 * <br>Other inputs are filtered out.
 * <br>The specified regular expression can match single characters, but not strings.
 * </p>
 *
 * @param { ?ResourceStr } value - Regular expression pattern for input filtering.
 * @param { ?(String) -> Unit } [error] - Callback function executed when input doesn't match the pattern.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func inputFilter(value!: ?ResourceStr, error!: ?(String) -> Unit = None): This

/**
 * Define the max length content of the text area.
 * NOTE: By default, there is no maximum number of characters.
 * When the maximum number of characters is reached,
 * no more characters can be entered, and the border turns red.
 *
 * @param { ?UInt32 } value - Maximum number of characters allowed.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func maxLength(value: ?UInt32): This

/**
 * Set the placeholder color.
 *
 * @param { ?ResourceColor } value - Default value follows the theme.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func placeholderColor(value: ?ResourceColor): This

/**
 * Called when submitted.
 *
 * @param { ?(EnterKeyType) -> Unit } callback - Callback function executed when the enter key is pressed.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onSubmit(callback: ?(EnterKeyType) -> Unit): This

/**
 * Called when the input changes.
 * NOTE: In this callback, if cursor operations are performed,
 * you need to adjust the cursor logic based on the previewText parameter
 * to make sure it works seamlessly under the preview display scenario.
 *
 * @param { ?(String) -> Unit }  callback - Callback function executed when the text content changes.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onChange(callback: ?(String) -> Unit): This

/**
 * Called when using the Clipboard menu.
 *
 * @param { ?(String) -> Unit } callback - Callback function executed when copy operation is performed.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onCopy(callback: ?(String) -> Unit): This

/**
 * Called when using the Clipboard menu.
 *
 * @param { ?(String) -> Unit } callback - Callback function executed when cut operation is performed.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onCut(callback: ?(String) -> Unit): This

/**
 * Called when using the Clipboard menu.
 *
 * @param { ?(String) -> Unit } callback - Executed when a paste operation is performed.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onPaste(callback: ?(String) -> Unit): This

/**
 * Called when judging whether the text editing change finished.
 * The text box is in the editing state when it has the caret placed in it, and is in the non-editing state otherwise.
 *
 * @param { ?(Bool) -> Unit} callback - Triggered when the text area status changes. If the value of isEditing is true, text area is in progress.
 * @returns { This } Returns the component instance itself for method chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onEditChange(callback: ?(Bool) -> Unit): This
}

/**
 * Defines the TextArea attribute functions.
 * This interface provides the attribute methods for the TextArea component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface TextAreaAttribute <: CommonMethod<TextAreaAttribute> {
/**
 * Set the insertion cursor color.
 *
 * @param { ?ResourceColor } value - Default value is 0x007DFF.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func caretColor(value: ?ResourceColor): TextAreaAttribute

/**
 * Set the font property of the placeholder.
 * The 'HarmonyOS Sans' font and registered custom fonts are supported.
 *
 * @param { ?Length } size - Font size of the placeholder text.
 * @param { ?FontWeight } weight - Font weight of the placeholder text.
 * @param { ?String } family - Font family of the placeholder text.
 * @param { ?FontStyle } style - Font style of the placeholder text.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func placeholderFont(size!: ?Length, weight!: ?FontWeight, family!: ?String, style!: ?FontStyle): TextAreaAttribute

/**
 * Called when the alignment of the contents of a multiline text box is set.
 *
 * NOTE:
 * <br>To set vertical alignment for the text, use the align attribute.
 * <br>The align attribute alone does not control the horizontal position of the text.
 * <br>In other words, Alignment.TopStart, Alignment.Top, and Alignment.TopEnd produce the same effect,
 * top-aligning the text; Alignment.Start, Alignment.Center, and Alignment.End produce the same effect,
 * centered-aligning the text vertically; Alignment.BottomStart, Alignment.Bottom,
 * and Alignment.BottomEnd produce the same effect, bottom-aligning the text.
 * <br>When textAlign is set to TextAlign.Justify, the text in the last line is horizontally aligned with the start edge.
 *
 * @param { ?TextAlign } value - Default value is TextAlign.Start.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func textAlign(value: ?TextAlign): TextAreaAttribute

/**
 * Set font size.
 *
 * @param { ?Length } value - Default value is 16.fp. The default value on wearable devices is 18.fp. If fontSize is of the number type, the unit fp is used. This parameter cannot be set in percentage.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontSize(value: ?Length): TextAreaAttribute

/**
 * Set font color.
 *
 * @param { ?ResourceColor } value - Color of the text.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontColor(value: ?ResourceColor): TextAreaAttribute

/**
 * Set font weight.
 *
 * @param { ?FontWeight } value - Weight of the font.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontWeight(value: ?FontWeight): TextAreaAttribute

/**
 * Set font style.
 *
 * @param { ?FontStyle } value - Default value is FontStyle.Normal.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontStyle(value: ?FontStyle): TextAreaAttribute

/**
 * Set font family.
 * <br>Default font: 'HarmonyOS Sans'
 * <br>The 'HarmonyOS Sans' font and registered custom fonts are supported for applications.
 * <br>Only the 'HarmonyOS Sans' font is supported for widgets.
 *
 * @param { ?ResourceStr } value - Default value is 'HarmonyOS Sans'.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fontFamily(value: ?ResourceStr): TextAreaAttribute

/**
 * Set the type of soft keyboard input button.
 *
 * @param { ?EnterKeyType } value - Type of the enter key.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func enterKeyType(value: ?EnterKeyType): TextAreaAttribute

/**
 * Called when the inputFilter of text is set.
 *
 * <p><strong>NOTE</strong>:
 * <br>Only inputs that comply with the regular expression can be displayed.
 * <br>Other inputs are filtered out.
 * <br>The specified regular expression can match single characters, but not strings.
 * </p>
 *
 * @param { ?ResourceStr } value - Regular expression pattern for input filtering.
 * @param { ?(String) -> Unit } error - Callback function executed when input doesn't match the pattern.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func inputFilter(value!: ?ResourceStr, error!: ?(String) -> Unit): TextAreaAttribute

/**
 * Define the max length content of the text area.
 * NOTE: By default, there is no maximum number of characters.
 * When the maximum number of characters is reached,
 * no more characters can be entered, and the border turns red.
 *
 * @param { ?UInt32 } value - Maximum number of characters allowed.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func maxLength(value: ?UInt32): TextAreaAttribute

/**
 * Set placeholder color.
 *
 * @param { ?ResourceColor } value - Default value follows the theme.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func placeholderColor(value: ?ResourceColor): TextAreaAttribute

/**
 * Called when submitted.
 *
 * @param { ?(EnterKeyType) -> Unit } callback - Callback function executed when the enter key is pressed.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onSubmit(callback: ?(EnterKeyType) -> Unit): TextAreaAttribute

/**
 * Called when the input changes.
 * NOTE: In this callback, if cursor operations are performed,
 * you need to adjust the cursor logic based on the previewText parameter
 * to make sure it works seamlessly under the preview display scenario.
 *
 * @param { ?(String) -> Unit }  callback - Callback function executed when the text content changes.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onChange(callback: ?(String) -> Unit): TextAreaAttribute

/**
 * Called when using the Clipboard menu.
 *
 * @param { ?(String) -> Unit } callback - Callback function executed when copy operation is performed.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onCopy(callback: ?(String) -> Unit): TextAreaAttribute

/**
 * Called when using the Clipboard menu.
 *
 * @param { ?(String) -> Unit } callback - Callback function executed when cut operation is performed.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onCut(callback: ?(String) -> Unit): TextAreaAttribute

/**
 * Called when using the Clipboard menu.
 *
 * @param { ?(String) -> Unit } callback - Executed when a paste operation is performed. { String } value - The text content to be pasted.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onPaste(callback: ?(String) -> Unit): TextAreaAttribute

/**
 * Called when judging whether the text editing change finished.
 * The text box is in the editing state when it has the caret placed in it, and is in the non-editing state otherwise.
 *
 * @param { ?(Bool) -> Unit} callback - Triggered when the text area status changes. If the value of isEditing is true, text area is in progress.
 * @returns { TextAreaAttribute } Returns the attribute of TextArea.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onEditChange(callback: ?(Bool) -> Unit): TextAreaAttribute
}