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

package ohos.arkui.component.action_sheet
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.resource.*
import ohos.labels.APILevel


/**
* The information of sheet.
*
* @relation interface SheetInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SheetInfo {
    /**
    * Sheet text.
    *
    * @type { ResourceStr }
    * @relation title: string | Resource
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var title: ResourceStr
    
    /**
    * Callback when the sheet is selected.
    * Anonymous Object Rectification.
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
    * Sheet icon. By default, no icon is displayed.
    *
    * @type { ?ResourceStr }
    * @relation icon?: string | Resource
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var icon: ?ResourceStr
    
    /**
    * Constructor of SheetInfo
    *
    * @param { ResourceStr } title
    * @param { VoidCallback } action
    * @param { ?ResourceStr } icon
    * @returns { SheetInfo }
    * @relation interface SheetInfo
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        title!: ResourceStr,
        action!: VoidCallback,
        icon!: ?ResourceStr = None
    )
}


/**
* Base button params used for ActionSheet.
*
* @relation interface ActionSheetButtonOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ActionSheetButtonOptions {
    /**
    * Button text.
    *
    * @type { ResourceStr }
    * @relation value: string | Resource
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var value: ResourceStr
    
    /**
    * Callback invoked when the button is selected.
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
    * Whether to respond when the button is clicked. The value true means to respond when the button is clicked,
    * and false means the opposite.
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
    * Whether the button is the default focus. The value true means that the button is the default focus,
    * and false means the opposite.
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
    * Button style.
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
    * Constructor of ActionSheetButtonOptions
    *
    * @param { ResourceStr } value
    * @param { VoidCallback } action
    * @param { Bool } enabled
    * @parma { Bool } defaultFocus
    * @param { DialogButtonStyle } style
    * @returns { ActionSheetButtonOptions }
    * @relation interface ActionSheetButtonOptions
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        value!: ResourceStr,
        action!: VoidCallback,
        enabled!: Bool = true,
        defaultFocus!: Bool = false,
        style!: DialogButtonStyle = DialogButtonStyle.Default
    )
}


/**
* Provides information about the action to dismiss the dialog box.
*
* @relation declare interface DismissDialogAction
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DismissDialogAction {
    /**
    * Reason why the dialog box cannot be dismissed. You must specify whether to close the dialog box for each of the
    * listed actions.
    *
    * @type { DismissReason }
    * @relation reason: DismissReason
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var reason: DismissReason
    
    /**
    * Constructor of DismissDialogAction
    
    * @param { DismissReason } reason
    * @returns { DismissDialogAction }
    * @relation declare interface DismissDialogAction
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(reason: DismissReason)
    
    /**
    * Defines dialog dismiss function.
    *
    * @relation dismiss(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func dismiss(): Unit
}


/**
* The options of ActionSheet.
*
* @class ActionSheetOptions
* @relation interface ActionSheetOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ActionSheetOptions {
    /**
    * Title of the dialog box.
    *
    * @type { ResourceStr }
    * @relation title: string | Resource
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var title: ResourceStr
    
    /**
    * Content of the dialog box.
    *
    * @type { ResourceStr }
    * @relation message: string | Resource
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var message: ResourceStr
    
    /**
    * Options in the dialog box. Each option supports the image, text, and callback.
    *
    * @type { Array<SheetInfo> }
    * @relation sheets: Array<SheetInfo>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var sheets: Array<SheetInfo>
    
    /**
    * Subtitle of the dialog box.
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
    * Information about the confirm button. When the dialog box has focus and focus has not been shifted using the Tab
    * key, the button responds to the Enter key by default, and multiple dialog boxes can gain focus consecutively
    * to respond automatically. The default response to the Enter key does not work when defaultFocus is set to true.
    *
    * @type { ActionSheetButtonOptions }
    * @relation confirm?: ActionSheetButtonOptions
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var confirm: ActionSheetButtonOptions
    
    /**
    * Whether to close the dialog box when the overlay is clicked.
    *
    * @type { Bool }
    * @default true - The value true means to close the dialog box when the overlay is clicked, and false means
    * the opposite.
    * @relation autoCancel?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var autoCancel: Bool
    
    /**
    * Callback invoked when the dialog box is closed after the overlay is clicked.
    * Anonymous Object Rectification.
    *
    * @type { VoidCallback }
    * @relation cancel?: VoidCallback
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var cancel: VoidCallback
    
    /**
    * Alignment mode of the dialog box in the vertical direction.
    * <p><strong>NOTE</strong>:
    * <br>If showInSubWindow is set to true in UIExtension, the dialog box is aligned with the host window based
    * on UIExtension.
    * </p>
    *
    * @type { DialogAlignment }
    * @default DialogAlignment.Bottom
    * @relation alignment?: DialogAlignment
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var alignment: DialogAlignment
    
    /**
    * Offset of the dialog box relative to the alignment position.
    * <br>When alignment is set to Top, TopStart, or TopEnd: {dx: 0,dy: "40vp"}
    * <br>When alignment is set to any other value: {dx: 0,dy: "-40vp"}
    *
    * @type { ActionSheetOffset }
    * @relation offset?: ActionSheetOffset
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offset: ActionSheetOffset
    
    /**
    * Mask area of the dialog box. Events outside the mask area are transparently transmitted,
    * and events within the mask area are not.
    * <p><strong>NOTE</strong>:
    * <br>maskRect does not take effect when showInSubWindow is set to true.
    * </p>
    *
    * @type { Rectangle }
    * @default - {x:0,y:0, width:'100%', height:'100%'}
    * @relation maskRect?: Rectangle
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var maskRect: Rectangle
    
    /**
    * Whether to show the dialog box in a subwindow when the dialog box needs to be displayed outside the main window.
    * <p><strong>NOTE</strong>:
    * <br>A dialog box whose showInSubWindow attribute is true cannot trigger the display of another dialog box whose
    * showInSubWindow attribute is also true.
    * </p>
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
    * Whether the dialog box is a modal. A modal dialog box has a mask applied, while a non-modal dialog box does not.
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
    * Background color of the dialog box.
    * <p><strong>NOTE</strong>:
    * <br>When backgroundColor is set to a non-transparent color, backgroundBlurStyle must be set to BlurStyle.NONE;
    * otherwise, the color display may not meet the expected effect.
    * </p>
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
    * Background blur style of the dialog box.
    * <p><strong>NOTE</strong>:
    * <br>Setting this parameter to BlurStyle.NONE disables the background blur. When backgroundBlurStyle is set to a
    * value other than NONE, do not set backgroundColor. If you do, the color display may not produce the expected
    * visual effect.
    * </p>
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
    * Callback for interactive closure of the dialog box.
    * <p><strong>NOTE</strong>:
    * 1. If this callback is registered, the dialog box will not be closed immediately after the user touches the
    * mask or the Back button, presses the Esc key, or swipes left or right on the screen. The reason parameter in
    * the callback is used to determine whether the dialog box can be closed. The reason returned by the component
    * does not support the value CLOSE_BUTTON.
    * 2. In the onWillDismiss callback, another onWillDismiss callback is not allowed.
    * </p>
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
    * Corner radius of the background. You can set the radius for each of the four corners individually.
    *
    * @type { BorderRadiuses }
    * @default - BorderRadiuses(topLeft: 32.vp, topRight: 32.vp, bottomLeft: 32.vp, bottomRight: 32.vp), The corner radius is subject
    * to the component size, with the maximum value being half of the component width or height. If the value is
    * negative, the default value is used. When set to a percentage, the value defines the radius as a percentage of the
    * parent component's width or height.
    * @relation cornerRadius?: Dimension | BorderRadiuses | LocalizedBorderRadiuses
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var cornerRadius: BorderRadiuses
    
    /**
    * Border width of the dialog box.
    * You can set the width for all four sides or set separate widths for individual sides.
    *
    * @type { Length }
    * @default 0 - When set to a percentage, the value defines the border width as a percentage of the parent dialog
    * box's width. If the left and right borders are greater than its width, or the top and bottom borders are greater
    * than its height, the dialog box may not display as expected.
    * @relation borderWidth?: Dimension | EdgeWidths | LocalizedEdgeWidths
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var borderWidth: Length
    
    /**
    * Border color of the dialog box.
    * <p><strong>NOTE</strong>:
    * <br>When borderColor is of type LocalizedEdgeColors, the layout order can be dynamically adjusted based on the
    * user's language settings.
    * </p>
    *
    * @type { ResourceColor }
    * @default Color.Black - borderColor must be used with borderWidth in pairs.
    * @relation borderColor?: ResourceColor | EdgeColors | LocalizedEdgeColors
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var borderColor: ResourceColor
    
    /**
    * Border style of the dialog box.
    *
    * @type { EdgeStyles }
    * @default EdgeStyles(top: BorderStyle.Solid, right: BorderStyle.Solid, bottom: BorderStyle.Solid, left: BorderStyle.Solid)
    * @relation borderStyle?: BorderStyle | EdgeStyles
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var borderStyle: EdgeStyles
    
    /**
    * Width of the dialog box.
    *
    * @type { ?Length }
    * @default - Default maximum width of the dialog box: 400.vp,
    * When this parameter is set to a percentage, the reference width of the dialog box is the width of the window
    * where the dialog box is located. You can decrease or increase the width as needed.
    * @relation width?: Dimension
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var width: ?Length
    
    /**
    * Height of the dialog box.
    *
    * @type { ?Length }
    * @default - Default maximum height of the dialog box: 0.9 x (Window height – Safe area)
    * <br>When this parameter is set to a percentage, the reference height of the dialog box is the height of the
    * window where the dialog box is located minus the safe area. You can decrease or increase the height as needed.
    * @relation height?: Dimension
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var height: ?Length
    
    /**
    * Transition effect for the entrance and exit of the dialog box.
    * <p><strong>NOTE</strong>:
    * 1. If this parameter is not set, the default effect is used.
    * 2. Touching the Back button during the entrance animation pauses the entrance animation and starts the exit
    * animation. The final effect is one obtained after the curves of the entrance and exit animations are combined.
    * 3. Touching the Back button during the exit animation does not affect the animation playback. Touching the
    * Back button again closes the application.
    * </p>
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
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    /**
    * Constructor of ActionSheetOptions
    *
    * @param { ResourceStr } title
    * @param { ResourceStr } message
    * @param { Array<SheetInfo> } sheets
    * @param { ResourceStr } subtitle
    * @param { ActionSheetButtonOptions } confirm
    * @param { Bool } autoCancel
    * @param { VoidCallback } cancel
    * @param { DialogAlignment } alignment
    * @param { ?ActionSheetOffset } offset
    * @param { Rectangle } maskRect
    * @param { Bool } showInSubWindow
    * @param { ResourceColor } backgroundColor
    * @param { BlurStyle } backgroundBlurStyle
    * @param { ?Callback<DismissDialogAction, Unit> } onWillDismiss
    * @param { BorderRadiuses } cornerRadius
    * @param { Length } borderWidth
    * @param { ResourceColor } borderColor
    * @param { EdgeStyles } borderStyle
    * @param { ?Length } width
    * @param { ?Length } height
    * @param { ?TransitionEffect } transition
    * @returns { ActionSheetOptions }
    * @relation interface ActionSheetOptions
    */
    public init(
        title!: ResourceStr,
        message!: ResourceStr,
        sheets!: Array<SheetInfo>,
        subtitle!: ResourceStr = "",
        confirm!: ActionSheetButtonOptions = ActionSheetButtonOptions(value: "", action: {=>}),
        autoCancel!: Bool = true,
        cancel!: VoidCallback = {=>},
        alignment!: DialogAlignment = DialogAlignment.Bottom,
        offset!: ?ActionSheetOffset = None,
        maskRect!: Rectangle = Rectangle(x: 0, y: 0, width: 100.percent, height: 100.percent),
        showInSubWindow!: Bool = false,
        isModal!: Bool = true,
        backgroundColor!: ResourceColor = Color.Transparent,
        backgroundBlurStyle!: BlurStyle = BlurStyle.ComponentUltraThick,
        onWillDismiss!: ?Callback<DismissDialogAction, Unit> = None,
        cornerRadius!: BorderRadiuses = BorderRadiuses(topLeft: 32.vp, topRight: 32.vp,
            bottomLeft: 32.vp, bottomRight: 32.vp),
        borderWidth!: Length = 0.vp,
        borderColor!: ResourceColor = Color.Black,
        borderStyle!: EdgeStyles = EdgeStyles(),
        width!: ?Length = None,
        height!: ?Length = None,
        transition!: ?TransitionEffect = None
    )
}


/**
* ActionSheet offset.
*
* @class ActionSheetOffset
* @relation interface ActionSheetOffset
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ActionSheetOffset {
    /**
    * Offset of the action sheet along the x-axis relative to the alignment position.
    * Anonymous Object Rectification.
    *
    * @type { Length }
    * @relation dx: number | string | Resource
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var dx: Length
    
    /**
    * Offset of the action sheet along the y-axis relative to the alignment position.
    * Anonymous Object Rectification.
    *
    * @type { Length }
    * @relation dy: number | string | Resource
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var dy: Length
    
    /**
    * Constructor of ActionSheetOffset
    *
    * @param { Length } dx
    * @param { Length } dy
    * @returns { ActionSheetOffset }
    * @relation interface ActionSheetOffset
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        dx!: Length,
        dy!: Length
    )
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ActionSheet {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func show(value: ActionSheetOptions, shadow: ShadowOptions): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func show(value: ActionSheetOptions, shadow: ShadowStyle): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func show(value: ActionSheetOptions): Unit
}


