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

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Size {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var width: UInt32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var height: UInt32
    
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

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public class TitleButtonRect {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public var right: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public var top: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public var width: UInt32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public var height: UInt32
    
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

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Configuration {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var name: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var windowType: WindowType
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var ctx: BaseContext
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var displayId: Int64 = -1
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var parentId: Int64 = -1
    
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

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Rect {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var left: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var top: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var width: UInt32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var height: UInt32
    
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

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class WindowProperties {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var windowRect: Rect
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var drawableRect: Rect
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var winType: WindowType
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var isFullScreen: Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var isLayoutFullScreen: Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var focusable: Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var touchable: Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var brightness: Float32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var isKeepScreenOn: Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var isPrivacyMode: Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var isTransparent: Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var id: UInt32
    
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

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class AvoidArea {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var visible: Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var leftRect: Rect
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var topRect: Rect
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var rightRect: Rect
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var bottomRect: Rect
    
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

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class SystemBarProperties {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var statusBarColor: String = "#66000000"
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var isStatusBarLightIcon: Bool = false
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var statusBarContentColor: String = "#E5FFFFFF"
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var navigationBarColor: String = "#66000000"
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var isNavigationBarLightIcon: Bool = false
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var navigationBarContentColor: String = "#E5FFFFFF"
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public var enableStatusBarAnimation: Bool = false
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public var enableNavigationBarAnimation: Bool = false
    
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

 {
    TypeApp |
    TypeFloat |
    TypeDialog |
    ...
}

 {
    
    
    
}

 {
    Unspecified |
    Portrait |
    Landscape |
    PortraitInverted |
    LandscapeInverted |
    AutoRotation |
    AutoRotationPortrait |
    AutoRotationLandscape |
    AutoRotationRestricted |
    AutoRotationPortraitRestricted |
    AutoRotationLandscapeRestricted |
    Locked |
    ...
}

 {
    
    
    
}

 {
    TypeSystem |
    TypeCutout |
    TypeSystemGesture |
    TypeKeyboard |
    TypeNavigationIndicator |
    ...
}

 {
    
    
    
}

 {
    WindowShown |
    WindowActive |
    WindowInactive |
    WindowHidden |
    WindowDestroyed |
    ...
}

 {
    
    
    
}

 {
    Shown |
    Active |
    Inactive |
    Hidden |
    Resumed |
    Paused |
    ...
}

 {
    
    
    
}

 {
    Undefined |
    FullScreen |
    Maximize |
    Minimize |
    Floating |
    SplitScreen |
    ...
}

 {
    
    
    
}

 {
    Default |
    WideGamut |
    ...
}

 {
    
    
    
}

 {
    WindowStageEvent |
    WindowSizeChange |
    WindowAvoidAreaChange |
    KeyboardHeightChange |
    TouchOutside |
    WindowVisibilityChange |
    NoInteractionDetected |
    Screenshot |
    DialogTargetTouch |
    WindowEvent |
    WindowStatusChange |
    SubWindowClose |
    WindowTitleButtonRectChange |
    WindowRectChange |
    ...
}

 {
    
    
    
}

 {
    Status |
    Navigation |
    ...
}

 {
    
    
    
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func findWindow(name: String): Window

@!APILevel[
    21,
    permission: "ohos.permission.SYSTEM_FLOAT_WINDOW",
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func createWindow(config: Configuration): Window

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func getLastWindow(ctx: BaseContext): Window

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public func shiftAppWindowFocus(sourceWindowId: Int32, targetWindowId: Int32): Unit

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Window <: RemoteDataLite {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func showWindow(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func moveWindowTo(x: Int32, y: Int32): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func resize(width: UInt32, height: UInt32): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func getWindowProperties(): WindowProperties
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func destroyWindow(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowLayoutFullScreen(isLayoutFullScreen: Bool): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func isWindowSupportWideGamut(): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func isWindowShowing(): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowBackgroundColor(color: String): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowBrightness(brightness: Float32): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowFocusable(isFocusable: Bool): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowKeepScreenOn(isKeepScreenOn: Bool): Unit
    
    @!APILevel[
        21,
        permission: "ohos.permission.PRIVACY_WINDOW",
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowPrivacyMode(isPrivacyMode: Bool): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowTouchable(isTouchable: Bool): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setPreferredOrientation(orientation: Orientation): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func getWindowAvoidArea(areaType: AvoidAreaType): AvoidArea
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setAspectRatio(ratio: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func resetAspectRatio(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowColorSpace(colorSpace: ColorSpace): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public func minimize(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func getWindowColorSpace(): ColorSpace
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func snapshot(): PixelMap
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowSystemBarEnable(names: Array<SystemBarType>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func setWindowSystemBarProperties(systemBarProperties: SystemBarProperties): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func on(callbackType: WindowCallbackType, callback: Callback1Argument<UInt32>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func off(callbackType: WindowCallbackType, callback: Callback1Argument<UInt32>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func off(callbackType: WindowCallbackType): Unit
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class WindowStage <: RemoteDataLite {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func getMainWindow(): Window
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func createSubWindow(name: String): Window
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func getSubWindow(): Array<Window>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func loadContent(path: String): Unit
}

