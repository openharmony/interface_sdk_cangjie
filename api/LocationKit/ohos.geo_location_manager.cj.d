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
import ohos.base.*
import ohos.hilog.*
import ohos.ffi.*
import ohos.i18n.*
import std.collection.*
import std.sync.*
import ohos.labels.*


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Location.Location.Core"
]
public class GeoLocationManager {
    /**
    * @brief getCurrentLocation(request?: CurrentLocationRequest | SingleLocationRequest): Promise<Location>
    */
    @!APILevel[
        21,
        permission: "ohos.APPROXIMATELY_LOCATION",
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public static func getCurrentLocation(): Location
    
    /**
    * @brief getCurrentLocation(request?: CurrentLocationRequest | SingleLocationRequest): Promise<Location>
    */
    @!APILevel[
        21,
        permission: "ohos.APPROXIMATELY_LOCATION",
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public static func getCurrentLocation(request: CurrentLocationRequest): Location
    
    /**
    * @brief getCurrentLocation(request?: CurrentLocationRequest | SingleLocationRequest): Promise<Location>
    */
    @!APILevel[
        21,
        permission: "ohos.APPROXIMATELY_LOCATION",
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public static func getCurrentLocation(request: SingleLocationRequest): Location
    
    /**
    * @brief isLocationEnabled(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public static func isLocationEnabled(): Bool
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Location.Location.Core"
]
public enum LocationSourceType {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    GNSS |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    NETWORK |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    INDOOR |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    RTK |
    ...
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Location.Location.Core"
]
public class Location {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var latitude: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var longitude: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var altitude: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var accuracy: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var speed: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var timeStamp: Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var direction: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var timeSinceBoot: Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var additions: Array<String>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var additionSize: Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var additionsMap: Map<String, String>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var altitudeAccuracy: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var speedAccuracy: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var directionAccuracy: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var uncertaintyOfTimeSinceBoot: Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var sourceType: LocationSourceType
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Location.Location.Core"
]
public enum LocationRequestPriority {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    UNSET |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    ACCURACY |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    LOW_POWER |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    FIRST_FIX |
    ...
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Location.Location.Core"
]
public enum LocationRequestScenario {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    UNSET |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    NAVIGATION |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    TRAJECTORY_TRACKING |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    CAR_HAILING |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    DAILY_LIFE_SERVICE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    NO_POWER |
    ...
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Location.Location.Core"
]
public class CurrentLocationRequest {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var priority: LocationRequestPriority
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var scenario: LocationRequestScenario
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var maxAccuracy: Float32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var timeoutMs: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public init(priority!: LocationRequestPriority = LocationRequestPriority.FIRST_FIX,
        scenario!: LocationRequestScenario = LocationRequestScenario.UNSET, maxAccuracy!: Float32 = 0.0,
        timeoutMs!: Int32 = 5000)
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Location.Location.Core"
]
public enum LocatingPriority {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    PRIORITY_ACCURACY |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    PRIORITY_LOCATING_SPEED |
    ...
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Location.Location.Core"
]
public class SingleLocationRequest {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var locatingPriority: LocatingPriority
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public var locatingTimeoutMs: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Location.Location.Core"
    ]
    public init(locatingPriority: LocatingPriority, locatingTimeoutMs: Int32)
}


