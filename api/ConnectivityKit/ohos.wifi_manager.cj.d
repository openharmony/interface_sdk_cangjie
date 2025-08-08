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

package ohos.wifi_manager
import std.collection.HashMap
import ohos.labels.*
import ohos.base.*
import ohos.ffi.*

import ohos.hilog.*
import std.collection.{HashMap, ArrayList}
import std.sync.AtomicBool

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.WiFi.Core"
]
public enum DeviceAddressType <: ToString {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    RANDOM_DEVICE_ADDRESS |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    REAL_DEVICE_ADDRESS |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    public func toString(): String
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.WiFi.Core"
]
public enum WifiSecurityType <: Equatable<WifiSecurityType> & ToString {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WIFI_SEC_TYPE_INVALID |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WIFI_SEC_TYPE_OPEN |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WIFI_SEC_TYPE_WEP |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WIFI_SEC_TYPE_PSK |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WIFI_SEC_TYPE_SAE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WIFI_SEC_TYPE_EAP |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WIFI_SEC_TYPE_EAP_SUITE_B |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WIFI_SEC_TYPE_OWE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WIFI_SEC_TYPE_WAPI_CERT |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WIFI_SEC_TYPE_WAPI_PSK |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    public operator func ==(that: WifiSecurityType): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    public func toString(): String
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public enum WifiCategory <: ToString {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    DEFAULT |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    WIFI6 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    WIFI6_PLUS |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public func toString(): String
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public func isWifiActive(): Bool


@!APILevel[
    21,
    permission: "ohos.permission.GET_WIFI_INFO",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public func getScanInfoList(): Array<WifiScanInfo>


@!APILevel[
    21,
    permission: "ohos.permission.GET_WIFI_INFO",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.WiFi.P2P"
]
public func p2pCancelConnect(): Unit


@!APILevel[
    21,
    permission: "ohos.permission.GET_WIFI_INFO",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.WiFi.P2P"
]
public func startDiscoverDevices(): Unit


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public class WifiInfoElem <: ToString {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public func toString(): String
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public class WifiScanInfo <: ToString {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public func toString(): String
}


