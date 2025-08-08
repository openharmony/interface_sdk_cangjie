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

package ohos.multimedia.camera
import ohos.ability.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.*

import std.deriving.*
import ohos.color_manager.ColorSpace
import std.collection.*
import ohos.hilog.*
import std.sync.*

/**
* Creates a CameraManager instance.
*
* @param { UIAbilityContext } context - Current application context.
* @returns { CameraManager } CameraManager instance.
* @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
* @throws { BusinessException } 7400201 - Camera service fatal error.
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public func getCameraManager(context: UIAbilityContext): CameraManager


/**
* Point parameter.
*
* @typedef Point
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public struct Point {
    /**
    * x co-ordinate
    *
    * @type { Float32 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var x: Float32
    
    /**
    * y co-ordinate
    *
    * @type { Float32 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var y: Float32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public init(x: Float32, y: Float32)
}


/**
* Enum for exposure mode.
*
* @enum { Int32 }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum ExposureMode {
    /**
    * Lock exposure mode.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    EXPOSURE_MODE_LOCKED |
    /**
    * Auto exposure mode.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    EXPOSURE_MODE_AUTO |
    /**
    * Continuous automatic exposure.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    EXPOSURE_MODE_CONTINUOUS_AUTO |
    ...
}



/**
* AutoExposureQuery object.
*
* @interface AutoExposureQuery
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
sealed interface AutoExposureQuery {
    /**
    * Checks whether a specified exposure mode is supported.
    *
    * @param { ExposureMode } aeMode - Exposure mode
    * @returns { Bool } Is the exposure mode supported.
    * @throws { BusinessException } 7400103 - Session not config, only throw in session usage.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func isExposureModeSupported(aeMode: ExposureMode): Bool
    
    /**
    * Query the exposure compensation range.
    *
    * @returns { Array<Float32> } The array of compensation range.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getExposureBiasRange(): Array<Float32>
}


/**
* AutoExposure object.
*
* @interface AutoExposure
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
sealed interface AutoExposure <: AutoExposureQuery {
    /**
    * Gets current exposure mode.
    *
    * @returns { ExposureMode } The current exposure mode.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getExposureMode(): ExposureMode
    
    /**
    * Sets Exposure mode.
    *
    * @param { ExposureMode } aeMode - Exposure mode
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setExposureMode(aeMode: ExposureMode): Unit
    
    /**
    * Gets current metering point.
    *
    * @returns { Point } The current metering point.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getMeteringPoint(): Point
    
    /**
    * Set the center point of the metering area.
    *
    * @param { Point } point - metering point
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setMeteringPoint(point: Point): Unit
    
    /**
    * Set exposure compensation.
    *
    * @param { Float32 } exposureBias - Exposure compensation
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setExposureBias(exposureBias: Float32): Unit
    
    /**
    * Query the exposure value.
    *
    * @returns { Float32 } The exposure value.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getExposureValue(): Float32
}


/**
* Color Management Query object.
*
* @interface ColorManagementQuery
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
sealed interface ColorManagementQuery {
    /**
    * Gets the supported color space types.
    *
    * @returns { Array<colorSpaceManager.ColorSpace> } The array of the supported color space for the session.
    * @throws { BusinessException } 7400103 - Session not config, only throw in session usage.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getSupportedColorSpaces(): Array<ColorSpace>
}


/**
* Color Management object.
*
* @interface ColorManagement
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
sealed interface ColorManagement <: ColorManagementQuery {
    /**
    * Sets a color space for the session.
    *
    * @param { colorSpaceManager.ColorSpace } colorSpace - The type of color space.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400102 - The colorSpace does not match the format.
    * @throws { BusinessException } 7400103 - Session not config.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setColorSpace(colorSpace: ColorSpace): Unit
    
    /**
    * Gets the specific color space type.
    *
    * @returns { colorSpaceManager.ColorSpace } Current color space.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getActiveColorSpace(): ColorSpace
}


/**
* Enum for flash mode.
*
* @enum { Int32 }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum FlashMode {
    /**
    * Close mode.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FLASH_MODE_CLOSE |
    /**
    * Open mode.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FLASH_MODE_OPEN |
    /**
    * Auto mode.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FLASH_MODE_AUTO |
    /**
    * Always open mode.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FLASH_MODE_ALWAYS_OPEN |
    ...
}



/**
* Flash Query object.
*
* @interface FlashQuery
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
sealed interface FlashQuery {
    /**
    * Check if device has flash light.
    *
    * @returns { Bool } The flash light support status.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func hasFlash(): Bool
    
    /**
    * Checks whether a specified flash mode is supported.
    *
    * @param { FlashMode } flashMode - Flash mode
    * @returns { Bool } Is the flash mode supported.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func isFlashModeSupported(flashMode: FlashMode): Bool
}


/**
* Flash object.
*
* @interface Flash
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
sealed interface Flash <: FlashQuery {
    /**
    * Sets flash mode.
    *
    * @param { FlashMode } flashMode - Target flash mode.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setFlashMode(flashMode: FlashMode): Unit
    
    /**
    * Gets current flash mode.
    *
    * @returns { FlashMode } The current flash mode.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getFlashMode(): FlashMode
}


/**
* Enum for focus state.
*
* @enum { Int32 }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum FocusState {
    /**
    * Scan state.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FOCUS_STATE_SCAN |
    /**
    * Focused state.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FOCUS_STATE_FOCUSED |
    /**
    * Unfocused state.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FOCUS_STATE_UNFOCUSED |
    ...
}



/**
* Enum for focus mode.
*
* @enum { Int32 }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum FocusMode {
    /**
    * Manual mode.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FOCOS_MODE_MANUAL |
    /**
    * Continuous auto mode.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FOCOS_MODE_CONTINUOUS_AUTO |
    /**
    * Auto mode.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FOCOS_MODE_AUTO |
    /**
    * Locked mode.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FOCUS_MODE_LOCKED |
    ...
}



/**
* Focus Query object.
*
* @interface FocusQuery
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
sealed interface FocusQuery {
    /**
    * Checks whether a specified focus mode is supported.
    *
    * @param { FocusMode } afMode - Focus mode.
    * @returns { Bool } Is the focus mode supported.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func isFocusModeSupported(afMode: FocusMode): Bool
}


/**
* Focus object.
*
* @interface Focus
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
sealed interface Focus <: FocusQuery {
    /**
    * Sets focus mode.
    *
    * @param { FocusMode } afMode - Target focus mode.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setFocusMode(afMode: FocusMode): Unit
    
    /**
    * Gets current focus mode.
    *
    * @returns { FocusMode } The current focus mode.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getFocusMode(): FocusMode
    
    /**
    * Sets focus point.
    *
    * @param { Point } point - Target focus point.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setFocusPoint(point: Point): Unit
    
    /**
    * Gets current focus point.
    *
    * @returns { Point } The current focus point.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getFocusPoint(): Point
    
    /**
    * Gets current focal length.
    *
    * @returns { Float32 } The current focal point.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getFocalLength(): Float32
}


/**
* Enum for video stabilization mode.
*
* @enum { Int32 }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum VideoStabilizationMode {
    /**
    * Turn off video stablization.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    OFF |
    /**
    * LOW mode provides basic stabilization effect.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    LOW |
    /**
    * MIDDLE mode means algorithms can achieve better effects than LOW mode.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    MIDDLE |
    /**
    * HIGH mode means algorithms can achieve better effects than MIDDLE mode.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    HIGH |
    /**
    * Camera HDF can select mode automatically.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    AUTO |
    ...
}



/**
* Stabilization Query object.
*
* @interface StabilizationQuery
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
sealed interface StabilizationQuery {
    /**
    * Check whether the specified video stabilization mode is supported.
    *
    * @param { VideoStabilizationMode } vsMode - Video Stabilization mode.
    * @returns { Bool } Is flash mode supported.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func isVideoStabilizationModeSupported(vsMode: VideoStabilizationMode): Bool
}


/**
* Stabilization object.
*
* @interface Stabilization
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
sealed interface Stabilization <: StabilizationQuery {
    /**
    * Query the video stabilization mode currently in use.
    *
    * @returns { VideoStabilizationMode } The current video stabilization mode.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getActiveVideoStabilizationMode(): VideoStabilizationMode
    
    /**
    * Set video stabilization mode.
    *
    * @param { VideoStabilizationMode } mode - video stabilization mode to set.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setVideoStabilizationMode(mode: VideoStabilizationMode): Unit
}


/**
* SmoothZoomInfo object
*
* @typedef SmoothZoomInfo
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public struct SmoothZoomInfo {
    /**
    * The duration of smooth zoom.
    *
    * @type { FLoat32 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public SmoothZoomInfo(public var duration: Int32)
}


/**
* Enum for smooth zoom mode.
*
* @enum { Int32 }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum SmoothZoomMode {
    /**
    * Normal zoom mode.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    NORMAL |
    ...
}



/**
* Zoom query object.
*
* @interface ZoomQuery
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
sealed interface ZoomQuery {
    /**
    * Gets all supported zoom ratio range.
    *
    * @returns { Array<Float32> } The zoom ratio range.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getZoomRatioRange(): Array<Float32>
}


/**
* Zoom object.
*
* @interface Zoom
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
sealed interface Zoom <: ZoomQuery {
    /**
    * Gets zoom ratio.
    *
    * @returns { Float32 } The zoom ratio value.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setZoomRatio(zoomRatio: Float32): Unit
    
    /**
    * Gets zoom ratio.
    *
    * @returns { Float32 } The zoom ratio value.
    * @throws { BusinessException } 7400103 - Session not config.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func getZoomRatio(): Float32
    
    /**
    * Sets target zoom ratio by smooth method.
    *
    * @param { Float32 } targetRatio - Target zoom ratio.
    * @param { SmoothZoomMode } mode - Smooth zoom mode.
    * @throws { BusinessException } 7400103 - Session not config.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setSmoothZoom(targetRatio: Float32, mode: SmoothZoomMode): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func setSmoothZoom(targetRatio: Float32): Unit
}


/**
* Enum for camera error code.
*
* @enum CameraErrorCode
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum CameraErrorCode {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    INVALID_ARGUMENT |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    OPERATION_NOT_ALLOWED |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    SESSION_NOT_CONFIG |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    SESSION_NOT_RUNNING |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    SESSION_CONFIG_LOCKED |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    DEVICE_SETTING_LOCKED |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CONFLICT_CAMERA |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    DEVICE_DISABLED |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    DEVICE_PREEMPTED |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    UNRESOLVED_CONFLICTS_WITH_CURRENT_CONFIGURATIONS |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    SERVICE_FATAL_ERROR |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getValue(): Int32
}



/**
* Rectangle definition.
*
* @typedef Rect
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public struct Rect {
    /**
    * X coordinator of top left point.
    *
    * @type { Float64 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var topLeftX: Float64
    
    /**
    * Y coordinator of top left point.
    *
    * @type { Float64 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var topLeftY: Float64
    
    /**
    * Width of this rectangle.
    *
    * @type { Float64 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var width: Float64
    
    /**
    * Height of this rectangle.
    *
    * @type { Float64 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var height: Float64
}


/**
* Metadata object basis.
*
* @typedef MetadataObject
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class MetadataObject {
    /**
    * Metadata object type.
    *
    * @type { MetadataObjectType }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let `type`: MetadataObjectType
    
    /**
    * Metadata object timestamp in milliseconds.
    *
    * @type { Int32 }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let timestamp: Int32
    
    /**
    * The axis-aligned bounding box of detected metadata object.
    *
    * @type { Rect }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let boundingBox: Rect
}


/**
* Enum for torch mode.
*
* @enum { TorchMode }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum TorchMode {
    /**
    * The device torch is always off.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    OFF |
    /**
    * The device torch is always on.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    ON |
    /**
    * The device continuously monitors light levels and uses the torch when necessary.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    AUTO |
    ...
}



/**
* Enumerates the image rotation angles.
*
* @enum { ImageRotation }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum ImageRotation {
    /**
    * The capture image rotates 0 degrees.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    ROTATION_0 |
    /**
    * The capture image rotates 90 degrees.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    ROTATION_90 |
    /**
    * The capture image rotates 180 degrees.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    ROTATION_180 |
    /**
    * The capture image rotates 270 degrees.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    ROTATION_270 |
    ...
}



/**
* Enum for camera status.
*
* @enum { CameraStatus }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum CameraStatus {
    /**
    * Appear status.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_STATUS_APPEAR |
    /**
    * Disappear status.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_STATUS_DISAPPEAR |
    /**
    * Available status.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_STATUS_AVAILABLE |
    /**
    * Unavailable status.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_STATUS_UNAVAILABL |
    ...
}



/**
* Torch status info.
*
* @typedef TorchStatusInfo
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public struct TorchStatusInfo {
    /**
    * is torch available
    *
    * @type { Bool }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let isTorchAvailable: Bool
    
    /**
    * is torch active
    *
    * @type { Bool }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let isTorchActive: Bool
    
    /**
    * the current torch brightness level.
    *
    * @type { Float32 }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let torchLevel: Float32
}


/**
* Frame rate range.
*
* @typedef FrameRateRange
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public struct FrameRateRange {
    /**
    * Min frame rate.
    *
    * @type { Int32 }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let min: Int32
    
    /**
    * Max frame rate.
    *
    * @type { Int32 }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let max: Int32
}


/**
* Size parameter.
*
* @typedef Size
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public struct Size {
    /**
    * Height.
    *
    * @type { UInt32 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var width: UInt32
    
    /**
    * Width.
    *
    * @type { UInt32 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var height: UInt32
}


/**
* Profile for camera streams.
*
* @typedef Profile
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public open class Profile {
    /**
    * Camera format.
    *
    * @type { CameraFormat }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let format: CameraFormat
    
    /**
    * Picture size.
    *
    * @type { Size }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let size: Size
}


/**
* Video profile.
*
* @typedef VideoProfile
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class VideoProfile <: Profile {
    /**
    * Frame rate in unit fps (frames per second).
    *
    * @type { FrameRateRange }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let frameRateRange: FrameRateRange
}


/**
* Metadata object type.
*
* @enum { MetadataObjectType }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum MetadataObjectType {
    /**
    * Face detection type.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FACE_DETECTION |
    ...
}



/**
* Camera output capability.
*
* @typedef CameraOutputCapability
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CameraOutputCapability {
    /**
    * Preview profiles.
    *
    * @type { Array<Profile> }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let previewProfiles: Array<Profile>
    
    /**
    * Photo profiles.
    *
    * @type { Array<Profile> }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let photoProfiles: Array<Profile>
    
    /**
    * Video profiles.
    *
    * @type { Array<VideoProfile> }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let videoProfiles: Array<VideoProfile>
    
    /**
    * All the supported metadata Object Types.
    *
    * @type { Array<MetadataObjectType> }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let supportedMetadataObjectTypes: Array<MetadataObjectType>
}


/**
* Enum for fold status.
*
* @enum { FoldStatus }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum FoldStatus {
    /**
    * Non-foldable status.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    NON_FOLDABLE |
    /**
    * Expanded status.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    EXPANDED |
    /**
    * Folded status.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FOLDED |
    ...
}



/**
* Fold status info.
*
* @typedef FoldStatusInfo
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public struct FoldStatusInfo {
    /**
    * Gets supported camera devices under the current fold status.
    *
    * @type { Array<CameraDevice> }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let supportedCameras: Array<CameraDevice>
    
    /**
    * Current fold status.
    *
    * @type { FoldStatus }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let foldStatus: FoldStatus
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public init(supportedCameras: Array<CameraDevice>, foldStatus: FoldStatus)
}


/**
* Enum for camera connection type.
*
* @enum { ConnectionType }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum ConnectionType {
    /**
    * Built-in camera.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_CONNECTION_BUILT_IN |
    /**
    * Camera connected using USB
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_CONNECTION_USB_PLUGIN |
    /**
    * Remote camera
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_CONNECTION_REMOTE |
    ...
}



/**
* Enum for camera format type.
*
* @enum { CameraFormat }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum CameraFormat {
    /**
    * YCRCB P010 Format.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_FORMAT_YCRCB_P010 |
    /**
    * YCBCR P010 Format.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_FORMAT_YCBCR_P010 |
    /**
    * HEIC Format.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_FORMAT_HEIC |
    /**
    * JPEG Format.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_FORMAT_JPEG |
    /**
    * YUV 420 Format.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_FORMAT_YUV_420_SP |
    /**
    * RGBA 8888 Format.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_FORMAT_RGBA_8888 |
    ...
}



/**
* Camera device object.
*
* @typedef CameraDevice
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CameraDevice {
    /**
    * Camera id attribute.
    *
    * @type { String }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let cameraId: String
    
    /**
    * Camera position attribute.
    *
    * @type { CameraPosition }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let cameraPosition: CameraPosition
    
    /**
    * Camera type attribute.
    *
    * @type { CameraType }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let cameraType: CameraType
    
    /**
    * Camera connection type attribute.
    *
    * @type { ConnectionType }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let connectionType: ConnectionType
    
    /**
    * Camera sensor orientation attribute.
    *
    * @type { UInt32 }
    * @readonly
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public let cameraOrientation: UInt32
}


/**
* Camera status info.
*
* @typedef CameraStatusInfo
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public struct CameraStatusInfo {
    /**
    * Camera instance.
    *
    * @type { CameraDevice }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var camera: CameraDevice
    
    /**
    * Current camera status.
    *
    * @type { CameraStatus }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var status: CameraStatus
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public init(camera: CameraDevice, status: CameraStatus)
}


@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum CameraCallbackType <: ToString {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraError |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CameraStatus |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FoldStatusChange |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    TorchStatusChange |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FrameStart |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FrameEnd |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CaptureStartWithInfo |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FrameShutter |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CaptureEnd |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FrameShutterEnd |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CaptureReady |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    EstimatedCaptureDuration |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    MetadataObjectsAvailable |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    FocusStateChange |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    SmoothZoomInfoAvailable |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}



/**
* Enum for camera position.
*
* @enum { CameraPosition }
* @syscap SystemCapability.Multimedia.Camera.Core
* @atomicservice
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum CameraPosition {
    /**
    * Unspecified position.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    * @atomicservice
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_POSITION_UNSPECIFIED |
    /**
    * Back position.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    * @atomicservice
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_POSITION_BACK |
    /**
    * Front position.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    * @atomicservice
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_POSITION_FRONT |
    ...
}



/**
* Enum for camera type.
*
* @enum { CameraType }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum CameraType {
    /**
    * Default camera type
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_TYPE_DEFAULT |
    /**
    * Wide camera
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_TYPE_WIDE_ANGLE |
    /**
    * Ultra wide camera
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_TYPE_ULTRA_WIDE |
    /**
    * Telephoto camera
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_TYPE_TELEPHOTO |
    /**
    * True depth camera
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    CAMERA_TYPE_TRUE_DEPTH |
    ...
}



/**
* Enumerates the camera scene modes.
*
* @enum { SceneMode }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum SceneMode {
    /**
    * Normal photo mode.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    NORMAL_PHOTO |
    /**
    * Normal video mode.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    NORMAL_VIDEO |
    /**
    * Secure camera mode.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    SECURE_PHOTO |
    ...
}



/**
* Enumerates the image quality levels.
*
* @enum { QualityLevel }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum QualityLevel {
    /**
    * High image quality.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    QUALITY_LEVEL_HIGH |
    /**
    * Medium image quality.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    QUALITY_LEVEL_MEDIUM |
    /**
    * Low image quality.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    QUALITY_LEVEL_LOW |
    ...
}



/**
* Photo capture location
*
* @typedef Location
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public struct Location {
    /**
    * Latitude.
    *
    * @type { Float64 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var latitude: Float64
    
    /**
    * Longitude.
    *
    * @type { Float64 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var longtitude: Float64
    
    /**
    * Altitude.
    *
    * @type { Float64 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var altitude: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public init(latitude: Float64, longtitude: Float64, altitude: Float64)
}


/**
* Photo capture options to set.
*
* @typedef PhotoCaptureSetting
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public struct PhotoCaptureSetting {
    /**
    * Photo image quality.
    *
    * @type { QualityLevel }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var quality: QualityLevel
    
    /**
    * Photo rotation.
    *
    * @type { ImageRotation }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var rotation: ImageRotation
    
    /**
    * Photo location.
    *
    * @type { Location }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var location: Location
    
    /**
    * Set the mirror photo function switch, default to false.
    *
    * @type { Bool }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var mirror: Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public init(
        quality!: QualityLevel = QualityLevel.QUALITY_LEVEL_MEDIUM,
        rotation!: ImageRotation = ImageRotation.ROTATION_0,
        location!: Location = Location(-1.0, -1.0, -1.0),
        mirror!: Bool = false
    )
}


/**
* Enumerates the camera video codec type.
*
* @enum { VideoCodecType }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum VideoCodecType {
    /**
    * Codec type AVC.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    AVC |
    /**
    * Codec type HEVC.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    HEVC |
    ...
}



/**
* Capture start info.
*
* @typedef CaptureStartInfo
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public struct CaptureStartInfo {
    /**
    * Capture id.
    *
    * @type { Int32 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var captureId: Int32
    
    /**
    * Time(in milliseconds) is the shutter time for the photo.
    *
    * @type { UInt32 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var time: UInt32
}


/**
* Frame shutter callback info.
*
* @typedef FrameShutterInfo
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public struct FrameShutterInfo {
    /**
    * Capture id.
    *
    * @type { Int32 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var captureId: Int32
    
    /**
    * Timestamp for frame.
    *
    * @type { UInt64 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var timestamp: UInt64
}


/**
* Capture end info.
*
* @typedef CaptureEndInfo
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public struct CaptureEndInfo {
    /**
    * Capture id.
    *
    * @type { Int32 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var captureId: Int32
    
    /**
    * Frame count.
    *
    * @type { Int32 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var frameCount: Int32
}


/**
* Frame shutter end callback info.
*
* @typedef FrameShutterEndInfo
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public struct FrameShutterEndInfo {
    /**
    * Capture id.
    *
    * @type { Int32 }
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public var captureId: Int32
}


/**
* Types of preconfig, which used to configure session conveniently.
* Preconfig type contains common use cases of camera output.
*
* @enum { Int32 }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum PreconfigType {
    /**
    * 720P output for preconfig.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    PRECONFIG_720P |
    /**
    * 1080P output for preconfig.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    PRECONFIG_1080P |
    /**
    * 4K output for preconfig.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    PRECONFIG_4K |
    /**
    * high quality output for preconfig.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    PRECONFIG_HIGH_QUALITY |
    ...
}



/**
* The aspect ratios of preconfig, which used to configure session conveniently.
*
* @enum { Float32 }
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum PreconfigRatio {
    /**
    * Aspect ratio 1:1 for preconfig.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    PRECONFIG_RATIO_1_1 |
    /**
    * Aspect ratio 4:3 for preconfig.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    PRECONFIG_RATIO_4_3 |
    /**
    * Aspect ratio 16:9 for preconfig.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    PRECONFIG_RATIO_16_9 |
    ...
}



/**
* Camera input object.
*
* @interface CameraInput
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CameraInput <: RemoteDataLite {
    /**
    * Open camera.
    *
    * @throws { BusinessException } 7400107 - Can not use camera cause of conflict.
    * @throws { BusinessException } 7400108 - Camera disabled cause of security reason.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func open(): Unit
    
    /**
    * Open camera.
    *
    * @param { Bool } isSecureEnabled - Enable secure camera.
    * @returns { UInt64 } Return the result.
    * @throws { BusinessException } 7400107 - Can not use camera cause of conflict.
    * @throws { BusinessException } 7400108 - Camera disabled cause of security reason.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func open(isSecureEnabled: Bool): UInt64
    
    /**
    * Close camera.
    *
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func close(): Unit
    
    /**
    * Subscribes to error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { CameraDevice } camera - Camera device.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the camera input errors.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, camera: CameraDevice, callback: Callback1Argument<BusinessException>): Unit
    
    /**
    * Unsubscribes from error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { CameraDevice } camera - Camera device.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the camera input errors.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, camera: CameraDevice, callback: Callback1Argument<BusinessException>): Unit
    
    /**
    * Unsubscribes from error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { CameraDevice } camera - Camera device.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, camera: CameraDevice): Unit
}


/**
* Camera manager object.
*
* @interface CameraManager
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class CameraManager <: RemoteDataLite {
    /**
    * Determine whether camera is muted.
    *
    * @returns { Bool } Is camera muted.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func isCameraMuted(): Bool
    
    /**
    * Check if a specifies torch mode is supported.
    * @param { TorchMode } mode - torch mode.
    * @returns { Bool } is torch mode supported.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func isTorchModeSupported(torchMode: TorchMode): Bool
    
    /**
    * Check if the device has a torch.
    *
    * @returns { Bool } this value that specifies whether the device has a torch.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func isTorchSupported(): Bool
    
    /**
    * Get current torch mode.
    *
    * @returns { TorchMode } torch mode.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getTorchMode(): TorchMode
    
    /**
    * Set torch mode to the device.
    *
    * @param { TorchMode } mode - torch mode.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func setTorchMode(torchMode: TorchMode): Unit
    
    /**
    * Gets supported camera descriptions.
    *
    * @returns { Array<CameraDevice> } An array of supported cameras.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getSupportedCameras(): Array<CameraDevice>
    
    /**
    * Gets supported scene mode for specific camera.
    *
    * @param { CameraDevice } camera - Camera device.
    * @returns { Array<SceneMode> } An array of supported scene mode of camera.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getSupportedSceneModes(camera: CameraDevice): Array<SceneMode>
    
    /**
    * Gets supported output capability for specific camera.
    *
    * @param { CameraDevice } camera - Camera device.
    * @param { SceneMode } mode - Scene mode.
    * @returns { CameraOutputCapability } The camera output capability.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getSupportedOutputCapability(camera: CameraDevice, mode: SceneMode): CameraOutputCapability
    
    /**
    * Creates a CameraInput instance by camera.
    *
    * @permission ohos.permission.CAMERA
    * @param { CameraDevice } camera - Camera device used to create the instance.
    * @returns { CameraInput } The CameraInput instance.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.CAMERA",
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func createCameraInput(camera: CameraDevice): CameraInput
    
    /**
    * Creates a CameraInput instance by camera position and type.
    *
    * @permission ohos.permission.CAMERA
    * @param { CameraPosition } position - Target camera position.
    * @param { CameraType } type - Target camera type.
    * @returns { CameraInput } The CameraInput instance.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.CAMERA",
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func createCameraInput(position: CameraPosition, `type`: CameraType): CameraInput
    
    /**
    * Creates a PreviewOutput instance.
    *
    * @param { Profile } profile - Preview output profile.
    * @param { String } surfaceId - Surface object id used in camera photo output.
    * @returns { PreviewOutput } The PreviewOutput instance.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
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
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
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
    * @returns { PhotoOutput } The PhotoOutput instance.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func createPhotoOutput(): PhotoOutput
    
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
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func createPhotoOutput(profile: Profile): PhotoOutput
    
    /**
    * Creates a VideoOutput instance.
    *
    * @param { VideoProfile } profile - Video profile.
    * @param { String } surfaceId - Surface object id used in camera video output.
    * @returns { VideoOutput } The VideoOutput instance.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
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
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func createVideoOutput(surfaceId: String): VideoOutput
    
    /**
    * Creates a MetadataOutput instance.
    *
    * @param { Array<MetadataObjectType> } metadataObjectTypes - Array of MetadataObjectType.
    * @returns { MetadataOutput } The MetadataOutput instance.
    * @throws { BusinessException } 7400101 - Parameter missing or parameter type incorrect.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func createMetadataOutput(metadataObjectTypes: Array<MetadataObjectType>): MetadataOutput
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func createSession(mode: SceneMode): Session
    
    /**
    * Subscribes camera status change event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<CameraStatusInfo> } callback - Callback used to get the camera status change.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<CameraStatusInfo>): Unit
    
    /**
    * Subscribes fold status change event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<FoldStatusInfo> } callback - Callback used to get the fold status change.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<FoldStatusInfo>): Unit
    
    /**
    * Subscribes torch status change event callback.
    *
    * @param { CameraCallbackType } type - Event type
    * @param { Callback1Argument<TorchStatusInfo> } callback - Callback used to return the torch status change
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<TorchStatusInfo>): Unit
    
    /**
    * Unsubscribes from camera status change event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<CameraStatusInfo> } callback - Callback used to get the camera status change.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<CameraStatusInfo>): Unit
    
    /**
    * Unsubscribes from fold status change event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<FoldStatusInfo> } callback - Callback used to get the fold status change.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<FoldStatusInfo>): Unit
    
    /**
    * Unsubscribes torch status change event callback.
    *
    * @param { CameraCallbackType } type - Event type
    * @param { Callback1Argument<TorchStatusInfo> } callback - Callback used to return the torch status change
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<TorchStatusInfo>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType): Unit
}


/**
* Camera output object.
*
* @interface CameraOutput
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
sealed interface CameraOutput {
    /**
    * Release output instance.
    *
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func release(): Unit
}


/**
* Session object.
*
* @interface Session
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
sealed interface Session {
    /**
    * Begin capture session config.
    *
    * @throws { BusinessException } 7400105 - Session config locked.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func beginConfig(): Unit
    
    /**
    * Commit capture session config.
    *
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func commitConfig(): Unit
    
    /**
    * Determines whether the camera input can be added into the session.
    * This method is valid between Session.beginConfig() and Session.commitConfig().
    *
    * @param { CameraInput } cameraInput - Target camera input to add.
    * @returns { boolean } You can add the input into the session.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
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
    * @throws { BusinessException } 7400103 - Session not config.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
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
    * @throws { BusinessException } 7400103 - Session not config.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func removeInput(cameraInput: CameraInput): Unit
    
    /**
    * Determines whether the camera output can be added into the session.
    * This method is valid after Session.addInput(cameraInput) and before Session.commitConfig().
    *
    * @param { CameraOutput } cameraOutput - Target camera output to add.
    * @returns { boolean } You can add the output into the session.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
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
    * @throws { BusinessException } 7400103 - Session not config.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
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
    * @throws { BusinessException } 7400103 - Session not config.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func removeOutput(cameraOutput: CameraOutput): Unit
    
    /**
    * Starts capture session.
    *
    * @throws { BusinessException } 7400102 - Operation not allowed.
    * @throws { BusinessException } 7400103 - Session not config.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func start(): Unit
    
    /**
    * Stops capture session.
    *
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func stop(): Unit
    
    /**
    * Release capture session instance.
    *
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    func release(): Unit
}


/**
* Photo session object.
*
* @interface PhotoSession
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
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
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func canPreconfig(preconfigType: PreconfigType, preconfigRatio!: PreconfigRatio = PRECONFIG_RATIO_4_3): Bool
    
    /**
    * Configure photo session with the preconfig type.
    * Must choose preconfig type from {@link PreconfigType}.
    *
    * @param { PreconfigType } preconfigType - preconfig type.
    * @param { PreconfigRatio } preconfigRatio - the aspect ratio of surface for preconfig,
    *                                            default value {@link PreconfigRatio#PRECONFIG_RATIO_4_3}
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func preconfig(
        preconfigType: PreconfigType,
        preconfigRatio!: PreconfigRatio = PreconfigRatio.PRECONFIG_RATIO_4_3
    ): Unit
    
    /**
    * Subscribes to error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<BusinessException>} callback - Callback used to get the capture session errors.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<BusinessException>): Unit
    
    /**
    * Unsubscribes from error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the capture session errors.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<BusinessException>): Unit
    
    /**
    * Subscribes to focus state change events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<FocusState> } callback - Callback used to get the capture focus state change.
    * @syscap SystemCapability.Multimedia.Camera.Core
    * @since 11
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<FocusState>): Unit
    
    /**
    * Unsubscribes from focus state change events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<FocusState> } callback - Callback used to get the capture focus state change.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<FocusState>): Unit
    
    /**
    * Subscribes to smooth zoom info events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<SmoothZoomInfo> } callback - Callback used to get the zoom info.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<SmoothZoomInfo>): Unit
    
    /**
    * Unsubscribes from zoom info events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<SmoothZoomInfo> } callback - Callback used to get the zoom info.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<SmoothZoomInfo>): Unit
    
    /**
    * Unsubscribes all callbacks from the event specified by the param.
    *
    * @param { CameraCallbackType } type - Event type.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType): Unit
}


@!APILevel[
    21,
    stagemodelonly: true,
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
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func canPreconfig(preconfigType: PreconfigType, preconfigRatio!: PreconfigRatio = PRECONFIG_RATIO_16_9): Bool
    
    /**
    * Configure video session with the preconfig type.
    * Must choose preconfig type from {@link PreconfigType}.
    *
    * @param { PreconfigType } preconfigType - preconfig type.
    * @param { PreconfigRatio } preconfigRatio - the aspect ratio of surface for preconfig,
    *                                            default value {@link PreconfigRatio#PRECONFIG_RATIO_16_9}.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func preconfig(
        preconfigType: PreconfigType,
        preconfigRatio!: PreconfigRatio = PreconfigRatio.PRECONFIG_RATIO_16_9
    ): Unit
    
    /**
    * Subscribes to error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<BusinessException>} callback - Callback used to get the capture session errors.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<BusinessException>): Unit
    
    /**
    * Unsubscribes from error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the capture session errors.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<BusinessException>): Unit
    
    /**
    * Subscribes to focus state change events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<FocusState> } callback - Callback used to get the capture focus state change.
    * @syscap SystemCapability.Multimedia.Camera.Core
    * @since 11
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<FocusState>): Unit
    
    /**
    * Unsubscribes from focus state change events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<FocusState> } callback - Callback used to get the capture focus state change.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<FocusState>): Unit
    
    /**
    * Subscribes to smooth zoom info events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<SmoothZoomInfo> } callback - Callback used to get the zoom info.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<SmoothZoomInfo>): Unit
    
    /**
    * Unsubscribes from zoom info events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<SmoothZoomInfo> } callback - Callback used to get the zoom info.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<SmoothZoomInfo>): Unit
    
    /**
    * Unsubscribes all callbacks from the event specified by the param.
    *
    * @param { CameraCallbackType } type - Event type.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType): Unit
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class SecureSession <: RemoteDataLite & Session & Flash & AutoExposure & Focus & Zoom {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func addSecureOutput(previewOutput: PreviewOutput): Unit
    
    /**
    * Subscribes to error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<BusinessException>} callback - Callback used to get the capture session errors.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<BusinessException>): Unit
    
    /**
    * Unsubscribes from error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the capture session errors.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<BusinessException>): Unit
    
    /**
    * Subscribes to focus state change events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<FocusState> } callback - Callback used to get the capture focus state change.
    * @syscap SystemCapability.Multimedia.Camera.Core
    * @since 11
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<FocusState>): Unit
    
    /**
    * Unsubscribes from focus state change events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<FocusState> } callback - Callback used to get the capture focus state change.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<FocusState>): Unit
    
    /**
    * Unsubscribes all callbacks from the event specified by the param.
    *
    * @param { CameraCallbackType } type - Event type.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType): Unit
}


/**
* Metadata Output object
*
* @interface MetadataOutput
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class MetadataOutput <: RemoteDataLite & CameraOutput {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func release(): Unit
    
    /**
    * Start output metadata
    *
    * @throws { BusinessException } 7400103 - Session not config.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func start(): Unit
    
    /**
    * Stop output metadata
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func stop(): Unit
    
    /**
    * Subscribes to metadata objects available event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<Array<MetadataObject>> } callback - Callback used to get the available metadata objects.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<Array<MetadataObject>>): Unit
    
    /**
    * Subscribes to error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the video output errors.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<BusinessException>): Unit
    
    /**
    * Unsubscribes from metadata objects available event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<Array<MetadataObject>> } callback - Callback used to get the available metadata objects.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<Array<MetadataObject>>): Unit
    
    /**
    * Unsubscribes from error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the video output errors.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<BusinessException>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType): Unit
}


/**
* Photo output object.
*
* @interface PhotoOutput
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class PhotoOutput <: RemoteDataLite & CameraOutput {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func release(): Unit
    
    /**
    * Start capture output.
    *
    * @throws { BusinessException } 7400104 - Session not running.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
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
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func capture(setting: PhotoCaptureSetting): Unit
    
    /**
    * Confirm if moving photo supported.
    *
    * @returns { Bool } TRUE if the moving photo is supported.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
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
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.MICROPHONE",
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func enableMovingPhoto(enabled: Bool): Unit
    
    /**
    * Check whether to support mirror photo.
    *
    * @returns { Bool } Is the mirror supported.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func isMirrorSupported(): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func enableMirror(enabled: Bool): Unit
    
    /**
    * Get supported moving photo video codec types.
    *
    * @returns { Array<VideoCodecType> } An array of supported video codec types for moving photo.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getSupportedMovingPhotoVideoCodecTypes(): Array<VideoCodecType>
    
    /**
    * Sets codec type for moving photo, default to AVC.
    *
    * @param { VideoCodecType } codecType - Codec type for moving photo.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func setMovingPhotoVideoCodecType(codecType: VideoCodecType): Unit
    
    /**
    * Gets the current preconfig type if you had already call preconfig interface.
    *
    * @returns { Profile } The current preconfig type.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
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
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getPhotoRotation(deviceDegree: Int32): ImageRotation
    
    /**
    * Subscribes capture start event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<CaptureStartInfo> } callback - Callback used to get the capture start info.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<CaptureStartInfo>): Unit
    
    /**
    * Subscribes frame shutter event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<FrameShutterInfo> } callback - Callback used to get the frame shutter information.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<FrameShutterInfo>): Unit
    
    /**
    * Subscribes capture end event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<CaptureEndInfo> } callback - Callback used to get the capture end information.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<CaptureEndInfo>): Unit
    
    /**
    * Subscribes frame shutter end event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<FrameShutterEndInfo> } callback - Callback used to get the frame shutter end information.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<FrameShutterEndInfo>): Unit
    
    /**
    * Subscribes capture ready event callback. After receiving the callback, can proceed to the next capture
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback0Argument } callback - Callback used to notice capture ready.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback0Argument): Unit
    
    /**
    * Subscribes estimated capture duration event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<Int32> } callback - Callback used to notify the estimated capture duration (in milliseconds).
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<Int32>): Unit
    
    /**
    * Subscribes to error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the photo output errors.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<BusinessException>): Unit
    
    /**
    * Unsubscribes from capture start event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<CaptureStartInfo> } callback - Callback used to get the capture start info.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<CaptureStartInfo>): Unit
    
    /**
    * Unsubscribes from frame shutter event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<FrameShutterInfo> } callback - Callback used to get the frame shutter information.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<FrameShutterInfo>): Unit
    
    /**
    * Unsubscribes from capture end event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<CaptureEndInfo> } callback - Callback used to get the capture end information.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<CaptureEndInfo>): Unit
    
    /**
    * Unsubscribes from frame shutter end event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<FrameShutterEndInfo> } callback - Callback used to get the frame shutter end information.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<FrameShutterEndInfo>): Unit
    
    /**
    * Unsubscribes from capture ready event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback0Argument } callback - Callback used to notice capture ready.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback0Argument): Unit
    
    /**
    * Unsubscribes from estimated capture duration event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<Int32> } callback - Callback used to notify the estimated capture duration (in milliseconds).
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<Int32>): Unit
    
    /**
    * Unsubscribes from error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the photo output errors.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<BusinessException>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType): Unit
}


/**
* Preview output object.
*
* @interface PreviewOutput
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class PreviewOutput <: RemoteDataLite & CameraOutput {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func release(): Unit
    
    /**
    * Get supported frame rates which can be set during session running.
    *
    * @returns { Array<FrameRateRange> } The array of supported frame rate range.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
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
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func setFrameRate(minFps: Int32, maxFps: Int32): Unit
    
    /**
    * Get active frame rate range which has been set before.
    *
    * @returns { FrameRateRange } The active frame rate range.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getActiveFrameRate(): FrameRateRange
    
    /**
    * Gets the current preconfig type if you had already call preconfig interface.
    *
    * @returns { Profile } The current preconfig type.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
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
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
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
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func setPreviewRotation(previewRotation: ImageRotation, isDisplayLocked!: Bool = false): Unit
    
    /**
    * Subscribes frame start event callback.
    * Subscribes frame end event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback0Argument } callback - Callback used to return the result.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback0Argument): Unit
    
    /**
    * Subscribes to error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the preview output errors.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<BusinessException>): Unit
    
    /**
    * Unsubscribes from frame start event callback.
    * Unsubscribes from frame end event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback0Argument } callback - Callback used to return the result.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback0Argument): Unit
    
    /**
    * Unsubscribes from error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the preview output errors.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<BusinessException>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType): Unit
}


/**
* Video output object.
*
* @interface VideoOutput
* @syscap SystemCapability.Multimedia.Camera.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class VideoOutput <: RemoteDataLite & CameraOutput {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func release(): Unit
    
    /**
    * Start video output.
    *
    * @throws { BusinessException } 7400103 - Session not config.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func start(): Unit
    
    /**
    * Stop video output.
    *
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func stop(): Unit
    
    /**
    * Get supported frame rates which can be set during session running.
    *
    * @returns { Array<FrameRateRange> } The array of supported frame rate range.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
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
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func setFrameRate(minFps: Int32, maxFps: Int32): Unit
    
    /**
    * Get active frame rate range which has been set before.
    *
    * @returns { FrameRateRange } The active frame rate range.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getActiveFrameRate(): FrameRateRange
    
    /**
    * Gets the current preconfig type if you had already call preconfig interface.
    *
    * @returns { VideoProfile } The current preconfig type.
    * @throws { BusinessException } 7400201 - Camera service fatal error.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
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
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func getVideoRotation(deviceDegree: Int32): ImageRotation
    
    /**
    * Subscribes frame start event callback.
    * Unsubscribes from frame end event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback0Argument } callback - Callback used to return the result.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback0Argument): Unit
    
    /**
    * Subscribes to error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the video output errors.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func on(`type`: CameraCallbackType, callback: Callback1Argument<BusinessException>): Unit
    
    /**
    * Unsubscribes from frame start event callback.
    * Unsubscribes from frame end event callback.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback0Argument } callback - Callback used to return the result.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback0Argument): Unit
    
    /**
    * Unsubscribes from error events.
    *
    * @param { CameraCallbackType } type - Event type.
    * @param { Callback1Argument<BusinessException> } callback - Callback used to get the video output errors.
    * @syscap SystemCapability.Multimedia.Camera.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType, callback: Callback1Argument<BusinessException>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func off(`type`: CameraCallbackType): Unit
}


