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

package ohos.window
internal import ohos.labels.*
import ohos.app.ability.BaseContext

import std.deriving.Derive
internal import ohos.hilog.*
internal import std.collection.HashMap
internal import ohos.base.*
internal import std.collection.*
internal import std.sync.*
internal import ohos.ffi.*
internal import ohos.multimedia.image.*
internal import ohos.callback_invoke.*
internal import ohos.business_exception.*

/**
* Window size
*
* @relation export interface Size
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Size {
    /**
    * The width of the window.
    *
    * @relation width: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var width: UInt32
    
    /**
    * The height of the window.
    *
    * @relation height: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var height: UInt32
    
    /**
    * Size constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public init(
        width!: UInt32,
        height!: UInt32
    )
}


/**
* Rectangular area of the title buttons relative to the upper right corner of the window.
*
* @relation export interface TitleButtonRect
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public class TitleButtonRect {
    /**
    * The right of the Rect.
    *
    * @relation right: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public var right: Int32
    
    /**
    * The top of the Rect.
    *
    * @relation top: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public var top: Int32
    
    /**
    * The width of the Rect.
    *
    * @relation width: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public var width: UInt32
    
    /**
    * The height of the Rect.
    *
    * @relation height: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public var height: UInt32
    
    /**
    * TitleButtonRect constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public init(
        right!: Int32,
        top!: Int32,
        width!: UInt32,
        height!: UInt32
    )
}


/**
* Configuration parameters for window creation.
*
* @relation export interface Configuration
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Configuration {
    /**
    * Indicates window id.
    *
    * @relation name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var name: String
    
    /**
    * Indicates window type
    *
    * @relation windowType: WindowType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var windowType: WindowType
    
    /**
    * Indicates window context.
    *
    * @relation ctx?: BaseContext
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var ctx: BaseContext
    
    /**
    * Indicates display ID.
    *
    * @relation displayId?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var displayId: Int64 = -1
    
    /**
    * Indicates Parent window id
    *
    * @relation parentId?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var parentId: Int64 = -1
    
    /**
    * Configuration constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public init(
        name!: String,
        windowType!: WindowType,
        ctx!: BaseContext,
        displayId!: Int64 = -1,
        parentId!: Int64 = -1
    )
}


/**
* Rectangle
*
* @relation export interface Rect
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Rect {
    /**
    * The left of the Rect.
    *
    * @relation left: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var left: Int32
    
    /**
    * The top of the Rect.
    *
    * @relation top: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var top: Int32
    
    /**
    * The width of the Rect.
    *
    * @relation width: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var width: UInt32
    
    /**
    * The height of the Rect.
    *
    * @relation height: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var height: UInt32
    
    /**
    * Rect constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public init(
        left!: Int32,
        top!: Int32,
        width!: UInt32,
        height!: UInt32
    )
}


/**
* Properties of window, it couldn't update automatically
*
* @relation export interface WindowProperties
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class WindowProperties {
    /**
    * The position and size of the window
    *
    * @relation windowRect: Rect
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var windowRect: Rect
    
    /**
    * The position relative to the window and size of drawable area
    *
    * @relation drawableRect: Rect
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var drawableRect: Rect
    
    /**
    * Window type
    *
    * @relation type: WindowType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var winType: WindowType
    
    /**
    * Whether the window is displayed in full screen mode. The default value is false.
    *
    * @relation isFullScreen: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var isFullScreen: Bool
    
    /**
    * Whether the window layout is in full screen mode(whether the window is immersive). The default value is false.
    *
    * @relation isLayoutFullScreen: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var isLayoutFullScreen: Bool
    
    /**
    * Whether the window can gain focus. The default value is true
    *
    * @relation focusable: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var focusable: Bool
    
    /**
    * Whether the window is touchable. The default value is false
    *
    * @relation touchable: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var touchable: Bool
    
    /**
    * Brightness value of window.
    *
    * @relation brightness: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var brightness: Float32
    
    /**
    * Whether keep screen on.
    *
    * @relation isKeepScreenOn: boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var isKeepScreenOn: Bool
    
    /**
    * Whether make window in privacy mode or not.
    *
    * @relation isPrivacyMode: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var isPrivacyMode: Bool
    
    /**
    * Whether is transparent or not.
    *
    * @relation isTransparent: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var isTransparent: Bool
    
    /**
    * isTransparent: boolean
    *
    * @relation id: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var id: UInt32
    
    /**
    * WindowProperties constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public init(
        windowRect!: Rect,
        drawableRect!: Rect,
        winType!: WindowType,
        isFullScreen!: Bool,
        isLayoutFullScreen!: Bool,
        focusable!: Bool,
        touchable!: Bool,
        brightness!: Float32,
        isKeepScreenOn!: Bool,
        isPrivacyMode!: Bool,
        isTransparent!: Bool,
        id!: UInt32
    )
}


/**
* Avoid area
*
* @relation export interface AvoidArea
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class AvoidArea {
    /**
    * Whether avoidArea is visible on screen
    *
    * @relation visible: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var visible: Bool
    
    /**
    * Rectangle on the left of the screen
    *
    * @relation leftRect: Rect
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var leftRect: Rect
    
    /**
    * Rectangle on the top of the screen
    *
    * @relation topRect: Rect
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var topRect: Rect
    
    /**
    * Rectangle on the right of the screen
    *
    * @relation rightRect: Rect
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var rightRect: Rect
    
    /**
    * Rectangle on the bottom of the screen
    *
    * @relation bottomRect: Rect
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var bottomRect: Rect
    
    /**
    * AvoidArea constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public init(
        visible!: Bool,
        leftRect!: Rect,
        topRect!: Rect,
        rightRect!: Rect,
        bottomRect!: Rect
    )
}


/**
* Properties of status bar and navigation bar, it couldn't update automatically
*
* @relation export interface SystemBarProperties
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class SystemBarProperties {
    /**
    * The color of the status bar.
    *
    * @relation statusBarColor?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var statusBarColor: String = "#66000000"
    
    /**
    * The light icon of the status bar.
    *
    * @relation isStatusBarLightIcon?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var isStatusBarLightIcon: Bool = false
    
    /**
    * The content color of the status bar
    *
    * @relation statusBarContentColor?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var statusBarContentColor: String = "#E5FFFFFF"
    
    /**
    * statusBarContentColor?: string
    *
    * @relation navigationBarColor?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var navigationBarColor: String = "#66000000"
    
    /**
    * navigationBarColor?: string
    *
    * @relation isNavigationBarLightIcon?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var isNavigationBarLightIcon: Bool = false
    
    /**
    * The content color of the navigation bar
    *
    * @relation navigationBarContentColor?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var navigationBarContentColor: String = "#E5FFFFFF"
    
    /**
    * Enable the animation of the status bar.
    *
    * @relation enableStatusBarAnimation?: boolean
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public var enableStatusBarAnimation: Bool = false
    
    /**
    * Enable the animation of the navigation bar.
    *
    * @relation enableNavigationBarAnimation?: boolean
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public var enableNavigationBarAnimation: Bool = false
    
    /**
    * SystemBarProperties constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public init(
        statusBarColor!: String = "#66000000",
        isStatusBarLightIcon!: Bool = false,
        statusBarContentColor!: String = "#E5FFFFFF",
        navigationBarColor!: String = "#66000000",
        isNavigationBarLightIcon!: Bool = false,
        navigationBarContentColor!: String = "#E5FFFFFF",
        enableStatusBarAnimation!: Bool = false,
        enableNavigationBarAnimation!: Bool = false
    )
}


/**
* The type of a window.
*
* @relation export enum WindowType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum WindowType {
    /**
    * App.
    *
    * @relation TYPE_APP = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    TypeApp |
    /**
    * Float.
    * Require "ohos.permission.SYSTEM_FLOAT_WINDOW" permission
    *
    * @relation TYPE_FLOAT = 8
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    TypeFloat |
    /**
    * Dialog.
    *
    * @relation TYPE_DIALOG= 16
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    TypeDialog |
    ...
}



/**
* Display orientation
*
* @relation export enum Orientation
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum Orientation {
    /**
    * Default value. The direction mode is not clearly defined. It is determined by the system.
    *
    * @relation UNSPECIFIED = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Unspecified |
    /**
    * Display in portrait orientation.
    *
    * @relation PORTRAIT = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Portrait |
    /**
    * Display in landscape orientation.
    *
    * @relation LANDSCAPE = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Landscape |
    /**
    * Display in inverted portrait orientation.
    *
    * @relation PORTRAIT_INVERTED = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    PortraitInverted |
    /**
    * Display in inverted landscape orientation.
    *
    * @relation LANDSCAPE_INVERTED = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    LandscapeInverted |
    /**
    * Follow the rotation of the sensor, ignore auto rotation lock.
    *
    * @relation AUTO_ROTATION = 5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    AutoRotation |
    /**
    * Follow the rotation of the sensor, only work in the vertical direction, ignore auto rotation lock.
    *
    * @relation AUTO_ROTATION_PORTRAIT = 6
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    AutoRotationPortrait |
    /**
    * Follow the rotation of the sensor, only work in the horizontal direction, ignore auto rotation lock.
    *
    * @relation AUTO_ROTATION_LANDSCAPE = 7
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    AutoRotationLandscape |
    /**
    * Follow the rotation of the sensor, controlled by auto rotation lock.
    *
    * @relation AUTO_ROTATION_RESTRICTED = 8
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    AutoRotationRestricted |
    /**
    * Follow the rotation of the sensor, only work in the vertical direction, controlled by auto rotation lock.
    *
    * @relation AUTO_ROTATION_PORTRAIT_RESTRICTED = 9
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    AutoRotationPortraitRestricted |
    /**
    * Follow the rotation of the sensor, only work in the horizontal direction, controlled by auto rotation lock.
    *
    * @relation AUTO_ROTATION_LANDSCAPE_RESTRICTED = 10
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    AutoRotationLandscapeRestricted |
    /**
    * Locked mode, keep the same direction as previous one.
    *
    * @relation LOCKED = 11
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Locked |
    ...
}



/**
* Describes the type of avoid area
*
* @relation export enum AvoidAreaType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum AvoidAreaType {
    /**
    * Default area of the system
    *
    * @relation Default area of the system
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    TypeSystem |
    /**
    * Notch
    *
    * @relation TYPE_CUTOUT = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    TypeCutout |
    /**
    * Area for system gesture
    *
    * @relation TYPE_SYSTEM_GESTURE = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    TypeSystemGesture |
    /**
    * Area for keyboard
    *
    * @relation TYPE_KEYBOARD = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    TypeKeyboard |
    /**
    * Area for navigation indicator
    *
    * @relation TYPE_NAVIGATION_INDICATOR = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    TypeNavigationIndicator |
    ...
}



/**
* Enum for window callback event type
*
* @relation export enum WindowEventType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum WindowEventType {
    /**
    * The value of window event is window show
    *
    * @relation WINDOW_SHOWN = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    WindowShown |
    /**
    * The value of window event is window active
    *
    * @relation WINDOW_ACTIVE = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    WindowActive |
    /**
    * The value of window event is window inactive
    *
    * @relation WINDOW_INACTIVE = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    WindowInactive |
    /**
    * The value of window event is window hide
    *
    * @relation WINDOW_HIDDEN = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    WindowHidden |
    /**
    * The value of window event is window destroy
    *
    * @relation WINDOW_DESTROYED = 7
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    WindowDestroyed |
    ...
}



/**
* Window stage callback event type
*
* @relation export enum WindowStageEventType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum WindowStageEventType {
    /**
    * The window stage is running in the foreground.
    *
    * @relation SHOWN = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Shown |
    /**
    * The window stage gains focus.
    *
    * @relation ACTIVE = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Active |
    /**
    * The window stage loses focus.
    *
    * @relation INACTIVE = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Inactive |
    /**
    * The window stage is running in the background.
    *
    * @relation HIDDEN = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Hidden |
    /**
    * The window stage is interactive in the foreground.
    *
    * @relation RESUMED = 5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Resumed |
    /**
    * The window stage is not interactive in the foreground.
    *
    * @relation PAUSED = 6
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Paused |
    ...
}



/**
* Describes the window status of an application
*
* @relation export enum WindowStatusType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public enum WindowStatusType {
    /**
    * Undefined status of the window
    *
    * @relation UNDEFINED = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    Undefined |
    /**
    * Full screen status of the window
    *
    * @relation FULL_SCREEN = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FullScreen |
    /**
    * Maximize status of the window
    *
    * @relation MAXIMIZE = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    Maximize |
    /**
    * Minimize status of the window
    *
    * @relation MINIMIZE = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    Minimize |
    /**
    * Floating status of the window
    *
    * @relation FLOATING = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    Floating |
    /**
    * Split screen status of the window
    *
    * @relation SPLIT_SCREEN = 5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    SplitScreen |
    ...
}



/**
* Type of allowing the specified of color space.
*
* @relation export enum ColorSpace
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum ColorSpace {
    /**
    * Default color space.
    *
    * @relation DEFAULT = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Default |
    /**
    * Wide gamut color space. The specific wide color gamut depends on thr screen.
    *
    * @relation WIDE_GAMUT = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    WideGamut |
    ...
}



/**
* Enumerates of listening event
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum WindowCallbackType {
    /**
    * indicating the window stage lifecycle change event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    WindowStageEvent |
    /**
    * indicating the window size change event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    WindowSizeChange |
    /**
    * indicating the event of changes to the avoid area.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    WindowAvoidAreaChange |
    /**
    * indicating the keyboard height change event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    KeyboardHeightChange |
    /**
    * indicating the click event outside this window.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    TouchOutside |
    /**
    * indicating the window visibility change.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    WindowVisibilityChange |
    /**
    * indicating the window has no interaction for a long time.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    NoInteractionDetected |
    /**
    * indicating the screenshot event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Screenshot |
    /**
    * indicating the click event of the target window in the modal window mode.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    DialogTargetTouch |
    /**
    * indicating the window lifecycle change event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    WindowEvent |
    /**
    * indicating the window status change event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    WindowStatusChange |
    /**
    * indicating the child window close event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    SubWindowClose |
    /**
    * indicating the title buttons area change event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    WindowTitleButtonRectChange |
    /**
    * indicating the window rect change event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    WindowRectChange |
    ...
}



/**
* Enumerates of system bar type
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum SystemBarType {
    /**
    * status bar
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Status |
    /**
    * navigation
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Navigation |
    ...
}




/**
* Finds a window based on the name.
*
* @param { String } name - Window name, that is, the value of name in Configuration.
* @returns { Window } Window found.
* @throws { BusinessException } 1300002 - This window state is abnormal.
* @relation export function findWindow(name: string): Window
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func findWindow(name: String): Window


/**
* Create a window with a specific configuration
* When config.windowType == TYPE_FLOAT, the "ohos.permission.SYSTEM_FLOAT_WINDOW" permission is required
*
* @param { Configuration } config - Parameters for window creation.
* @returns { Window } the window created.
* @throws { IllegalArgumentException } - The context type is not supported. Only support UIAbilityContext.
* @throws { BusinessException } 201 - Permission verification failed. The application does not have the permission required to call the API.
* @throws { BusinessException } 401 - Parameter error. Possible cause: 1. Mandatory parameters are left unspecified; 
*                                                                      2. Incorrect parameter types.
* @throws { BusinessException } 1300003 - This window manager service works abnormally.
* @throws { BusinessException } 1300006 - This window context is abnormal.
* @relation export function createWindow(config: Configuration): Promise<Window>
*/
@!APILevel[
    21,
    permission: "ohos.permission.SYSTEM_FLOAT_WINDOW",
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func createWindow(config: Configuration): Window


/**
* Obtains the top window of the current application.
* If no child window is available, the main window of the application is returned.
*
* @param { BaseContext } ctx - Current application context.
* @returns { Window } the top window obtained.
* @throws { IllegalArgumentException } - The context type is not supported. Only support UIAbilityContext.
* @throws { BusinessException } 1300002 - This window state is abnormal. Top window or main window is null or destroyed.
* @relation export function getLastWindow(ctx: BaseContext): Promise<Window>
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func getLastWindow(ctx: BaseContext): Window


/**
* Shifts the window focus from the source window to the target window in the same application.
* The window focus can be shifted between the main window and a child window.
*
* @param { Int32 } sourceWindowId - Window id which the focus shift from.
* @param { Int32 } targetWindowId - Window id which the focus shift to.
* @throws { BusinessException } 401 - Parameter error. Possible cause: 1. Mandatory parameters are left unspecified; 
*                                                                      2. Incorrect parameter types.
* @throws { BusinessException } 801 - Capability not supported. Failed to call the API due to limited device capabilities.
* @throws { BusinessException } 1300002 - This window state is abnormal.
* @throws { BusinessException } 1300003 - This window manager service works abnormally.
* @throws { BusinessException } 1300004 - Unauthorized operation.
* @relation export function shiftAppWindowFocus(sourceWindowId: number, targetWindowId: number): Promise<void>
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public func shiftAppWindowFocus(sourceWindowId: Int32, targetWindowId: Int32): Unit


/**
* Window
*
* @relation export interface Window
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Window <: RemoteDataLite {
    /**
    * Shows this window. 
    * This API takes effect only for a system window or an application child window.
    * For the main window of an application, this API moves it at the top when the main window is already displayed.
    *
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation showWindow(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func showWindow(): Unit
    
    /**
    * Set the position of a window.
    *
    * @param { Int32 } x - Indicate the X-coordinate of the window.
    * @param { Int32 } y - Indicate the Y-coordinate of the window.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation moveWindowTo(x: number, y: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func moveWindowTo(x: Int32, y: Int32): Unit
    
    /**
    * Set the size of a window.
    *
    * @param { Int32 } width - Indicates the width of the window. The width should be greater than 0.
    * @param { Int32 } height - Indicates the height of the window. The height should be greater than 0.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation resize(width: number, height: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func resize(width: UInt32, height: UInt32): Unit
    
    /**
    * Get the properties of current window
    *
    * @returns { WindowProperties } Return the window properties.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation getWindowProperties(): WindowProperties
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func getWindowProperties(): WindowProperties
    
    /**
    * Destroys this window. 
    * This API takes effect only for a system window or an application child window.
    *
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation destroyWindow(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func destroyWindow(): Unit
    
    /**
    * Sets whether the main window layout or the child window layout is immersive.
    *
    * @param { Bool } isLayoutFullScreen - Whether the window layout is immersive
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation setWindowLayoutFullScreen(isLayoutFullScreen: boolean): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowLayoutFullScreen(isLayoutFullScreen: Bool): Unit
    
    /**
    * Whether the window supports thr wide gamut setting.
    *
    * @returns { Bool } The value true means that the wide-gamut color space is supported, and false means the opposite.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation isWindowSupportWideGamut(): Promise<boolean>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func isWindowSupportWideGamut(): Bool
    
    /**
    * Whether the window supports thr wide gamut setting.
    *
    * @returns { Bool }  Whether the window is displayed. The value true means that the window is displayed, and false means the opposite.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation isWindowShowing(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func isWindowShowing(): Bool
    
    /**
    * Sets the background color of window.
    *
    * @param { String } color - the specified color.
    * @throws { BusinessException } 401 - Parameter error. Possible cause: 1. Mandatory parameters are left unspecified; 
    *                                                                      2. Incorrect parameter types.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation setWindowBackgroundColor(color: string | ColorMetrics): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowBackgroundColor(color: String): Unit
    
    /**
    * Sets the brightness of window.
    *
    * @param { Float32 } brightness the specified brightness value.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation setWindowBrightness(brightness: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowBrightness(brightness: Float32): Unit
    
    /**
    * Sets whether focusable or not.
    *
    * @param { Bool } isFocusable can be focus if true, or can not be focus if false.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation setWindowFocusable(isFocusable: boolean): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowFocusable(isFocusable: Bool): Unit
    
    /**
    * Sets whether keep screen on or not.
    *
    * @param { Bool } isKeepScreenOn keep screen on if true, or not if false.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation setWindowKeepScreenOn(isKeepScreenOn: boolean): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowKeepScreenOn(isKeepScreenOn: Bool): Unit
    
    /**
    * Sets whether is private mode or not.
    *
    * @param { Bool } isPrivacyMode in private mode if true, or not if false.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation setWindowPrivacyMode(isPrivacyMode: boolean): Promise<void>
    */
    @!APILevel[
        21,
        permission: "ohos.permission.PRIVACY_WINDOW",
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowPrivacyMode(isPrivacyMode: Bool): Unit
    
    /**
    * Sets whether is touchable or not
    *
    * @param { Bool } isTouchable is touchable if true, or not if false.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation setWindowTouchable(isTouchable: boolean): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowTouchable(isTouchable: Bool): Unit
    
    /**
    * Sets the preferred orientation for the main window.
    * It does not take effect on devices that do not support rotation with the sensor, on 2-in-1 devices or for the child window.
    *
    * @param { Orientation } orientation - The orientation config of the window
    * @throws { BusinessException } 401 - Parameter error. Possible cause: 1. Mandatory parameters are left unspecified; 
    *                                                                      2. Incorrect parameter types; 
    *                                                                      3. Parameter verification failed.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation setPreferredOrientation(orientation: Orientation): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setPreferredOrientation(orientation: Orientation): Unit
    
    /**
    * Get the avoid area
    *
    * @param { AvoidAreaType } areaType - Type of the area
    * @returns { AvoidArea } Area where the window cannot be displayed.
    * @throws { BusinessException } 401 - Parameter error. Possible cause: 1. Mandatory parameters are left unspecified; 
    *                                                                      2. Incorrect parameter types; 
    *                                                                      3. Parameter verification failed.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation getWindowAvoidArea(type: AvoidAreaType): AvoidArea
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func getWindowAvoidArea(areaType: AvoidAreaType): AvoidArea
    
    /**
    * Sets the aspect ratio of window
    *
    * @param { Float64 } ratio - The aspect ratio of window except decoration
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @throws { BusinessException } 1300004 - Unauthorized operation.
    * @relation setAspectRatio(ratio: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setAspectRatio(ratio: Float64): Unit
    
    /**
    * Resets the aspect ratio of window
    *
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @throws { BusinessException } 1300004 - Unauthorized operation.
    * @relation resetAspectRatio(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func resetAspectRatio(): Unit
    
    /**
    * Sets the specified color space.
    *
    * @param { ColorSpace } colorSpace - the specified color space.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation setWindowColorSpace(colorSpace: ColorSpace): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowColorSpace(colorSpace: ColorSpace): Unit
    
    /**
    * Minimizes the main window if the caller is the main window. The main window can be restored in the dock bar. For 2-in-1 devices, it can be restored by calling restore().
    * Hides the child window if the caller is a child window. The child window cannot be restored in the dock bar. It can be made visible again by calling showWindow().
    *
    * @throws { BusinessException } 801 - Capability not supported. Failed to call the API due to limited device capabilities.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation minimize(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public func minimize(): Unit
    
    /**
    * Obtains the set color space.
    *
    * @returns { ColorSpace } Color space obtained.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation getWindowColorSpace(): ColorSpace
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func getWindowColorSpace(): ColorSpace
    
    /**
    * Obtains snapshot of window
    *
    * @returns { PixelMap } Promise that returns no value.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation snapshot(): Promise<image.PixelMap>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func snapshot(): PixelMap
    
    /**
    * Sets whether to show the system bar of the main window.
    *
    * @param { Array<SystemBarType> } names - The set of system bar types
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation setWindowSystemBarEnable(names: Array<'status' | 'navigation'>): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowSystemBarEnable(names: Array<SystemBarType>): Unit
    
    /**
    * Set the properties of system bar
    *
    * @param { SystemBarProperties } systemBarProperties - The properties of system bar
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation setWindowSystemBarProperties(systemBarProperties: SystemBarProperties): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowSystemBarProperties(systemBarProperties: SystemBarProperties): Unit
    
    /**
    * Register the callback of keyboardHeightChange
    *
    * @param { WindowCallbackType } callbackType - The value is fixed at KeyboardHeightChange, indicating the keyboard height change event.
    * @param { Callback1Argument<UInt32> } callback - Callback used to return the current keyboard height, which is an integer, in px.
    * @throws { BusinessException } 401 - Parameter error. Possible cause: 1. Mandatory parameters are left unspecified; 
    *                                                                      2. Incorrect parameter types; 
    *                                                                      3. Parameter verification failed.
    * @relation on(type: 'keyboardHeightChange', callback: Callback<number>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func on(callbackType: WindowCallbackType, callback: Callback1Argument<UInt32>): Unit
    
    /**
    * Unregister the callback of keyboardHeightChange
    *
    * @param { WindowCallbackType } callbackType - The value is fixed at KeyboardHeightChange, indicating the keyboard height change event.
    * @param { Callback1Argument<UInt32> } callback - Callback used to return the current keyboard height, which is an integer, in px.
    * @throws { BusinessException } 401 - Parameter error. Possible cause: 1. Mandatory parameters are left unspecified; 
    *                                                                      2. Incorrect parameter types; 
    *                                                                      3. Parameter verification failed.
    * @relation off(type: 'keyboardHeightChange', callback?: Callback<number>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func off(callbackType: WindowCallbackType, callback: Callback1Argument<UInt32>): Unit
    
    /**
    * Unregister the callback of the specified event
    *
    * @param { WindowCallbackType } callbackType - the event type
    * @throws { BusinessException } 401 - Parameter error. Possible cause: 1. Mandatory parameters are left unspecified; 
    *                                                                      2. Incorrect parameter types; 
    *                                                                      3. Parameter verification failed.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func off(callbackType: WindowCallbackType): Unit
}


/**
* WindowStage
*
* @relation export interface WindowStage
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class WindowStage <: RemoteDataLite {
    /**
    * Obtains the main window of this window stage.
    *
    * @returns { Window } the main window.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation getMainWindow(): Promise<Window>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func getMainWindow(): Window
    
    /**
    * Creates a child window for this window stage.
    *
    * @param { String } name - Name of the child window.
    * @returns { Window } the child window.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation createSubWindow(name: string): Promise<Window>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func createSubWindow(name: String): Window
    
    /**
    * Obtains all the child windows of this window stage.
    *
    * @returns { Array<Window> } all the child windows.
    * @throws { BusinessException } 1300002 - This window state is abnormal.
    * @relation getSubWindow(): Promise<Array<Window>>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func getSubWindow(): Array<Window>
    
    /**
    * Loads content from a page to this window. You are advised to call this API during UIAbility startup.
    * If called multiple times, this API will destroy the existing page content (UIContent) before loading the new content. Exercise caution when using it.
    *
    * @param { String } path - Path of the page to which the content will be loaded
    * @relation loadContent(path: string, storage?: LocalStorage): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func loadContent(path: String): Unit
}


