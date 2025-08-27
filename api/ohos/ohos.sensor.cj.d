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

package ohos.sensor
import std.collection.HashMap
import ohos.business_exception.*

import ohos.ffi.*
import ohos.hilog.*
import ohos.business_exception.{BusinessException, ERR_PARAMETER_ERROR}
import ohos.callback_invoke.CallbackObject
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
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Sensors.Sensor"
]
public enum SensorId {
    /**
    * Acceleration sensor.
    *
    * @relation ACCELEROMETER = 1
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCELEROMETER",
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Accelerometer |
    /**
    * Gyroscope sensor.
    *
    * @relation GYROSCOPE = 2
    */
    @!APILevel[
        21,
        permission: "ohos.permission.GYROSCOPE",
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Gyroscope |
    /**
    * Ambient light sensor.
    *
    * @relation AMBIENT_LIGHT = 5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AmbientLight |
    /**
    * Magnetic field sensor.
    *
    * @relation MAGNETIC_FIELD = 6
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    MagneticField |
    /**
    * Barometric pressure sensor.
    *
    * @relation BAROMETER = 8
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Barometer |
    /**
    * Hall effect sensor.
    *
    * @relation HALL = 10
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Hall |
    /**
    * Proximity sensor.
    *
    * @relation PROXIMITY = 12
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Proximity |
    /**
    * Humidity sensor.
    *
    * @relation HUMIDITY = 13
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Humidity |
    /**
    * Orientation sensor.
    *
    * @relation ORIENTATION = 256
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Orientation |
    /**
    * Gravity sensor.
    *
    * @relation GRAVITY = 257
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Gravity |
    /**
    * Linear acceleration sensor.
    *
    * @relation LINEAR_ACCELEROMETER = 258
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCELEROMETER",
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    LinearAccelerometer |
    /**
    * Rotation vector sensor.
    *
    * @relation ROTATION_VECTOR = 259
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    RotationVector |
    /**
    * Ambient temperature sensor.
    *
    * @relation AMBIENT_TEMPERATURE = 260
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AmbientTemperature |
    /**
    * Uncalibrated magnetic field sensor.
    *
    * @relation MAGNETIC_FIELD_UNCALIBRATED = 261
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    MagneticFieldUncalibrated |
    /**
    * Uncalibrated gyroscope sensor.
    *
    * @relation GYROSCOPE_UNCALIBRATED = 263
    */
    @!APILevel[
        21,
        permission: "ohos.permission.GYROSCOPE",
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    GyroscopeUncalibrated |
    /**
    * Significant motion sensor.
    *
    * @relation SIGNIFICANT_MOTION = 264
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    SignificantMotion |
    /**
    * Pedometer detection sensor.
    *
    * @relation PEDOMETER_DETECTION = 265
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACTIVITY_MOTION",
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    PedometerDetection |
    /**
    * Pedometer sensor.
    *
    * @relation PEDOMETER = 266
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACTIVITY_MOTION",
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    Pedometer |
    /**
    * Heart rate sensor.
    *
    * @relation HEART_RATE = 278
    */
    @!APILevel[
        21,
        permission: "ohos.permission.READ_HEALTH_DATA",
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    HeartRate |
    /**
    * Wear detection sensor.
    *
    * @relation WEAR_DETECTION = 280
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    WearDetection |
    /**
    * Uncalibrated acceleration sensor.
    *
    * @relation ACCELEROMETER_UNCALIBRATED = 281
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCELEROMETER",
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AccelerometerUncalibrated |
    ...
}



/**
* Enumerates the accuracy levels of data reported by a sensor.
*
* @relation enum SensorAccuracy
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Sensors.Sensor"
]
public enum SensorAccuracy {
    /**
    * The sensor data is unreliable. It is possible that the sensor does not contact with the device to measure.
    *
    * @relation ACCURACY_UNRELIABLE = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AccuracyUnreliable |
    /**
    * The sensor data is at a low accuracy level. The data must be calibrated based on the environment before being used.
    *
    * @relation ACCURACY_LOW = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AccuracyLow |
    /**
    * The sensor data is at a medium accuracy level. You are advised to calibrate the data based on the environment before using it.
    *
    * @relation ACCURACY_MEDIUM = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AccuracyMedium |
    /**
    * The sensor data is at a high accuracy level. The data can be used directly.
    *
    * @relation ACCURACY_HIGH = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AccuracyHigh |
    ...
}



/**
* The basic data structure of the sensor event.
*
* @relation interface Response
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Sensors.Sensor"
]
public open class Response {
    /**
    * The timestamp of the reported sensor data.
    *
    * @relation timestamp: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var timestamp: Int64
    
    /**
    * The accuracy levels of data reported by a sensor.
    *
    * @relation accuracy: SensorAccuracy
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var accuracy: SensorAccuracy
}


/**
* Rotation vector sensor event data.
*
* @relation interface RotationVectorResponse extends Response
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class RotationVectorResponse <: Response {
    /**
    * Rotation vector x-axis component.
    *
    * @relation x: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var x: Float32
    
    /**
    * Rotation vector y-axis component.
    *
    * @relation y: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var y: Float32
    
    /**
    * Rotation vector z-axis component.
    *
    * @relation z: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var z: Float32
    
    /**
    * Scalar quantity.
    *
    * @relation w: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var w: Float32
}


/**
* Indicates sensor information.
*
* @relation interface Sensor
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class Sensor {
    /**
    * Sensor name.
    *
    * @relation sensorName:string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var sensorName: String
    
    /**
    * Sensor vendor.
    *
    * @relation vendorName:string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var vendorName: String
    
    /**
    * Sensor firmware version.
    *
    * @relation firmwareVersion:string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var firmwareVersion: String
    
    /**
    * Sensor hardware version.
    *
    * @relation hardwareVersion:string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var hardwareVersion: String
    
    /**
    * Sensor type ID, {@code SensorType}.
    *
    * @relation sensorId:number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var sensorId: SensorId
    
    /**
    * Maximum measurement range of the sensor.
    *
    * @relation maxRange:number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var maxRange: Float32
    
    /**
    * Minimum sample period allowed, in ns.
    *
    * @relation minSamplePeriod:number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var minSamplePeriod: Int64
    
    /**
    * Maximum sample period allowed, in ns.
    *
    * @relation maxSamplePeriod:number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var maxSamplePeriod: Int64
    
    /**
    * Sensor accuracy.
    *
    * @relation precision:number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var precision: Float32
    
    /**
    * Sensor power.
    *
    * @relation power:number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public var power: Float32
}


/**
* Obtains all sensor information on the device.
*
* @throws { BusinessException } 14500101 - Service exception. Possible causes: 1. Sensor hdf service exception;
* 2. Sensor service ipc exception;3. Sensor data channel exception.
* @relation function getSensorListSync(): Array<Sensor>
*/
@!APILevel[
    21,
    stagemodelonly: true,
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
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Sensors.Sensor"
]
public func getSingleSensor(sensorType: SensorId): Sensor


