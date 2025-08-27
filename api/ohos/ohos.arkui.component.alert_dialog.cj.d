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

package ohos.arkui.component.alert_dialog
import ohos.arkui.component.action_sheet.*
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import std.deriving.Derive


/**
* The arrangement of buttons in dialog.
*
* @relation declare enum DialogButtonDirection
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum DialogButtonDirection {
    /**
    * Two or fewer buttons are arranged horizontally,
    * and two or more buttons are arranged vertically.
    * @relation AUTO = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Auto |
    /**
    * Buttons are arranged horizontally.
    *
    * @relation HORIZONTAL = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Horizontal |
    /**
    * Buttons are arranged vertically.
    *
    * @relation VERTICAL = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Vertical |
    ...
}



/**
* Base button param.
*
* @class AlertDialogButtonBaseOptions
* @relation declare interface AlertDialogButtonBaseOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class AlertDialogButtonBaseOptions {
    /**
    * Enable switch of button.
    *
    * @type { Bool }
    * @default true
    * @relation enabled?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var enabled: Bool
    
    /**
    * Default focus switch of button.
    *
    * @type { Bool }
    * @default false
    * @relation defaultFocus?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var defaultFocus: Bool
    
    /**
    * Style of button.
    *
    * @type { DialogButtonStyle }
    * @default DialogButtonStyle.Default
    * @relation style?: DialogButtonStyle
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var style: DialogButtonStyle
    
    /**
    * Text content of button.
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
    * Text color of button.
    *
    * @type { ?ResourceColor }
    * @relation fontColor?: ResourceColor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var fontColor: ?ResourceColor
    
    /**
    * Background color of button.
    *
    * @type { ?ResourceColor }
    * @relation backgroundColor?: ResourceColor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var backgroundColor: ?ResourceColor
    
    /**
    * Method executed by the callback.
    *
    * @type { VoidCallback }
    * @relation action: VoidCallback
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var action: VoidCallback
    
    /**
    * Constructor of AlertDialogButtonBaseOptions
    *
    * @param { Bool } enabled
    * @param { Bool } defaultFocus
    * @param { DialogButtonStyle } style
    * @param { ResourceStr } value
    * @param { ?ResourceColor } fontColor
    * @param { ?ResourceColor } backgroundColor
    * @param { VoidCallback } action
    * @returns { AlertDialogButtonBaseOptions }
    * @relation declare interface AlertDialogButtonBaseOptions
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        enabled!: Bool = true,
        defaultFocus!: Bool = false,
        style!: DialogButtonStyle = DialogButtonStyle.Default,
        value!: ResourceStr,
        fontColor!: ?ResourceColor = None,
        backgroundColor!: ?ResourceColor = None,
        action!: VoidCallback
    )
}


/**
* Button param used for AlertDialogParamWithOptions.
*
* @extends AlertDialogButtonBaseOptions
* @class AlertDialogButtonOptions
* @relation declare interface AlertDialogButtonOptions extends AlertDialogButtonBaseOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AlertDialogButtonOptions <: AlertDialogButtonBaseOptions {
    /**
    * Define whether the button responds to Enter/Space key by default.
    *
    * @type { Bool }
    * @relation primary?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var primary: Bool
    
    /**
    * Constructor of AlertDialogButtonOptions
    *
    * @param { Bool } enabled
    * @param { Bool } defaultFocus
    * @param { DialogButtonStyle } style
    * @param { ResourceStr } value
    * @param { ?ResourceColor } fontColor
    * @param { ?ResourceColor } backgroundColor
    * @param { VoidCallback } action
    * @param { Bool } primary
    * @returns { AlertDialogButtonOptions }
    * @relation declare interface AlertDialogButtonOptions extends AlertDialogButtonBaseOptions
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        enabled!: Bool = true,
        defaultFocus!: Bool = false,
        style!: DialogButtonStyle = DialogButtonStyle.Default,
        value!: ResourceStr,
        fontColor!: ?ResourceColor = None,
        backgroundColor!: ?ResourceColor = None,
        action!: VoidCallback,
        primary!: Bool = false
    )
}


/**
* Base param used for AlertDialog.show method.
*
* @class AlertDialogParam
* @relation declare interface AlertDialogParam
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class AlertDialogParam {
    /**
    * Title Properties
    *
    * @type { ResourceStr }
    * @relation title?: ResourceStr
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var title: ResourceStr
    
    /**
    * Subtitle Properties
    * @type { ResourceStr }
    * @relation subtitle?: ResourceStr
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var subtitle: ResourceStr
    
    /**
    * message Properties
    *
    * @type { ResourceStr }
    * @relation message: ResourceStr
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var message: ResourceStr
    
    /**
    * Allows users to click the mask layer to exit.
    *
    * @type { Bool }
    * @relation autoCancel?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var autoCancel: Bool
    
    /**
    * Execute Cancel Function.
    *
    * @type { ?VoidCallback }
    * @relation cancel?: VoidCallback
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var cancel: VoidCallback
    
    /**
    * Alignment in the vertical direction.
    *
    * @type { DialogAlignment }
    * @relation alignment?: DialogAlignment
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var alignment: DialogAlignment
    
    /**
    * Offset of the pop-up window relative to the alignment position.
    *
    * @type { Offset }
    * @relation offset?: Offset
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offset: Offset
    
    /**
    * Grid count of dialog.
    *
    * @type { UInt32 }
    * @relation gridCount?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var gridCount: UInt32
    
    /**
    * Mask Region of dialog. The size cannot exceed the main window.
    *
    * @type { Rectangle }
    * @relation maskRect?: Rectangle
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var maskRect: Rectangle
    
    /**
    * Whether to display in the sub window.
    *
    * @type { Bool }
    * @default false
    * @relation showInSubWindow?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var showInSubWindow: Bool
    
    /**
    * Whether it is a modal dialog
    * @type { Bool }
    * @default true
    * @relation isModal?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var isModal: Bool
    
    /**
    * Defines the alertDialog's background color
    *
    * @type { ResourceColor }
    * @default Color.Transparent
    * @relation backgroundColor?: ResourceColor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var backgroundColor: ResourceColor
    
    /**
    * Defines the alertDialog's background blur Style
    *
    * @type { BlurStyle }
    * @default BlurStyle.ComponentUltraThick
    * @relation backgroundBlurStyle?: BlurStyle
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var backgroundBlurStyle: BlurStyle
    
    /**
    * Callback function when the dialog interactive dismiss
    *
    * @type { ?Callback<DismissDialogAction, Unit> }
    * @relation onWillDismiss?: Callback<DismissDialogAction>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var onWillDismiss: ?Callback<DismissDialogAction, Unit>
    
    /**
    * Defines the alertDialog's corner radius.
    *
    * @type { BorderRadiuses }
    * @default BorderRadiuses(topLeft: 32.vp, topRight: 32.vp, bottomLeft: 32.vp, bottomRight: 32.vp)
    * @relation cornerRadius?: Dimension | BorderRadiuses | LocalizedBorderRadiuses
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var cornerRadius: BorderRadiuses
    
    /**
    * Transition parameters of opening/closing AlertDialog.
    *
    * @type { ?TransitionEffect }
    * @relation transition?: TransitionEffect
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var transition: ?TransitionEffect
    
    /**
    * Defines the alertDialog's width.
    *
    * @type { ?Length }
    * @relation width?: Dimension
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var width: ?Length
    
    /**
    * Defines the alertDialog's height.
    *
    * @type { ?Length }
    * @relation height?: Dimension
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var height: ?Length
    
    /**
    * Defines the alertDialog's border width.
    *
    * @type { Length }
    * @relation borderWidth?: Dimension | EdgeWidths | LocalizedEdgeWidths
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var borderWidth: Length
    
    /**
    * Defines the alertDialog's border color.
    *
    * @type { ResourceColor }
    * @relation borderColor?: ResourceColor | EdgeColors | LocalizedEdgeColors
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var borderColor: ResourceColor
    
    /**
    * Defines the alertDialog's border style.
    *
    * @type { EdgeStyles }
    * @relation borderStyle?: BorderStyle | EdgeStyles
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var borderStyle: EdgeStyles
    
    /**
    * Set the alertDialog's textStyle.
    *
    * @type { WordBreak }
    * @relation textStyle?: TextStyle
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var textStyle: WordBreak
    
    /**
    * Constructor of AlertDialogParam.
    *
    * @param { ResourceStr } title
    * @param { ResourceStr } subtitle
    * @param { ResourceStr } message
    * @param { Bool } autoCancel
    * @param { VoidCallback } cancel
    * @param { DialogAlignment } alignment
    * @param { Offset } offset
    * @param { UInt32 } gridCount
    * @param { Rectangle } maskRect
    * @param { Bool } showInSubWindow
    * @param { Bool } isModal
    * @param { ResourceColor } backgroundColor
    * @param { BlurStyle } backgroundBlurStyle
    * @param { ?Callback<(DismissDialogAction, Unit)> } onWillDismiss
    * @param { BorderRadiuses } cornerRadius
    * @param { ?TransitionEffect } transition
    * @param { ?Length } width
    * @param { ?Length } height
    * @param { Length } borderWidth
    * @param { ResourceColor } borderColor
    * @param { EdgeStyles } borderStyle
    * @param { WordBreak } textStyle
    * @returns { AlertDialogParam }
    * @relation declare interface AlertDialogParam
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        title!: ResourceStr = "",
        subtitle!:ResourceStr = "",
        message!: ResourceStr,
        autoCancel!: Bool = true,
        cancel!: VoidCallback = {=>},
        alignment!: DialogAlignment = DialogAlignment.Default,
        offset!: Offset = Offset(0, 0),
        gridCount!: UInt32 = 4,
        maskRect!: Rectangle = Rectangle(x: 0, y: 0, width: 100.percent, height: 100.percent),
        showInSubWindow!: Bool = false,
        isModal!: Bool = true,
        backgroundColor!: ResourceColor = Color.Transparent,
        backgroundBlurStyle!: BlurStyle = BlurStyle.ComponentUltraThick,
        onWillDismiss!: ?Callback<DismissDialogAction, Unit> = None,
        cornerRadius!: BorderRadiuses = BorderRadiuses(topLeft: 32.vp, topRight: 32.vp, bottomLeft: 32.vp,
            bottomRight: 32.vp),
        transition!: ?TransitionEffect = None,
        width!: ?Length = None,
        height!: ?Length = None,
        borderWidth!: Length = 0,
        borderColor!: ResourceColor = Color.Black,
        borderStyle!: EdgeStyles = EdgeStyles(),
        textStyle!: WordBreak = WordBreak.BreakAll
    )
}


/**
* Defines the AlertDialog with confirm button.
*
* @extends AlertDialogParam
* @class AlertDialogParamWithConfirm
* @relation declare interface AlertDialogParamWithConfirm extends AlertDialogParam
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AlertDialogParamWithConfirm <: AlertDialogParam {
    /**
    * Invoke the commit function.
    * Anonymous Object Rectification.
    *
    * @type { AlertDialogButtonBaseOptions }
    * @relation confirm?: AlertDialogButtonBaseOptions
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var confirm: AlertDialogButtonBaseOptions
    
    /**
    * Constructor of AlertDialogParamWithConfirm.
    *
    * @param { ResourceStr } title
    * @param { ResourceStr } subtitle
    * @param { ResourceStr } message
    * @param { Bool } autoCancel
    * @param { VoidCallback } cancel
    * @param { DialogAlignment } alignment
    * @param { Offset } offset
    * @param { UInt32 } gridCount
    * @param { Rectangle } maskRect
    * @param { Bool } showInSubWindow
    * @param { Bool } isModal
    * @param { ResourceColor } backgroundColor
    * @param { BlurStyle } backgroundBlurStyle
    * @param { ?Callback<(DismissDialogAction, Unit)> } onWillDismiss
    * @param { BorderRadiuses } cornerRadius
    * @param { ?TransitionEffect } transition
    * @param { ?Length } width
    * @param { ?Length } height
    * @param { Length } borderWidth
    * @param { ResourceColor } borderColor
    * @param { EdgeStyles } borderStyle
    * @param { WordBreak } textStyle
    * @param { AlertDialogButtonBaseOptions } confirm
    * @returns { AlertDialogParamWithConfirm }
    * @declare interface AlertDialogParamWithConfirm extends AlertDialogParam
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        title!: ResourceStr = "",
        subtitle!:ResourceStr = "",
        message!: ResourceStr,
        autoCancel!: Bool = true,
        cancel!: VoidCallback = {=>},
        alignment!: DialogAlignment = DialogAlignment.Default,
        offset!: Offset = Offset(0, 0),
        gridCount!: UInt32 = 4,
        maskRect!: Rectangle = Rectangle(x: 0, y: 0, width: 100.percent, height: 100.percent),
        showInSubWindow!: Bool = false,
        isModal!: Bool = true,
        backgroundColor!: ResourceColor = Color.Transparent,
        backgroundBlurStyle!: BlurStyle = BlurStyle.ComponentUltraThick,
        onWillDismiss!: ?Callback<DismissDialogAction, Unit> = None,
        cornerRadius!: BorderRadiuses = BorderRadiuses(topLeft: 32.vp, topRight: 32.vp, bottomLeft: 32.vp,
            bottomRight: 32.vp),
        transition!: ?TransitionEffect = None,
        width!: ?Length = None,
        height!: ?Length = None,
        borderWidth!: Length = 0,
        borderColor!: ResourceColor = Color.Black,
        borderStyle!: EdgeStyles = EdgeStyles(),
        textStyle!: WordBreak = WordBreak.BreakAll,
        confirm!: AlertDialogButtonBaseOptions = AlertDialogButtonOptions(value: "", action: {=>})
    )
}


/**
* Defines the dialog param with buttons.
*
* @extends AlertDialogParam
* @class AlertDialogParamWithButtons
* @relation declare interface AlertDialogParamWithButtons extends AlertDialogParam
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AlertDialogParamWithButtons <: AlertDialogParam {
    /**
    * First button.
    *
    * @type { AlertDialogButtonBaseOptions }
    * @relation primaryButton: AlertDialogButtonBaseOptions
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var primaryButton: AlertDialogButtonBaseOptions
    
    /**
    * Second button.
    *
    * @type { AlertDialogButtonBaseOptions }
    * @relation secondaryButton: AlertDialogButtonBaseOptions
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var secondaryButton: AlertDialogButtonBaseOptions
    
    /**
    * Constructor of AlertDialogParamWithButtons.
    *
    * @param { ResourceStr } title
    * @param { ResourceStr } subtitle
    * @param { ResourceStr } message
    * @param { Bool } autoCancel
    * @param { VoidCallback } cancel
    * @param { DialogAlignment } alignment
    * @param { Offset } offset
    * @param { UInt32 } gridCount
    * @param { Rectangle } maskRect
    * @param { Bool } showInSubWindow
    * @param { Bool } isModal
    * @param { ResourceColor } backgroundColor
    * @param { BlurStyle } backgroundBlurStyle
    * @param { ?Callback<(DismissDialogAction, Unit)> } onWillDismiss
    * @param { BorderRadiuses } cornerRadius
    * @param { ?TransitionEffect } transition
    * @param { ?Length } width
    * @param { ?Length } height
    * @param { Length } borderWidth
    * @param { ResourceColor } borderColor
    * @param { EdgeStyles } borderStyle
    * @param { WordBreak } textStyle
    * @param { AlertDialogButtonBaseOptions } primaryButton
    * @param { AlertDialogButtonBaseOptions } secondaryButton
    * @returns { AlertDialogParamWithButtons }
    * @relation declare interface AlertDialogParamWithButtons extends AlertDialogParam
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        title!: ResourceStr = "",
        subtitle!:ResourceStr = "",
        message!: ResourceStr,
        autoCancel!: Bool = true,
        cancel!: VoidCallback = {=>},
        alignment!: DialogAlignment = DialogAlignment.Default,
        offset!: Offset = Offset(0, 0),
        gridCount!: UInt32 = 4,
        maskRect!: Rectangle = Rectangle(x: 0, y: 0, width: 100.percent, height: 100.percent),
        showInSubWindow!: Bool = false,
        isModal!: Bool = true,
        backgroundColor!: ResourceColor = Color.Transparent,
        backgroundBlurStyle!: BlurStyle = BlurStyle.ComponentUltraThick,
        onWillDismiss!: ?Callback<DismissDialogAction, Unit> = None,
        cornerRadius!: BorderRadiuses = BorderRadiuses(topLeft: 32.vp, topRight: 32.vp, bottomLeft: 32.vp,
            bottomRight: 32.vp),
        transition!: ?TransitionEffect = None,
        width!: ?Length = None,
        height!: ?Length = None,
        borderWidth!: Length = 0,
        borderColor!: ResourceColor = Color.Black,
        borderStyle!: EdgeStyles = EdgeStyles(),
        textStyle!: WordBreak = WordBreak.BreakAll,
        primaryButton!: AlertDialogButtonBaseOptions,
        secondaryButton!: AlertDialogButtonBaseOptions
    )
}


/**
* Defines the dialog param with options.
*
* @extends AlertDialogParam
* @class AlertDialogParamWithOptions
* @relation declare interface AlertDialogParamWithOptions extends AlertDialogParam
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AlertDialogParamWithOptions <: AlertDialogParam {
    /**
    * The array of buttons.
    * @type { Array<AlertDialogButtonOptions> }
    * @relation buttons: Array<AlertDialogButtonOptions>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var buttons: Array<AlertDialogButtonOptions>
    
    /**
    * The arrangement of buttons.
    * @type { DialogButtonDirection }
    * @default DialogButtonDirection.Auto
    * @relation buttonDirection?: DialogButtonDirection
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var buttonDirection: DialogButtonDirection
    
    /**
    * Constructor of AlertDialogParamWithOptions.
    *
    * @param { ResourceStr } title
    * @param { ResourceStr } subtitle
    * @param { ResourceStr } message
    * @param { Bool } autoCancel
    * @param { VoidCallback } cancel
    * @param { DialogAlignment } alignment
    * @param { Offset } offset
    * @param { UInt32 } gridCount
    * @param { Rectangle } maskRect
    * @param { Bool } showInSubWindow
    * @param { Bool } isModal
    * @param { ResourceColor } backgroundColor
    * @param { BlurStyle } backgroundBlurStyle
    * @param { ?Callback<(DismissDialogAction, Unit)> } onWillDismiss
    * @param { BorderRadiuses } cornerRadius
    * @param { ?TransitionEffect } transition
    * @param { ?Length } width
    * @param { ?Length } height
    * @param { Length } borderWidth
    * @param { ResourceColor } borderColor
    * @param { EdgeStyles } borderStyle
    * @param { WordBreak } textStyle
    * @param { Array<AlertDialogButtonOptions> } buttons
    * @param { DialogButtonDirection } buttonDirection
    * @returns { AlertDialogParamWithOptions }
    * @relation declare interface AlertDialogParamWithOptions extends AlertDialogParam
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        title!: ResourceStr = "",
        subtitle!:ResourceStr = "",
        message!: ResourceStr,
        autoCancel!: Bool = true,
        cancel!: VoidCallback = {=>},
        alignment!: DialogAlignment = DialogAlignment.Default,
        offset!: Offset = Offset(0, 0),
        gridCount!: UInt32 = 4,
        maskRect!: Rectangle = Rectangle(x: 0, y: 0, width: 100.percent, height: 100.percent),
        showInSubWindow!: Bool = false,
        isModal!: Bool = true,
        backgroundColor!: ResourceColor = Color.Transparent,
        backgroundBlurStyle!: BlurStyle = BlurStyle.ComponentUltraThick,
        onWillDismiss!: ?Callback<DismissDialogAction, Unit> = None,
        cornerRadius!: BorderRadiuses = BorderRadiuses(topLeft: 32.vp, topRight: 32.vp, bottomLeft: 32.vp,
            bottomRight: 32.vp),
        transition!: ?TransitionEffect = None,
        width!: ?Length = None,
        height!: ?Length = None,
        borderWidth!: Length = 0,
        borderColor!: ResourceColor = Color.Black,
        borderStyle!: EdgeStyles = EdgeStyles(),
        textStyle!: WordBreak = WordBreak.BreakAll,
        buttons!: Array<AlertDialogButtonOptions>,
        buttonDirection!: DialogButtonDirection = DialogButtonDirection.Auto
    )
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AlertDialog {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func show(value: AlertDialogParamWithConfirm): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func show(value: AlertDialogParamWithConfirm, shadow: ShadowOptions): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func show(value: AlertDialogParamWithConfirm, shadow: ShadowStyle): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func show(value: AlertDialogParamWithButtons): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func show(value: AlertDialogParamWithButtons, shadow: ShadowOptions): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func show(value: AlertDialogParamWithButtons, shadow: ShadowStyle): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func show(value: AlertDialogParamWithOptions): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func show(value: AlertDialogParamWithOptions, shadow: ShadowOptions): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func show(value: AlertDialogParamWithOptions, shadow: ShadowStyle): Unit
}


