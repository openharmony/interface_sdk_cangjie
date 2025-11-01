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

package ohos.bluetooth.constant

import ohos.labels.APILevel

/**
 * The enum of profile connection state.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum ProfileConnectionState {
    
    /**
     * the current profile is disconnected
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    StateDisconnected
    | 
    
    /**
     * the current profile is being connected
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    StateConnecting
    | 
    
    /**
     * the current profile is connected
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    StateConnected
    | 
    
    /**
     * the current profile is being disconnected
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    StateDisconnecting
    | ...
}


extend ProfileConnectionState <: ToString {
    
    /**
     * Converts the ProfileConnectionState to its string representation.
     * @returns { String } A string representation of the ProfileConnectionState.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}


extend ProfileConnectionState <: Equatable<ProfileConnectionState> {
    
    /**
     * Compares this ProfileConnectionState with another for equality.
     * @param { ProfileConnectionState } other - The ProfileConnectionState to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: ProfileConnectionState): Bool
    
    /**
     * Compares this ProfileConnectionState with another for inequality.
     * @param { ProfileConnectionState } other - The ProfileConnectionState to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: ProfileConnectionState): Bool
}
