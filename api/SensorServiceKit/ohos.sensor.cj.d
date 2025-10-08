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

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package ohos.sensor
import std.collection.HashMap
import ohos.business_exception.*

import ohos.ffi.*
import ohos.hilog.*
import ohos.business_exception.{BusinessException, ERR_PARAMETER_ERROR, ERR_NO_PERMISSION}
import ohos.callback_invoke.{CallbackObject, Callback1Argument}
import std.deriving.Derive
import ohos.labels.*
import ohos.callback_invoke.{ CallbackObject, Callback1Argument}
import std.collection.{ArrayList, HashMap}
import std.sync.Mutex

/**
* Enum for obtain the type of sensor.
*
* @relation enum SensorId
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public enum SensorId {
    /**
    * Acceleration sensor.
    *
    * @relation ACCELEROMETER = 1
    */
    @!APILevel[
        22,
        permission: "ohos.permission.ACCELEROMETER",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Accelerometer |
    /**
    * Gyroscope sensor.
    *
    * @relation GYROSCOPE = 2
    */
    @!APILevel[
        22,
        permission: "ohos.permission.GYROSCOPE",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Gyroscope |
    /**
    * Ambient light sensor.
    *
    * @relation AMBIENT_LIGHT = 5
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AmbientLight |
    /**
    * Magnetic field sensor.
    *
    * @relation MAGNETIC_FIELD = 6
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    MagneticField |
    /**
    * Barometric pressure sensor.
    *
    * @relation BAROMETER = 8
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Barometer |
    /**
    * Hall effect sensor.
    *
    * @relation HALL = 10
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Hall |
    /**
    * Proximity sensor.
    *
    * @relation PROXIMITY = 12
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Proximity |
    /**
    * Humidity sensor.
    *
    * @relation HUMIDITY = 13
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Humidity |
    /**
    * Orientation sensor.
    *
    * @relation ORIENTATION = 256
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Orientation |
    /**
    * Gravity sensor.
    *
    * @relation GRAVITY = 257
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Gravity |
    /**
    * Linear acceleration sensor.
    *
    * @relation LINEAR_ACCELEROMETER = 258
    */
    @!APILevel[
        22,
        permission: "ohos.permission.ACCELEROMETER",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    LinearAccelerometer |
    /**
    * Rotation vector sensor.
    *
    * @relation ROTATION_VECTOR = 259
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    RotationVector |
    /**
    * Ambient temperature sensor.
    *
    * @relation AMBIENT_TEMPERATURE = 260
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AmbientTemperature |
    /**
    * Uncalibrated magnetic field sensor.
    *
    * @relation MAGNETIC_FIELD_UNCALIBRATED = 261
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    MagneticFieldUncalibrated |
    /**
    * Uncalibrated gyroscope sensor.
    *
    * @relation GYROSCOPE_UNCALIBRATED = 263
    */
    @!APILevel[
        22,
        permission: "ohos.permission.GYROSCOPE",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    GyroscopeUncalibrated |
    /**
    * Significant motion sensor.
    *
    * @relation SIGNIFICANT_MOTION = 264
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    SignificantMotion |
    /**
    * Pedometer detection sensor.
    *
    * @relation PEDOMETER_DETECTION = 265
    */
    @!APILevel[
        22,
        permission: "ohos.permission.ACTIVITY_MOTION",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    PedometerDetection |
    /**
    * Pedometer sensor.
    *
    * @relation PEDOMETER = 266
    */
    @!APILevel[
        22,
        permission: "ohos.permission.ACTIVITY_MOTION",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Pedometer |
    /**
    * Heart rate sensor.
    *
    * @relation HEART_RATE = 278
    */
    @!APILevel[
        22,
        permission: "ohos.permission.READ_HEALTH_DATA",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    HeartRate |
    /**
    * Wear detection sensor.
    *
    * @relation WEAR_DETECTION = 280
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    WearDetection |
    /**
    * Uncalibrated acceleration sensor.
    *
    * @relation ACCELEROMETER_UNCALIBRATED = 281
    */
    @!APILevel[
        22,
        permission: "ohos.permission.ACCELEROMETER",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AccelerometerUncalibrated |
    ...
    /**
    * get the corresponding mapping value.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public func getValue(): Int32
}



/**
* Enumerates the accuracy levels of data reported by a sensor.
*
* @relation enum SensorAccuracy
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public enum SensorAccuracy {
    /**
    * The sensor data is unreliable. It is possible that the sensor does not contact with the device to measure.
    *
    * @relation ACCURACY_UNRELIABLE = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AccuracyUnreliable |
    /**
    * The sensor data is at a low accuracy level. The data must be calibrated based on the environment before being used.
    *
    * @relation ACCURACY_LOW = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AccuracyLow |
    /**
    * The sensor data is at a medium accuracy level. You are advised to calibrate the data based on the environment before using it.
    *
    * @relation ACCURACY_MEDIUM = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AccuracyMedium |
    /**
    * The sensor data is at a high accuracy level. The data can be used directly.
    *
    * @relation ACCURACY_HIGH = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AccuracyHigh |
    ...
}



/**
* Enumerates IntervalOption. 
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public enum IntervalOption {
    /**
    * SensorNumber option.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    SensorNumber(Int64) |
    /**
    * GameMode option.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    GameMode |
    /**
    * UIMode option.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    UIMode |
    /**
    * NormalMode option.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    NormalMode |
    ...
}



/**
* Parameters of sensor on the device.
*
* @relation interface SensorInfoParam.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class SensorInfoParam {
    /**
    * Unique identifier for the device that contains one or multiple sensors.
    * By default, deviceId may default to querying or controlling the local default sensor.
    *
    * @relation deviceId?: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var deviceId: Int32
    
    /**
    * Index of sensors of the same type. By default, it controls default sensors of the sensor type.
    *
    * @relation sensorIndex?: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var sensorIndex: Int32
    
    /**
    * Options constructor.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public init(deviceId!: Int32 = -1, sensorIndex!: Int32 = 0)
}


/**
* Acceleration sensor event data.
*
* @relation interface AccelerometerResponse extends Response
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class AccelerometerResponse <: Response {
    /**
    * Acceleration x-axis component.
    *
    * @relation x: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32
    
    /**
    * Acceleration y-axis component.
    *
    * @relation y: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32
    
    /**
    * Acceleration z-axis component.
    *
    * @relation z: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32
}


/**
* Subscribe to the sensor's optional parameters.
*
* @relation interface Options
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class Options {
    /**
    * Sensor event reporting event interval.
    *
    * @relation interval?: number | SensorFrequency;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var interval: IntervalOption
    
    /**
    * Parameters of sensor on the device.
    *
    * @relation sensorInfoParam?: SensorInfoParam;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var sensorInfoParam: ?SensorInfoParam
    
    /**
    * Options constructor.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public init(interval!: IntervalOption = NormalMode, sensorInfoParam!: ?SensorInfoParam = None)
}


/**
* The basic data structure of the sensor event.
*
* @relation interface Response
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public open class Response {
    /**
    * The timestamp of the reported sensor data.
    *
    * @relation timestamp: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var timestamp: Int64
    
    /**
    * The accuracy levels of data reported by a sensor.
    *
    * @relation accuracy: SensorAccuracy
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var accuracy: SensorAccuracy
}


/**
* Acceleration uncalibrated sensor event data.
*
* @relation interface AccelerometerUncalibratedResponse extends Response
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class AccelerometerUncalibratedResponse <: Response {
    /**
    * Acceleration uncalibrated x-axis component.
    *
    * @relation x: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32
    
    /**
    * Acceleration uncalibrated y-axis component.
    *
    * @relation y: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32
    
    /**
    * Acceleration uncalibrated z-axis component.
    *
    * @relation z: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32
    
    /**
    * Acceleration uncalibrated x-axis offset.
    *
    * @relation biasX: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasX: Float32
    
    /**
    * Acceleration uncalibrated y-axis offset.
    *
    * @relation biasY: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasY: Float32
    
    /**
    * Acceleration uncalibrated z-axis offset.
    *
    * @relation biasZ: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasZ: Float32
}


/**
* Light sensor event data.
* 
* @relation interface LightResponse extends Response
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class LightResponse <: Response {
    /**
    * Indicates light intensity, in lux.
    *
    * @relation intensity: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var intensity: Float32
    
    /**
    * Indicates color temperature, in kelvin.
    *
    * @relation colorTemperature?: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var colorTemperature: ?Float32
    
    /**
    * Indicates infrared luminance, in cd/m2.
    *
    * @relation infraredLuminance?: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var infraredLuminance: ?Float32
}


/**
* Ambient temperature sensor event data.
*
* @relation interface AmbientTemperatureResponse extends Response
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class AmbientTemperatureResponse <: Response {
    /**
    * Indicates ambient temperature, in celsius.
    *
    * @relation temperature: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var temperature: Float32
}


/**
* Barometer sensor event data.
*
* @relation interface BarometerResponse extends Response.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class BarometerResponse <: Response {
    /**
    * Indicates the number of barometer, in hpa.
    *
    * @relation pressure: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var pressure: Float32
}


/**
* Gravity sensor event data.
*
* @relation interface GravityResponse extends Response
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class GravityResponse <: Response {
    /**
    * Gravity x-axis component.
    *
    * @relation x: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32
    
    /**
    * Gravity y-axis component.
    *
    * @relation y: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32
    
    /**
    * Gravity z-axis component.
    *
    * @relation z: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32
}


/**
* Gyroscope sensor event data.
*
* @relation interface GyroscopeResponse extends Response.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class GyroscopeResponse <: Response {
    /**
    * Gyroscope x-axis component.
    *
    * @relation x: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32
    
    /**
    * Gyroscope y-axis component.
    *
    * @relation y: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32
    
    /**
    * Gyroscope z-axis component.
    *
    * @relation z: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32
}


/**
* Gyroscope uncalibrated sensor event data.
*
* @relation interface GyroscopeUncalibratedResponse extends Response.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class GyroscopeUncalibratedResponse <: Response {
    /**
    * Gyroscope uncalibrated x-axis component.
    *
    * @relation x: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32
    
    /**
    * Gyroscope uncalibrated y-axis component.
    *
    * @relation y: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32
    
    /**
    * Gyroscope uncalibrated z-axis component.
    *
    * @relation z: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32
    
    /**
    * Gyroscope uncalibrated x-axis offset.
    *
    * @relation biasX: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasX: Float32
    
    /**
    * Gyroscope uncalibrated y-axis offset.
    *
    * @relation biasY: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasY: Float32
    
    /**
    * Gyroscope uncalibrated z-axis offset.
    *
    * @relation biasZ: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasZ: Float32
}


/**
* Hall sensor event data.
*
* @relation interface HallResponse extends Response.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class HallResponse <: Response {
    /**
    * Indicates hall status, 0 indicates open, and greater than 0 indicates suction.
    *
    * @relation status: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var status: Float32
}


/**
* Heart rate sensor event data.
*
* @relation interface HeartRateResponse extends Response
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class HeartRateResponse <: Response {
    /**
    * Indicates the number of heart rate.
    *
    * @relation heartRate: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var heartRate: Float32
}


/**
* Humidity sensor event data.
*
* @relation interface HumidityResponse extends Response
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class HumidityResponse <: Response {
    /**
    * Indicates the number of humidity.
    *
    * @relation humidity: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var humidity: Float32
}


/**
* Linear acceleration sensor event data.
*
* @relation interface LinearAccelerometerResponse extends Response.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class LinearAccelerometerResponse <: Response {
    /**
    * Linear acceleration x-axis component.
    *
    * @relation x: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32
    
    /**
    * Linear acceleration y-axis component.
    *
    * @relation y: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32
    
    /**
    * Linear acceleration z-axis component.
    *
    * @relation z: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32
}


/**
* Magnetic field sensor event data.
*
* @relation interface MagneticFieldResponse extends Response.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class MagneticFieldResponse <: Response {
    /**
    * Magnetic field x-axis component.
    *
    * @relation x: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32
    
    /**
    * Magnetic field y-axis component.
    *
    * @relation y: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32
    
    /**
    * Magnetic field z-axis component.
    *
    * @relation z: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32
}


/**
* Magnetic field sensor event data.
*
* @relation interface MagneticFieldUncalibratedResponse extends Response.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class MagneticFieldUncalibratedResponse <: Response {
    /**
    * Magnetic field uncalibrated x-axis component.
    *
    * @relation x: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32
    
    /**
    * Magnetic field uncalibrated y-axis component.
    *
    * @relation y: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32
    
    /**
    * Magnetic field uncalibrated z-axis component.
    *
    * @relation z: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32
    
    /**
    * Magnetic field uncalibrated x-axis offset.
    *
    * @relation biasX: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasX: Float32
    
    /**
    * Magnetic field uncalibrated y-axis offset.
    *
    * @relation biasY: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasY: Float32
    
    /**
    * Magnetic field uncalibrated z-axis offset.    *
    *
    * @relation biasZ: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var biasZ: Float32
}


/**
* Orientation sensor event data.
*
* @relation interface OrientationResponse extends Response.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class OrientationResponse <: Response {
    /**
    * The device rotates at an angle around the Z axis.
    *
    * @relation alpha: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var alpha: Float32
    
    /**
    * The device rotates at an angle around the X axis.
    *
    * @relation beta: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var beta: Float32
    
    /**
    * The device rotates at an angle around the Y axis.
    *
    * @relation gamma: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var gamma: Float32
}


/**
* Pedometer sensor event data.
*
* @relation interface PedometerResponse extends Response.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class PedometerResponse <: Response {
    /**
    * Indicates the number of steps.
    *
    * relation steps: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var steps: Float32
}


/**
* Pedometer detection sensor event data.
*
* @relation interface PedometerDetectionResponse extends Response.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class PedometerDetectionResponse <: Response {
    /**
    * Indicates the pedometer detection status, 1 indicates that a walking action has occurred,
    * and 0 indicates that no movement has occurred.
    *
    * @relation scalar: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var scalar: Float32
}


/**
* Proximity sensor event data.
*
* @relation interface ProximityResponse extends Response.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class ProximityResponse <: Response {
    /**
    * Indicates the degree of proximity, event 0 indicates proximity, and greater than 0 indicates distance.
    *
    * relation distance: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var distance: Float32
}


/**
* Rotation vector sensor event data.
*
* @relation interface RotationVectorResponse extends Response.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class RotationVectorResponse <: Response {
    /**
    * Rotation vector x-axis component.
    *
    * @relation x: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32
    
    /**
    * Rotation vector y-axis component.
    *
    * @relation y: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32
    
    /**
    * Rotation vector z-axis component.
    *
    * @relation z: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32
    
    /**
    * Scalar quantity.
    *
    * @relation w: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var w: Float32
}


/**
* Significant motion sensor event data.
*
* @relation interface SignificantMotionResponse extends Response.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class SignificantMotionResponse <: Response {
    /**
    * Indicates the degree of proximity, event 0 indicates proximity, and greater than 0 indicates distance.
    *
    * @relation scalar: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var scalar: Float32
}


/**
* Wear detection sensor event data.
*
* @relation interface WearDetectionResponse extends Response.
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class WearDetectionResponse <: Response {
    /**
    * Indicates the status of wear detection, 1 for wearing, 0 for wearing not.
    *
    * @relation value: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var value: Float32
}


/**
* Indicates sensor information.
*
* @relation interface Sensor
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class Sensor {
    /**
    * Sensor name.
    *
    * @relation sensorName:string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var sensorName: String
    
    /**
    * Sensor vendor.
    *
    * @relation vendorName:string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var vendorName: String
    
    /**
    * Sensor firmware version.
    *
    * @relation firmwareVersion:string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var firmwareVersion: String
    
    /**
    * Sensor hardware version.
    *
    * @relation hardwareVersion:string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var hardwareVersion: String
    
    /**
    * Sensor type ID, {@code SensorType}.
    *
    * @relation sensorId:number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var sensorId: Int32
    
    /**
    * Maximum measurement range of the sensor.
    *
    * @relation maxRange:number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var maxRange: Float32
    
    /**
    * Minimum sample period allowed, in ns.
    *
    * @relation minSamplePeriod:number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var minSamplePeriod: Int64
    
    /**
    * Maximum sample period allowed, in ns.
    *
    * @relation maxSamplePeriod:number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var maxSamplePeriod: Int64
    
    /**
    * Sensor accuracy.
    *
    * @relation precision:number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var precision: Float32
    
    /**
    * Sensor power.
    *
    * @relation power:number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var power: Float32
}


/**
* Subscribe to sensor data.
*
* @relation on(type: SensorId.ACCELEROMETER, callback: Callback<AccelerometerResponse>, options?: Options): void;
* @relation on(type: SensorId.ACCELEROMETER_UNCALIBRATED, callback: Callback<AccelerometerUncalibratedResponse>,options?: Options): void;
* @relation on(type: SensorId.AMBIENT_LIGHT, callback: Callback<LightResponse>, options?: Options): void;
* @relation on(type: SensorId.AMBIENT_TEMPERATURE, callback: Callback<AmbientTemperatureResponse>,options?: Options): void;
* @relation on(type: SensorId.BAROMETER, callback: Callback<BarometerResponse>, options?: Options): void;
* @relation on(type: SensorId.GRAVITY, callback: Callback<GravityResponse>, options?: Options): void;
* @relation on(type: SensorId.GYROSCOPE, callback: Callback<GyroscopeResponse>, options?: Options): void;
* @relation on(type: SensorId.GYROSCOPE_UNCALIBRATED, callback: Callback<GyroscopeUncalibratedResponse>, options?: Options): void;
* @relation on(type: SensorId.HALL, callback: Callback<HallResponse>, options?: Options): void;
* @relation on(type: SensorId.HEART_RATE, callback: Callback<HeartRateResponse>, options?: Options): void;
* @relation on(type: SensorId.HUMIDITY, callback: Callback<HumidityResponse>, options?: Options): void;
* @relation on(type: SensorId.LINEAR_ACCELEROMETER, callback: Callback<LinearAccelerometerResponse>, options?: Options): void;
* @relation on(type: SensorId.MAGNETIC_FIELD, callback: Callback<MagneticFieldResponse>, options?: Options): void;
* @relation on(type: SensorId.MAGNETIC_FIELD_UNCALIBRATED, callback: Callback<MagneticFieldUncalibratedResponse>, options?: Options): void;
* @relation on(type: SensorId.ORIENTATION, callback: Callback<OrientationResponse>, options?: Options): void;
* @relation on(type: SensorId.PEDOMETER, callback: Callback<PedometerResponse>, options?: Options): void;
* @relation on(type: SensorId.PEDOMETER_DETECTION, callback: Callback<PedometerDetectionResponse>, options?: Options): void;
* @relation on(type: SensorId.PROXIMITY, callback: Callback<ProximityResponse>, options?: Options): void;
* @relation on(type: SensorId.ROTATION_VECTOR, callback: Callback<RotationVectorResponse>, options?: Options): void;
* @relation on(type: SensorId.SIGNIFICANT_MOTION, callback: Callback<SignificantMotionResponse>, options?: Options): void;
* @relation on(type: SensorId.WEAR_DETECTION, callback: Callback<WearDetectionResponse>, options?: Options): void;
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public func on<T>(sensorType: SensorId, callback: Callback1Argument<T>, option!: ?Options = None): Unit where T <: Response


/**
* Subscribe to sensor data once.
*
* @relation once(type: SensorId.ACCELEROMETER, callback: Callback<AccelerometerResponse>): void;
* @relation once(type: SensorId.ACCELEROMETER_UNCALIBRATED, callback: Callback<AccelerometerUncalibratedResponse>): void;
* @relation once(type: SensorId.AMBIENT_LIGHT, callback: Callback<LightResponse>): void;
* @relation once(type: SensorId.AMBIENT_TEMPERATURE, callback: Callback<AmbientTemperatureResponse>): void;
* @relation once(type: SensorId.BAROMETER, callback: Callback<BarometerResponse>): void;
* @relation once(type: SensorId.GRAVITY, callback: Callback<GravityResponse>): void;
* @relation once(type: SensorId.GYROSCOPE, callback: Callback<GyroscopeResponse>): void;
* @relation once(type: SensorId.GYROSCOPE_UNCALIBRATED, callback: Callback<GyroscopeUncalibratedResponse>): void;
* @relation once(type: SensorId.HALL, callback: Callback<HallResponse>): void;
* @relation once(type: SensorId.HEART_RATE, callback: Callback<HeartRateResponse>): void;
* @relation once(type: SensorId.HUMIDITY, callback: Callback<HumidityResponse>): void;
* @relation once(type: SensorId.LINEAR_ACCELEROMETER, callback: Callback<LinearAccelerometerResponse>): void;
* @relation once(type: SensorId.MAGNETIC_FIELD, callback: Callback<MagneticFieldResponse>): void;
* @relation once(type: SensorId.MAGNETIC_FIELD_UNCALIBRATED, callback: Callback<MagneticFieldUncalibratedResponse>): void;
* @relation once(type: SensorId.ORIENTATION, callback: Callback<OrientationResponse>): void;
* @relation once(type: SensorId.PEDOMETER, callback: Callback<PedometerResponse>): void;
* @relation once(type: SensorId.PEDOMETER_DETECTION, callback: Callback<PedometerDetectionResponse>): void;
* @relation once(type: SensorId.PROXIMITY, callback: Callback<ProximityResponse>): void;
* @relation once(type: SensorId.ROTATION_VECTOR, callback: Callback<RotationVectorResponse>): void;
* @relation once(type: SensorId.SIGNIFICANT_MOTION, callback: Callback<SignificantMotionResponse>): void;
* @relation once(type: SensorId.WEAR_DETECTION, callback: Callback<WearDetectionResponse>): void;
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public func once<T>(sensorType: SensorId, callback: Callback1Argument<T>): Unit where T <: Response


/**
* Subscribe to sensor data once.
*
* @relation off(type: SensorId.ACCELEROMETER, callback?: Callback<AccelerometerResponse>): void;
* @relation off(type: SensorId.ACCELEROMETER_UNCALIBRATED, callback?: Callback<AccelerometerUncalibratedResponse>): void;
* @relation off(type: SensorId.AMBIENT_LIGHT, callback?: Callback<LightResponse>): void;
* @relation off(type: SensorId.AMBIENT_TEMPERATURE, callback?: Callback<AmbientTemperatureResponse>): void;
* @relation off(type: SensorId.BAROMETER, callback?: Callback<BarometerResponse>): void;
* @relation off(type: SensorId.GRAVITY, callback?: Callback<GravityResponse>): void;
* @relation off(type: SensorId.GYROSCOPE, callback?: Callback<GyroscopeResponse>): void;
* @relation off(type: SensorId.GYROSCOPE_UNCALIBRATED, callback?: Callback<GyroscopeUncalibratedResponse>): void;
* @relation off(type: SensorId.HALL, callback?: Callback<HallResponse>): void;
* @relation off(type: SensorId.HEART_RATE, callback?: Callback<HeartRateResponse>): void;
* @relation off(type: SensorId.HUMIDITY, callback?: Callback<HumidityResponse>): void;
* @relation off(type: SensorId.LINEAR_ACCELEROMETER, callback?: Callback<LinearAccelerometerResponse>): void;
* @relation off(type: SensorId.MAGNETIC_FIELD, callback?: Callback<MagneticFieldResponse>): void;
* @relation off(type: SensorId.MAGNETIC_FIELD_UNCALIBRATED, callback?: Callback<MagneticFieldUncalibratedResponse>): void;
* @relation off(type: SensorId.ORIENTATION, callback?: Callback<OrientationResponse>): void;
* @relation off(type: SensorId.PEDOMETER, callback?: Callback<PedometerResponse>): void;
* @relation off(type: SensorId.PEDOMETER_DETECTION, callback?: Callback<PedometerDetectionResponse>): void;
* @relation off(type: SensorId.PROXIMITY, callback?: Callback<ProximityResponse>): void;
* @relation off(type: SensorId.ROTATION_VECTOR, callback?: Callback<RotationVectorResponse>): void;
* @relation off(type: SensorId.SIGNIFICANT_MOTION, callback?: Callback<SignificantMotionResponse>): void;
* @relation off(type: SensorId.WEAR_DETECTION, callback?: Callback<WearDetectionResponse>): void;
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public func off(sensorType: SensorId, callback!: ?CallbackObject = None): Unit


/**
* Obtains all sensor information on the device.
*
* @throws { BusinessException } 14500101 - Service exception. Possible causes: 1. Sensor hdf service exception;
* 2. Sensor service ipc exception;3. Sensor data channel exception.
* @relation function getSensorListSync(): Array<Sensor>
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public func getSensorList(): Array<Sensor>


/**
* Obtains the sensor information of a specified type.
*
* @throws { BusinessException } 14500101 - Service exception. Possible causes: 1. Sensor hdf service exception;
* <br> 2. Sensor service ipc exception;3. Sensor data channel exception.
* @throws { BusinessException } 14500102 - The sensor is not supported by the device.
* @relation function getSingleSensorSync(type: SensorId): Sensor
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Sensors.Sensor"
]
public func getSingleSensor(sensorType: SensorId): Sensor


