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

import ohos.hilog.*
import ohos.ffi.*
import std.sync.*
import std.collection.*
import ohos.color_manager.*
import std.collection.HashMap

@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Rect {
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public Rect(
        @!APILevel[
            12,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.WindowManager.WindowManager.Core"
        ]
        public var left: Int32,
        @!APILevel[
            12,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.WindowManager.WindowManager.Core"
        ]
        public var top: Int32,
        @!APILevel[
            12,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.WindowManager.WindowManager.Core"
        ]
        public var width: UInt32,
        @!APILevel[
            12,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.WindowManager.WindowManager.Core"
        ]
        public var height: UInt32
    )
}


@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class WaterfallDisplayAreaRects {
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public WaterfallDisplayAreaRects(
        @!APILevel[
            12,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.WindowManager.WindowManager.Core"
        ]
        public let left: Rect,
        @!APILevel[
            12,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.WindowManager.WindowManager.Core"
        ]
        public let top: Rect,
        @!APILevel[
            12,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.WindowManager.WindowManager.Core"
        ]
        public let right: Rect,
        @!APILevel[
            12,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.WindowManager.WindowManager.Core"
        ]
        public let bottom: Rect
    )
}


public class CutoutInfo {
    public CutoutInfo(
        public let boundingRects: Array<Rect>,
        public let waterfallDisplayAreaRects: WaterfallDisplayAreaRects
    )
}

@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class FoldCreaseRegion {
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public FoldCreaseRegion(
        @!APILevel[
            12,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.WindowManager.WindowManager.Core"
        ]
        public let displayId: UInt32,
        @!APILevel[
            12,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.WindowManager.WindowManager.Core"
        ]
        public let creaseRects: Array<Rect>
    )
}


