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

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package ohos.multimedia.camera
import ohos.app.ability.ui_ability.UIAbilityContext
import ohos.labels.APILevel

import ohos.graphics.color_space_manager.ColorSpace
import ohos.labels.*
import ohos.ffi.*
import std.deriving.Derive
import ohos.hilog.*
import ohos.business_exception.*
import ohos.callback_invoke.*
import std.collection.*
import std.sync.*

/**
* Creates a CameraManager instance.
*
* @param { UIAbilityContext } context - Current application context.
* @returns { CameraManager } CameraManager instance.
* @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
* @throws { BusinessException } 7400201 - Camera service fatal error.
* @relation function getCameraManager(context: Context): CameraManager
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public func getCameraManager(context: UIAbilityContext): CameraManager


/**
* Point coordinates are used for focus and exposure configuration.
*
* @relation interface Point
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class Point {
    /**
    * x co-ordinate
    *
    * @relation x: double
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var x: Float64
    
    /**
    * y co-ordinate
    *
    * @relation y: double
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var y: Float64
    
    /**
    * Point constructor.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public init(x: Float64, y: Float64)
}


/**
* Enum for exposure mode.
*
* @relation enum ExposureMode
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum ExposureMode {
    /**
    * Lock exposure mode.
    *
    * @relation EXPOSURE_MODE_LOCKED = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    ExposureModeLocked |
    /**
    * Auto exposure mode. Exposure area center point can be set by AutoExposure.setMeteringPoint interface.
    *
    * @relation EXPOSURE_MODE_AUTO = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    ExposureModeAuto |
    /**
    * Continuous automatic exposure.
    *
    * @relation EXPOSURE_MODE_CONTINUOUS_AUTO = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    ExposureModeContinuousAuto |
    ...
}



/**
* AutoExposureQuery object.
*
* @relation interface AutoExposureQuery
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface AutoExposureQuery {
    /**
    * Checks whether a specified exposure mode is supported.
    *
    * @param { ExposureMode } aeMode - Exposure mode
    * @returns { Bool } Is the exposure mode supported.
    * @throws { BusinessException } 7400103 - Session not config, only throw in session usage.
    * @relation isExposureModeSupported(aeMode: ExposureMode): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func isExposureModeSupported(aeMode: ExposureMode): Bool
    
    /**
    * Query the exposure compensation range.
    *
    * @returns { Array<Float64> } The array of compensation range.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation getExposureBiasRange(): Array<double>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getExposureBiasRange(): Array<Float64>
}


/**
* AutoExposure object.
*
* @relation interface AutoExposure extends AutoExposureQuery
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface AutoExposure <: AutoExposureQuery {
    /**
    * Gets current exposure mode.
    *
    * @returns { ExposureMode } The current exposure mode.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation getExposureMode(): ExposureMode
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getExposureMode(): ExposureMode
    
    /**
    * Sets Exposure mode.
    *
    * @param { ExposureMode } aeMode - Exposure mode
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation setExposureMode(aeMode: ExposureMode): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setExposureMode(aeMode: ExposureMode): Unit
    
    /**
    * Gets current metering point.
    *
    * @returns { Point } The current metering point.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation getMeteringPoint(): Point
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getMeteringPoint(): Point
    
    /**
    * Set the center point of the metering area.
    *
    * @param { Point } point - metering point
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation setMeteringPoint(point: Point): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setMeteringPoint(point: Point): Unit
    
    /**
    * Set exposure compensation.
    *
    * @param { Float64 } exposureBias - Exposure compensation
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation setExposureBias(exposureBias: double): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setExposureBias(exposureBias: Float64): Unit
    
    /**
    * Query the exposure value.
    *
    * @returns { Float64 } The exposure value.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation getExposureValue(): double
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getExposureValue(): Float64
}


/**
* Color Management Query object.
*
* @relation interface ColorManagementQuery
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface ColorManagementQuery {
    /**
    * Gets the supported color space types.
    *
    * @returns { Array<colorSpaceManager.ColorSpace> } The array of the supported color space for the session.
    * @throws { BusinessException } 7400103 - Session not config, only throw in session usage.
    * @relation getSupportedColorSpaces(): Array<colorSpaceManager.ColorSpace>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getSupportedColorSpaces(): Array<ColorSpace>
}


/**
* Color Management object.
*
* @relation interface ColorManagement extends ColorManagementQuery
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface ColorManagement <: ColorManagementQuery {
    /**
    * Sets a color space for the session.
    *
    * @param { colorSpaceManager.ColorSpace } colorSpace - The type of color space.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400102 - The colorSpace does not match the format.
    * @throws { BusinessException } 7400103 - Session not config.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation setColorSpace(colorSpace: colorSpaceManager.ColorSpace): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setColorSpace(colorSpace: ColorSpace): Unit
    
    /**
    * Gets the specific color space type.
    *
    * @returns { colorSpaceManager.ColorSpace } Current color space.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation getActiveColorSpace(): colorSpaceManager.ColorSpace
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getActiveColorSpace(): ColorSpace
}


/**
* Enum for flash mode.
*
* @relation enum FlashMode
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum FlashMode {
    /**
    * Close mode.
    *
    * @relation FLASH_MODE_CLOSE = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FlashModeClose |
    /**
    * Open mode.
    *
    * @relation FLASH_MODE_OPEN = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FlashModeOpen |
    /**
    * Auto mode.
    *
    * @relation FLASH_MODE_AUTO = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FlashModeAuto |
    /**
    * Always open mode.
    *
    * @relation FLASH_MODE_ALWAYS_OPEN = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FlashModeAlwaysOpen |
    ...
}



/**
* Flash Query object.
*
* @relation interface FlashQuery
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface FlashQuery {
    /**
    * Check if device has flash light.
    *
    * @returns { Bool } The flash light support status.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation hasFlash(): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func hasFlash(): Bool
    
    /**
    * Checks whether a specified flash mode is supported.
    *
    * @param { FlashMode } flashMode - Flash mode
    * @returns { Bool } Is the flash mode supported.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation isFlashModeSupported(flashMode: FlashMode): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func isFlashModeSupported(flashMode: FlashMode): Bool
}


/**
* Flash object.
*
* @relation interface Flash extends FlashQuery
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface Flash <: FlashQuery {
    /**
    * Sets flash mode.
    *
    * @param { FlashMode } flashMode - Target flash mode.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation setFlashMode(flashMode: FlashMode): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setFlashMode(flashMode: FlashMode): Unit
    
    /**
    * Gets current flash mode.
    *
    * @returns { FlashMode } The current flash mode.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation getFlashMode(): FlashMode
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getFlashMode(): FlashMode
}


/**
* Enum for focus state.
*
* @relation enum FocusState
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum FocusState {
    /**
    * Scan state.
    *
    * @relation FOCUS_STATE_SCAN = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusStateScan |
    /**
    * Focused state.
    *
    * @relation FOCUS_STATE_FOCUSED = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusStateFocused |
    /**
    * Unfocused state.
    *
    * @relation FOCUS_STATE_UNFOCUSED = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusStateUnfocused |
    ...
}



/**
* Enum for focus mode.
*
* @relation enum FocusMode
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum FocusMode {
    /**
    * Manual mode.
    *
    * @relation FOCUS_MODE_MANUAL = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusModeManual |
    /**
    * Continuous auto mode.
    *
    * @relation FOCUS_MODE_CONTINUOUS_AUTO = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusModeContinuousAuto |
    /**
    * Auto mode.
    *
    * @relation FOCUS_MODE_AUTO = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusModeAuto |
    /**
    * Locked mode.
    *
    * @relation FOCUS_MODE_LOCKED = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusModeLocked |
    ...
}



/**
* Focus Query object.
*
* @relation interface FocusQuery
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface FocusQuery {
    /**
    * Checks whether a specified focus mode is supported.
    *
    * @param { FocusMode } afMode - Focus mode.
    * @returns { Bool } Is the focus mode supported.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation isFocusModeSupported(afMode: FocusMode): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func isFocusModeSupported(afMode: FocusMode): Bool
}


/**
* Focus object.
*
* @relation interface Focus extends FocusQuery
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface Focus <: FocusQuery {
    /**
    * Sets focus mode.
    *
    * @param { FocusMode } afMode - Target focus mode.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation setFocusMode(afMode: FocusMode): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setFocusMode(afMode: FocusMode): Unit
    
    /**
    * Gets current focus mode.
    *
    * @returns { FocusMode } The current focus mode.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation getFocusMode(): FocusMode
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getFocusMode(): FocusMode
    
    /**
    * Sets focus point.
    *
    * @param { Point } point - Target focus point.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation setFocusPoint(point: Point): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setFocusPoint(point: Point): Unit
    
    /**
    * Gets current focus point.
    *
    * @returns { Point } Used to get the current focus. Failure of the interface call will return the
    * corresponding error code, which is of type CameraErrorCode.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation getFocusPoint(): Point
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getFocusPoint(): Point
    
    /**
    * Gets current focal length.
    *
    * @returns { Float64 } The current focal point.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation getFocalLength(): double
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getFocalLength(): Float64
}


/**
* Enum for video stabilization mode.
*
* @relation enum VideoStabilizationMode
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum VideoStabilizationMode {
    /**
    * Turn off video stablization.
    *
    * @relation OFF = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Off |
    /**
    * LOW mode provides basic stabilization effect.
    *
    * @relation LOW = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Low |
    /**
    * MIDDLE mode means algorithms can achieve better effects than LOW mode.
    *
    * @relation MIDDLE = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Middle |
    /**
    * HIGH mode means algorithms can achieve better effects than MIDDLE mode.
    *
    * @relation HIGH = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    High |
    /**
    * The stabilization algorithm is selected automatically. Selection of the stabilization algorithm is performed automatically.
    *
    * @relation AUTO = 4
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Auto |
    ...
}



/**
* Stabilization Query object.
*
* @relation interface StabilizationQuery
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface StabilizationQuery {
    /**
    * Check whether the specified video stabilization mode is supported.
    *
    * @param { VideoStabilizationMode } vsMode - Video Stabilization mode.
    * @returns { Bool } Is video stabilization mode supported.
    * @throws { BusinessException } 7400103 - Session not config, only throw in session usage.
    * @relation isVideoStabilizationModeSupported(vsMode: VideoStabilizationMode): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func isVideoStabilizationModeSupported(vsMode: VideoStabilizationMode): Bool
}


/**
* Stabilization object.
*
* @relation interface Stabilization extends StabilizationQuery
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface Stabilization <: StabilizationQuery {
    /**
    * Query the video stabilization mode currently in use.
    *
    * @returns { VideoStabilizationMode } The current video stabilization mode.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation getActiveVideoStabilizationMode(): VideoStabilizationMode
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getActiveVideoStabilizationMode(): VideoStabilizationMode
    
    /**
    * Set video stabilization mode.
    *
    * @param { VideoStabilizationMode } mode - video stabilization mode to set.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation setVideoStabilizationMode(mode: VideoStabilizationMode): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setVideoStabilizationMode(mode: VideoStabilizationMode): Unit
}


/**
* SmoothZoomInfo object
*
* @relation interface SmoothZoomInfo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class SmoothZoomInfo {
    /**
    * The duration of smooth zoom.
    *
    * @relation duration: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var duration: Int32
}


/**
* Enum for smooth zoom mode.
*
* @relation enum SmoothZoomMode
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum SmoothZoomMode {
    /**
    * Normal zoom mode.
    *
    * @relation NORMAL = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Normal |
    ...
}



/**
* Zoom query object.
*
* @relation interface ZoomQuery
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface ZoomQuery {
    /**
    * Gets all supported zoom ratio range.
    *
    * @returns { Array<Float64> } The zoom ratio range.
    * @throws { BusinessException } 7400103 - Session not config, only throw in session usage.
    * @relation getZoomRatioRange(): Array<double>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getZoomRatioRange(): Array<Float64>
}


/**
* Zoom object.
*
* @relation interface Zoom extends ZoomQuery
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface Zoom <: ZoomQuery {
    /**
    * Sets zoom ratio.
    *
    * @param { Float64 } zoomRatio - Zoom ratio.
    * @throws { BusinessException } 7400103 - Session not config.
    * @relation setZoomRatio(zoomRatio: double): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setZoomRatio(zoomRatio: Float64): Unit
    
    /**
    * Gets zoom ratio.
    *
    * @returns { Float64 } The zoom ratio value.
    * @throws { BusinessException } 7400103 - Session not config.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation getZoomRatio(): double
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getZoomRatio(): Float64
    
    /**
    * Sets target zoom ratio by smooth method.
    *
    * @param { Float64 } targetRatio - Target zoom ratio.
    * @param { SmoothZoomMode } mode - Smooth zoom mode.
    * @relation setSmoothZoom(targetRatio: double, mode?: SmoothZoomMode): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setSmoothZoom(targetRatio: Float64, mode: SmoothZoomMode): Unit
    
    /**
    * Sets target zoom ratio by smooth method.
    *
    * @param { Float64 } targetRatio - Target zoom ratio.
    * @relation setSmoothZoom(targetRatio: double, mode?: SmoothZoomMode): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setSmoothZoom(targetRatio: Float64): Unit
}


/**
* Rectangle definition.
*
* @relation interface Rect
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class Rect {
    /**
    * X coordinator of top left point.
    *
    * @relation topLeftX: double
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var topLeftX: Float64
    
    /**
    * Y coordinator of top left point.
    *
    * @relation topLeftY: double
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var topLeftY: Float64
    
    /**
    * Width of this rectangle.
    *
    * @relation width: double
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var width: Float64
    
    /**
    * Height of this rectangle.
    *
    * @relation height: double
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var height: Float64
}


/**
* Enum for torch mode.
*
* @relation enum TorchMode
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum TorchMode {
    /**
    * The device torch is always off.
    *
    * @relation OFF = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Off |
    /**
    * The device torch is always on.
    *
    * @relation ON = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    On |
    /**
    * The device continuously monitors light levels and uses the torch when necessary.
    *
    * @relation AUTO = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Auto |
    ...
}



/**
* Enumerates the image rotation angles.
*
* @relation enum ImageRotation
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum ImageRotation {
    /**
    * The capture image rotates 0 degrees.
    *
    * @relation ROTATION_0 = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Rotation0 |
    /**
    * The capture image rotates 90 degrees.
    *
    * @relation ROTATION_90 = 90
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Rotation90 |
    /**
    * The capture image rotates 180 degrees.
    *
    * @relation ROTATION_180 = 180
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Rotation180 |
    /**
    * The capture image rotates 270 degrees.
    *
    * @relation ROTATION_270 = 270
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Rotation270 |
    ...
}



/**
* Enum for camera status.
*
* @relation enum CameraStatus
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum CameraStatus {
    /**
    * Appear status.
    *
    * @relation CAMERA_STATUS_APPEAR = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraStatusAppear |
    /**
    * Disappear status.
    *
    * @relation CAMERA_STATUS_DISAPPEAR = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraStatusDisappear |
    /**
    * Available status.
    *
    * @relation CAMERA_STATUS_AVAILABLE = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraStatusAvailable |
    /**
    * Unavailable status.
    *
    * @relation CAMERA_STATUS_UNAVAILABLE = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraStatusUnavailable |
    ...
}



/**
* Torch status info.
*
* @relation interface TorchStatusInfo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class TorchStatusInfo {
    /**
    * is torch available
    *
    * @relation readonly isTorchAvailable: boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let isTorchAvailable: Bool
    
    /**
    * is torch active
    *
    * @relation readonly isTorchActive: boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let isTorchActive: Bool
    
    /**
    * the current torch brightness level.
    *
    * @relation readonly torchLevel: double
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let torchLevel: Float64
}


/**
* Frame rate range.
*
* @relation interface FrameRateRange
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class FrameRateRange {
    /**
    * Min frame rate.
    *
    * @relation readonly min: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let min: Int32
    
    /**
    * Max frame rate.
    *
    * @relation readonly max: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let max: Int32
}


/**
* Size parameter.
*
* @relation interface Size
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class Size {
    /**
    * Height.
    *
    * @relation width: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var width: UInt32
    
    /**
    * Width.
    *
    * @relation height: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var height: UInt32
}


/**
* Profile for camera streams.
*
* @relation interface Profile
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public open class Profile {
    /**
    * Camera format.
    *
    * @relation readonly format: CameraFormat
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let format: CameraFormat
    
    /**
    * Picture size.
    *
    * @relation readonly size: Size
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let size: Size
}


/**
* Video profile.
*
* @relation interface VideoProfile extends Profile
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class VideoProfile <: Profile {
    /**
    * Frame rate in unit fps (frames per second).
    *
    * @relation readonly frameRateRange: FrameRateRange
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let frameRateRange: FrameRateRange
}


/**
* Metadata object type.
*
* @relation enum MetadataObjectType
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum MetadataObjectType {
    /**
    * Face detection type.
    *
    * @relation FACE_DETECTION = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FaceDetection |
    ...
}



/**
* Camera output capability.
*
* @relation interface CameraOutputCapability
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CameraOutputCapability {
    /**
    * Preview profiles.
    *
    * @relation readonly previewProfiles: Array<Profile>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let previewProfiles: Array<Profile>
    
    /**
    * Photo profiles.
    *
    * @relation readonly photoProfiles: Array<Profile>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let photoProfiles: Array<Profile>
    
    /**
    * Video profiles.
    *
    * @relation readonly videoProfiles: Array<VideoProfile>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let videoProfiles: Array<VideoProfile>
    
    /**
    * All the supported metadata Object Types.
    *
    * @relation readonly supportedMetadataObjectTypes: Array<MetadataObjectType>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let supportedMetadataObjectTypes: Array<MetadataObjectType>
}


/**
* Enum for fold status.
*
* @relation enum FoldStatus
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum FoldStatus {
    /**
    * Non-foldable status.
    *
    * @relation NON_FOLDABLE = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    NonFoldable |
    /**
    * Expanded status.
    *
    * @relation EXPANDED = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Expanded |
    /**
    * Folded status.
    *
    * @relation FOLDED = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Folded |
    ...
}



/**
* Fold status info.
*
* @relation interface FoldStatusInfo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class FoldStatusInfo {
    /**
    * Gets supported camera devices under the current fold status.
    *
    * @relation readonly supportedCameras: Array<CameraDevice>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let supportedCameras: Array<CameraDevice>
    
    /**
    * Current fold status.
    *
    * @relation readonly foldStatus: FoldStatus
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let foldStatus: FoldStatus
}


/**
* Enum for camera connection type.
*
* @relation enum ConnectionType
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum ConnectionType {
    /**
    * Built-in camera.
    *
    * @relation CAMERA_CONNECTION_BUILT_IN = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraConnectionBuiltIn |
    /**
    * Camera connected using USB
    *
    * @relation CAMERA_CONNECTION_USB_PLUGIN = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraConnectionUsbPlugin |
    /**
    * Remote camera
    *
    * @relation CAMERA_CONNECTION_REMOTE = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraConnectionRemote |
    ...
}



/**
* Enum for camera format type.
*
* @relation enum CameraFormat
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum CameraFormat {
    /**
    * YCBCR P010 Format.
    *
    * @relation CAMERA_FORMAT_YCBCR_P010 = 2001
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraFormatYcbcrP010 |
    /**
    * YCRCB P010 Format.
    *
    * @relation CAMERA_FORMAT_YCRCB_P010 = 2002
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraFormatYcrcbP010 |
    /**
    * HEIC Format.
    *
    * @relation CAMERA_FORMAT_HEIC = 2003
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraFormatHeic |
    /**
    * JPEG Format.
    *
    * @relation CAMERA_FORMAT_JPEG = 2000
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraFormatJpeg |
    /**
    * YUV 420 Format.
    *
    * @relation CAMERA_FORMAT_YUV_420_SP = 1003
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraFormatYuv420Sp |
    /**
    * RGBA 8888 Format.
    *
    * @relation CAMERA_FORMAT_RGBA_8888 = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraFormatRgba8888 |
    ...
}



/**
* Camera device object.
*
* @relation interface CameraDevice
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CameraDevice {
    /**
    * Camera ID attribute.
    *
    * @relation readonly cameraId: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let cameraId: String
    
    /**
    * Camera position attribute.
    *
    * @relation readonly cameraPosition: CameraPosition
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let cameraPosition: CameraPosition
    
    /**
    * Camera type attribute.
    *
    * @relation readonly cameraType: CameraType
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let cameraType: CameraType
    
    /**
    * Camera connection type attribute.
    *
    * @relation readonly connectionType: ConnectionType
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let connectionType: ConnectionType
    
    /**
    * Camera sensor orientation attribute.
    *
    * @relation readonly cameraOrientation: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let cameraOrientation: UInt32
}


/**
* Camera status info.
*
* @relation interface CameraStatusInfo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CameraStatusInfo {
    /**
    * Camera instance.
    *
    * @relation camera: CameraDevice
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var camera: CameraDevice
    
    /**
    * Current camera status.
    *
    * @relation status: CameraStatus
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var status: CameraStatus
}


/**
* camera event type.
*/
@Derive[Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum CameraEvents {
    /**
    * camera error event.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraError |
    /**
    * camera status event.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraStatus |
    /**
    * fold status change event.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FoldStatusChange |
    /**
    * torch status change event.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    TorchStatusChange |
    /**
    * frame start event.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FrameStart |
    /**
    * frame end event.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FrameEnd |
    /**
    * capture start withInfo event.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CaptureStartWithInfo |
    /**
    * frame shutter event.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FrameShutter |
    /**
    * capture end event.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CaptureEnd |
    /**
    * frame shutter end event.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FrameShutterEnd |
    /**
    * capture ready event.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CaptureReady |
    /**
    * estimated capture duration event.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    EstimatedCaptureDuration |
    /**
    * metadata objects available event.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    MetadataObjectsAvailable |
    /**
    * focus state change event.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusStateChange |
    /**
    * smooth zoom info available event.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    SmoothZoomInfoAvailable |
    ...
}



/**
* Enum for camera position.
*
* @relation enum CameraPosition
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum CameraPosition {
    /**
    * Unspecified position.
    *
    * @relation CAMERA_POSITION_UNSPECIFIED = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraPositionUnspecified |
    /**
    * Back position.
    *
    * @relation CAMERA_POSITION_BACK = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraPositionBack |
    /**
    * Front position.
    *
    * @relation CAMERA_POSITION_FRONT = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraPositionFront |
    ...
}



/**
* Enum for camera type.
*
* @relation enum CameraType
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum CameraType {
    /**
    * Default camera type
    *
    * @relation CAMERA_TYPE_DEFAULT = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraTypeDefault |
    /**
    * Wide camera
    *
    * @relation CAMERA_TYPE_WIDE_ANGLE = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraTypeWideAngle |
    /**
    * Ultra wide camera
    *
    * @relation CAMERA_TYPE_ULTRA_WIDE = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraTypeUltraWide |
    /**
    * Telephoto camera
    *
    * @relation CAMERA_TYPE_TELEPHOTO = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraTypeTelephoto |
    /**
    * True depth camera
    *
    * @relation CAMERA_TYPE_TRUE_DEPTH = 4
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraTypeTrueDepth |
    ...
}



/**
* Enumerates the camera scene modes.
*
* @relation enum SceneMode
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum SceneMode {
    /**
    * Normal photo mode.
    *
    * @relation NORMAL_PHOTO = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    NormalPhoto |
    /**
    * Normal video mode.
    *
    * @relation NORMAL_VIDEO = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    NormalVideo |
    /**
    * Secure camera mode.
    *
    * @relation SECURE_PHOTO = 12
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    SecurePhoto |
    ...
}



/**
* Enumerates the image quality levels.
*
* @relation enum QualityLevel
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum QualityLevel {
    /**
    * High image quality.
    *
    * @relation QUALITY_LEVEL_HIGH = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    QualityLevelHigh |
    /**
    * Medium image quality.
    *
    * @relation QUALITY_LEVEL_MEDIUM = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    QualityLevelMedium |
    /**
    * Low image quality.
    *
    * @relation QUALITY_LEVEL_LOW = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    QualityLevelLow |
    ...
}



/**
* Photo capture location
*
* @relation interface Location
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class Location {
    /**
    * Latitude.
    *
    * @relation latitude: double
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var latitude: Float64
    
    /**
    * Longitude.
    *
    * @relation longitude: double
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var longitude: Float64
    
    /**
    * Altitude.
    *
    * @relation altitude: double
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var altitude: Float64
    
    /**
    * Location constructor.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public init(latitude: Float64, longitude: Float64, altitude: Float64)
}


/**
* Photo capture options to set.
*
* @relation interface PhotoCaptureSetting
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class PhotoCaptureSetting {
    /**
    * Photo image quality.
    *
    * @relation quality?: QualityLevel
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var quality: QualityLevel
    
    /**
    * Photo rotation.
    *
    * @relation rotation?: ImageRotation
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var rotation: ImageRotation
    
    /**
    * Photo location.
    *
    * @relation location?: Location
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var location: ?Location
    
    /**
    * Mirror enable switch (default off).
    * It is necessary to utilize the function isMirrorSupported to ascertain whether it is supported
    * prior to its implementation.
    *
    * @relation mirror?: boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var mirror: Bool
    
    /**
    * PhotoCaptureSetting constructor.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public init(
        quality!: QualityLevel = QualityLevel.QualityLevelLow,
        rotation!: ImageRotation = ImageRotation.Rotation0,
        location!: ?Location = None,
        mirror!: Bool = false
    )
}


/**
* Enumerates the camera video codec type.
*
* @relation enum VideoCodecType
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum VideoCodecType {
    /**
    * Video encoding type AVC.
    *
    * @relation AVC = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Avc |
    /**
    * Video encoding type HEVC.
    *
    * @relation HEVC = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Hevc |
    ...
}



/**
* Capture start info.
*
* @relation interface CaptureStartInfo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CaptureStartInfo {
    /**
    * Capture id.
    *
    * @relation captureId: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var captureId: Int32
    
    /**
    * Time(in milliseconds) is the shutter time for the photo.
    *
    * @relation time: long
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var time: Int64
}


/**
* Frame shutter callback info.
*
* @relation interface FrameShutterInfo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class FrameShutterInfo {
    /**
    * Capture id.
    *
    * @relation captureId: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var captureId: Int32
    
    /**
    * Timestamp for frame.
    *
    * @relation timestamp: long
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var timestamp: Int64
}


/**
* Capture end info.
*
* @relation interface CaptureEndInfo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CaptureEndInfo {
    /**
    * Capture id.
    *
    * @relation captureId: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var captureId: Int32
    
    /**
    * Frame count.
    *
    * @relation frameCount: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var frameCount: Int32
}


/**
* Frame shutter end callback info.
*
* @relation interface FrameShutterEndInfo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class FrameShutterEndInfo {
    /**
    * Capture id.
    *
    * @relation captureId: int
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var captureId: Int32
}


/**
* Types of preconfig, which used to configure session conveniently.
* Preconfig type contains common use cases of camera output.
*
* @relation enum PreconfigType
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum PreconfigType {
    /**
    * 720P output for preconfig.
    *
    * @relation PRECONFIG_720P = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Preconfig720p |
    /**
    * 1080P output for preconfig.
    *
    * @relation PRECONFIG_1080P = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Preconfig1080p |
    /**
    * 4K output for preconfig.
    *
    * @relation PRECONFIG_4K = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Preconfig4k |
    /**
    * high quality output for preconfig.
    *
    * @relation PRECONFIG_HIGH_QUALITY = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    PreconfigHighQuality |
    ...
}



/**
* The aspect ratios of preconfig, which used to configure session conveniently.
*
* @relation enum PreconfigRatio
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum PreconfigRatio {
    /**
    * Aspect ratio 1:1 for preconfig.
    *
    * @relation PRECONFIG_RATIO_1_1 = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    PreconfigRatio_1_1 |
    /**
    * Aspect ratio 4:3 for preconfig.
    *
    * @relation PRECONFIG_RATIO_4_3 = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    PreconfigRatio_4_3 |
    /**
    * Aspect ratio 16:9 for preconfig.
    *
    * @relation PRECONFIG_RATIO_16_9 = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    PreconfigRatio_16_9 |
    ...
}



/**
* Camera input object.
*
* @relation interface CameraInput
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CameraInput <: RemoteDataLite {
    /**
    * Open camera.
    *
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400107 - Can not use camera cause of conflict.
    * @throws { BusinessException } 7400108 - Camera disabled cause of security reason.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation open(): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func open(): Unit
    
    /**
    * Open camera.
    *
    * @param { Bool } isSecureEnabled - Setting true enables the camera to be opened in a safe way,
    * setting false does the opposite. Failure of an interface call returns an error code of type CameraErrorCode.
    * @returns { UInt64 } Return the result.
    * @throws { BusinessException } 7400107 - Can not use camera cause of conflict.
    * @throws { BusinessException } 7400108 - Camera disabled cause of security reason.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation open(isSecureEnabled: boolean): Promise<bigint>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func open(isSecureEnabled: Bool): UInt64
    
    /**
    * Close camera.
    *
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation close(): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func close(): Unit
    
    /**
    * Registers a listener for CameraInput error events to get the result by registering
    * a callback function. This API uses an asynchronous callback to return the result.
    *
    * Description: Currently, it is not allowed to use off() to unregister the callback
    * within the callback method of on().
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { CameraDevice } camera - Camera device.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the camera input errors.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation on(type: 'error', camera: CameraDevice, callback: ErrorCallback): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, camera: CameraDevice, callback: Callback0Argument): Unit
    
    /**
    * Unsubscribes from error events.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { CameraDevice } camera - Camera device.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the camera input errors.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'error', camera: CameraDevice, callback?: ErrorCallback): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, camera: CameraDevice, callback: Callback0Argument): Unit
    
    /**
    * Unsubscribes from error events.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { CameraDevice } camera - Camera device.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'error', camera: CameraDevice, callback?: ErrorCallback): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, camera: CameraDevice): Unit
}


/**
* Camera manager object.
*
* @relation interface CameraManager
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CameraManager <: RemoteDataLite {
    /**
    * Queries whether the current camera is muted.
    *
    * @returns { Bool } Is camera muted.
    * @relation isCameraMuted(): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func isCameraMuted(): Bool
    
    /**
    * Check if a specifies torch mode is supported.
    * @param { TorchMode } mode - torch mode.
    * @returns { Bool } is torch mode supported.
    * @relation isTorchModeSupported(mode: TorchMode): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func isTorchModeSupported(mode: TorchMode): Bool
    
    /**
    * Check if the device has a torch.
    *
    * @returns { Bool } this value that specifies whether the device has a torch.
    * @relation isTorchSupported(): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func isTorchSupported(): Bool
    
    /**
    * Get current torch mode.
    *
    * @returns { TorchMode } torch mode.
    * @relation getTorchMode(): TorchMode
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getTorchMode(): TorchMode
    
    /**
    * Set torch mode to the device.
    *
    * @param { TorchMode } mode - torch mode.
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation setTorchMode(mode: TorchMode): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func setTorchMode(mode: TorchMode): Unit
    
    /**
    * Gets the supported camera device objects and return the results synchronously.
    *
    * @returns { Array<CameraDevice> } An array of supported cameras.
    * @relation getSupportedCameras(): Array<CameraDevice>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getSupportedCameras(): Array<CameraDevice>
    
    /**
    * Gets supported scene mode for specific camera.
    *
    * @param { CameraDevice } camera - Camera device.
    * @returns { Array<SceneMode> } An array of supported scene mode of camera.
    * @relation getSupportedSceneModes(camera: CameraDevice): Array<SceneMode>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getSupportedSceneModes(camera: CameraDevice): Array<SceneMode>
    
    /**
    * Gets supported output capability for specific camera.
    *
    * @param { CameraDevice } camera - Camera device, obtained through the getSupportedCameras interface.
    * @param { SceneMode } mode - Scene mode, obtained through the getSupportedSceneModes interface.
    * @returns { CameraOutputCapability } The camera output capability.
    * @relation getSupportedOutputCapability(camera: CameraDevice, mode: SceneMode): CameraOutputCapability
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getSupportedOutputCapability(camera: CameraDevice, mode: SceneMode): CameraOutputCapability
    
    /**
    * Creates a CameraInput instance by camera.
    *
    * Before using this interface, first through the getSupportedCameras interface to query the current list of camera
    * devices supported by the device, the developer needs to be based on specific scenarios to choose the camera device
    * that meets the needs of the developer, and then use this interface to create a CameraInput instance.
    *
    * @permission ohos.permission.CAMERA
    * @param { CameraDevice } camera - Camera device used to create the instance.
    * @returns { CameraInput } Returns a CameraInput instance. Failure of an interface call returns the corresponding
    * error code, which is of type CameraErrorCode.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation createCameraInput(camera: CameraDevice): CameraInput
    */
    @!APILevel[
        22,
        permission: "ohos.permission.CAMERA",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func createCameraInput(camera: CameraDevice): CameraInput
    
    /**
    * Creates a CameraInput instance by camera position and type.
    *
    * @permission ohos.permission.CAMERA
    * @param { CameraPosition } position - Camera position, first get the supported camera device
    * objects through the getSupportedCameras interface, and then get the device position information
    * based on the returned camera device objects.
    * @param { CameraType } type - camera type, first get the supported camera device object through
    * the getSupportedCameras interface, then get the device type information based on the returned
    * camera device object.
    * @returns { CameraInput } Returns a CameraInput instance. Failure of an interface call returns
    * the corresponding error code, which is of type CameraErrorCode.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation createCameraInput(position: CameraPosition, type: CameraType): CameraInput
    */
    @!APILevel[
        22,
        permission: "ohos.permission.CAMERA",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func createCameraInput(position: CameraPosition, cameraType: CameraType): CameraInput
    
    /**
    * Creates a PreviewOutput instance.
    *
    * @param { Profile } profile - Supported preview configuration information,
    * obtained through the getSupportedOutputCapability API.
    * @param { String } surfaceId - Surface object id used in camera photo output.
    * @returns { PreviewOutput } The PreviewOutput instance.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation createPreviewOutput(profile: Profile, surfaceId: string): PreviewOutput
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func createPreviewOutput(profile: Profile, surfaceId: String): PreviewOutput
    
    /**
    * Creates a PreviewOutput instance without profile.
    * You can use this method to create a preview output instance without a profile, This instance can
    * only be used in a preconfiged session.
    *
    * @param { String } surfaceId - Surface object id used in camera preview output.
    * @returns { PreviewOutput } The PreviewOutput instance.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation createPreviewOutput(surfaceId: string): PreviewOutput
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func createPreviewOutput(surfaceId: String): PreviewOutput
    
    /**
    * Creates a PhotoOutput instance without surfaceId.
    * Call PhotoOutput capture interface will give a callback,
    * {@link on(type: 'photoAvailable', callback: AsyncCallback<Photo>)}
    * You can use this method to create a photo output instance without a profile, This instance can
    * only be used in a preconfiged session.
    *
    * @param { Profile } profile - Photo output profile.
    * @returns { PhotoOutput } The PhotoOutput instance.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation createPhotoOutput(profile?: Profile): PhotoOutput
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func createPhotoOutput(profile!: ?Profile = None): PhotoOutput
    
    /**
    * Creates a VideoOutput instance.
    *
    * @param { VideoProfile } profile - Video profile.
    * @param { String } surfaceId - Surface object id used in camera video output.
    * @returns { VideoOutput } The VideoOutput instance.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation createVideoOutput(profile: VideoProfile, surfaceId: string): VideoOutput
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func createVideoOutput(profile: VideoProfile, surfaceId: String): VideoOutput
    
    /**
    * Creates a VideoOutput instance without profile.
    * You can use this method to create a video output instance without a profile, This instance can
    * only be used in a preconfiged session.
    *
    * @param { String } surfaceId - Surface object id used in camera video output.
    * @returns { VideoOutput } The VideoOutput instance.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation createVideoOutput(surfaceId: string): VideoOutput
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func createVideoOutput(surfaceId: String): VideoOutput
    
    /**
    * Gets a Session instance by specific scene mode.
    *
    * @param { SceneMode } mode - The modes supported by the camera. If the passed parameters are
    * abnormal (e.g. out of range, passed null or undefined, etc.), the actual interface will not take effect.
    * @returns { Session } Session instance. Failure of an interface call returns the appropriate error code,
    * which is of type CameraErrorCode.
    * @throws { BusinessException } 7400101 - Parameter error. Possible causes:
    * 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types;
    * 3. Parameter verification failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation createSession<T extends Session>(mode: SceneMode): T
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func createSession(mode: SceneMode): Session
    
    /**
    * Camera state callback to get the state change of the camera by registering a callback
    * function. This API uses an asynchronous callback to return the result.
    *
    * Description: Currently, it is not allowed to use off() to unregister the callback
    * within the callback method of on().
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<CameraStatusInfo> } callback - Callback used to get the camera status change.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation on(type: 'cameraStatus', callback: AsyncCallback<CameraStatusInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<CameraStatusInfo>): Unit
    
    /**
    * Registers a listener for fold state changes. This API uses an asynchronous callback to return the result.
    *
    * Description: Currently, it is not allowed to use off() to unregister the callback
    * within the callback method of on().
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<FoldStatusInfo> } callback - Callback used to get the fold status change.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation on(type: 'foldStatusChange', callback: AsyncCallback<FoldStatusInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<FoldStatusInfo>): Unit
    
    /**
    * Registers a listener for flashlight state changes to get flashlight state change by registering
    * a callback function. This API uses an asynchronous callback to return the result.
    *
    * Description: Currently, it is not allowed to use off() to unregister the callback
    * within the callback method of on().
    *
    * @param { CameraEvents } eventType - Event type
    * @param { Callback1Argument<TorchStatusInfo> } callback - Callback used to return the torch status change
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation on(type: 'torchStatusChange', callback: AsyncCallback<TorchStatusInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<TorchStatusInfo>): Unit
    
    /**
    * Unsubscribes from camera status change event callback.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<CameraStatusInfo> } callback - Callback used to get the camera status change.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'cameraStatus', callback?: AsyncCallback<CameraStatusInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<CameraStatusInfo>): Unit
    
    /**
    * Unsubscribes from fold status change event callback.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<FoldStatusInfo> } callback - Callback used to get the fold status change.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'foldStatusChange', callback?: AsyncCallback<FoldStatusInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<FoldStatusInfo>): Unit
    
    /**
    * Unsubscribes torch status change event callback.
    *
    * @param { CameraEvents } eventType - Event type
    * @param { Callback1Argument<TorchStatusInfo> } callback - Callback used to return the torch status change
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'torchStatusChange', callback?: AsyncCallback<TorchStatusInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<TorchStatusInfo>): Unit
    
    /**
    * Unsubscribes callback.
    *
    * @param { CameraEvents } eventType - Event type
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'cameraStatus', callback?: AsyncCallback<CameraStatusInfo>): void
    * @relation off(type: 'foldStatusChange', callback?: AsyncCallback<FoldStatusInfo>): void
    * @relation off(type: 'torchStatusChange', callback?: AsyncCallback<TorchStatusInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents): Unit
}


/**
* Camera output object.
*
* @relation interface CameraOutput
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface CameraOutput {
    /**
    * Release output instance.
    *
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation release(): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func release(): Unit
}


/**
* Session object.
*
* @relation interface Session
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public interface Session {
    /**
    * Begin capture session config.
    *
    * @throws { BusinessException } 7400105 - Session config locked.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation beginConfig(): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func beginConfig(): Unit
    
    /**
    * Commit capture session config.
    *
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation commitConfig(): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func commitConfig(): Unit
    
    /**
    * Determines whether the camera input can be added into the session.
    * This method is valid between Session.beginConfig() and Session.commitConfig().
    *
    * @param { CameraInput } cameraInput - Target camera input to add.
    * @returns { Bool } You can add the input into the session.
    * @relation canAddInput(cameraInput: CameraInput): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func canAddInput(cameraInput: CameraInput): Bool
    
    /**
    * Adds a camera input.
    * This method is valid between Session.beginConfig() and Session.commitConfig().
    *
    * @param { CameraInput } cameraInput - Target camera input to add.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation addInput(cameraInput: CameraInput): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func addInput(cameraInput: CameraInput): Unit
    
    /**
    * Removes a camera input.
    * This method is valid between Session.beginConfig() and Session.commitConfig().
    *
    * @param { CameraInput } cameraInput - Target camera input to remove.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation removeInput(cameraInput: CameraInput): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func removeInput(cameraInput: CameraInput): Unit
    
    /**
    * Determines whether the camera output can be added into the session.
    * This method is valid after Session.addInput(cameraInput) and before Session.commitConfig().
    *
    * @param { CameraOutput } cameraOutput - Target camera output to add.
    * @returns { Bool } You can add the output into the session.
    * @relation canAddOutput(cameraOutput: CameraOutput): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func canAddOutput(cameraOutput: CameraOutput): Bool
    
    /**
    * Adds a camera output.
    * This method is valid after Session.addInput(cameraInput) and before Session.commitConfig().
    *
    * @param { CameraOutput } cameraOutput - Target camera output to add.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation addOutput(cameraOutput: CameraOutput): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func addOutput(cameraOutput: CameraOutput): Unit
    
    /**
    * Removes a camera output.
    * This method is valid between Session.beginConfig() and Session.commitConfig().
    *
    * @param { CameraOutput } cameraOutput - Target camera output to remove.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation removeOutput(cameraOutput: CameraOutput): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func removeOutput(cameraOutput: CameraOutput): Unit
    
    /**
    * Starts capture session.
    *
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400103 - Session not config.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation start(): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func start(): Unit
    
    /**
    * Stops capture session.
    *
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation stop(): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func stop(): Unit
    
    /**
    * Release capture session instance.
    *
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation release(): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func release(): Unit
}


/**
* Photo session object.
*
* @relation interface PhotoSession extends Session, Flash, AutoExposure, WhiteBalance, Focus, Zoom, ColorManagement, AutoDeviceSwitch, Macro
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class PhotoSession <: RemoteDataLite & Session & Flash & AutoExposure & Focus & Zoom & ColorManagement {
    /**
    * Gets whether the choosed preconfig type can be used to configure photo session.
    * Must choose preconfig type from {@link PreconfigType}.
    *
    * @param { PreconfigType } preconfigType - preconfig type.
    * @param { PreconfigRatio } preconfigRatio - the aspect ratio of surface for preconfig,
    *                                            default value {@link PreconfigRatio#PRECONFIG_RATIO_4_3}.
    * @returns { Bool } Whether the choosed preconfig type can be used.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation canPreconfig(preconfigType: PreconfigType, preconfigRatio?: PreconfigRatio): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func canPreconfig(preconfigType: PreconfigType, preconfigRatio!: PreconfigRatio = PreconfigRatio_4_3): Bool
    
    /**
    * Configure photo session with the preconfig type.
    * Must choose preconfig type from {@link PreconfigType}.
    *
    * @param { PreconfigType } preconfigType - preconfig type.
    * @param { PreconfigRatio } preconfigRatio - the aspect ratio of surface for preconfig,
    *                                            default value {@link PreconfigRatio#PRECONFIG_RATIO_4_3}
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation preconfig(preconfigType: PreconfigType, preconfigRatio?: PreconfigRatio): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func preconfig(
        preconfigType: PreconfigType,
        preconfigRatio!: PreconfigRatio = PreconfigRatio.PreconfigRatio_4_3
    ): Unit
    
    /**
    * Registers a listener for error events from a normal video session to get the result by registering
    * a callback function. This API uses an asynchronous callback to return the result.
    *
    * Description: Currently, it is not allowed to use off() to unregister the callback
    * within the callback method of on().
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<BusinessException>} callback - Callback used to get the capture session errors.
    * @relation on(type: 'error', callback: ErrorCallback): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback0Argument): Unit
    
    /**
    * Unsubscribes from error events.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the capture session errors.
    * @relation off(type: 'error', callback?: ErrorCallback): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback0Argument): Unit
    
    /**
    * Registers a listener for camera focus state changes to get the result by registering
    * a callback function. This API uses an asynchronous callback to return the result.
    *
    * Description: Currently, it is not allowed to use off() to unregister the callback
    * within the callback method of on().
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<FocusState> } callback - Callback used to get the capture focus state change.
    * @relation on(type: 'focusStateChange', callback: AsyncCallback<FocusState>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<FocusState>): Unit
    
    /**
    * Unsubscribes from focus state change events.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<FocusState> } callback - Callback used to get the capture focus state change.
    * @relation off(type: 'focusStateChange', callback?: AsyncCallback<FocusState>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<FocusState>): Unit
    
    /**
    * Registers a listener for state changes in the camera's smooth zoom to get the result by registering
    * a callback function. This API uses an asynchronous callback to return the result.
    *
    * Description: Currently, it is not allowed to use off() to unregister the callback
    * within the callback method of on().
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<SmoothZoomInfo> } callback - Callback used to get the zoom info.
    * @relation on(type: 'smoothZoomInfoAvailable', callback: AsyncCallback<SmoothZoomInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<SmoothZoomInfo>): Unit
    
    /**
    * Unsubscribes from zoom info events.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<SmoothZoomInfo> } callback - Callback used to get the zoom info.
    * @relation off(type: 'smoothZoomInfoAvailable', callback?: AsyncCallback<SmoothZoomInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<SmoothZoomInfo>): Unit
    
    /**
    * Unsubscribes all callbacks from the event specified by the param.
    *
    * @param { CameraEvents } eventType - Event type.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @relation off(type: 'error', callback?: ErrorCallback): void
    * @relation off(type: 'focusStateChange', callback?: AsyncCallback<FocusState>): void
    * @relation off(type: 'smoothZoomInfoAvailable', callback?: AsyncCallback<SmoothZoomInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents): Unit
}


/**
* Video session object.
*
* @relation interface VideoSession extends Session, Flash, AutoExposure, WhiteBalance, Focus, Zoom, Stabilization, ColorManagement, AutoDeviceSwitch, Macro
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class VideoSession <: RemoteDataLite & Session & Flash & AutoExposure & Focus & Zoom & Stabilization & ColorManagement {
    /**
    * Gets whether the choosed preconfig type can be used to configure video session.
    * Must choose preconfig type from {@link PreconfigType}.
    *
    * @param { PreconfigType } preconfigType - preconfig type.
    * @param { PreconfigRatio } preconfigRatio - the aspect ratio of surface for preconfig,
    *                                            default value {@link PreconfigRatio#PRECONFIG_RATIO_16_9}.
    * @returns { Bool } Whether the choosed preconfig type can be used.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation canPreconfig(preconfigType: PreconfigType, preconfigRatio?: PreconfigRatio): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func canPreconfig(preconfigType: PreconfigType, preconfigRatio!: PreconfigRatio = PreconfigRatio_16_9): Bool
    
    /**
    * Configure video session with the preconfig type.
    * Must choose preconfig type from {@link PreconfigType}.
    *
    * @param { PreconfigType } preconfigType - preconfig type.
    * @param { PreconfigRatio } preconfigRatio - the aspect ratio of surface for preconfig,
    *                                            default value {@link PreconfigRatio#PRECONFIG_RATIO_16_9}.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation preconfig(preconfigType: PreconfigType, preconfigRatio?: PreconfigRatio): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func preconfig(
        preconfigType: PreconfigType,
        preconfigRatio!: PreconfigRatio = PreconfigRatio.PreconfigRatio_16_9
    ): Unit
    
    /**
    * Registers a listener for error events in normal photo sessions to get the result by registering
    * a callback function. This API uses an asynchronous callback to return the result.
    *
    * Description: Currently, it is not allowed to use off() to unregister the callback
    * within the callback method of on().
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<BusinessException>} callback - Callback used to get the capture session errors.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation on(type: 'error', callback: ErrorCallback): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback0Argument): Unit
    
    /**
    * Unsubscribes from error events.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the capture session errors.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'error', callback?: ErrorCallback): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback0Argument): Unit
    
    /**
    * Registers a listener for error events in normal photo sessions to get the result by registering
    * a callback function. This API uses an asynchronous callback to return the result.
    *
    * Description: Currently, it is not allowed to use off() to unregister the callback
    * within the callback method of on().
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<FocusState> } callback - Callback used to get the capture focus state change.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation on(type: 'focusStateChange', callback: AsyncCallback<FocusState>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<FocusState>): Unit
    
    /**
    * Unsubscribes from focus state change events.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<FocusState> } callback - Callback used to get the capture focus state change.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'focusStateChange', callback?: AsyncCallback<FocusState>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<FocusState>): Unit
    
    /**
    * Registers a listener for state changes in the camera's smooth zoom to get the result by registering
    * a callback function. This API uses an asynchronous callback to return the result.
    *
    * Description: Currently, it is not allowed to use off() to unregister the callback
    * within the callback method of on().
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<SmoothZoomInfo> } callback - Callback used to get the zoom info.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation on(type: 'smoothZoomInfoAvailable', callback: AsyncCallback<SmoothZoomInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<SmoothZoomInfo>): Unit
    
    /**
    * Unsubscribes from zoom info events.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<SmoothZoomInfo> } callback - Callback used to get the zoom info.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'smoothZoomInfoAvailable', callback?: AsyncCallback<SmoothZoomInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<SmoothZoomInfo>): Unit
    
    /**
    * Unsubscribes all callbacks from the event specified by the param.
    *
    * @param { CameraEvents } eventType - Event type.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'error', callback?: ErrorCallback): void
    * @relation off(type: 'focusStateChange', callback?: AsyncCallback<FocusState>): void
    * @relation off(type: 'smoothZoomInfoAvailable', callback?: AsyncCallback<SmoothZoomInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents): Unit
}


/**
* Photo output object.
*
* @relation interface PhotoOutput extends CameraOutput
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class PhotoOutput <: RemoteDataLite & CameraOutput {
    /**
    * Release output instance.
    *
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func release(): Unit
    
    /**
    * Start capture output.
    *
    * @throws { BusinessException } 7400104 - Session not running.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation capture(): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func capture(): Unit
    
    /**
    * Start capture output.
    *
    * @param { PhotoCaptureSetting } setting - Photo capture settings.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400104 - Session not running.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation capture(setting: PhotoCaptureSetting): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func capture(setting: PhotoCaptureSetting): Unit
    
    /**
    * Confirm if moving photo supported.
    *
    * @returns { Bool } TRUE if the moving photo is supported.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation isMovingPhotoSupported(): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func isMovingPhotoSupported(): Bool
    
    /**
    * Enable moving photo.
    *
    * @permission ohos.permission.MICROPHONE
    * @param { Bool } enabled - Target state for moving photo.
    * @throws { BusinessException } 201 - permission denied.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation enableMovingPhoto(enabled: boolean): void
    */
    @!APILevel[
        22,
        permission: "ohos.permission.MICROPHONE",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func enableMovingPhoto(enabled: Bool): Unit
    
    /**
    * Determine whether video mirror is supported.
    *
    * @returns { Bool } Is the mirror supported.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation isMirrorSupported(): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func isMirrorSupported(): Bool
    
    /**
    * Whether to enable moving photo mirroring.
    *
    * Prior to invoking this interface, it is necessary to determine whether the moving
    * photo function is supported through the isMovingPhotoSupported API and whether the
    * photo mirroring function is supported through the isMirrorSupported API.
    *
    * @param { Bool } enabled - enable moving photo mirror if TRUE.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation enableMirror(enabled: boolean): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func enableMirror(enabled: Bool): Unit
    
    /**
    * Get supported moving photo video codec types.
    *
    * @returns { Array<VideoCodecType> } An array of supported video codec types for moving photo.
    * @relation getSupportedMovingPhotoVideoCodecTypes(): Array<VideoCodecType>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getSupportedMovingPhotoVideoCodecTypes(): Array<VideoCodecType>
    
    /**
    * Sets codec type for moving photo, default to AVC.
    *
    * @param { VideoCodecType } codecType - Codec type for moving photo.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation setMovingPhotoVideoCodecType(codecType: VideoCodecType): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func setMovingPhotoVideoCodecType(codecType: VideoCodecType): Unit
    
    /**
    * Gets the current preconfig type if you had already call preconfig interface.
    *
    * @returns { Profile } The current preconfig type.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation getActiveProfile(): Profile
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getActiveProfile(): Profile
    
    /**
    * Gets the photo rotation angle.
    *
    * @param { Int32 } deviceDegree - The current device rotation degree.
    * @returns { ImageRotation } The photo rotation angle.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation getPhotoRotation(deviceDegree: int): ImageRotation
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getPhotoRotation(deviceDegree: Int32): ImageRotation
    
    /**
    * Registers a listener for the start of the photo taking to get the CaptureStartInfo by registering
    * a callback function. This API uses an asynchronous callback to return the result.
    * 
    * Description: Currently, it is not allowed to use off() to unregister the callback
    * within the callback method of on().
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<CaptureStartInfo> } callback - Callback used to get the capture start info.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation on(type: 'captureStartWithInfo', callback: AsyncCallback<CaptureStartInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<CaptureStartInfo>): Unit
    
    /**
    * Subscribes frame shutter event callback.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<FrameShutterInfo> } callback - Callback used to get the frame shutter information.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation on(type: 'frameShutter', callback: AsyncCallback<FrameShutterInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<FrameShutterInfo>): Unit
    
    /**
    * Registers a listener for the end of the photo shoot to get the result by registering
    * a callback function. This API uses an asynchronous callback to return the result.
    *
    * Description: Currently, it is not allowed to use off() to unregister the callback
    * within the callback method of on().
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<CaptureEndInfo> } callback - Callback used to get the capture end information.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation on(type: 'captureEnd', callback: AsyncCallback<CaptureEndInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<CaptureEndInfo>): Unit
    
    /**
    * Registers a listener for the end of photo exposure capture to get the result by registering
    * a callback function. This API uses an asynchronous callback to return the result.
    *
    * Description: Currently, it is not allowed to use off() to unregister the callback
    * within the callback method of on().
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<FrameShutterEndInfo> } callback - Callback used to get the frame shutter end information.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation on(type: 'frameShutterEnd', callback: AsyncCallback<FrameShutterEndInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<FrameShutterEndInfo>): Unit
    
    /**
    * Registers a listener for the next available shot or errors in the photo output to get the result by registering
    * a callback function. This API uses an asynchronous callback to return the result.
    *
    * Description: Currently, it is not allowed to use off() to unregister the callback
    * within the callback method of on().
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback0Argument } callback - Callback used to notice capture ready.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation on(type: 'captureReady', callback: AsyncCallback<void>): void
    * @relation on(type: 'error', callback: ErrorCallback): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback0Argument): Unit
    
    /**
    * Registers a listener for the estimated time to take a picture to get the result by registering
    * a callback function. This API uses an asynchronous callback to return the result.
    *
    * Description: Currently, it is not allowed to use off() to unregister the callback
    * within the callback method of on().
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<Int32> } callback - Callback used to notify the estimated capture duration (in milliseconds).
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation on(type: 'estimatedCaptureDuration', callback: AsyncCallback<double>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback1Argument<Float64>): Unit
    
    /**
    * Unsubscribes from capture start event callback.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<CaptureStartInfo> } callback - Callback used to get the capture start info.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'captureStartWithInfo', callback?: AsyncCallback<CaptureStartInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<CaptureStartInfo>): Unit
    
    /**
    * Unsubscribes from frame shutter event callback.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<FrameShutterInfo> } callback - Callback used to get the frame shutter information.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'frameShutter', callback?: AsyncCallback<FrameShutterInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<FrameShutterInfo>): Unit
    
    /**
    * Unsubscribes from capture end event callback.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<CaptureEndInfo> } callback - Callback used to get the capture end information.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'captureEnd', callback?: AsyncCallback<CaptureEndInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<CaptureEndInfo>): Unit
    
    /**
    * Unsubscribes from frame shutter end event callback.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<FrameShutterEndInfo> } callback - Callback used to get the frame shutter end information.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'frameShutterEnd', callback?: AsyncCallback<FrameShutterEndInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<FrameShutterEndInfo>): Unit
    
    /**
    * Unsubscribes from capture ready event callback or from error events.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback0Argument } callback - Callback used to notice capture ready.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'captureReady', callback?: AsyncCallback<void>): void
    * @relation off(type: 'error', callback?: ErrorCallback): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback0Argument): Unit
    
    /**
    * Unsubscribes from estimated capture duration event callback.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback1Argument<Float64> } callback - Callback used to notify the estimated capture duration (in milliseconds).
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'estimatedCaptureDuration', callback?: AsyncCallback<double>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback1Argument<Float64>): Unit
    
    /**
    * Unsubscribes all callbacks from the event specified by the param.
    *
    * @param { CameraEvents } eventType - Event type.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'captureStartWithInfo', callback?: AsyncCallback<CaptureStartInfo>): void
    * @relation off(type: 'frameShutter', callback?: AsyncCallback<FrameShutterInfo>): void
    * @relation off(type: 'captureEnd', callback?: AsyncCallback<CaptureEndInfo>): void
    * @relation off(type: 'frameShutterEnd', callback?: AsyncCallback<FrameShutterEndInfo>): void
    * @relation off(type: 'captureReady', callback?: AsyncCallback<void>): void
    * @relation off(type: 'estimatedCaptureDuration', callback?: AsyncCallback<double>): void
    * @relation off(type: 'error', callback?: ErrorCallback): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents): Unit
}


/**
* Preview output object.
*
* @relation interface PreviewOutput extends CameraOutput
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class PreviewOutput <: RemoteDataLite & CameraOutput {
    /**
    * Release output instance.
    *
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func release(): Unit
    
    /**
    * Get supported frame rates which can be set during session running.
    *
    * @returns { Array<FrameRateRange> } The array of supported frame rate range.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation getSupportedFrameRates(): Array<FrameRateRange>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getSupportedFrameRates(): Array<FrameRateRange>
    
    /**
    * The supported frame rate range can be queried via the getSupportedFrameRates interface before setting.
    *
    * @param { Int32 } minFps - Minimum frame rate per second.
    * @param { Int32 } maxFps - Maximum frame rate per second.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400110 - Unresolved conflicts with current configurations.
    * @relation setFrameRate(minFps: int, maxFps: int): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func setFrameRate(minFps: Int32, maxFps: Int32): Unit
    
    /**
    * Queryable after setting the frame rate for the preview stream using the setFrameRate interface.
    *
    * @returns { FrameRateRange } The active frame rate range.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation getActiveFrameRate(): FrameRateRange
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getActiveFrameRate(): FrameRateRange
    
    /**
    * Gets the current preconfig type if you had already call preconfig interface.
    *
    * @returns { Profile } The current preconfig type.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation getActiveProfile(): Profile
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getActiveProfile(): Profile
    
    /**
    * Gets the preview rotation angle.
    *
    * @param { Int32 } displayRotation - The current display rotation angle.
    * @returns { ImageRotation } The preview rotation angle.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation getPreviewRotation(displayRotation: int): ImageRotation
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getPreviewRotation(displayRotation: Int32): ImageRotation
    
    /**
    * Sets the preview rotation angle.
    *
    * @param { ImageRotation } previewRotation - Preview display rotation angle.
    * @param { Bool } isDisplayLocked - TRUE means the display is locked, if not set, the default is FALSE.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation setPreviewRotation(previewRotation: ImageRotation, isDisplayLocked?: boolean): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func setPreviewRotation(previewRotation: ImageRotation, isDisplayLocked!: Bool = false): Unit
    
    /**
    * Subscribes frame start event callback.
    * Subscribes frame end event callback.
    * Subscribes to error events.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback0Argument } callback - Callback used to return the result.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation on(type: 'frameStart', callback: AsyncCallback<void>): void
    * @relation on(type: 'frameEnd', callback: AsyncCallback<void>): void
    * @relation on(type: 'error', callback: ErrorCallback): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback0Argument): Unit
    
    /**
    * Unsubscribes from frame start event callback.
    * Unsubscribes from frame end event callback.
    * Unsubscribes from error events.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback0Argument } callback - Callback used to return the result.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'frameStart', callback?: AsyncCallback<void>): void
    * @relation off(type: 'frameEnd', callback?: AsyncCallback<void>): void
    * @relation off(type: 'error', callback?: ErrorCallback): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback0Argument): Unit
    
    /**
    * Unsubscribes all callbacks from the event specified by the param.
    *
    * @param { CameraEvents } eventType - Event type.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'frameStart', callback?: AsyncCallback<void>): void
    * @relation off(type: 'frameEnd', callback?: AsyncCallback<void>): void
    * @relation off(type: 'error', callback?: ErrorCallback): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents): Unit
}


/**
* Video output object.
*
* @relation interface VideoOutput extends CameraOutput
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class VideoOutput <: RemoteDataLite & CameraOutput {
    /**
    * Release output instance.
    *
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func release(): Unit
    
    /**
    * Start video output.
    *
    * @throws { BusinessException } 7400103 - Session not config.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation start(): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func start(): Unit
    
    /**
    * Stop video output.
    *
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation stop(): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func stop(): Unit
    
    /**
    * Get supported frame rates which can be set during session running.
    *
    * @returns { Array<FrameRateRange> } The array of supported frame rate range.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation getSupportedFrameRates(): Array<FrameRateRange>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getSupportedFrameRates(): Array<FrameRateRange>
    
    /**
    * Set a frame rate range.
    *
    * @param { Int32 } minFps - Minimum frame rate per second.
    * @param { Int32 } maxFps - Maximum frame rate per second.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400110 - Unresolved conflicts with current configurations.
    * @relation setFrameRate(minFps: int, maxFps: int): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func setFrameRate(minFps: Int32, maxFps: Int32): Unit
    
    /**
    * Get active frame rate range which has been set before.
    *
    * @returns { FrameRateRange } The active frame rate range.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation getActiveFrameRate(): FrameRateRange
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getActiveFrameRate(): FrameRateRange
    
    /**
    * Gets the current preconfig type if you had already call preconfig interface.
    *
    * @returns { VideoProfile } The current preconfig type.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation getActiveProfile(): VideoProfile
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getActiveProfile(): VideoProfile
    
    /**
    * Gets the video rotation angle.
    *
    * @param { Int32 } deviceDegree - The current device rotation degree.
    * @returns { ImageRotation } The video rotation angle.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation getVideoRotation(deviceDegree: int): ImageRotation
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getVideoRotation(deviceDegree: Int32): ImageRotation
    
    /**
    * Subscribes frame start event callback.
    * Subscribes from frame end event callback.
    * Registers a listener for errors in the metadata stream to get the result by registering
    * a callback function. This API uses an asynchronous callback to return the result.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback0Argument } callback - Callback used to return the result.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation on(type: 'frameStart', callback: AsyncCallback<void>): void
    * @relation on(type: 'frameEnd', callback: AsyncCallback<void>): void
    * @relation on(type: 'error', callback: ErrorCallback): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(eventType: CameraEvents, callback: Callback0Argument): Unit
    
    /**
    * Unsubscribes from frame start event callback.
    * Unsubscribes from frame end event callback.
    * Unsubscribes from error events.
    *
    * @param { CameraEvents } eventType - Event type.
    * @param { Callback0Argument } callback - Callback used to return the result.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'frameStart', callback?: AsyncCallback<void>): void
    * @relation off(type: 'frameEnd', callback?: AsyncCallback<void>): void
    * @relation off(type: 'error', callback?: ErrorCallback): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents, callback: Callback0Argument): Unit
    
    /**
    * Unsubscribes all callbacks from the event specified by the param.
    *
    * @param { CameraEvents } eventType - Event type.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @relation off(type: 'frameStart', callback?: AsyncCallback<void>): void
    * @relation off(type: 'frameEnd', callback?: AsyncCallback<void>): void
    * @relation off(type: 'error', callback?: ErrorCallback): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(eventType: CameraEvents): Unit
}


