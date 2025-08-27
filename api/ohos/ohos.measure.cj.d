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

package ohos.measure
import ohos.base.*
import ohos.ffi.*
import ohos.arkui.component.*
import ohos.labels.APILevel


/**
* Defines the options of MeasureText.
*
* @relation export interface MeasureOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class MeasureOptions {
    /**
    * Create an object of MeasureOptions
    *
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        textContent!: String,
        fontWeight!: FontWeight = FontWeight.Normal,
        fontFamily!: String = "HarmonyOS Sans",
        constraintWidth!: ?Length = None,
        fontSize!: ?Length = 16.fp,
        lineHeight!: ?Length = None,
        baselineOffset!: ?Length = 0.0.vp,
        letterSpacing!: ?Length = None,
        textIndent!: ?Length = None,
        maxLines!: UInt32 = 0,
        textAlign!: TextAlign = TextAlign.Start,
        fontStyle!: FontStyle = FontStyle.Normal,
        overflow!: TextOverflow = TextOverflow.Clip,
        textCase!: TextCase = TextCase.Normal,
        wordBreak!: WordBreak = WordBreak.BreakWord
    )
}


/**
* Defines the size options.
*
* @relation declare interface SizeOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SizeOptions {
    /**
    * Defines the width.
    *
    * @type { Length }
    * @relation width?: Length;
    */
    public var width: Length = 0
    
    /**
    * Defines the height.
    *
    * @type { Length }
    * @relation height?: Length;
    */
    public var height: Length = 0
    
    /*
    * constructor
    */
    public init(width!: Length = 0, height!: Length = 0)
}


/**
* Defines the Measure interface.
*
* @relation export default class MeasureText
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class MeasureText {
    /**
    * Displays the textWidth.
    *
    * @param  { MeasureOptions } options - Options.
    * @returns { Float64 }
    * @relation static measureText(options: MeasureOptions): number;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func measureText(options: MeasureOptions): Float64
    
    /**
    * Displays the text width and height.
    *
    * @param { MeasureOptions } options - Options of measure area occupied by text.
    * @returns { SizeOptions } width and height for text to display
    * @relation static measureTextSize(options: MeasureOptions): SizeOptions;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func measureTextSize(options: MeasureOptions): SizeOptions
}


