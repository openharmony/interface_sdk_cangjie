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
import ohos.base.*
import std.collection.*

import ohos.hilog.*
import std.deriving.*

/**
* Provides an instance that bear data network capabilities.
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetSpecifier {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public NetSpecifier(
        // The transmission capacity and support of the network's global proxy storage data network.
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let netCapabilities: NetCapabilities,
        // Network identifier, the identifier for Wi Fi networks is "wifi",
        // and the identifier for cellular networks is "simId1" (corresponding to SIM card 1).
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let bearerPrivateIdentifier!: ?String = None
    )
}


/**
* Receive information about changes in network capabilities.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetCapabilityInfo {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public NetCapabilityInfo(
        /**
         * Defines the handle of the data network.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let netHandle: NetHandle,
        /**
         * Defines the network capability set.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let netCap!: ?NetCapabilities = None
    )
}


/**
* Defines the network capability set.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetCapabilities {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public NetCapabilities(
        // Network type.
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let bearerTypes: Array<NetBearType>,
        // Uplink (device-to-network) bandwidth.
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let linkUpBandwidthKbps!: ?UInt32 = None,
        // Downstream (network-to-device) bandwidth.
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let linkDownBandwidthKbps!: ?UInt32 = None,
        // Network-specific capabilities.
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let networkCap!: ?Array<NetCap> = None
    )
}


/**
* Defines the network connection properties.
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class ConnectionProperties {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public ConnectionProperties(
        /**
         * Network card name.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let interfaceName: String,
        /**
         * Domain. The default value is "".
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let domains: String,
        /**
         * Link information.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let linkAddresses: Array<LinkAddress>,
        /**
         * Network address, refer to [NetAddress].
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let dnses: Array<NetAddress>,
        /**
         * Routing information.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let routes: Array<RouteInfo>,
        /**
         * Maximum transmission unit.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let mtu: UInt16
    )
}


/**
* Defines network route information.
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class RouteInfo {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public RouteInfo(
        /**
         * Network card name.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let interfaceName: String,

        /**
         * Destination Address
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let destination: LinkAddress,

        /**
         * Gateway address.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let gateway: NetAddress,

        /**
         * Whether a gateway is present.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let hasGateway: Bool,

        /**
         * Whether the route is the default route.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let isDefaultRoute: Bool
    )
}


/**
* Defines network link information.
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class LinkAddress {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public LinkAddress(
        /**
         * Link address.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let address: NetAddress,
        /**
         * The length of the link address prefix.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let prefixLength: Int32
    )
}


/**
* Defines a network address.
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetAddress {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public NetAddress(
        /**
         * Network address.
         */
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let address: String,
        /**
         * Address family identifier. The value is 1 for IPv4 and 2 for IPv6. The default value is 1.
         */
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let family: ?UInt32,
        /**
         * Port number. The value ranges from 0 to 65535.
         */
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let port: ?UInt16
    )
}


/**
* Network Global Proxy Configuration Information.
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class HttpProxy {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public HttpProxy(
        /**
         * Proxy server host name.
         */
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let host!: ?String = None,
        /**
         * Host port.
         */
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let port!: ?UInt16 = None,
        /**
         * Do not use a blocking list for proxy servers.
         */
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetManager.Core"
        ]
        public let exclusionList!: ?Array<String> = None
    )
}


