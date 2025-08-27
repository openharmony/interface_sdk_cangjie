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

package ohos.arkui.component.search
import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.resource.*
import ohos.labels.APILevel


/**
* Provides the method of switching the cursor position.
*
* @relation declare class SearchController extends TextContentControllerBase
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SearchController <: RemoteDataLite {
    /**
    * constructor.
    * A constructor used to create a SearchController object.
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
    *
    * @param { Int32 } value
    * @returns {Unit}
    * @relation caretPosition(value: number): void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func caretPosition(value: Int32): Unit
}


/**
* The construct function of search
*
* @relation interface SearchInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Search <: ViewBase {
    /**
    * The options of SearchInterface
    * @param { String } value
    * @param { String } placeholder
    * @param { AppResource } icon
    * @param { SearchController } controller
    * @returns { This }
    * @relation (options?: SearchOptions): SearchAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        value!: String = "",
        placeholder!: String = "",
        icon!: Option<AppResource> = Option.None,
        controller!: Option<SearchController> = Option.None
    )
    
    /**
    * Set the search button text, fontSize and fontColor
    *
    * @param { String } value - indicates the text of the search button.
    * @returns { This }
    * @relation searchButton(value: ResourceStr, option?: SearchButtonOptions): SearchAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func searchButton(value: String): This
    
    /**
    * Set the search button text, fontSize and fontColor
    *
    * @param { ResourceColor } value - Default value is '#99182431'.The default value on wearable devices is '#99ffffff'.
    * @returns { This }
    * @relation placeholderColor(value: ResourceColor): SearchAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func placeholderColor(color: ResourceColor): This
    
    /**
    * Set the font used for place holder text
    *
    * @param { Length } size - font size.
    * @param { FontWeight } weight - font weight.
    * @param { FontStyle } style - font style.
    * @param { ResourceStr } family - font family.
    * @returns { This }
    * @relation placeholderFont(value?: Font): SearchAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func placeholderFont(
        size!: Length = DEFAULT_SIZE.fp,
        weight!: FontWeight = FontWeight.W400,
        style!: FontStyle = FontStyle.Normal,
        family!: ResourceStr = ""
    ): This
    
    /**
    * Set the font used for input text
    *
    * @param { Length } size - font size.
    * @param { FontWeight } weight - font weight.
    * @param { FontStyle } style - font style.
    * @param { ResourceStr } family - font family.
    * @returns { This }
    * @relation textFont(value?: Font): SearchAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func textFont(
        size!: Length = DEFAULT_SIZE.fp,
        weight!: FontWeight = FontWeight.W400,
        style!: FontStyle = FontStyle.Normal,
        family!: ResourceStr = ""
    ): This
    
    /**
    * Called when the copy option is set.
    * If this attribute is set to CopyOptions.None, the text can only be pasted;
    * all other actions, such as copying, cutting, and sharing, are disabled.
    * Dragging is not allowed when CopyOptions.None is set.
    *
    * @param { CopyOptions } value - Default value is CopyOptions.LocalDevice.
    * @returns { This }
    * @relation copyOption(value: CopyOptions): SearchAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func copyOption(value: CopyOptions): This
    
    /**
    * Call the function when clicked the search button.
    *
    * @param { (String) -> Unit } callback - Search submission callback, which returns the text content currently in the search box.
    * @returns { This }
    * @relation onSubmit(callback: Callback<string>): SearchAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onSubmit(callback: (String) -> Unit): This
    
    /**
    * Call the function when editing the input text.
    * In this callback, if cursor operations are performed,
    * <br>developers need to adjust the cursor logic based on the previewText parameter to ensure it works seamlessly within the preview display scenario.
    *
    * @param { (String) -> Unit } callback - Search submission callback, which returns the text content currently in the search box.
    * @returns { This }
    * @relation onChange(callback: EditableTextOnChangeCallback): SearchAttribute;
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
    * @param { (String) -> Unit } callback - Callback used to return the copied text content.
    * @returns { This }
    * @relation onCopy(callback: Callback<string>): SearchAttribute;
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
    * @param { (String) -> Unit } callback - Callback used to return the cut text content.
    * @returns { This }
    * @relation onCut(callback: Callback<string>): SearchAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onCut(callback: (String) -> Unit): This
    
    /**
    * Called when using the Clipboard menu.
    *
    * @param { (String) -> Unit } callback - Executed when a paste operation is performed. Callback used to return the pasted text content.
    * @returns { This }
    * @relation onCut(callback: Callback<string>): SearchAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onPaste(callback: (String) -> Unit): This
}


