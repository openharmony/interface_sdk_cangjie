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
import ohos.labels.APILevel
import std.deriving.Derive

import ohos.business_exception.{ ERR_NO_PERMISSION, ERR_NOT_SYSTEM_APP, ERR_PARAMETER_ERROR, ERR_NOT_SUPPOERTED}
import std.collection.HashMap
import ohos.ffi.*
import ohos.business_exception.BusinessException
import ohos.callback_invoke.{ Callback1Argument, CallbackObject}
import ohos.hilog.*
import std.collection.{HashMap, ArrayList}
import ohos.labels.*

/**
* Wi-Fi device address( mac / bssid ) type.
* @relation enum DeviceAddressType
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.WiFi.Core"
]
public enum DeviceAddressType {
    /**
    * random device address
    * @relation RANDOM_DEVICE_ADDRESS = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    RandomDeviceAddress |
    /**
    * real device address
    * @relation REAL_DEVICE_ADDRESS = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    RealDeviceAddress |
    ...
}



/**
* Describes the wifi security type.
* @relation enum WifiSecurityType
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.WiFi.Core"
]
public enum WifiSecurityType {
    /**
    * Invalid security type
    * @relation WIFI_SEC_TYPE_INVALID = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeInvalid |
    /**
    * Open
    * @relation WIFI_SEC_TYPE_OPEN = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeOpen |
    /**
    * Wired Equivalent Privacy (WEP)
    * @relation WIFI_SEC_TYPE_WEP = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeWep |
    /**
    * Pre-shared key (PSK)
    * @relation WIFI_SEC_TYPE_PSK = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypePsk |
    /**
    * Simultaneous Authentication of Equals (SAE)
    * @relation WIFI_SEC_TYPE_SAE = 4
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeSae |
    /**
    * EAP authentication.
    * @relation WIFI_SEC_TYPE_EAP = 5
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeEap |
    /**
    * SUITE_B_192 192 bit level.
    * @relation WIFI_SEC_TYPE_EAP_SUITE_B = 6
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeEapSuiteB |
    /**
    * Opportunistic Wireless Encryption.
    * @relation WIFI_SEC_TYPE_OWE = 7
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeOwe |
    /**
    * WAPI certificate to be specified.
    * @relation WIFI_SEC_TYPE_WAPI_CERT = 8
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeWapiCert |
    /**
    * WAPI pre-shared key to be specified.
    * @relation WIFI_SEC_TYPE_WAPI_PSK = 9
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.Core"
    ]
    WifiSecTypeWapiPsk |
    ...
}



/**
* Wi-Fi Category.
* @relation enum WifiCategory
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public enum WifiCategory {
    /**
    * Default.
    * @relation DEFAULT = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    Default |
    /**
    * Wifi6.
    * @relation WIFI6 = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    Wifi6 |
    /**
    * Wifi6+.
    * @relation WIFI6_PLUS = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    Wifi6Plus |
    ...
}



/**
* P2P group owner band.
* @relation enum GroupOwnerBand
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.WiFi.P2P"
]
public enum GroupOwnerBand {
    /**
    * default band.
    * @relation GO_BAND_AUTO  = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    GoBandAuto |
    /**
    * 2.4G band.
    * @relation GO_BAND_2GHZ  = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    GoBand2GHz |
    /**
    * 5G band.
    * @relation GO_BAND_5GHZ  = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    GoBand5GHz |
    ...
}



/**
* Query the Wi-Fi status
* @throws {BusinessException} 801 - Capability not supported.
* @throws {BusinessException} 2501000 - Operation failed.
* @relation function isWifiActive(): boolean
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public func isWifiActive(): Bool


/**
* Obtain the scanned station list. If does't have the permission of ohos.permission.GET_WIFI_PEERS_MAC, return random bssid.
* @throws {BusinessException} 201 - Permission denied.
* @throws {BusinessException} 801 - Capability not supported.
* @throws {BusinessException} 2501000 - Operation failed.
* @relation function getScanInfoList(): Array<WifiScanInfo>
*/
@!APILevel[
    22,
    permission: "ohos.permission.GET_WIFI_INFO",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public func getScanInfoList(): Array<WifiScanInfo>


/**
* Initiate a P2P connection to a device with the specified configuration.
* @throws {BusinessException} 201 - Permission denied.
* @throws {BusinessException} 801 - Capability not supported.
* @throws {BusinessException} 2801000 - Operation failed.
* @throws {BusinessException} 2801001 - Wi-Fi STA disabled.
* @relation function p2pConnect(config: WifiP2PConfig): void
*/
@!APILevel[
    22,
    permission: "ohos.permission.GET_WIFI_INFO",
    syscap: "SystemCapability.Communication.WiFi.P2P"
]
public func p2pConnect(config: WifiP2PConfig): Unit


/**
* Stop an ongoing p2p connection that is being established.
* @throws {BusinessException} 201 - Permission denied.
* @throws {BusinessException} 801 - Capability not supported.
* @throws {BusinessException} 2801000 - Operation failed.
* @throws {BusinessException} 2801001 - Wi-Fi STA disabled.
* @relation function p2pCancelConnect(): void
*/
@!APILevel[
    22,
    permission: "ohos.permission.GET_WIFI_INFO",
    syscap: "SystemCapability.Communication.WiFi.P2P"
]
public func p2pCancelConnect(): Unit


/**
* Start discover Wi-Fi P2P devices.
* @throws {BusinessException} 201 - Permission denied.
* @throws {BusinessException} 801 - Capability not supported.
* @throws {BusinessException} 2801000 - Operation failed.
* @throws {BusinessException} 2801001 - Wi-Fi STA disabled.
* @relation function startDiscoverDevices(): void
*/
@!APILevel[
    22,
    permission: "ohos.permission.GET_WIFI_INFO",
    syscap: "SystemCapability.Communication.WiFi.P2P"
]
public func startDiscoverDevices(): Unit


/**
* Stop discover Wi-Fi P2P devices.
* @throws {BusinessException} 201 - Permission denied.
* @throws {BusinessException} 801 - Capability not supported.
* @throws {BusinessException} 2801000 - Operation failed.
* @throws {BusinessException} 2801001 - Wi-Fi STA disabled.
* @relation function stopDiscoverDevices(): void
*/
@!APILevel[
    22,
    permission: "ohos.permission.GET_WIFI_INFO",
    syscap: "SystemCapability.Communication.WiFi.P2P"
]
public func stopDiscoverDevices(): Unit


/**
* Subscribe Wi-Fi scan status change events.
* @throws {BusinessException} 201 - Permission denied.
* @throws {BusinessException} 801 - Capability not supported.
* @throws {BusinessException} 2801000 - Operation failed.
* @relation function on(type: 'wifiScanStateChange', callback: Callback<number>): void
*/
@!APILevel[
    22,
    permission: "ohos.GET_WIFI_INFO",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public func on(eventType: WifiCallbackType, callback: Callback1Argument<Int32>): Unit


/**
* Unsubscribe Wi-Fi related events.
* All callback functions will be deregistered If there is no specific callback parameter.
* @throws {BusinessException} 201 - Permission denied.
* @throws {BusinessException} 801 - Capability not supported.
* @throws {BusinessException} 2801000 - Operation failed.
* @relation function off(type: 'wifiScanStateChange', callback?: Callback<number>): void
*/
@!APILevel[
    22,
    permission: "ohos.GET_WIFI_INFO",
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public func off(eventType: WifiCallbackType, callback!: ?CallbackObject = None): Unit


/**
* WiFi registration event type.
*/
@Derive[ToString, Equatable, Hashable]
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public enum WifiCallbackType {
    /**
    * Wi-Fi scan status change event type.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    WifiScanStateChange |
    ...
}



/**
* Wi-Fi information elements.
* @relation interface WifiInfoElem
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public class WifiInfoElem {
    /**
    * Element id
    * @relation eid: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let eid: UInt32
    
    /**
    * Element content
    * @relation content: Uint8Array
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let content: Array<UInt8>
}


/**
* P2P config.
* @relation interface WifiP2PConfig
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.WiFi.P2P"
]
public class WifiP2PConfig {
    /**
    * Device mac address
    * @relation deviceAddress: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public let deviceAddress: String
    
    /**
    * Group network ID. When creating a group, -1 indicates creates a temporary group,
    * -2: indicates creates a persistent group
    * @relation netId: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public let netId: Int32
    
    /**
    * The passphrase of this {@code WifiP2pConfig} instance 
    * @relation passphrase: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public let passphrase: String
    
    /**
    * Group name 
    * @relation groupName: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public let groupName: String
    
    /**
    * Group owner band
    * @relation goBand: GroupOwnerBand
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public let goBand: GroupOwnerBand
    
    /**
    * Device mac address type
    * @relation deviceAddressType?: DeviceAddressType
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public let deviceAddressType: DeviceAddressType
    
    /**
    * WifiP2PConfig constructor
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.P2P"
    ]
    public init(
        deviceAddress: String,
        netId: Int32,
        passphrase: String,
        groupName: String,
        goBand: GroupOwnerBand,
        deviceAddressType!: DeviceAddressType = RandomDeviceAddress
    )
}


/**
* Describes the scanned Wi-Fi information.
* @relation interface WifiScanInfo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.WiFi.STA"
]
public class WifiScanInfo {
    /**
    * Wi-Fi SSID: the maximum length is 32 
    * @relation ssid: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let ssid: String
    
    /**
    * Wi-Fi bssid(MAC): the length is 6
    * @relation bssid: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let bssid: String
    
    /**
    * Wi-Fi bssid type
    * @relation bssidType: DeviceAddressType
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let bssidType: DeviceAddressType
    
    /**
    * Hotspot capability
    * @relation capabilities: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let capabilities: String
    
    /**
    * Security type: reference definition of WifiSecurityType
    * @relation securityType: WifiSecurityType
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let securityType: WifiSecurityType
    
    /**
    * Received signal strength indicator (RSSI)
    * @relation rssi: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let rssi: Int32
    
    /**
    * Frequency band, 1: 2.4G, 2: 5G
    * @relation band: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let band: Int32
    
    /**
    * Frequency
    * @relation frequency: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let frequency: Int32
    
    /**
    * Channel width
    * @relation channelWidth: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let channelWidth: Int32
    
    /**
    * Center frequency 0.
    * @relation centerFrequency0: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let centerFrequency0: Int32
    
    /**
    * Center frequency 1.
    * @relation centerFrequency1: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let centerFrequency1: Int32
    
    /**
    * Information elements.
    * @relation infoElems: Array<WifiInfoElem>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let infoElems: Array<WifiInfoElem>
    
    /**
    * Time stamp
    * @relation timestamp: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let timestamp: Int64
    
    /**
    * Supported wifi category
    * @relation supportedWifiCategory: WifiCategory
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let supportedWifiCategory: WifiCategory
    
    /**
    * Whether the Wi-Fi hotspot is HiLink network.
    * @relation isHiLinkNetwork: boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.WiFi.STA"
    ]
    public let isHiLinkNetwork: Bool
}


