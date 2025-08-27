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

package ohos.arkui.component.select
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.resource.*
import ohos.labels.APILevel



public type OnSelectCallback = (Int32, String) -> Unit

/**
* The declare of selectOption.
*
* @interface SelectOption
* @relation interface SelectOption
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SelectOption {
    /**
    * Option string.
    *
    * @type { ResourceStr }
    * @relation value: ResourceStr
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var value: ResourceStr
    
    /**
    * Option icon.
    *
    * @type { ResourceStr }
    * @relation icon?: ResourceStr
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var icon: ResourceStr
    
    /**
    * Constructor selectOption.
    *
    * @param { ResourceStr } value
    * @param { ResourceStr } icon
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: ResourceStr, icon!: ResourceStr)
}


/**
* Defines Select Component.
*
* @relation const Select: SelectInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Select <: ViewBase {
    /**
    * Called when the select is set.
    *
    * @param { Array<SelectOption> } options
    * @returns { This }
    * @relation (options: Array<SelectOption>): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(options: Array<SelectOption>)
    
    /**
    * Sets the serial number of the select item, starting from 0.
    *
    * @param { Int32 } value - the serial number of the select item.
    * @returns { This } the attribute of the select.
    * @relation selected(value: number | Resource): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selected(value: Int32): This
    
    /**
    * Sets the text display of the select button itself.
    *
    * @param { ResourceStr } value - the text display of the select button itself.
    * @returns { This } the attribute of the select.
    * @relation value(value: ResourceStr): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func value(value: ResourceStr): This
    
    /**
    * Sets the text properties of the select button itself.
    *
    * @param { FontStyle } style
    * @param { FontWeight } weight
    * @param { Length } size
    * @param { ResourceStr } family
    * @returns { This }
    * @relation font(value: Font): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func font(
        style!: FontStyle = FontStyle.Normal,
        weight!: FontWeight = FontWeight.Medium,
        size!: Length = 16.vp,
        family!: ResourceStr = "sans-serif"
    ): This
    
    /**
    * Sets the text color of the select button itself.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation fontColor(value: ResourceColor): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontColor(value: ResourceColor): This
    
    /**
    * Sets the background color of the selected items in the select.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation selectedOptionBgColor(value: ResourceColor): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedOptionBgColor(value: ResourceColor): This
    
    /**
    * Sets the text style of the selected items in the select.
    *
    * @param { FontStyle } style
    * @param { FontWeight } weight
    * @param { Length } size
    * @param { String } family
    * @returns { This }
    * @relation selectedOptionFont(selectFont: Optional<Font>): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedOptionFont(
        style!: FontStyle = FontStyle.Normal,
        weight!: FontWeight = FontWeight.Medium,
        size!: Length = 16.vp,
        family!: String = "sans-serif"
    ): This
    
    /**
    * Sets the text color of the selected item in the select.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation selectedOptionFontColor(value: ResourceColor): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedOptionFontColor(value: ResourceColor): This
    
    /**
    * Sets the background color of the select item.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation optionBgColor(value: ResourceColor): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func optionBgColor(value: ResourceColor): This
    
    /**
    * Sets the text style for select items.
    *
    * @param { FontStyle } style
    * @param { FontWeight } weight
    * @param { Length } size
    * @param { ResourceStr } family
    * @returns { This }
    * @relation optionFont(value: Font): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func optionFont(
        style!: FontStyle = FontStyle.Normal,
        weight!: FontWeight = FontWeight.Medium,
        size!: Length = 16.vp,
        family!: ResourceStr = "sans-serif"
    ): This
    
    /**
    * Sets the text color for select items.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation optionFontColor(value: ResourceColor): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func optionFontColor(value: ResourceColor): This
    
    /**
    * Set the space for text and icon in select
    *
    * @param { Length } value - indicates the length of the space
    * @returns { This }
    * @relation space(value: Length): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func space(value: Length): This
    
    /**
    * Set the layout direction for text and arrow in select
    *
    * @param { ArrowPosition } value - indicates the arrow position in the select
    * @returns { This }
    * @relation arrowPosition(value: ArrowPosition): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func arrowPosition(value: ArrowPosition): This
    
    /**
    * Set the alignment between select and menu.
    *
    * @param { MenuAlignType } alignType - The type of alignment between select and menu.
    * @param { Offset } offset - The offset between select and menu.
    * @returns { This } the attribute of the select.
    * @relation menuAlign(alignType: MenuAlignType, offset?: Offset): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func menuAlign(alignType!: MenuAlignType, offset!: Offset): This
    
    /** 
    * Set the width of each option and set whether the option width fit the trigger.
    *
    * @param { OptionWidthMode } value - The length of option width and decide option width to fit trigger or content.
    * @returns { This } the attribute of the select.
    * @relation optionWidth(value: Dimension | OptionWidthMode ): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func optionWidth(value: OptionWidthMode): This
    
    /** 
    * Set the width of each option and set whether the option width fit the trigger.
    *
    * @param { Length } value - The length of option width and decide option width to fit trigger or content.
    * @returns { This } the attribute of the select.
    * @relation optionWidth(value: Dimension | OptionWidthMode ): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func optionWidth(value: Length): This
    
    /** 
    * Set the height of each option.
    * 
    * @param { Length } value - The length of option height.
    * @returns { This } the attribute of the select.
    * @relation optionHeight(value: Dimension): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func optionHeight(value: Length): This
    
    /**
    * set the menu's background color
    *
    * @param { ResourceColor } value - The backgroundColor of menu.
    * @returns { This } the attribute of the select.
    * @relation menuBackgroundColor(value: ResourceColor): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func menuBackgroundColor(value: ResourceColor): This
    
    /**
    * set menu background blur Style
    *
    * @param { BlurStyle } value - The BackgroundBlurStyle of menu.
    * @returns { This } the attribute of the select.
    * @relation menuBackgroundBlurStyle(value: BlurStyle): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func menuBackgroundBlurStyle(value: BlurStyle): This
    
    /**
    * Callback for selecting an item from the select.
    *
    * @param { function } callback
    * @returns { This }
    * @relation onSelect(callback: (index: number, value: string) => void): SelectAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onSelect(callback: OnSelectCallback): This
}


