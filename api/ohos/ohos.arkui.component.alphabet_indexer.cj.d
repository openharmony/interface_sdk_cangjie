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

package ohos.arkui.component.alphabet_indexer
import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*
import std.convert.*


public type OnAlphabetIndexerSelectCallback = (Int64) -> Unit

public type OnAlphabetIndexerRequestPopupDataCallback = (Int64) -> Array<String>

public type OnAlphabetIndexerPopupSelectCallback = (Int64) -> Unit

/**
* Defines AlphabetIndexer Component.
*
* @syscap SystemCapability.ArkUI.ArkUI.Full
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AlphabetIndexer <: ViewBase {
    /**
    * Construct the alphabet indexer component.
    * Called when the alphabet indexer component is used.
    *
    * @param { Array<String> } arrayValue - Alphabetical index string array.
    * @param { UInt32 } selected - ID of the selected item.
    * @returns { AlphabetIndexer }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(arrayValue!: Array<String>, selected!: UInt32)
    
    /**
    * Definitions color.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation color(value: ResourceColor): AlphabetIndexerAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func color(value: ResourceColor): This
    
    /**
    * Select the text color.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation selectedColor(value: ResourceColor): AlphabetIndexerAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedColor(value: ResourceColor): This
    
    /**
    * Font color of the pop-up prompt text.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation popupColor(value: ResourceColor): AlphabetIndexerAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func popupColor(value: ResourceColor): This
    
    /**
    * Select the text background color.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation selectedBackgroundColor(value: ResourceColor): AlphabetIndexerAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedBackgroundColor(value: ResourceColor): This
    
    /**
    * Background color of the pop-up window index.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation popupBackground(value: ResourceColor): AlphabetIndexerAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func popupBackground(value: ResourceColor): This
    
    /**
    * Whether to use pop-up index hints.
    *
    * @param { Bool } value
    * @returns { This }
    * @relation usingPopup(value: boolean): AlphabetIndexerAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func usingPopup(value: Bool): This
    
    /**
    * Select the text text style,
    *
    * @param { Length } size
    * @param { FontWeight } weight
    * @param { ResourceStr } family
    * @param { FontStyle } style
    * @returns { This }
    * @relation selectedFont(value: Font): AlphabetIndexerAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selectedFont(
        size!: Length = 10.vp,
        weight!: FontWeight = FontWeight.Normal,
        family!: ResourceStr = "HarmonyOS Sans",
        style!: FontStyle = FontStyle.Normal
    ): This
    
    /**	
    * Select the text background color.	
    *	
    * @param { Length } size	
    * @param { FontWeight } weight	
    * @param { ResourceStr } family	
    * @param { FontStyle } style	
    * @returns { This }
    * @relation popupFont(value: Font): AlphabetIndexerAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func popupFont(
        size!: Length = 24.vp,
        weight!: FontWeight = FontWeight.Normal,
        family!: ResourceStr = "HarmonyOS Sans",
        style!: FontStyle = FontStyle.Normal
    ): This
    
    /**	
    * Definitions fonts.	
    *	
    * @param { Length } size	
    * @param { FontWeight } weight	
    * @param { ResourceStr } family	
    * @param { FontStyle } style	
    * @returns { This }
    * @relation font(value: Font): AlphabetIndexerAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func font(
        size!: Length = 10.vp,
        weight!: FontWeight = FontWeight.Normal,
        family!: ResourceStr = "HarmonyOS Sans",
        style!: FontStyle = FontStyle.Normal
    ): This
    
    /**
    * Size of the letter area on the letter index bar. The letter area is a square. Set the length of the square side.
    *
    * @param { Length } value
    * @returns { This }
    * @relation itemSize(value: string | number): AlphabetIndexerAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func itemSize(size: Length): This
    
    /**
    * Alphabet index bar alignment style. The left and right alignment styles are supported,
    * which affects the pop-up position of the pop-up window.
    *
    * @param { IndexerAlign } value - indicates the alignment style of Alphabet index.
    * @returns { This }
    * @relation alignStyle(value: IndexerAlign, offset?: Length): AlphabetIndexerAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func alignStyle(value: IndexerAlign): This
    
    /**
    * Sets the selected index.
    *
    * @param { Int32 } index
    * @returns { This }
    * @relation selected(index: number): AlphabetIndexerAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func selected(index: Int32): This
    
    /**
    * Position of the pop-up windows, relative to the midpoint of the top border of the indexer bar.
    *
    * @param { Length } x
    * @param { Length } y
    * @returns { This }
    * @relation popupPosition(value: Position): AlphabetIndexerAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func popupPosition(x!: Length = 60.vp, y!: Length = 48.vp): This
    
    /**
    * Index bar selection callback.
    * Anonymous Object Rectification.
    *
    * @param { OnAlphabetIndexerSelectCallback } callback
    * @returns { This }
    * @relation onSelect(callback: OnAlphabetIndexerSelectCallback): AlphabetIndexerAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onSelect(callback: OnAlphabetIndexerSelectCallback): This
    
    /**
    * Index bar selection callback and return the strings which display on pop-up.
    * Anonymous Object Rectification.
    *
    * @param { OnAlphabetIndexerRequestPopupDataCallback } callback
    * @returns { This }
    * @relation onRequestPopupData(callback: OnAlphabetIndexerRequestPopupDataCallback): AlphabetIndexerAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onRequestPopupData(callback: OnAlphabetIndexerRequestPopupDataCallback): This
    
    /**
    * Pop-up selection callback.
    * Anonymous Object Rectification.
    *
    * @param { OnAlphabetIndexerPopupSelectCallback } callback
    * @returns { This }
    * @relation onPopupSelect(callback: OnAlphabetIndexerPopupSelectCallback): AlphabetIndexerAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onPopupSelect(callback: OnAlphabetIndexerPopupSelectCallback): This
}


