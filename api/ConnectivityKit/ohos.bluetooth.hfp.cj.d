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

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file.

package ohos.bluetooth.hfp

import ohos.bluetooth.base_profile.{ BaseProfile, StateChangeParam, ProfileCallbackType }
import ohos.bluetooth.constant.ProfileConnectionState
import ohos.callback_invoke.{CallbackObject, Callback1Argument}
import ohos.labels.APILevel

/**
 * create the instance of hfp profile.
 *
 * @returns { HandsFreeAudioGatewayProfile } Returns the instance of profile.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func createHfpAgProfile(): HandsFreeAudioGatewayProfile

/**
 * Manager hfp source profile.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class HandsFreeAudioGatewayProfile <: BaseProfile {
    /**
     * Obtains the connected devices list of profile.
     *
     * @returns { Array<String> } Returns the address of connected devices list.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900003 - Bluetooth disabled.
     * @throws { BusinessException } 2900004 - Profile not supported.
     * @throws { BusinessException } 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func getConnectedDevices(): Array<String>

    /**
     * Obtains the profile connection state.
     *
     * @param { String } deviceId - Indicates device ID. For example, "11:22:33:AA:BB:FF".
     * @returns { ProfileConnectionState } Returns the connection state.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900003 - Bluetooth disabled.
     * @throws { BusinessException } 2900004 - Profile not supported.
     * @throws { BusinessException } 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func getConnectionState(deviceId: String): ProfileConnectionState

    /**
     * Subscribe the event reported when the profile connection state changes .
     *
     * @param { ProfileCallbackType } eventType - Type of the profile connection state changes event to listen for.
     * @param { Callback1Argument<StateChangeParam> } callback - Callback used to listen for event.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(eventType: ProfileCallbackType, callback: Callback1Argument<StateChangeParam>): Unit

    /**
     * Unsubscribe the event reported when the profile connection state changes .
     *
     * @param { ProfileCallbackType } eventType - Type of the profile connection state changes event to listen for.
     * @param { CallbackObject } callback - Callback used to listen for event.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func off(eventType: ProfileCallbackType, callback: CallbackObject): Unit

    /**
     * Unsubscribe the event reported when the profile connection state changes .
     *
     * @param { ProfileCallbackType } eventType - Type of the profile connection state changes event to listen for.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func off(eventType: ProfileCallbackType): Unit
}
