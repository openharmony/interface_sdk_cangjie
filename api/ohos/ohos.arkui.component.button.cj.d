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

package ohos.arkui.component.button
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel
import ohos.resource.*
import std.deriving.Derive


/**
* Provides a button component.
* 
* @relation enum ButtonType
*/
@Derive[Equatable]
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ButtonType {
    /**
    * Common button (no rounded corners by default).
    *
    * @relation Normal
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Normal |
    /**
    * Capsule button (rounded corners default to half the height).
    *
    * @relation Capsule
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Capsule |
    /**
    * Round buttons.
    *
    * @relation Circle
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Circle |
    /**
    * Rounded rectangle button.
    *
    * @relation ROUNDED_RECTANGLE
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RoundRectangle |
    ...
}



/**
* Enum for button role.
*
* @relation enum ButtonRole
*/
@Derive[Equatable]
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ButtonRole {
    /**
    * Normal button.
    *
    * @relation NORMAL
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Normal |
    /**
    * Error button.
    *
    * @relation ERROR
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Error |
    ...
}



/**
* Enum for button style type.
*
* @relation enum ButtonStyleMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ButtonStyleMode {
    /**
    * Normal button (with normal background color).
    *
    * @relation NORMAL
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Normal |
    /**
    * Emphasized button (with emphasized background color).
    *
    * @relation EMPHASIZED
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Emphasized |
    /**
    * Textual button (with none background color).
    *
    * @relation TEXTUAL
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Textual |
    ...
}



/**
* Defines the button options.
*
* @relation interface ButtonOptions
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ButtonOptions {
    /**
    * Describes the button style.
    *
    * @type { ButtonType }
    * @relation type?: ButtonType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var shape: ButtonType
    
    /**
    * Indicates whether to enable the switchover effect when the button is pressed. When the status is set to false, the switchover effect is disabled.
    *
    * @type { Bool }
    * @relation stateEffect?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var stateEffect: Bool
    
    /**
    * Describes the button style.
    *
    * @type { ButtonStyleMode }
    * @default ButtonStyleMode.Emphasized
    * @relation buttonStyle?: ButtonStyleMode
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var buttonStyle: ButtonStyleMode
    
    /**
    * Describes the button size.
    *
    * @type { ControlSize }
    * @default ControlSize.Normal
    * @relation controlSize?: ControlSize
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var controlSize: ControlSize
    
    /**
    * Describes the button role.
    *
    * @type { ButtonRole }
    * @default ButtonRole.Normal
    * @relation role?: ButtonRole
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var role: ButtonRole
    
    /**
    * ButtonOptions constructor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        shape!: ButtonType = ButtonType.Capsule,
        stateEffect!: Bool = true,
        buttonStyle!: ButtonStyleMode = ButtonStyleMode.Emphasized,
        controlSize!: ControlSize = ControlSize.Normal,
        role!: ButtonRole = ButtonRole.Normal
    )
}


/**
* Defines Button Component.
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Button <: ContainerBase {
    /**
    * Button object
    *
    * @param { () -> Unit } child
    * @returns { Button }
    * @relation (): ButtonAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(child: () -> Unit)
    
    /**
    * Create Button with inner text label.
    *
    * @param { ResourceStr } label
    * @returns { Button }
    * @relation (label: ResourceStr, options?: ButtonOptions): ButtonAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(label: ResourceStr)
    
    /**
    * Create Button with Text child.
    *
    * @param { ButtonOptions } options
    * @returns { Button }
    * @relation (options: ButtonOptions): ButtonAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(options: ButtonOptions)
    
    /**
    * Create Button with Text child.
    *
    * @param { ButtonOptions } options
    * @param { () -> Unit } child
    * @returns { Button }
    * @relation (options: ButtonOptions): ButtonAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(options: ButtonOptions, child: () -> Unit)
    
    /**
    * Create Button with inner text label.
    *
    * @param { ResourceStr } label
    * @param { ButtonOptions } options
    * @returns { Button }
    * @relation (label: ResourceStr, options?: ButtonOptions): ButtonAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(label: ResourceStr, options: ButtonOptions)
    
    /**
    * Text size.
    *
    * @param { Length } value
    * @returns { This }
    * @relation fontSize(value: Length): ButtonAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontSize(value: Length): This
    
    /**
    * Font weight.
    *
    * @param { FontWeight } value
    * @returns { This }
    * @relation fontWeight(value: number | FontWeight | string): ButtonAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontWeight(value: FontWeight): This
    
    /**
    * Text color.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation fontColor(value: ResourceColor): ButtonAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontColor(color: ResourceColor): This
    
    /**
    * Font style.
    *
    * @param { FontStyle } value
    * @returns { This }
    * @relation fontStyle(value: FontStyle): ButtonAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontStyle(value: FontStyle): This
    
    /**
    * Font family.
    *
    * @param { ResourceStr } value
    * @returns { This }
    * @relation fontFamily(value: string | Resource): ButtonAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fontFamily(value: ResourceStr): This
    
    /**
    * Describes the button style.
    *
    * @param { ButtonType } value
    * @returns { ButtonAttribute }
    * @relation type(value: ButtonType): ButtonAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func shape(value: ButtonType): This
    
    /**
    * Indicates whether to enable the switchover effect when the button is pressed. When the status is set to false, the switchover effect is disabled.
    *
    * @param { Bool } value
    * @returns { This }
    * @relation stateEffect(value: boolean): ButtonAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func stateEffect(value: Bool): This
    
    /**
    * Describes the button style.
    *
    * @param { ButtonStyleMode } value - button style mode
    * @returns { ButtonAttribute }
    * @relation buttonStyle(value: ButtonStyleMode): ButtonAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func buttonStyle(value: ButtonStyleMode): This
}


