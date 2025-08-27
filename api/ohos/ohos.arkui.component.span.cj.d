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

package ohos.arkui.component.span
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.resource.*
import ohos.labels.APILevel



/**
* Defines Span Component.
*
* @relation declare const Span: SpanInterface;
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Span <: ContainerBase {
    /*
    * Called when text is entered in span.
    * 
    * @param { ResourceStr } value
    * @relation (value: string | Resource): SpanAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value: ResourceStr)
    
    /*
    * Called when the font size is set.
    * 
    * @param { Length } value
    * @returns { This }
    * @relation fontSize(value: number | string | Resource): SpanAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontSize(value: Length): This
    
    /*
    * Called when the font color is set.
    * 
    * @param { ResourceColor } value
    * @returns { This }
    * @relation fontColor(value: ResourceColor): SpanAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontColor(value: ResourceColor): This
    
    /*
    * Called when the font style of a font is set.
    * 
    * @param { FontStyle } value
    * @returns { This }
    * @relation fontStyle(value: FontStyle): SpanAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontStyle(value: FontStyle): This
    
    /*
    * Called when the font weight is set.
    * 
    * @param { FontWeight } value
    * @returns { This }
    * @relation fontWeight(value: number | FontWeight | ResourceStr): SpanAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontWeight(value: FontWeight): This
    
    /*
    * Called when the font list of text is set.
    * 
    * @param { ResourceStr } value
    * @returns { This }
    * @relation fontFamily(value: string | Resource): SpanAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontFamily(value: ResourceStr): This
    
    /*
    * Called when the text decoration of the text is set.
    * 
    * @param { TextDecorationType } decorationType
    * @param { ResourceColor } color
    * @returns { This }
    * @relation decoration(value: DecorationStyleInterface): SpanAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func decoration(decorationType!: TextDecorationType, color!: ResourceColor = Color.Black): This
    
    /*
    * Called when the distance between text fonts is set.
    * 
    * @param { Length } value
    * @returns { This }
    * @relation letterSpacing(value: number | ResourceStr): SpanAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func letterSpacing(value: Length): This
    
    /*
    * Called when the type of letter in the text font is set.
    * 
    * @param { TextCase } value
    * @returns { This }
    * @relation textCase(value: TextCase): SpanAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func textCase(value: TextCase): This
}


