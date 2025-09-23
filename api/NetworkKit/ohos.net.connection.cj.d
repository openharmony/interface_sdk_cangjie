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

package ohos.net.connection
import ohos.labels.*
import ohos.ffi.*
import ohos.business_exception.getUniversalErrorMsg
import std.collection.*
import std.deriving.Derive

import ohos.hilog.*
import ohos.business_exception.BusinessException
import ohos.callback_invoke.*

/**
* Provides an instance that bear data network capabilities.
* 
* @relation export interface NetSpecifier
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetSpecifier {
    /**
    * The transmission capacity and support of the network's global proxy storage data network.
    *
    * @relation netCapabilities: NetCapabilities
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var netCapabilities: NetCapabilities
    
    /**
    * Network identifier, the identifier for Wi Fi networks is "wifi", and the identifier for cellular networks is "simId1" (corresponding to SIM card 1).
    *
    * @relation bearerPrivateIdentifier?: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var bearerPrivateIdentifier: String
    
    /**
    * NetSpecifier constructor
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public init(netCapabilities: NetCapabilities, bearerPrivateIdentifier!: String = "")
}


/**
* Receive information about changes in network capabilities.
*
* @relation export interface NetCapabilityInfo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetCapabilityInfo {
    /**
    * Defines the handle of the data network.
    *
    * @relation netHandle: NetHandle
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var netHandle: NetHandle
    
    /**
    * Defines the network capability set.
    *
    * @relation netCap: NetCapabilities
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var netCap: NetCapabilities
}


/**
* Defines the network capability set.
*
* @relation export interface NetCapabilities
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetCapabilities {
    /**
    * Network type.
    *
    * @relation bearerTypes: Array<NetBearType>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var bearerTypes: Array<NetBearType>
    
    /**
    * Uplink (device-to-network) bandwidth.
    *
    * @relation linkUpBandwidthKbps?: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var linkUpBandwidthKbps: UInt32
    
    /**
    * Downstream (network-to-device) bandwidth.
    *
    * @relation linkDownBandwidthKbps?: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var linkDownBandwidthKbps: UInt32
    
    /**
    * Network-specific capabilities.
    *
    * @relation networkCap?: Array<NetCap>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var networkCap: Array<NetCap>
    
    /**
    * NetCapabilities constructor
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public init(bearerTypes: Array<NetBearType>, linkUpBandwidthKbps!: UInt32 = 0, linkDownBandwidthKbps!: UInt32 = 0,
        networkCap!: Array<NetCap> = Array<NetCap>())
}


/**
* Defines the network connection properties.
*
* @relation export interface ConnectionProperties
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class ConnectionProperties {
    /**
    * Network card name.
    *
    * @relation interfaceName: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var interfaceName: String
    
    /**
    * Domain. The default value is "".
    *
    * @relation domains: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var domains: String
    
    /**
    * Link information.
    *
    * @relation linkAddresses: Array<LinkAddress>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var linkAddresses: Array<LinkAddress>
    
    /**
    * Network address, refer to [NetAddress].
    *
    * @relation dnses: Array<NetAddress>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var dnses: Array<NetAddress>
    
    /**
    * Routing information.
    *
    * @relation routes: Array<RouteInfo>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var routes: Array<RouteInfo>
    
    /**
    * Maximum transmission unit.
    *
    * @relation mtu: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var mtu: UInt32
}


/**
* Defines network route information.
*
* @relation export interface RouteInfo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class RouteInfo {
    /**
    * Network card name.
    *
    * @relation interfaceName: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var interfaceName: String
    
    /**
    * Destination Address
    *
    * @relation destination: LinkAddress
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var destination: LinkAddress
    
    /**
    * Gateway address.
    *
    * @relation gateway: NetAddress
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var gateway: NetAddress
    
    /**
    * Whether a gateway is present.
    *
    * @relation hasGateway: boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var hasGateway: Bool
    
    /**
    * Whether the route is the default route.
    *
    * @relation isDefaultRoute: boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var isDefaultRoute: Bool
}


/**
* Defines network link information.
*
* @relation export interface LinkAddress
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class LinkAddress {
    /**
    * Link address.
    *
    * @relation address: NetAddress
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var address: NetAddress
    
    /**
    * The length of the link address prefix.
    *
    * @relation prefixLength: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var prefixLength: Int32
}


/**
* Defines a network address.
*
* @relation export interface NetAddress
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetAddress {
    /**
    * Network address.
    *
    * @relation address: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var address: String
    
    /**
    * Address family identifier. The value is 1 for IPv4 and 2 for IPv6. The default value is 1.
    *
    * @relation family?: number 
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var family: UInt32
    
    /**
    * Port number. The value ranges from 0 to 65535.
    *
    * @relation port?: number 
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var port: UInt32
    
    /**
    * NetAddress constructor
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public init(address: String, family!: UInt32 = 1, port!: UInt32 = 0)
}


/**
* Network Global Proxy Configuration Information.
*
* @relation export interface HttpProxy 
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class HttpProxy {
    /**
    * Proxy server host name.
    * @relation host: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var host: String
    
    /**
    * Host port.
    * @relation port: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var port: UInt32
    
    /**
    * Do not use a blocking list for proxy servers.
    * @relation exclusionList: Array<string>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var exclusionList: Array<String>
    
    /**
    * Http proxy username.
    * @relation username?: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var username: String
    
    /**
    * Http proxy password.
    * @relation password?: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var password: String
    
    /**
    * HttpProxy constructor
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public init(host: String,  port: UInt32, exclusionList: Array<String>,
        username!: String = "", password!: String = "")
}


/**
* Defines the network capability.
*
* @relation export enum NetCap
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public enum NetCap {
    /**
    * Indicates that the network can access the carrier's MMSC to send and receive multimedia messages.
    *
    * @relation NET_CAPABILITY_MMS = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetCapabilityMms |
    /**
    * Indicates that the network traffic is not metered.
    *
    * @relation NET_CAPABILITY_NOT_METERED = 11
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetCapabilityNotMetered |
    /**
    * Indicates that the network can access the Internet.
    *
    * @relation NET_CAPABILITY_INTERNET = 12
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetCapabilityInternet |
    /**
    * Indicates that the network does not use a VPN.
    *
    * @relation NET_CAPABILITY_NOT_VPN = 15
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetCapabilityNotVpn |
    /**
    * Indicates that the network is available.
    *
    * @relation NET_CAPABILITY_VALIDATED = 16
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetCapabilityValidated |
    ...
}


/**
* Enumerates network types.
*
* @relation export enum NetBearType
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public enum NetBearType {
    /**
    * Indicates that the network is based on a cellular network.
    *
    * @relation BEARER_CELLULAR = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    BearerCellular |
    /**
    * Indicates that the network is based on a Wi-Fi network.
    *
    * @relation BEARER_WIFI = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    BearerWifi |
    /**
    * Indicates that the network is an Ethernet network.
    *
    * @relation BEARER_ETHERNET = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    BearerEthernet |
    ...
}


/**
* net connection event type.
*/
@Derive[Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public enum NetConnectionEvent {
    /**
    * netAvailable
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetAvailable |
    /**
    * netBlockStatusChange
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetBlockStatusChange |
    /**
    * netCapabilitiesChange
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetCapabilitiesChange |
    /**
    * netConnectionPropertiesChange
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetConnectionPropertiesChange |
    /**
    * netLost
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetLost |
    /**
    * netUnavailable
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NetUnavailable |
    ...
}



/**
* Create a network connection with optional netSpecifier and timeout.
* @param { NetSpecifier } netSpecifier - Indicates the network specifier. See {@link NetSpecifier}.
* @param { UInt32 } timeout - The time in milliseconds to attempt looking for a suitable network before
* {@link NetConnection#netUnavailable} is called.
* @returns { NetConnection } the NetConnection of the NetSpecifier.
* @relation createNetConnection(netSpecifier?: NetSpecifier, timeout?: number): NetConnection
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public func createNetConnection(netSpecifier!: ?NetSpecifier = None, timeout!: UInt32 = 0): NetConnection


/**
* Obtains the data network that is activated by default.
* To call this method, you must have the {@code ohos.permission.GET_NETWORK_INFO} permission.
* @permission ohos.permission.GET_NETWORK_INFO
* @returns { NetHandle } The promise returned by the function.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 401 - Parameter error.
* @throws { BusinessException } 2100002 - Operation failed. Cannot connect to service.
* @throws { BusinessException } 2100003 - System internal error.
* @relation getDefaultNet(): Promise<NetHandle>
*/
@!APILevel[
    22,
    permission: "ohos.permission.GET_NETWORK_INFO",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public func getDefaultNet(): NetHandle


/**
* Obtains the default {@link HttpProxy} proxy settings.
*
* If a global proxy is set, the global proxy parameters are returned.
* If the process is bound to a {@link NetHandle} using {@link setAppNet},
* the {@link NetHandle} proxy settings are returned.
* In other cases, the proxy settings of default network are returned.
*
* @returns { HttpProxy } the promise returned by the function.
* @throws { BusinessException } 2100002 - Operation failed. Cannot connect to service.
* @throws { BusinessException } 2100003 - System internal error.
* @relation getDefaultHttpProxy(): Promise<HttpProxy>
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public func getDefaultHttpProxy(): HttpProxy


/**
* Obtains the {@link NetHandle} bound to a process using {@link setAppNet}.
* @returns { NetHandle } the promise returned by the function.
* @throws { BusinessException } 401 - Parameter error.
* @throws { BusinessException } 2100002 - Operation failed. Cannot connect to service.
* @throws { BusinessException } 2100003 - System internal error.
* @relation function getAppNetSync(): NetHandle
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public func getAppNet(): NetHandle


/**
* Binds a process to {@code NetHandle}.
* <p>All the sockets created from the process will be bound to the {@code NetHandle},
* and the resolution of all host names will be managed by the {@code NetHandle}.</p>
* @permission ohos.permission.INTERNET
* @param { NetHandle } netHandle - Indicates the handle. For details, see {@link NetHandle}.
* @returns { Promise<void> } the promise returned by the function.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 401 - Parameter error.
* @throws { BusinessException } 2100001 - Invalid parameter value.
* @throws { BusinessException } 2100002 - Operation failed. Cannot connect to service.
* @throws { BusinessException } 2100003 - System internal error.
* @relation setAppNet(netHandle: NetHandle): Promise<void>
*/
@!APILevel[
    22,
    permission: "ohos.permission.INTERNET",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public func setAppNet(netHandle: NetHandle): Unit


/**
* Obtains the list of data networks that are activated.
* To invoke this method, you must have the {@code ohos.permission.GET_NETWORK_INFO} permission.
* @permission ohos.permission.GET_NETWORK_INFO
* @returns { Array<NetHandle> } The promise returned by the function.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 401 - Parameter error.
* @throws { BusinessException } 2100002 - Operation failed. Cannot connect to service.
* @throws { BusinessException } 2100003 - System internal error.
* @relation getAllNets(): Promise<Array<NetHandle>>
*/
@!APILevel[
    22,
    permission: "ohos.permission.GET_NETWORK_INFO",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public func getAllNets(): Array<NetHandle>


/**
* Queries the connection properties of a network.
* This method requires the {@code ohos.permission.GET_NETWORK_INFO} permission.
* @permission ohos.permission.GET_NETWORK_INFO
* @param { NetHandle } netHandle - Indicates the network to be queried.
* @returns { ConnectionProperties } The promise returned by the function.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 401 - Parameter error.
* @throws { BusinessException } 2100001 - Invalid parameter value.
* @throws { BusinessException } 2100002 - Operation failed. Cannot connect to service.
* @throws { BusinessException } 2100003 - System internal error.
* @relation getConnectionProperties(netHandle: NetHandle): Promise<ConnectionProperties>
*/
@!APILevel[
    22,
    permission: "ohos.permission.GET_NETWORK_INFO",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public func getConnectionProperties(netHandle: NetHandle): ConnectionProperties


/**
* Obtains {@link NetCapabilities} of a {@link NetHandle} object.
* To invoke this method, you must have the {@code ohos.permission.GET_NETWORK_INFO} permission.
* @permission ohos.permission.GET_NETWORK_INFO
* @param { NetHandle } netHandle - Indicates the handle. See {@link NetHandle}.
* @returns { NetCapabilities>} The promise returned by the function.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 401 - Parameter error.
* @throws { BusinessException } 2100001 - Invalid parameter value.
* @throws { BusinessException } 2100002 - Operation failed. Cannot connect to service.
* @throws { BusinessException } 2100003 - System internal error.
* @relation getNetCapabilities(netHandle: NetHandle, callback: AsyncCallback<NetCapabilities>): void
*/
@!APILevel[
    22,
    permission: "ohos.permission.GET_NETWORK_INFO",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public func getNetCapabilities(netHandle: NetHandle): NetCapabilities


/**
* Checks whether data traffic usage on the current network is metered.
* @permission ohos.permission.GET_NETWORK_INFO
* @returns { Bool } Returns true if the current network is metered, else returns false.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 401 - Parameter error.
* @throws { BusinessException } 2100002 - Operation failed. Cannot connect to service.
* @throws { BusinessException } 2100003 - System internal error.
* @relation isDefaultNetMetered(): Promise<boolean>
*/
@!APILevel[
    22,
    permission: "ohos.permission.GET_NETWORK_INFO",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public func isDefaultNetMetered(): Bool


/**
* Checks whether the default data network is activated.
* @permission ohos.permission.GET_NETWORK_INFO
* @returns { Bool } Returns true if the default data network is activated, else returns false.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 401 - Parameter error.
* @throws { BusinessException } 2100002 - Operation failed. Cannot connect to service.
* @throws { BusinessException } 2100003 - System internal error.
* @relation hasDefaultNet(): Promise<boolean>
*/
@!APILevel[
    22,
    permission: "ohos.permission.GET_NETWORK_INFO",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public func hasDefaultNet(): Bool


/**
* Reports the network state is connected.
* @permission ohos.permission.GET_NETWORK_INFO and ohos.permission.INTERNET
* @param { NetHandle } netHandle - Indicates the network whose state is to be reported.
* @returns { Unit } The promise returned by the function.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 401 - Parameter error.
* @throws { BusinessException } 2100001 - Invalid parameter value.
* @throws { BusinessException } 2100002 - Operation failed. Cannot connect to service.
* @throws { BusinessException } 2100003 - System internal error.
* @relation reportNetConnected(netHandle: NetHandle): Promise<void>
*/
@!APILevel[
    22,
    permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public func reportNetConnected(netHandle: NetHandle): Unit


/**
* Reports the network state is disconnected.
* @permission ohos.permission.GET_NETWORK_INFO and ohos.permission.INTERNET
* @param { NetHandle } netHandle - Indicates the network whose state is to be reported.
* @returns { Unit } The promise returned by the function.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 401 - Parameter error.
* @throws { BusinessException } 2100001 - Invalid parameter value.
* @throws { BusinessException } 2100002 - Operation failed. Cannot connect to service.
* @throws { BusinessException } 2100003 - System internal error.
* @relation reportNetDisconnected(netHandle: NetHandle): Promise<void>
*/
@!APILevel[
    22,
    permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public func reportNetDisconnected(netHandle: NetHandle): Unit


/**
* Resolves the host name to obtain all IP addresses based on the default data network.
* @permission ohos.permission.INTERNET
* @param { String } host - Indicates the host name or the domain.
* @returns { Array<NetAddress> } The promise returned by the function.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 401 - Parameter error.
* @throws { BusinessException } 2100001 - Invalid parameter value.
* @throws { BusinessException } 2100002 - Operation failed. Cannot connect to service.
* @throws { BusinessException } 2100003 - System internal error.
* @relation getAddressesByName(host: string): Promise<Array<NetAddress>>
*/
@!APILevel[
    22,
    permission: "ohos.permission.INTERNET",
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public func getAddressesByName(host: String): Array<NetAddress>


/**
* Represents the network connection handle.
* 
* @relation export interface NetConnection
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetConnection <: RemoteDataLite {
    /**
    * Receives status change notifications of a specified network.
    * @permission ohos.permission.GET_NETWORK_INFO
    * @param { AsyncCallback<void> } callback - the callback of register.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } 2100002 - Failed to connect to the service.
    * @throws { BusinessException } 2100003 - System internal error.
    * @throws { BusinessException } 2101008 - The callback already exists.
    * @throws { BusinessException } 2101022 - The number of requests exceeded the maximum allowed.
    * @relation register(callback: AsyncCallback<void>): void
    */
    @!APILevel[
        22,
        permission: "ohos.permission.GET_NETWORK_INFO",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func register(): Unit
    
    /**
    * Cancels listening for network status changes.
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } 2100002 - Failed to connect to the service.
    * @throws { BusinessException } 2100003 - System internal error.
    * @throws { BusinessException } 2101007 - The callback does not exist.
    * @relation unregister(callback: AsyncCallback<void>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func unregister(): Unit
    
    /**
    * Registers a listener for netAvailable events.
    * Registers a listener for netLost events.
    * @throws { IllegalArgumentException } The parameter check failed.
    * @relation on(type: 'netAvailable', callback: Callback<NetHandle>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func on(event: NetConnectionEvent, callback: Callback1Argument<NetHandle>): Unit
    
    /**
    * Registers a listener for netBlockStatusChange events.
    * @throws { IllegalArgumentException } The parameter check failed.
    * @relation on(type: 'netBlockStatusChange', callback: Callback<NetBlockStatusInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func on(event: NetConnectionEvent, callback: Callback1Argument<NetBlockStatusInfo>): Unit
    
    /**
    * Registers a listener for **netCapabilitiesChange** events.
    * @throws { IllegalArgumentException } The parameter check failed.
    * @relation on(type: 'netCapabilitiesChange', callback: Callback<NetCapabilityInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func on(event: NetConnectionEvent, callback: Callback1Argument<NetCapabilityInfo>): Unit
    
    /**
    * Registers a listener for netConnectionPropertiesChange events.
    * @throws { IllegalArgumentException } The parameter check failed.
    * @relation on(type: 'netConnectionPropertiesChange', callback: Callback<NetConnectionPropertyInfo>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func on(event: NetConnectionEvent, callback: Callback1Argument<NetConnectionPropertyInfo>): Unit
    
    /**
    * Registers a listener for netUnavailable events.
    * @throws { IllegalArgumentException } The parameter check failed.
    * @relation on(type: 'netUnavailable', callback: Callback<void>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func on(event: NetConnectionEvent, callback: Callback0Argument): Unit
}


/**
* Defines the handle of the data network.
* 
* @relation export interface NetHandle
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetHandle {
    /**
    * Network ID, a value of 0 means that there is no default network, and the other values must be greater than or equal to 100.
    *
    * @relation netId: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var netId: Int32
    
    /**
    * Resolves a host name to obtain all IP addresses based on the specified NetHandle.
    * @permission ohos.permission.INTERNET
    * @param { String } host - Indicates the host name or the domain.
    * @returns { Array<NetAddress> } The promise returned by the function.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } 2100001 - Invalid parameter value.
    * @throws { BusinessException } 2100002 - Operation failed. Cannot connect to service.
    * @throws { BusinessException } 2100003 - System internal error.
    * @relation getAddressesByName(host: string): Promise<Array<NetAddress>>
    */
    @!APILevel[
        22,
        permission: "ohos.permission.INTERNET",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func getAddressesByName(host: String): Array<NetAddress>
    
    /**
    * Resolves a host name to obtain the first IP address based on the specified NetHandle.
    * @permission ohos.permission.INTERNET
    * @param { String } host - Indicates the host name or the domain.
    * @returns { NetAddress } The promise returned by the function.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } 2100001 - Invalid parameter value.
    * @throws { BusinessException } 2100002 - Operation failed. Cannot connect to service.
    * @throws { BusinessException } 2100003 - System internal error.
    * @relation getAddressByName(host: string): Promise<NetAddress>
    */
    @!APILevel[
        22,
        permission: "ohos.permission.INTERNET",
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func getAddressByName(host: String): NetAddress
}


/**
* Get information about network connections.
* @relation export interface NetConnectionPropertyInfo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetConnectionPropertyInfo {
    /**
    * Defines the handle of the data network.
    * @relation netHandle: NetHandle
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var netHandle: NetHandle
    
    /**
    * Defines the network connection properties.
    * @relation connectionProperties: ConnectionProperties
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var connectionProperties: ConnectionProperties
}


/**
* Get network status information.
* @relation export interface NetBlockStatusInfo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetBlockStatusInfo {
    /**
    * Defines the handle of the data network.
    * @relation netHandle: NetHandle
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var netHandle: NetHandle
    
    /**
    * Check whether the current state is blocked.
    * @relation blocked: boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public var blocked: Bool
}


