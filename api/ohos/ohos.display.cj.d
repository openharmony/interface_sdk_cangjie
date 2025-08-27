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

package ohos.display
import ohos.base.*
import ohos.labels.*

import std.deriving.Derive
import ohos.hilog.*
import ohos.ffi.*
import std.sync.*
import std.collection.*
import ohos.graphics.color_space_manager.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import std.collection.HashMap

/**
* Rectangle
*
* @relation interface Rect
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Rect {
    /**
    * The Y-axis coordinate of the upper left vertex of the rectangle, in pixels.
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
    * The Y-axis coordinate of the upper left vertex of the rectangle, in pixels.
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
    * Width of the rectangle, in pixels.
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
    * Height of the rectangle, in pixels.
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
* Curved area rects of the waterfall display.
*
* @relation export interface WaterfallDisplayAreaRects
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class WaterfallDisplayAreaRects {
    /**
    * Indicates the size of left side curved area of the waterfall screen.
    *
    * @relation readonly left: Rect
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public let left: Rect
    
    /**
    * Indicates the size of top side curved area of the waterfall screen.
    *
    * @relation readonly top: Rect
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public let top: Rect
    
    /**
    * Indicates the size of right side curved area of the waterfall screen.
    *
    * @relation readonly right: Rect
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public let right: Rect
    
    /**
    * Indicates the size of bottom side curved area of the waterfall screen.
    *
    * @relation readonly bottom: Rect
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public let bottom: Rect
    
    /**
    * WaterfallDisplayAreaRects constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public init(
        left!: Rect,
        top!: Rect,
        right!: Rect,
        bottom!: Rect
    )
}


/**
* Cutout information of the display.
*
* @relation export interface CutoutInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class CutoutInfo {
    /**
    * Bounding rectangles of the cutout areas of the display.
    *
    * @relation readonly boundingRects: Array<Rect>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public let boundingRects: Array<Rect>
    
    /**
    * Rectangles of curved parts on each side of a waterfall display.
    *
    * @relation readonly waterfallDisplayAreaRects: WaterfallDisplayAreaRects
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public let waterfallDisplayAreaRects: WaterfallDisplayAreaRects
    
    /**
    * CutoutInfo constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public init(
        boundingRects!: Array<Rect>,
        waterfallDisplayAreaRects!: WaterfallDisplayAreaRects
    )
}


/**
* Fold Crease Region
*
* @relation export interface FoldCreaseRegion
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public class FoldCreaseRegion {
    /**
    * The display ID is used to identify the screen where the crease is located.
    *
    * @relation readonly displayId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public let displayId: UInt32
    
    /**
    * Crease Region.
    *
    * @relation readonly creaseRects: Array<Rect>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public let creaseRects: Array<Rect>
    
    /**
    * FoldCreaseRegion constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public init(
        displayId!: UInt32,
        creaseRects!: Array<Rect>
    )
}


/**
* Enum for cause of disconnect.
*
* @relation enum Orientation
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum Orientation {
    /**
    * Indicate that the display content is in portrait mode.
    *
    * @relation PORTRAIT = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Portrait |
    /**
    * Indicate that the display content is in landscape mode.
    *
    * @relation LANDSCAPE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Landscape |
    /**
    * Indicate that the display content is in the opposite direction of the portrait mode.
    *
    * @relation PORTRAIT_INVERTED = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    PortraitInverted |
    /**
    * Indicate that the display content is in the opposite direction of the landscape mode.
    *
    * @relation LANDSCAPE_INVERTED = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    LandscapeInverted |
    ...
}



/**
* Enumerates the display states.
*
* @relation export enum DisplayState
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum DisplayState {
    /**
    * Unknown.
    *
    * @relation STATE_UNKNOWN = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    StateUnknown |
    /**
    * Screen off.
    *
    * @relation STATE_OFF = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    StateOff |
    /**
    * Screen on
    *
    * @relation STATE_ON = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    StateOn |
    /**
    * Doze, but it will update for some important system messages.
    *
    * @relation STATE_DOZE = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    StateDoze |
    /**
    * Doze and not update.
    *
    * @relation STATE_DOZE_SUSPEND = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    StateDozeSuspend |
    /**
    * VR node.
    *
    * @relation STATE_VR = 5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    StateVr |
    /**
    * Screen on and not update.
    *
    * @relation STATE_ON_SUSPEND = 6
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    StateOnSuspend |
    ...
}



/**
* Enumerates the fold status.
*
* @relation export enum FoldStatus
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public enum FoldStatus {
    /**
    * Fold Status Unknown.
    *
    * @relation FOLD_STATUS_UNKNOWN = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldStatusUnknown |
    /**
    * Fold Status Expanded.
    *
    * @relation FOLD_STATUS_EXPANDED = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldStatusExpanded |
    /**
    * Fold Status Folded. For dual-fold axis devices, the first fold axis is folded, and the second fold axis is folded.
    *
    * @relation FOLD_STATUS_FOLDED = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldStatusFolded |
    /**
    * Fold Status Half Folded.
    *
    * @relation FOLD_STATUS_HALF_FOLDED = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldStatusHalfFolded |
    ...
}



/**
* Enumerates the fold display mode.
*
* @relation export enum FoldDisplayMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public enum FoldDisplayMode {
    /**
    * Unknown Display.
    *
    * @relation FOLD_DISPLAY_MODE_UNKNOWN = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldDisplayModeUnknown |
    /**
    * Full Display.
    *
    * @relation FOLD_DISPLAY_MODE_FULL = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldDisplayModeFull |
    /**
    * Main Display.
    *
    * @relation FOLD_DISPLAY_MODE_MAIN= 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldDisplayModeMain |
    /**
    * Sub Display.
    *
    * @relation FOLD_DISPLAY_MODE_SUB= 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldDisplayModeSub |
    /**
    * Coordination Display.
    *
    * @relation FOLD_DISPLAY_MODE_COORDINATION
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldDisplayModeCoordination |
    ...
}



/**
* Enumerates of listening event
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public enum ListenerType {
    /**
    * add type the event of display change
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    ListnerTypeAdd |
    /**
    * remove type the event of display change
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    ListnerTypeRemove |
    /**
    * change type the event of display change
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    ListnerTypeChange |
    /**
    * foldStatusChange type the event of display change
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    ListnerTypeFoldStatusChange |
    /**
    * foldAngleChange type the event of display change
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    ListnerTypeFoldAngleChange |
    /**
    * captureStatusChange type the event of display change
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    ListnerTypeCaptureStatusChange |
    /**
    * foldDisplayModeChange type the event of display change
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    ListnerTypeFoldDisplayModeChange |
    /**
    * availableAreaChange type the event of display change
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Window.SessionManager"
    ]
    ListnerTypeAvailableAreaChange |
    ...
}



/**
* Obtain the default display.
*
* @returns { Display } the result of display
* @throws { BusinessException } 1400001 - Invalid display or screen.
* @throws { BusinessException } 1400003 - This display manager service works abnormally.
* @relation export function getDefaultDisplaySync(): Display
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func getDefaultDisplaySync(): Display


/**
* Obtain all displays.
*
* @returns { Array<Display> } the result of all displays
* @throws { BusinessException } 1400001 - Invalid display or screen.
* @throws { BusinessException } 1400003 - This display manager service works abnormally.
* @relation function getAllDisplays(): Promise<Array<Display>>
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func getAllDisplays(): Array<Display>


/**
* Check whether the device is foldable.
*
* @returns { Bool } true means the device is foldable.
* @relation export function isFoldable(): boolean
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public func isFoldable(): Bool


/**
* Get the current fold status of the foldable device.
*
* @returns { FoldStatus } fold status of device.
* @relation export function getFoldStatus(): FoldStatus
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public func getFoldStatus(): FoldStatus


/**
* Get the display mode of the foldable device.
*
* @returns { FoldDisplayMode } display mode of the foldable device.
* @relation export function getFoldDisplayMode(): FoldDisplayMode
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public func getFoldDisplayMode(): FoldDisplayMode


/**
* Get the fold crease region in the current display mode.
*
* @returns { FoldCreaseRegion } fold crease region in the current display mode.
* @throws { BusinessException } 1400003 - This display manager service works abnormally.
* @relation export function getCurrentFoldCreaseRegion(): FoldCreaseRegion
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public func getCurrentFoldCreaseRegion(): FoldCreaseRegion


/**
* Disables all listeners for display device changes.
*
* @param {ListenerType} listenerType - Type of listening event
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public func off(listenerType: ListenerType): Unit


/**
* Register the callback for fold status changes.
*
* @param {ListenerType} listenerType - the event of fold status changes
* @param {Callback1Argument<FoldStatus>} callback - Callback used to return the current fold status of device
* @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified. 
*                                                                       2. Incorrect parameter types.
* @throws { BusinessException } 1400003 - This display manager service works abnormally.
* @relation export function on(type: 'foldStatusChange', callback: Callback<FoldStatus>): void
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public func on(listenerType: ListenerType, callback: Callback1Argument<FoldStatus>): Unit


/**
* Unregister the callback for fold status changes.
*
* @param {ListenerType} listenerType - the event of fold status change
* @param {Callback1Argument<FoldStatus>} callback - Callback used to return the current fold status of device
* @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified. 
*                                                                       2. Incorrect parameter types.
* @throws { BusinessException } 1400003 - This display manager service works abnormally.
* @relation export function off(type: 'foldStatusChange', callback?: Callback<FoldStatus>): void
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public func off(listenerType: ListenerType, callback: Callback1Argument<FoldStatus>): Unit


/**
* Register the callback for fold display mode changes.
*
* @param {ListenerType} listenerType - the event of fold display mode changes
* @param {Callback1Argument<FoldStatus>} callback - Callback used to return the current fold display mode
* @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified. 
*                                                                       2. Incorrect parameter types.
* @throws { BusinessException } 1400003 - This display manager service works abnormally.
* @relation export function on(type: 'foldDisplayModeChange', callback: Callback<FoldDisplayMode>): void
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public func on(listenerType: ListenerType, callback: Callback1Argument<FoldDisplayMode>): Unit


/**
* Unregister the callback for fold display mode changes.
*
* @param {ListenerType} listenerType - the event of fold display mode changes
* @param {Callback1Argument<FoldStatus>} callback - Callback used to return the current fold display mode
* @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified. 
*                                                                       2. Incorrect parameter types.
* @throws { BusinessException } 1400003 - This display manager service works abnormally.
* @relation export function off(type: 'foldDisplayModeChange', callback?: Callback<FoldDisplayMode>): void
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Window.SessionManager"
]
public func off(listenerType: ListenerType, callback: Callback1Argument<FoldDisplayMode>): Unit


/**
* Define properties of the display. They cannot be updated automatically.
*
* @relation export interface Display
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Display <: RemoteDataLite {
    /**
    * Display ID.
    *
    * @relation id: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop id: UInt32
    
    /**
    * Display name.
    *
    * @relation name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop name: String
    
    /**
    * Whether the display is alive.
    *
    * @relation alive: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop alive: Bool
    
    /**
    * The state of display.
    *
    * @relation state: DisplayState
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop state: DisplayState
    
    /**
    * Refresh rate, in Hz.
    *
    * @relation refreshRate: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop refreshRate: UInt32
    
    /**
    * An enumeration value for rotation degrees of the display.
    * The value 0 indicates that the screen of the display rotates clockwise by 0°.
    * The value 1 indicates that the screen of the display rotates clockwise by 90°.
    * The value 2 indicates that the screen of the display rotates clockwise by 180°.
    * The value 3 indicates that the screen of the display rotates clockwise by 270°.
    *
    * @relation rotation: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop rotation: UInt32
    
    /**
    * Display orientation.
    *
    * @relation orientation: Orientation
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop orientation: Orientation
    
    /**
    * Display width, in pixels.
    *
    * @relation width: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop width: Int32
    
    /**
    * Display height, in pixels.
    *
    * @relation height: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop height: Int32
    
    /**
    * Display density, in pixels. which is the scaling coefficient between physical pixels and logical pixels. The value for a low-resolution display is 1.0.
    *
    * @relation densityDPI: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop densityDPI: Float32
    
    /**
    * Display resolution, that is, the number of pixels per inch.
    *
    * @relation densityPixels: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop densityPixels: Float32
    
    /**
    * Text scale density of the display.
    *
    * @relation scaledDensity: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop scaledDensity: Float32
    
    /**
    * DPI on the x-axis.
    *
    * @relation xDPI: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop xDPI: Float32
    
    /**
    * DPI on the y-axis.
    *
    * @relation yDPI: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop yDPI: Float32
    
    /**
    * Obtain the cutout info of the display.
    *
    * @throws { BusinessException } 1400001 - Invalid display or screen.
    * @throws { BusinessException } 1400003 - This display manager service works abnormally.
    * @relation getCutoutInfo(): Promise<CutoutInfo>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func getCutoutInfo(): CutoutInfo
}