@!APILevel[
    19,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class DisplayPhysicalResolution {
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public DisplayPhysicalResolution(
        @!APILevel[
            19,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.WindowManager.WindowManager.Core"
        ]
        public let foldDisplayMode: FoldDisplayMode,
        @!APILevel[
            19,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.WindowManager.WindowManager.Core"
        ]
        public let physicalWidth: UInt32,
        @!APILevel[
            19,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.WindowManager.WindowManager.Core"
        ]
        public let physicalHeight: UInt32
    )
}


@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum Orientation {
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    PORTRAIT |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    LANDSCAPE |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    PORTRAIT_INVERTED |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    LANDSCAPE_INVERTED |
    ...
}


@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum DisplayState {
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    STATE_UNKNOWN |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    STATE_OFF |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    STATE_ON |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    STATE_DOZE |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    STATE_DOZE_SUSPEND |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    STATE_VR |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    STATE_ON_SUSPEND |
    ...
}


@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum FoldStatus {
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    FOLD_STATUS_UNKNOWN |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    FOLD_STATUS_EXPANDED |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    FOLD_STATUS_FOLDED |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    FOLD_STATUS_HALF_FOLDED |
    ...
}


@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum FoldDisplayMode {
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    FOLD_DISPLAY_MODE_UNKNOWN |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    FOLD_DISPLAY_MODE_FULL |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    FOLD_DISPLAY_MODE_MAIN |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    FOLD_DISPLAY_MODE_SUB |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    FOLD_DISPLAY_MODE_COORDINATION |
    ...
}


@!APILevel[
    19,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum HDRFormat {
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    NONE |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    VIDEO_HLG |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    VIDEO_HDR10 |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    VIDEO_HDR_VIVID |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    IMAGE_HDR_VIVID_DUAL |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    IMAGE_HDR_VIVID_SINGLE |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    IMAGE_HDR_ISO_DUAL |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    IMAGE_HDR_ISO_SINGLE |
    ...
    public func getValue(): UInt32
    
    public static func parse(val: UInt32): HDRFormat
}


@!APILevel[
    19,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum ListenerType <: ToString {
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    LISTNER_TYPE_ADD |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    LISTNER_TYPE_REMOVE |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    LISTNER_TYPE_CHANGE |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    LISTNER_TYPE_FOLD_STATUS_CHANGE |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    LISTNER_TYPE_FOLD_ANGLE_CHANGE |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    LISTNER_TYPE_CAPTURE_STATUS_CHANGE |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    LISTNER_TYPE_FOLD_DISPLAY_MODE_CHANGE |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    LISTNER_TYPE_AVAILABLE_AREA_CHANGE |
    ...
    public func toString(): String
}


// The value of ColorSpace in ohos.display is different from value of ColorSpace in ohos.color_manager.// The map NATIVE_TO_JS_COLOR_SPACE_TYPE_MAP is in cpp file "foundation/window/window_manager/interfaces/kits/napi/display_runtime/js_display.cpp"
extend ColorSpace {
}

/**
* @brief  getDefaultDisplaySync(): Display
*/
@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func getDefaultDisplaySync(): Display


/**
* @brief  getAllDisplays(): Promise<Array<Display>>
*/
@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func getAllDisplays(): Array<Display>


/**
* @brief  hasPrivateWindow(displayId: number): boolean
*/
@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func hasPrivateWindow(displayId: UInt32): Bool


/**
* @brief  isFoldable(): boolean
*/
@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func isFoldable(): Bool


/**
* @brief  setFoldDisplayMode(mode: FoldDisplayMode): void
*/
@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func setFoldDisplayMode(mode: FoldDisplayMode): Unit


/**
* Check whether the device is taking a screenshot, projection, or recording.
*
* @return true if the device is taking a screenshot, projection, or recording, else false
* @since 14
*/
@!APILevel[
    19,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func isCaptured(): Bool


/**
* @brief  getFoldStatus(): FoldStatus
*/
@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func getFoldStatus(): FoldStatus


/**
* @brief  getFoldDisplayMode(): FoldDisplayMode
*/
@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func getFoldDisplayMode(): FoldDisplayMode


/**
* @brief  getCurrentFoldCreaseRegion(): FoldCreaseRegion
*/
@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func getCurrentFoldCreaseRegion(): FoldCreaseRegion


/**
* Obtaining a display mode of a current folding device and a corresponding physical screen resolution information object.
*
* @return All current DisplayPhysicalResolution objects
* @since 14
*/
@!APILevel[
    19,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func getAllDisplayPhysicalResolution(): Array<DisplayPhysicalResolution>


/**
* Disables all listeners for display device changes.
*
* @param `type`: Type of listening event
* @since 14
*/
@!APILevel[
    19,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func off(`type`: ListenerType): Unit


/**
* Enable listening to display device changes.
*
* @param `type`: Type of listening event
* @param callback: Callback function
* @since 14
*/
@!APILevel[
    19,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func on(`type`: ListenerType, callback: Callback1Argument<UInt64>): Unit


/**
* Disable listening to display device changes.
*
* @param `type`: Type of listening event
* @param callback: Callback function
* @since 14
*/
@!APILevel[
    19,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func off(`type`: ListenerType, callback: Callback1Argument<UInt64>): Unit


/**
* Enable listening for changes in the folding state of foldable devices.
*
* @param `type`: Type of listening event
* @param callback: Callback function
* @since 14
*/
@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func on(`type`: ListenerType, callback: Callback1Argument<FoldStatus>): Unit


/**
* Disable listening for changes in the folding state of foldable devices.
*
* @param `type`: Type of listening events
* @param callback: Callback function
* @since 14
*/
@!APILevel[
    19,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func off(`type`: ListenerType, callback: Callback1Argument<FoldStatus>): Unit


/**
* Enable listening for changes in the folding angle of foldable devices.
* @param `type`: Type of listening events
* @param callback: Callback function
* @since 14
*/
@!APILevel[
    19,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func on(`type`: ListenerType, callback: Callback1Argument<Array<Float32>>): Unit


/**
* Disable listening for changes in the folding angle of foldable devices.
* @param `type`: Type of listening events
* @param callback: Callback function
* @since 14
*/
@!APILevel[
    19,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func off(`type`: ListenerType, callback: Callback1Argument<Array<Float32>>): Unit


/**
* Enable listening for changes in screen capture, screen casting, and screen recording states.
* @param `type`: Type of listening events
* @param callback: Callback function
* @since 14
*/
@!APILevel[
    19,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func on(`type`: ListenerType, callback: Callback1Argument<Bool>): Unit


/**
* Disable listening for changes in screen capture, screen casting, and screen recording states.
* @param `type`: Type of listening events
* @param callback: Callback function
* @since 14
*/
@!APILevel[
    19,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func off(`type`: ListenerType, callback: Callback1Argument<Bool>): Unit


/**
* Enable listening for changes in the display mode of foldable devices.
* @param `type`: Type of listening events
* @param callback: Callback function
* @since 14
*/
@!APILevel[
    19,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func on(`type`: ListenerType, callback: Callback1Argument<FoldDisplayMode>): Unit


/**
* Disable listening for changes in the display mode of foldable devices.
* @param `type`: Type of listening events
* @param callback: Callback function
* @since 14
*/
@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func off(`type`: ListenerType, callback: Callback1Argument<FoldDisplayMode>): Unit


/**
* Disable listening for changes in the display mode of foldable devices.
* @param callbackType: Type of listening events
* @param callback: Callback function
* @since 14
*/
@!APILevel[
    19,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public func offFoldDisplayModeChange(callbackType: String, callback: Callback1Argument<FoldDisplayMode>): Unit


@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Display <: RemoteDataLite {
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop id: UInt32
    
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop name: String
    
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop alive: Bool
    
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop state: DisplayState
    
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop refreshRate: UInt32
    
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop rotation: UInt32
    
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop orientation: Orientation
    
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop width: Int32
    
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop height: Int32
    
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop densityDPI: Float32
    
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop densityPixels: Float32
    
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop scaledDensity: Float32
    
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop xDPI: Float32
    
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop yDPI: Float32
    
    /**
    * All color gamut types supported by the display device
    *
    * @since 14
    */
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop colorSpaces: Array<ColorSpace>
    
    /**
    * All HDR formats supported by the display device
    *
    * @since 14
    */
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop hdrFormats: Array<HDRFormat>
    
    /**
    * The width of the available area of ​​the screen on 2in1 devices, in px
    *
    * @since 14
    */
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop availableWidth: UInt32
    
    /**
    * The height of the available area of ​​the screen on 2in1 devices, in px
    *
    * @since 14
    */
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop availableHeight: UInt32
    
    /**
    * @brief  getCutoutInfo(): Promise<CutoutInfo>
    */
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func getCutoutInfo(): CutoutInfo
    
    /**
    * Get the current available area of the 2-in-1 device's screen.
    *
    * @return The current screen's available rectangular area.
    * @since 14
    */
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public func getAvailableArea(): Rect
}