/**
* Defines the network capability.
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public enum NetCap {
    /**
    * Indicates that the network can access the carrier's MMSC to send and receive multimedia messages.
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NET_CAPABILITY_MMS |
    /**
    * Indicates that the network traffic is not metered.
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NET_CAPABILITY_NOT_METERED |
    /**
    * Indicates that the network can access the Internet.
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NET_CAPABILITY_INTERNET |
    /**
    * Indicates that the network does not use a VPN.
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NET_CAPABILITY_NOT_VPN |
    /**
    * Indicates that the network is available.
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    NET_CAPABILITY_VALIDATED |
    ...
}


/**
* Enumerates network types.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public enum NetBearType {
    /**
    * Indicates that the network is based on a cellular network.
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    BEARER_CELLULAR |
    /**
    * Indicates that the network is based on a Wi-Fi network.
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    BEARER_WIFI |
    /**
    * Indicates that the network is an Ethernet network.
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    BEARER_ETHERNET |
    ...
}


/**
* Create a network connection with optional netSpecifier and timeout.
* @param { NetSpecifier } netSpecifier - Indicates the network specifier. See {@link NetSpecifier}.
* @param { UInt32 } timeout - The time in milliseconds to attempt looking for a suitable network before
* {@link NetConnection#netUnavailable} is called.
* @returns { NetConnection } the NetConnection of the NetSpecifier.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
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
*/
@!APILevel[
    21,
    atomicservice: true,
    permission: "ohos.permission.GET_NETWORK_INFO",
    stagemodelonly: true,
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
* @syscap SystemCapability.Communication.NetManager.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public func getDefaultHttpProxy(): HttpProxy


/**
* Obtains the {@link NetHandle} bound to a process using {@link setAppNet}.
* @returns { NetHandle } the promise returned by the function.
* @throws { BusinessException } 401 - Parameter error.
* @throws { BusinessException } 2100002 - Operation failed. Cannot connect to service.
* @throws { BusinessException } 2100003 - System internal error.
* @syscap SystemCapability.Communication.NetManager.Core
* @brief getAppNetSync(): NetHandle;
*/
@!APILevel[
    21,
    stagemodelonly: true,
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
* @syscap SystemCapability.Communication.NetManager.Core
* @brief setAppNet(netHandle: NetHandle): Promise<void>;
*/
@!APILevel[
    21,
    permission: "ohos.permission.INTERNET",
    stagemodelonly: true,
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
*/
@!APILevel[
    21,
    permission: "ohos.permission.GET_NETWORK_INFO",
    stagemodelonly: true,
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
*/
@!APILevel[
    21,
    permission: "ohos.permission.GET_NETWORK_INFO",
    stagemodelonly: true,
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
*/
@!APILevel[
    21,
    atomicservice: true,
    permission: "ohos.permission.GET_NETWORK_INFO",
    stagemodelonly: true,
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
*/
@!APILevel[
    21,
    permission: "ohos.permission.GET_NETWORK_INFO",
    stagemodelonly: true,
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
*/
@!APILevel[
    21,
    crossplatform: true,
    permission: "ohos.permission.GET_NETWORK_INFO",
    stagemodelonly: true,
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
*/
@!APILevel[
    21,
    permission: "ohos.permission.GET_NETWORK_INFO & ohos.permission.INTERNET",
    stagemodelonly: true,
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
*/
@!APILevel[
    21,
    permission: "ohos.permission.GET_NETWORK_INFO & ohos.permission.INTERNET",
    stagemodelonly: true,
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
* @syscap SystemCapability.Communication.NetManager.Core
* @brief getAddressesByName(host: string): Promise<Array<NetAddress>>;
*/
@!APILevel[
    21,
    atomicservice: true,
    permission: "ohos.permission.INTERNET",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public func getAddressesByName(host: String): Array<NetAddress>


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetConnection <: RemoteDataLite {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        permission: "ohos.permission.GET_NETWORK_INFO",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func register(): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func unregister(): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func onNetAvailable(callback: (NetHandle) -> Unit): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func onNetBlockStatusChange(callback: (NetHandle, Bool) -> Unit): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func onNetCapabilitiesChange(callback: (NetCapabilityInfo) -> Unit): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func onNetConnectionPropertiesChange(callback: (NetHandle, ConnectionProperties) -> Unit): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func onNetLost(callback: (NetHandle) -> Unit): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func onNetUnavailable(callback: () -> Unit): Unit
}


/**
* Defines the handle of the data network.
*/
@Derive[ToString]
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetManager.Core"
]
public class NetHandle {
    // Network ID, a value of 0 means that there is no default network,// and the other values must be greater than or equal to 100.
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public NetHandle(public let netId: Int32)
    
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
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
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
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetManager.Core"
    ]
    public func getAddressByName(host: String): NetAddress
}



