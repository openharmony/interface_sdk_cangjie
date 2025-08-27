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

package ohos.bluetooth.a2dp
import ohos.bluetooth.*
import ohos.bluetooth.base_profile.*
import ohos.bluetooth.constant.*
import ohos.business_exception.{ BusinessException, ERR_PARAMETER_ERROR}
import ohos.callback_invoke.{ CallbackObject, Callback1Argument}
import ohos.ffi.*
import ohos.labels.*
import std.collection.{ArrayList, HashMap}
import std.deriving.*


/**
* create the instance of a2dp profile.
*
* @relation function createA2dpSrcProfile(): A2dpSourceProfile
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func createA2dpSrcProfile(): A2dpSourceProfile


/**
* Manager a2dp source profile.
*
* @relation interface A2dpSourceProfile extends BaseProfile
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class A2dpSourceProfile <: BaseProfile {
    /**
    * Obtains the playing state of device.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900004 - Profile not supported.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @relation getPlayingState(deviceId: string): PlayingState
    */
    @!APILevel[
        21,
        permission: "ohos.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func getPlayingState(deviceId: String): PlayingState
    
    /**
    * Obtains the connected devices list of profile.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900004 - Profile not supported.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @relation getConnectedDevices(): Array<string>
    */
    @!APILevel[
        21,
        permission: "ohos.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func getConnectedDevices(): Array<String>
    
    /**
    * Obtains the profile connection state.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900004 - Profile not supported.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @relation getConnectionState(deviceId: string): ProfileConnectionState
    */
    @!APILevel[
        21,
        permission: "ohos.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func getConnectionState(deviceId: String): ProfileConnectionState
    
    /**
    * Subscribe the event reported when the profile connection state changes.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * 2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @relation on(type: 'connectionStateChange', callback: Callback<StateChangeParam>): void
    */
    @!APILevel[
        21,
        permission: "ohos.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(eventType: ProfileCallbackType, callback: Callback1Argument<StateChangeParam>): Unit
    
    /**
    * Unsubscribe the event reported when the profile connection state changes.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * 2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @relation off(type: 'connectionStateChange', callback?: Callback<StateChangeParam>): void
    */
    @!APILevel[
        21,
        permission: "ohos.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func off(eventType: ProfileCallbackType, callback: CallbackObject): Unit
    
    /**
    * Unsubscribe the event reported when the profile connection state changes.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * 2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @relation off(type: 'connectionStateChange', callback?: Callback<StateChangeParam>): void
    */
    @!APILevel[
        21,
        permission: "ohos.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func off(eventType: ProfileCallbackType): Unit
}


@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum PlayingState {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    StateNotPlaying |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    StatePlaying |
    ...
}



@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class CodecInfo {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var codecType: CodecType
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var codecBitsPerSample: CodecBitsPerSample
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var codecChannelMode: CodecChannelMode
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var codecSampleRate: CodecSampleRate
}


@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum CodecType {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecTypeInvalid |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecTypeSbc |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecTypeAac |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecTypeL2hc |
    ...
}



@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum CodecChannelMode {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecChannelModeNone |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecChannelModeMono |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecChannelModeStereo |
    ...
}



@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum CodecBitsPerSample {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecBitsPerSampleNone |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecBitsPerSample16 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecBitsPerSample24 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecBitsPerSample32 |
    ...
}



@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum CodecSampleRate {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecSampleRateNone |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecSampleRate44100 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecSampleRate48000 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecSampleRate88200 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecSampleRate96000 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecSampleRate176400 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CodecSampleRate192000 |
    ...
}



