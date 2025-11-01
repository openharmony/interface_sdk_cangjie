package ohos.arkui.component.search

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * Provides the method of switching the cursor position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SearchController <: RemoteDataLite & TextContentControllerBase {
/**
 * A constructor used to create a SearchController object.
 * @returns { SearchController } Returns the SearchController instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Set the position of the insertion cursor.
 *
 * @param { ?Int32 } value - Length from the start of the character string to the position where the caret is located.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func caretPosition(value: ?Int32): Unit
}

/**
 * A component that provides a search input field with a search button.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Search <: CommonMethodComponent<Search> & SearchAttribute {
/**
 * The options of SearchInterface.
 * Initializes a Search component with optional initial value, placeholder, icon, and controller.
 *
 * @param { ?ResourceStr } [value] - Indicates the initial text of the search input.
 * @param { ?ResourceStr } [placeholder] - Text displayed when there is no input.
 * @param { Option<AppResource> } [icon] - The icon resource displayed in the search field.
 * @param { Option<SearchController> } [controller] - Controller of the <Search> component for managing text operations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        value!: ?ResourceStr = None,
        placeholder!: ?ResourceStr = None,
        icon!: Option<AppResource> = None,
        controller!: Option<SearchController> = None
    )

/**
 * Set the search button text, fontSize and fontColor.
 *
 * @param { ?ResourceStr } value - Indicates the text of the search button.
 * @returns { This } Returns the Search instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func searchButton(value: ?ResourceStr): This

/**
 * Set the place hold text color.
 *
 * @param { ?ResourceColor } value - Default value is '0x99182431'.The default value on wearable devices is '0x99ffffff'.
 * @returns { This } Returns the Search instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func placeholderColor(value: ?ResourceColor): This

/**
 * Set the font used for place holder text
 *
 * <p><strong>NOTE</strong>:
 * <br>The 'HarmonyOS Sans' font and registered custom fonts are supported.
 * <br>The default font size on wearable devices is 18.px.
 * </p>
 *
 * @param { ?Length } [size] - The placeholder font size.
 * @param { ?FontWeight } [weight] - The placeholder font weight.
 * @param { ?FontStyle } [style] - The placeholder font style.
 * @param { ?ResourceStr } [family] - The placeholder font family.
 * @returns { This } Returns the Search instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func placeholderFont(
        size!: ?Length = None,
        weight!: ?FontWeight = None,
        style!: ?FontStyle = None,
        family!: ?ResourceStr = None
    ): This

/**
 * Set the font used for input text
 *
 * <p><strong>NOTE</strong>:
 * <br>Currently, only the default font family is supported.
 * <br>The default font size on wearable devices is 18.fp.
 * </p>
 *
 * @param { ?Length } [size] - Font size.
 * @param { ?FontWeight } [weight] - Font weight.
 * @param { ?FontStyle } [style] - Font style.
 * @param { ?ResourceStr } [family] - Font family.
 * @returns { This } Returns the Search instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func textFont(
        size!: ?Length = None,
        weight!: ?FontWeight = None,
        style!: ?FontStyle = None,
        family!: ?ResourceStr = None
    ): This

/**
 * Called when the copy option is set.
 * If this attribute is set to CopyOptions.None, the text can only be pasted;
 * all other actions, such as copying, cutting, and sharing, are disabled.
 * Dragging is not allowed when CopyOptions.None is set.
 *
 * @param { ?CopyOptions } value - Copy options for the search input. The default value is CopyOptions.LocalDevice.
 * @returns { This } RReturns the Search instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func copyOption(value: ?CopyOptions): This

/**
 * Call the function when clicked the search button.
 *
 * @param { ?(String) -> Unit } callback - Search submission callback, which returns the text content currently in the search box.
 * @returns { This } Returns the Search instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onSubmit(callback: ?(String) -> Unit): This

/**
 * Call the function when editing the input text
 *
 * <p><strong>NOTE</strong>:
 * <br>In this callback, if cursor operations are performed,
 * developers need to adjust the cursor logic based on the previewText parameter to ensure it works seamlessly within the preview display scenario.
 * </p>
 *
 * @param { ?(String) -> Unit } callback - Text change callback, which returns the current text content in the search box.
 * @returns { This } Returns the Search instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onChange(callback: ?(String) -> Unit): This

/**
 * Called when using the Clipboard menu.
 *
 * @param { ?(String) -> Unit } callback - Callback used to return the copied text content.
 * @returns { This } Returns the Search instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onCopy(callback: ?(String) -> Unit): This

/**
 * Called when using the Clipboard menu.
 *
 * @param { ?(String) -> Unit } callback - Callback used to return the cut text content.
 * @returns { This } Returns the Search instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onCut(callback: ?(String) -> Unit): This

/**
 * Called when using the Clipboard menu.
 *
 * @param { ?(String) -> Unit } callback - Executed when a paste operation is performed. Callback used to return the pasted text content.
 * @returns { This } Returns the Search instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onPaste(callback: ?(String) -> Unit): This
}

/**
 * The attribute function of search.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface SearchAttribute <: CommonMethod<SearchAttribute> {
/**
 * Set the search button text, fontSize and fontColor.
 *
 * @param { ?ResourceStr } value - Indicates the text of the search button.
 * @returns { SearchAttribute } Returns the search attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func searchButton(value: ?ResourceStr): SearchAttribute

/**
 * Set the search button text, fontSize and fontColor.
 *
 * @param { ?ResourceColor } value - indicates the color of the placeholder text. The default value is 0x99182431. The default value on wearable devices is 0x99ffffff.
 * @returns { SearchAttribute } Returns the search attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func placeholderColor(value: ?ResourceColor): SearchAttribute

/**
 * Set the font used for place holder text
 *
 * <p><strong>NOTE</strong>:
 * <br>The 'HarmonyOS Sans' font and registered custom fonts are supported.
 * <br>The default font size on wearable devices is 18.px.
 * </p>
 *
 * @param { ?Length } size - The placeholder font size.
 * @param { ?FontWeight } weight - The placeholder font weight.
 * @param { ?FontStyle } style - The placeholder font style.
 * @param { ?ResourceStr } family - The placeholder font family.
 * @returns { SearchAttribute } Returns the search attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func placeholderFont(
        size!: ?Length,
        weight!: ?FontWeight,
        style!: ?FontStyle,
        family!: ?ResourceStr
    ): SearchAttribute

/**
 * Set the font used for input text
 *
 * <p><strong>NOTE</strong>:
 * <br>Currently, only the default font family is supported.
 * <br>The default font size on wearable devices is 18.fp.
 * </p>
 *
 * @param { ?Length } size - Font size.
 * @param { ?FontWeight } weight - Font weight.
 * @param { ?FontStyle } style - Font style.
 * @param { ?ResourceStr } family - Font family.
 * @returns { SearchAttribute } Returns the search attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func textFont(
        size!: ?Length,
        weight!: ?FontWeight,
        style!: ?FontStyle,
        family!: ?ResourceStr
    ): SearchAttribute

/**
 * Called when the copy option is set.
 * If this attribute is set to CopyOptions.None, the text can only be pasted;
 * all other actions, such as copying, cutting, and sharing, are disabled.
 * Dragging is not allowed when CopyOptions.None is set.
 *
 * @param { ?CopyOptions } value - Copy options for the search input. The default value is CopyOptions.LocalDevice.
 * @returns { SearchAttribute } Returns the search attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func copyOption(value: ?CopyOptions): SearchAttribute

/**
 * Call the function when clicked the search button.
 *
 * @param { ?(String) -> Unit } callback - Search submission callback, which returns the text content currently in the search box.
 * @returns { SearchAttribute } Returns the search attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onSubmit(callback: ?(String) -> Unit): SearchAttribute

/**
 * Call the function when editing the input text
 *
 * <p><strong>NOTE</strong>:
 * <br>In this callback, if cursor operations are performed,
 * developers need to adjust the cursor logic based on the previewText parameter to ensure it works seamlessly within the preview display scenario.
 * </p>
 *
 * @param { ?(String) -> Unit } callback - Text change callback, which returns the current text content in the search box.
 * @returns { SearchAttribute } Returns the search attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onChange(callback: ?(String) -> Unit): SearchAttribute

/**
 * Called when using the Clipboard menu.
 *
 * @param { ?(String) -> Unit } callback - Callback used to return the copied text content.
 * @returns { SearchAttribute } Returns the search attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onCopy(callback: ?(String) -> Unit): SearchAttribute

/**
 * Called when using the Clipboard menu.
 *
 * @param { ?(String) -> Unit } callback - Callback used to return the cut text content.
 * @returns { SearchAttribute } Returns the search attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onCut(callback: ?(String) -> Unit): SearchAttribute

/**
 * Called when using the Clipboard menu.
 *
 * @param { ?(String) -> Unit } callback - Executed when a paste operation is performed. Callback used to return the pasted text content.
 * @returns { SearchAttribute } Returns the search attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onPaste(callback: ?(String) -> Unit): SearchAttribute
}