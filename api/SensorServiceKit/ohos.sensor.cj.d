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
import ohos.base.*

import ohos.ffi.*
import ohos.hilog.*
import std.deriving.*
import ohos.labels.*
import std.collection.{ArrayList, HashMap}
import std.sync.Mutex

// Enum for obtain the type of sensor.
@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Sensors.Sensor"
]
public enum SensorId {
    @!APILevel[
        21,
        atomicservice: true,
        permission: "ohos.permission.[ACCELEROMETER]",
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    ACCELEROMETER |
    @!APILevel[
        21,
        atomicservice: true,
        permission: "ohos.permission.GYROSCOPE",
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    GYROSCOPE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AMBIENT_LIGHT |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    MAGNETIC_FIELD |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    BAROMETER |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    HALL |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    PROXIMITY |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    HUMIDITY |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    ORIENTATION |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    GRAVITY |
    @!APILevel[
        21,
        permission: "ohos.permission.ACCELEROMETER",
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    LINEAR_ACCELEROMETER |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    ROTATION_VECTOR |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    AMBIENT_TEMPERATURE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    MAGNETIC_FIELD_UNCALIBRATED |
    @!APILevel[
        21,
        permission: "ohos.permission.GYROSCOPE",
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    GYROSCOPE_UNCALIBRATED |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    SIGNIFICANT_MOTION |
    @!APILevel[
        21,
        permission: "ohos.permission.ACTIVITY_MOTION",
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    PEDOMETER_DETECTION |
    @!APILevel[
        21,
        permission: "ohos.permission.ACTIVITY_MOTION",
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    PEDOMETER |
    @!APILevel[
        21,
        permission: "ohos.permission.READ_HEALTH_DATA",
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    HEART_RATE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    WEAR_DETECTION |
    @!APILevel[
        21,
        permission: "ohos.permission.ACCELEROMETER",
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    ACCELEROMETER_UNCALIBRATED |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    UNSUPPORTED |
    ...
}



/**
* Enumerates the accuracy levels of data reported by a sensor.
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Sensors.Sensor"
]
public enum SensorAccuracy {
    /**
    * The sensor data is unreliable. It is possible that the sensor does not contact with the device to measure.
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    ACCURACY_UNRELIABLE |
    /**
    * The sensor data is at a low accuracy level. The data must be calibrated based on the environment before being used.
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    ACCURACY_LOW |
    /**
    * The sensor data is at a medium accuracy level. You are advised to calibrate the data based on the environment before using it.
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    ACCURACY_MEDIUM |
    /**
    * The sensor data is at a high accuracy level. The data can be used directly.
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    ACCURACY_HIGH |
    ...
}



@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Sensors.Sensor"
]
public abstract class Response {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public Response(
        /**
         * The timestamp of the reported sensor data.
         */
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Sensors.Sensor"
        ]
        public var timestamp: Int64,
        /**
         * The accuracy levels of data reported by a sensor.
         */
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Sensors.Sensor"
        ]
        public var accuracy: SensorAccuracy
    )
}


/**
* Rotation vector sensor event data.
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class RotationVectorResponse <: Response {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public RotationVectorResponse(
        /**
         * Rotation vector x-axis component.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Sensors.Sensor"
        ]
        public var x: Float32,

        /**
         * Rotation vector y-axis component.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Sensors.Sensor"
        ]
        public var y: Float32,

        /**
         * Rotation vector z-axis component.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Sensors.Sensor"
        ]
        public var z: Float32,

        /**
         * Scalar quantity.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Sensors.Sensor"
        ]
        public var w: Float32
    )
}


/**
* Indicates sensor information.
* @typedef Sensor
* @syscap SystemCapability.Sensors.Sensor
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Sensors.Sensor"
]
public class Sensor {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public Sensor(
        /**
         * Sensor name.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Sensors.Sensor"
        ]
        public var sensorName: String,

        /**
         * Sensor vendor.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Sensors.Sensor"
        ]
        public var vendorName: String,

        /**
         * Sensor firmware version.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Sensors.Sensor"
        ]
        public var firmwareVersion: String,

        /**
         * Sensor hardware version.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Sensors.Sensor"
        ]
        public var hardwareVersion: String,

        /**
         * Sensor type ID, {@code SensorType}.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Sensors.Sensor"
        ]
        public var sensorId: SensorId,

        /**
         * Maximum measurement range of the sensor.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Sensors.Sensor"
        ]
        public var maxRange: Float32,

        /**
         * Minimum sample period allowed, in ns.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Sensors.Sensor"
        ]
        public var minSamplePeriod: Int64,

        /**
         * Maximum sample period allowed, in ns.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Sensors.Sensor"
        ]
        public var maxSamplePeriod: Int64,

        /**
         * Sensor accuracy.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Sensors.Sensor"
        ]
        public var precision: Float32,

        /**
         * Sensor power.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Sensors.Sensor"
        ]
        public var power: Float32
    )
}


/**
* Obtains all sensor information on the device.
* @returns { Array<Sensor> } used to return the result.
* @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
* <br> 2. Incorrect parameter types; 3. Parameter verification failed.
* @throws { BusinessException } 14500101 - Service exception.
* @syscap SystemCapability.Sensors.Sensor
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Sensors.Sensor"
]
public func getSensorList(): Array<Sensor>


/**
* Synchronously obtains the sensor information of a specified type.
* @param { SensorId } type - Indicate the sensor type, {@code SensorId}.
* @returns { Sensor } Returns sensor information.
* @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
* <br> 2. Incorrect parameter types; 3. Parameter verification failed.
* @throws { BusinessException } 14500101 - Service exception.
* @throws { BusinessException } 14500102 - The sensor is not supported by the device.
* @syscap SystemCapability.Sensors.Sensor
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Sensors.Sensor"
]
public func getSingleSensor(`type`: SensorId): Sensor


