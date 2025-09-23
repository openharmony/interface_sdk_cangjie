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

package ohos.geo_location_manager
import ohos.business_exception.{ BusinessException, UNIVERSAL_ERROR_MAP}
import ohos.ffi.*
import ohos.labels.*

import ohos.business_exception.getUniversalErrorMsg
import ohos.hilog.*
import std.collection.*

/**
* Provides interfaces for acquiring location information, managing location switches,
* geocoding, reverse geocoding, country code, fencing and other functions.
*
* @relation declare namespace geoLocationManager
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Location.Location.Core"
]
public class GeoLocationManager {
    /**
    * Subscribe location changed.
    *
    * @throws { BusinessException } 201 - Permission verification failed. The   application does not have the permission required to call the API.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:   1. Mandatory parameters are left unspecified; 2. Incorrect parameter   types; 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported. Failed to   call ${geoLocationManager.getCurrentLocation} due to limited device   capabilities.
    * @throws { BusinessException } 3301000 - The location service is   unavailable.
    * @throws { BusinessException } 3301100 - The location switch is off.
    * @throws { BusinessException } 3301200 - Failed to obtain the   geographical location.
    * @relation function getCurrentLocation(request?: CurrentLocationRequest | SingleLocationRequest): Promise<Location>
    */
    @!APILevel[
        22,
        permission: "ohos.permission.APPROXIMATELY_LOCATION",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public static func getCurrentLocation(): Location
    
    /**
    * Obtain current location.
    *
    * @throws { BusinessException } 201 - Permission verification failed. The   application does not have the permission required to call the API.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:   1. Mandatory parameters are left unspecified; 2. Incorrect parameter   types; 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported. Failed to   call ${geoLocationManager.getCurrentLocation} due to limited device   capabilities.
    * @throws { BusinessException } 3301000 - The location service is   unavailable.
    * @throws { BusinessException } 3301100 - The location switch is off.
    * @throws { BusinessException } 3301200 - Failed to obtain the   geographical location.
    * @relation function getCurrentLocation(request?: CurrentLocationRequest | SingleLocationRequest): Promise<Location>
    */
    @!APILevel[
        22,
        permission: "ohos.permission.APPROXIMATELY_LOCATION",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public static func getCurrentLocation(request: CurrentLocationRequest): Location
    
    /**
    * Obtain current location.
    *
    * @throws { BusinessException } 201 - Permission verification failed. The   application does not have the permission required to call the API.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:   1. Mandatory parameters are left unspecified; 2. Incorrect parameter   types; 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported. Failed to   call ${geoLocationManager.getCurrentLocation} due to limited device   capabilities.
    * @throws { BusinessException } 3301000 - The location service is   unavailable.
    * @throws { BusinessException } 3301100 - The location switch is off.
    * @throws { BusinessException } 3301200 - Failed to obtain the   geographical location.
    * @relation function getCurrentLocation(request?: CurrentLocationRequest | SingleLocationRequest): Promise<Location>
    */
    @!APILevel[
        22,
        permission: "ohos.permission.APPROXIMATELY_LOCATION",
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public static func getCurrentLocation(request: SingleLocationRequest): Location
    
    /**
    * Obtain current location switch status.
    *
    * @throws { BusinessException } 801 - Capability not supported. Failed to call ${geoLocationManager.isLocationEnabled} due to limited device capabilities.
    * @throws { BusinessException } 3301000 - The location service is unavailable.
    * @relation function isLocationEnabled(): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public static func isLocationEnabled(): Bool
}


/**
* Enum for the source of the location.
*
* @relation export enum LocationSourceType
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Location.Location.Core"
]
public enum LocationSourceType {
    /**
    * The location is obtained from the GNSS.
    *
    * @relation GNSS = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Gnss |
    /**
    * The location comes from the network positioning technology.
    *
    * @relation NETWORK = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Network |
    /**
    * The location comes from the indoor positioning technology.
    *
    * @relation INDOOR = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Indoor |
    /**
    * The location comes from the GNSS RTK technology.
    *
    * @relation RTK = 4
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Rtk |
    ...
}


/**
* Provides information about geographic locations.
*
* @relation export interface Location
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Location.Location.Core"
]
public class Location {
    /**
    * Indicates latitude information.
    * A positive value indicates north latitude,
    * and a negative value indicates south latitude.
    *
    * @relation latitude: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var latitude: Float64
    
    /**
    * Indicates Longitude information.
    * A positive value indicates east longitude ,
    * and a negative value indicates west longitude.
    *
    * @relation longitude: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var longitude: Float64
    
    /**
    * Indicates location altitude, in meters.
    *
    * @relation altitude: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var altitude: Float64
    
    /**
    * Indicates location accuracy, in meters.
    *
    * @relation accuracy: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var accuracy: Float64
    
    /**
    * Indicates speed, in m/s.
    *
    * @relation speed: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var speed: Float64
    
    /**
    * Indicates location timestamp in the UTC format.
    *
    * @relation timeStamp: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var timeStamp: Int64
    
    /**
    * Indicates direction information.
    *
    * @relation direction: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var direction: Float64
    
    /**
    * Indicates location timestamp since boot.
    *
    * @relation timeSinceBoot: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var timeSinceBoot: Int64
    
    /**
    * Indicates additional information.
    *
    * @relation additions?: Array<string>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var additions: ?Array<String>
    
    /**
    * Indicates the amount of additional descriptive information.
    *
    * @relation additionSize?: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var additionSize: ?Int64
    
    /**
    * Indicates additional information map.
    *
    * @relation additionsMap?: Map<string, string>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var additionsMap: ?Map<String, String>
    
    /**
    * Indicates vertical position accuracy in meters.
    *
    * @relation altitudeAccuracy?: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var altitudeAccuracy: ?Float64
    
    /**
    * Indicates speed accuracy in meter per seconds.
    *
    * @relation speedAccuracy?: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var speedAccuracy: ?Float64
    
    /**
    * Indicates direction accuracy in degrees.
    *
    * @relation directionAccuracy?: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var directionAccuracy: ?Float64
    
    /**
    * Time uncertainty Of timeSinceBoot in nanosecond.
    *
    * @relation uncertaintyOfTimeSinceBoot?: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var uncertaintyOfTimeSinceBoot: ?Int64
    
    /**
    * Indicates the source of the location.
    *
    * @relation sourceType?: LocationSourceType
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var sourceType: ?LocationSourceType
}


/**
* Enum for location priority.
*
* @relation export enum LocationRequestPriority
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Location.Location.Core"
]
public enum LocationRequestPriority {
    /**
    * Default priority.
    *
    * @relation UNSET = 0x200
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Unset |
    /**
    * Preferentially ensure the locating accuracy.
    *
    * @relation ACCURACY = 0x201
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Accuracy |
    /**
    * Preferentially ensure low power consumption for locating.
    *
    * @relation LOW_POWER = 0x202
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    LowPower |
    /**
    * Preferentially ensure that the first location is time-consuming.
    *
    * @relation FIRST_FIX = 0x203
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    FirstFix |
    ...
}


/**
* Enum for location scenario.
*
* @relation export enum LocationRequestScenario
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Location.Location.Core"
]
public enum LocationRequestScenario {
    /**
    * Default scenario.
    *
    * @relation UNSET = 0x300
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Unset |
    /**
    * Navigation scenario. High positioning precision and real-time performance are required.
    *
    * @relation NAVIGATION = 0x301
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    Navigation |
    /**
    * Trajectory tracking scenario. High positioning precision is required.
    *
    * @relation TRAJECTORY_TRACKING = 0x302
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    TrajectoryTracking |
    /**
    * Car hailing scenario. High positioning precision and real-time performance are required.
    *
    * @relation CAR_HAILING = 0x303
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    CarHailing |
    /**
    * Daily life scenarios. Low requirements on positioning precision and real-time performance.
    *
    * @relation DAILY_LIFE_SERVICE = 0x304
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    DailyLifeService |
    /**
    * Power saving scenarios.
    *
    * @relation NO_POWER = 0x305
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    NoPower |
    ...
}


/**
* Configuring parameters in current location requests.
*
* @relation export interface CurrentLocationRequest
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Location.Location.Core"
]
public class CurrentLocationRequest {
    /**
    * Priority of the location request.
    *
    * @relation priority?: LocationRequestPriority
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var priority: LocationRequestPriority
    
    /**
    * User scenario of the location request.
    *
    * @relation scenario?: LocationRequestScenario
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var scenario: LocationRequestScenario
    
    /**
    * Accuracy requirements for reporting locations.
    *
    * @relation maxAccuracy?: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var maxAccuracy: Float32
    
    /**
    * Timeout interval of a single location request.
    *
    * @relation timeoutMs?: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var timeoutMs: Int32
    
    /**
    * CurrentLocationRequest Constructor.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public init(priority!: LocationRequestPriority = LocationRequestPriority.FirstFix,
        scenario!: LocationRequestScenario = LocationRequestScenario.Unset, maxAccuracy!: Float32 = 0.0,
        timeoutMs!: Int32 = 5000)
}


/**
* Enum for locating priority.
*
* @relation export enum LocatingPriority
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Location.Location.Core"
]
public enum LocatingPriority {
    /**
    * Preferentially ensure the highest locating accuracy.
    *
    * @relation PRIORITY_ACCURACY = 0x501
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    PriorityAccuracy |
    /**
    * Preferentially ensure the fastest locating speed.
    *
    * @relation PRIORITY_LOCATING_SPEED = 0x502
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    PriorityLocatingSpeed |
    ...
}


/**
* Configuring parameters in single location requests.
*
* @relation export interface SingleLocationRequest
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Location.Location.Core"
]
public class SingleLocationRequest {
    /**
    * Priority of the location request.
    *
    * @relation locatingPriority: LocatingPriority
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var locatingPriority: LocatingPriority
    
    /**
    * Timeout of a single location request, in milliseconds.
    *
    * @relation locatingTimeoutMs: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var locatingTimeoutMs: Int32
    
    /**
    * SingleLocationRequest Constructor.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public init(locatingPriority: LocatingPriority, locatingTimeoutMs: Int32)
}


