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

package ohos.battery_info
import ohos.labels.APILevel
import std.deriving.Derive


/**
* Obtains battery information of a device.
* Battery information includes the remaining battery power,
* voltage, temperature, model, and charger type.
*
* @relation declare namespace batteryInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public class BatteryInfo {
    /**
    * Battery state of charge (SoC) of the current device, in percent.
    *
    * @relation const batterySOC: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop batterySOC: Int32
    
    /**
    * Battery charging status of the current device.
    *
    * @relation const chargingStatus: BatteryChargeState
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop chargingStatus: BatteryChargeState
    
    /**
    * Battery health state of the current device.
    *
    * @relation const healthStatus: BatteryHealthState
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop healthStatus: BatteryHealthState
    
    /**
    * Charger type of the current device.
    *
    * @relation const pluggedType: BatteryPluggedType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop pluggedType: BatteryPluggedType
    
    /**
    * Battery voltage of the current device, in µV.
    *
    * @relation const voltage: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop voltage: Int32
    
    /**
    * Battery immediate current of the current device, in mA.
    *
    * @relation const nowCurrent: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop nowCurrent: Int32
    
    /**
    * Battery technology of the current device.
    *
    * @relation const technology: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop technology: String
    
    /**
    * Battery temperature of the current device, in 0.1℃.
    *
    * @relation const batteryTemperature: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop batteryTemperature: Int32
    
    /**
    * Battery present state of the current device.
    *
    * @relation const isBatteryPresent: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop isBatteryPresent: Bool
    
    /**
    * Battery capacity level of the current device.
    *
    * @relation const batteryCapacityLevel: BatteryCapacityLevel
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop batteryCapacityLevel: BatteryCapacityLevel
}


/**
* Charger type of a device.
*
* @relation export enum BatteryPluggedType
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public enum BatteryPluggedType {
    /**
    * Unknown type
    *
    * @relation NONE = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    UnknownType |
    /**
    * AC charger
    *
    * @relation AC = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Ac |
    /**
    * USB charger
    *
    * @relation USB = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Usb |
    /**
    * Wireless charger
    *
    * @relation WIRELESS = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Wireless |
    ...
}



/**
* Battery charging status of a device.
*
* @relation export enum BatteryChargeState
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public enum BatteryChargeState {
    /**
    * Unknown state.
    *
    * @relation NONE = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    UnknownChargeState |
    /**
    * The battery is being charged.
    *
    * @relation ENABLE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Enabled |
    /**
    * The battery is not being charged.
    *
    * @relation DISABLE = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Disabled |
    /**
    * The battery is fully charged.
    *
    * @relation FULL = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Full |
    ...
}



/**
* Battery health status of a device.
*
* @relation export enum BatteryHealthState
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public enum BatteryHealthState {
    /**
    * Unknown state.
    *
    * @relation UNKNOWN = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    UnknownHealthState |
    /**
    * The battery is in healthy state.
    *
    * @relation GOOD = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Good |
    /**
    * The battery is overheated.
    *
    * @relation OVERHEAT = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Overheat |
    /**
    * The battery voltage is over high.
    *
    * @relation OVERVOLTAGE = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Overvoltage |
    /**
    * The battery temperature is low.
    *
    * @relation COLD = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Cold |
    /**
    * The battery is dead.
    *
    * @relation DEAD = 5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Dead |
    ...
}



/**
* Battery capacity level of a device.
*
* @relation export enum BatteryCapacityLevel
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public enum BatteryCapacityLevel {
    /**
    * The battery is in full capacity level.
    *
    * @relation LEVEL_FULL = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelFull |
    /**
    * The battery is in high capacity level.
    *
    * @relation LEVEL_HIGH = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelHigh |
    /**
    * The battery is in normal capacity level.
    *
    * @relation LEVEL_NORMAL = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelNormal |
    /**
    * The battery is in low capacity level.
    *
    * @relation LEVEL_LOW = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelLow |
    /**
    * The battery is in warning low capacity level.
    *
    * @relation LEVEL_WARNING = 5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelWarning |
    /**
    * The battery is in critical low capacity level.
    *
    * @relation LEVEL_CRITICAL = 6
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelCritical |
    /**
    * The battery is in the lowest capacity level, system will shut down automatically in a few seconds.
    *
    * @relation LEVEL_SHUTDOWN = 7
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelShutdown |
    ...
}



