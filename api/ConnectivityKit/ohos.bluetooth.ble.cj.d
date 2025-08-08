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

package ohos.bluetooth.ble
import ohos.base.*
import ohos.bluetooth.*
import ohos.ffi.*
import std.collection.{ArrayList, HashMap}
import std.sync.AtomicBool
import ohos.labels.*

import std.deriving.*
import ohos.bluetooth.constant.*

/**
* create a Gatt server instance.
*
* @returns { GattServer } Returns a Gatt server instance {@code GattServer}.
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func createGattServer(): GattServer


/**
* create a Gatt client device instance.
*
* @param { String } deviceId - Indicates device ID. For example, "11:22:33:AA:BB:FF".
* @returns { GattClientDevice } Returns a Gatt client device instance {@code GattClientDevice}.
* @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
* <br>2. Incorrect parameter types. 3. Parameter verification failed.
* @throws { BusinessException } 801 - Capability not supported.
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func createGattClientDevice(deviceId: String): GattClientDevice


/**
* Starts scanning for specified BLE devices with filters.
*
* @permission ohos.permission.ACCESS_BLUETOOTH
* @param { Array<ScanFilter> } filters - Indicates the list of filters used to filter out specified devices.
* If you do not want to use filter, set this parameter to {@code null}.
* @param { ScanOptions } options - Indicates the parameters for scanning and if the user does not assign a value, the default value will be used.
* {@link ScanOptions#interval} set to 0, {@link ScanOptions#dutyMode} set to {@link SCAN_MODE_LOW_POWER}
* and {@link ScanOptions#matchMode} set to {@link MATCH_MODE_AGGRESSIVE}.
* and {@link ScanOptions#phyType} set to {@link PHY_LE_ALL_SUPPORTED}.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
* <br>2. Incorrect parameter types. 3. Parameter verification failed.
* @throws { BusinessException } 801 - Capability not supported.
* @throws { BusinessException } 2900001 - Service stopped.
* @throws { BusinessException } 2900003 - Bluetooth disabled.
* @throws { BusinessException } 2900099 - Operation failed.
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func startBLEScan(filters: Array<ScanFilter>, options!: ?ScanOptions = None): Unit


/**
* Stops BLE scanning.
*
* @permission ohos.permission.ACCESS_BLUETOOTH
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 801 - Capability not supported.
* @throws { BusinessException } 2900001 - Service stopped.
* @throws { BusinessException } 2900003 - Bluetooth disabled.
* @throws { BusinessException } 2900099 - Operation failed.
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func stopBLEScan(): Unit


/**
* Starts BLE advertising.
*
* @permission ohos.permission.ACCESS_BLUETOOTH
* @param { AdvertiseSetting } setting - Indicates the settings for BLE advertising.
* @param { AdvertiseData } advData - Indicates the advertising data.
* @param { AdvertiseData } advResponse - Indicates the scan response associated with the advertising data.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
* <br>2. Incorrect parameter types. 3. Parameter verification failed.
* @throws { BusinessException } 801 - Capability not supported.
* @throws { BusinessException } 2900001 - Service stopped.
* @throws { BusinessException } 2900003 - Bluetooth disabled.
* @throws { BusinessException } 2900099 - Operation failed.
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func startAdvertising(setting: AdvertiseSetting, advData: AdvertiseData, advResponse!: ?AdvertiseData = None): Unit


/**
* Stops BLE advertising.
*
* @permission ohos.permission.ACCESS_BLUETOOTH
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 801 - Capability not supported.
* @throws { BusinessException } 2900001 - Service stopped.
* @throws { BusinessException } 2900003 - Bluetooth disabled.
* @throws { BusinessException } 2900099 - Operation failed.
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func stopAdvertising(): Unit


/**
* Starts BLE advertising.
* The API returns a advertising ID. The ID can be used to temporarily enable or disable this advertising
* using the API {@link enableAdvertising} or {@link disableAdvertising}.
* To completely stop the advertising corresponding to the ID, invoke the API {@link stopAdvertising} with ID.
*
* @permission ohos.permission.ACCESS_BLUETOOTH
* @param { AdvertisingParams } advertisingParams - Indicates the params for BLE advertising.
* @returns { UInt32 } Returns advertise ID.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
* <br>2. Incorrect parameter types. 3. Parameter verification failed.
* @throws { BusinessException } 801 - Capability not supported.
* @throws { BusinessException } 2900001 - Service stopped.
* @throws { BusinessException } 2900003 - Bluetooth disabled.
* @throws { BusinessException } 2900099 - Operation failed.
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func startAdvertising(advertisingParams: AdvertisingParams): UInt32


/**
* Stops BLE advertising.
* Completely stop the advertising corresponding to the ID.
*
* @permission ohos.permission.ACCESS_BLUETOOTH
* @param { UInt32 } advertisingId - Indicates the ID for this BLE advertising.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
* <br>2. Incorrect parameter types.
* @throws { BusinessException } 801 - Capability not supported.
* @throws { BusinessException } 2900001 - Service stopped.
* @throws { BusinessException } 2900003 - Bluetooth disabled.
* @throws { BusinessException } 2900099 - Operation failed.
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func stopAdvertising(advertisingId: UInt32): Unit


/**
* Subscribing to advertising state change event.
*
* @permission ohos.permission.ACCESS_BLUETOOTH
* @param { BluetoothBleCallbackType } type - Type of the advertising state to listen for.
* @param { Callback1Argument<AdvertisingStateChangeInfo> } callback - Callback used to listen for the advertising state.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
* <br>2. Incorrect parameter types. 3. Parameter verification failed.
* @throws { BusinessException } 801 - Capability not supported.
* @throws { BusinessException } 2900099 - Operation failed.
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func on(`type`: BluetoothBleCallbackType, callback: Callback1Argument<AdvertisingStateChangeInfo>): Unit


/**
* Subscribe BLE scan result.
*
* @permission ohos.permission.ACCESS_BLUETOOTH
* @param { BluetoothBleCallbackType } type - Type of the scan result event to listen for.
* @param { Callback1Argument<Array<ScanResult>> } callback - Callback used to listen for the scan result event.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
* <br>2. Incorrect parameter types. 3. Parameter verification failed.
* @throws { BusinessException } 801 - Capability not supported.
* @throws { BusinessException } 2900099 - Operation failed.
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func on(`type`: BluetoothBleCallbackType, callback: Callback1Argument<Array<ScanResult>>): Unit


/**
* Unsubscribe from callback event.
*
* @permission ohos.permission.ACCESS_BLUETOOTH
* @param { BluetoothBleCallbackType } type - Type of the callback.
* @param { ?CallbackObject } callback - Callback.
* @throws { BusinessException} 201 - Permission denied.
* @throws { BusinessException} 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
* <br>2. Incorrect parameter types. 3. Parameter verification failed.
* @throws { BusinessException} 801 - Capability not supported.
* @throws { BusinessException} 2900099 - Operation failed.
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func off(`type`: BluetoothBleCallbackType, callback!: ?CallbackObject = None): Unit


/**
* Manages GATT client. Before calling an Gatt client method, you must use {@link createGattClientDevice} to create an GattClientDevice instance.
*
* @typedef GattClientDevice
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class GattClientDevice <: RemoteDataLite {
    /**
    * Connects to a BLE peripheral device.
    * <p>The 'BLEConnectionStateChange' event is subscribed to return the connection state.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func connect(): Unit
    
    /**
    * Disconnects from or stops an ongoing connection to a BLE peripheral device.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func disconnect(): Unit
    
    /**
    * Disables a BLE peripheral device.
    * <p> This method unregisters the device and clears the registered callbacks and handles.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func close(): Unit
    
    /**
    * Obtains the name of BLE peripheral device.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @returns { String } Returns a string representation of the name if obtained;
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter.Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func getDeviceName(): String
    
    /**
    * Starts discovering services.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @returns { Array<GattService> } Returns the list of services {@link GattService} of the BLE peripheral device.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func getServices(): Array<GattService>
    
    /**
    * Reads the characteristic of a BLE peripheral device.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BLECharacteristic } characteristic - Indicates the characteristic to read.
    * @param { (?BusinessException, ?BLECharacteristic) -> Unit } callback - Callback invoked to return the characteristic value read.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2901000 - Read forbidden.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func readCharacteristicValue(
        characteristic: BLECharacteristic,
        callback: (?BusinessException, ?BLECharacteristic) -> Unit
    ): Unit
    
    /**
    * Reads the descriptor of a BLE peripheral device.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BLEDescriptor } descriptor - Indicates the descriptor to read.
    * @param { (?BusinessException, ?BLEDescriptor) -> Unit } callback - Callback invoked to return the descriptor read.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2901000 - Read forbidden.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func readDescriptorValue(descriptor: BLEDescriptor, callback: (?BusinessException, ?BLEDescriptor) -> Unit): Unit
    
    /**
    * Writes the characteristic of a BLE peripheral device.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BLECharacteristic } characteristic - Indicates the characteristic to write.
    * @param { GattWriteType } writeType - Write type of the characteristic.
    * @param { (?BusinessException) -> Unit } callback - Callback used to return the result.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2901001 - Write forbidden.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func writeCharacteristicValue(characteristic: BLECharacteristic, writeType: GattWriteType,
        callback: (?BusinessException) -> Unit): Unit
    
    /**
    * Writes the descriptor of a BLE peripheral device.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BLEDescriptor } descriptor - Indicates the descriptor to write.
    * @param { (?BusinessException) -> Unit } callback - Callback used to return the result.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2901001 - Write forbidden.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func writeDescriptorValue(descriptor: BLEDescriptor, callback: (?BusinessException) -> Unit): Unit
    
    /**
    * Get the RSSI value of this BLE peripheral device.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { (?BusinessException, ?Int32) -> Unit } callback - Callback invoked to return the RSSI, in dBm.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900099 - Operation failed.
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func getRssiValue(callback: (?BusinessException, ?Int32) -> Unit): Unit
    
    /**
    * Set the mtu size of a BLE peripheral device.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { Int32 } mtu - The maximum transmission unit.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func setBLEMtuSize(mtu: Int32): Unit
    
    /**
    * Enables or disables indication of a characteristic when value changed.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BLECharacteristic } characteristic - Indicates the characteristic to indicate.
    * @param { Bool } enable - Specifies whether to enable indication of the characteristic. The value {@code true} indicates
    * that indication is enabled, and the value {@code false} indicates that indication is disabled.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func setCharacteristicChangeNotification(characteristic: BLECharacteristic, enable: Bool): Unit
    
    /**
    * Enables or disables indication of a characteristic when value changed.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BLECharacteristic } characteristic - Indicates the characteristic to indicate.
    * @param { Bool } enable - Specifies whether to enable indication of the characteristic. The value {@code true} indicates
    * that indication is enabled, and the value {@code false} indicates that indication is disabled.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func setCharacteristicChangeIndication(characteristic: BLECharacteristic, enable: Bool): Unit
    
    /**
    * Subscribe characteristic value changed event.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BluetoothBleGattClientDeviceCallbackType } type - Type of the characteristic value changed event to listen for.
    * @param { Callback1Argument<BLECharacteristic>} callback - Callback used to listen for the characteristic value changed event.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    * @since 12
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(`type`: BluetoothBleGattClientDeviceCallbackType, callback: Callback1Argument<BLECharacteristic>): Unit
    
    /**
    * Subscribe client connection state changed event.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BluetoothBleGattClientDeviceCallbackType } type - Type of the connection state changed event to listen for.
    * @param { Callback1Argument<BLEConnectionChangeState> } callback - Callback used to listen for the connection state changed event.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(
        `type`: BluetoothBleGattClientDeviceCallbackType,
        callback: Callback1Argument<BLEConnectionChangeState>
    ): Unit
    
    /**
    * Subscribe mtu changed event.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BluetoothBleGattClientDeviceCallbackType } type - Type of the mtu changed event to listen for.
    * @param { Callback1Argument<Int32> } callback - Callback used to listen for the mtu changed event.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(`type`: BluetoothBleGattClientDeviceCallbackType, callback: Callback1Argument<Int32>): Unit
    
    /**
    * Unsubscribe mtu changed event.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BluetoothBleGattClientDeviceCallbackType } type - Type of the mtu changed event to listen for.
    * @param { CallbackObject} callback - Callback event.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func off(`type`: BluetoothBleGattClientDeviceCallbackType, callback!: ?CallbackObject = None): Unit
}


/**
* Manages GATT server. Before calling an Gatt server method, you must use {@link createGattServer} to create an GattServer instance.
*
* @typedef GattServer
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class GattServer <: RemoteDataLite {
    /**
    * Adds a specified service to be hosted.
    * <p>The added service and its characteristics are provided by the local device.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { GattService } service - Indicates the service to add.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func addService(service: GattService): Unit
    
    /**
    * Removes a specified service from the list of GATT services provided by this device.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { String } serviceUuid - Indicates the UUID of the service to remove.
    * @throws { BusinessException} 201 - Permission denied.
    * @throws { BusinessException} 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException} 801 - Capability not supported.
    * @throws { BusinessException} 2900001 - Service stopped.
    * @throws { BusinessException} 2900003 - Bluetooth disabled.
    * @throws { BusinessException} 2900004 - Profile not supported.
    * @throws { BusinessException} 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func removeService(serviceUuid: String): Unit
    
    /**
    * Closes this {@code GattServer} object and unregisters its callbacks.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func close(): Unit
    
    /**
    * Sends a notification of a change in a specified local characteristic with a asynchronous callback.
    * <p>This method should be called for every BLE peripheral device that has requested notifications.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { String } deviceId - Indicates device ID. For example, "11:22:33:AA:BB:FF".
    * @param { NotifyCharacteristic } notifyCharacteristic - Indicates the local characteristic that has changed.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func notifyCharacteristicChanged(deviceId: String, notifyCharacteristic: NotifyCharacteristic): Unit
    
    /**
    * Sends a response to a specified read or write request to a given BLE peripheral device.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { ServerResponse } serverResponse - Indicates the response parameters {@link ServerResponse}.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func sendResponse(serverResponse: ServerResponse): Unit
    
    /**
    * Subscribe characteristic read event.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BluetoothBleGattServerCallbackType } type - Type of the characteristic read event to listen for.
    * @param { Callback1Argument<CharacteristicReadRequest> } callback - Callback used to listen for the characteristic read event.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(`type`: BluetoothBleGattServerCallbackType, callback: Callback1Argument<CharacteristicReadRequest>): Unit
    
    /**
    * Subscribe characteristic write event.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BluetoothBleGattServerCallbackType } type - Type of the characteristic write event to listen for.
    * @param { Callback1Argument<CharacteristicWriteRequest> } callback - Callback used to listen for the characteristic write event.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(`type`: BluetoothBleGattServerCallbackType, callback: Callback1Argument<CharacteristicWriteRequest>): Unit
    
    /**
    * Subscribe descriptor read event.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BluetoothBleGattServerCallbackType } type - Type of the descriptor read event to listen for.
    * @param { Callback1Argument<DescriptorReadRequest> } callback - Callback used to listen for the descriptor read event.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(`type`: BluetoothBleGattServerCallbackType, callback: Callback1Argument<DescriptorReadRequest>): Unit
    
    /**
    * Subscribe descriptor write event.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BluetoothBleGattServerCallbackType } type - Type of the descriptor write event to listen for.
    * @param { Callback1Argument<DescriptorWriteRequest> } callback - Callback used to listen for the descriptor write event.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(`type`: BluetoothBleGattServerCallbackType, callback: Callback1Argument<DescriptorWriteRequest>): Unit
    
    /**
    * Subscribe server connection state changed event.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BluetoothBleGattServerCallbackType } type - Type of the connection state changed event to listen for.
    * @param { Callback1Argument<BLEConnectionChangeState> } callback - Callback used to listen for the connection state changed event.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(`type`: BluetoothBleGattServerCallbackType, callback: Callback1Argument<BLEConnectionChangeState>): Unit
    
    /**
    * Subscribe mtu changed event.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BluetoothBleGattServerCallbackType } type - Type of the mtu changed event to listen for.
    * @param { Callback1Argument<Int32> } callback - Callback used to listen for the mtu changed event.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(`type`: BluetoothBleGattServerCallbackType, callback: Callback1Argument<Int32>): Unit
    
    /**
    * Unsubscribe mtu changed event.
    *
    * @permission ohos.permission.ACCESS_BLUETOOTH
    * @param { BluetoothBleGattServerCallbackType } type - Type of the mtu changed event to listen for.
    * @param { ?CallbackObject } callback - Callback  event.
    * @throws { BusinessException} 201 - Permission denied.
    * @throws { BusinessException} 401 - Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.
    * <br>2. Incorrect parameter types. 3. Parameter verification failed.
    * @throws { BusinessException} 801 - Capability not supported.
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func off(`type`: BluetoothBleGattServerCallbackType, callback!: ?CallbackObject = None): Unit
}


/**
* Describes the Gatt service.
*
* @typedef GattService
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class GattService {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public GattService(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var serviceUuid: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var isPrimary: Bool,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var characteristics: Array<BLECharacteristic>,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var includeServices: Array<GattService>
    )
}


/**
* Describes the Gatt characteristic.
*
* @typedef BLECharacteristic
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class BLECharacteristic {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public BLECharacteristic(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var serviceUuid: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var characteristicUuid: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var characteristicValue: Array<Byte>,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var descriptors: Array<BLEDescriptor>,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var properties: GattProperties
    )
}


/**
* Describes the Gatt descriptor.
*
* @typedef BLEDescriptor
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class BLEDescriptor {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public BLEDescriptor(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var serviceUuid: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var characteristicUuid: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var descriptorUuid: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var descriptorValue: Array<Byte>
    )
}


/**
* Describes the properties of a gatt characteristic.
*
* @typedef GattProperties
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class GattProperties {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public GattProperties(
        let write!: Bool = true,
        let writeNoResponse!: Bool = true,
        let read!: Bool = true,
        let notify!: Bool = false,
        let indicate!: Bool = false
    )
}


/**
* Describes the value of the indication or notification sent by the Gatt server.
*
* @typedef NotifyCharacteristic
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class NotifyCharacteristic {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public NotifyCharacteristic(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var serviceUuid: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var characteristicUuid: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var characteristicValue: Array<Byte>,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var confirm: Bool
    )
}


/**
* Describes the parameters of a response send by the server to a specified read or write request.
*
* @typedef ServerResponse
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class ServerResponse {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public ServerResponse(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let deviceId: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let transId: Int32,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let status: Int32,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let offset: Int32,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let value: Array<Byte>
    )
}


/**
* The enum of gatt characteristic write type
*
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum GattWriteType {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    WRITE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    WRITE_NO_RESPONSE |
    ...
}



/**
* Describes the parameters of the Gatt client's characteristic read request.
*
* @typedef CharacteristicReadRequest
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class CharacteristicReadRequest {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public CharacteristicReadRequest(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let deviceId: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let transId: Int32,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let offset: Int32,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let characteristicUuid: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let serviceUuid: String
    )
}


/**
* Describes the parameters of the of the Gatt client's characteristic write request.
*
* @typedef CharacteristicWriteRequest
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class CharacteristicWriteRequest {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public CharacteristicWriteRequest(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let deviceId: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let transId: Int32,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let offset: Int32,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let isPrepared: Bool,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let needRsp: Bool,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let value: Array<Byte>,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let characteristicUuid: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let serviceUuid: String
    )
}


/**
* Describes the parameters of the Gatt client's descriptor read request.
*
* @typedef DescriptorReadRequest
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class DescriptorReadRequest {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public DescriptorReadRequest(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let deviceId: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let transId: Int32,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let offset: Int32,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let descriptorUuid: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let characteristicUuid: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let serviceUuid: String
    )
}


/**
* Describes the parameters of the Gatt client's characteristic write request.
*
* @typedef DescriptorWriteRequest
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class DescriptorWriteRequest {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public DescriptorWriteRequest(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let deviceId: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let transId: Int32,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let offset: Int32,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let isPrepared: Bool,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let needRsp: Bool,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let value: Array<Byte>,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let descriptorUuid: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let characteristicUuid: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let serviceUuid: String
    )
}


/**
* Describes the Gatt profile connection state.
*
* @typedef BLEConnectionChangeState
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class BLEConnectionChangeState {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public BLEConnectionChangeState(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public let deviceId: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var state: ProfileConnectionState
    )
}


@Derive[ToString, Hashable, Equatable]
@!APILevel[
    21,
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum BluetoothBleGattServerCallbackType {
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CHARACTERISTIC_READ |
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CHARACTERISTIC_WRITE |
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    DESCRIPTOR_READ |
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    DESCRIPTOR_WRITE |
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CONNECTION_STATE_CHANGE |
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    BLE_MTU_CHANGE |
    ...
}



@Derive[ToString, Hashable, Equatable]
@!APILevel[
    21,
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum BluetoothBleGattClientDeviceCallbackType {
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    BLE_CHARACTERISTIC_CHANGE |
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    BLE_CONNECTION_STATE_CHANGE |
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    BLE_MTU_CHANGE |
    ...
}



/**
* Describes the criteria for filtering scanning results can be set.
*
* @typedef ScanFilter
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class ScanFilter {
    /**
    * The address of a BLE peripheral device
    *
    * @type { ?String }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: ?String = None
    
    /**
    * The name of a BLE peripheral device
    *
    * @type { ?String }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var name: ?String = None
    
    /**
    * The service UUID of a BLE peripheral device
    *
    * @type { ?String }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUuid: ?String = None
    
    /**
    * Service UUID mask.
    *
    * @type { ?String }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUuidMask: ?String = None
    
    /**
    * Service solicitation UUID.
    *
    * @type { ?String }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceSolicitationUuid: ?String = None
    
    /**
    * Service solicitation UUID mask.
    *
    * @type { ?String }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceSolicitationUuidMask: ?String = None
    
    /**
    * Service data.
    *
    * @type { ?Array<Byte> }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceData: ?Array<Byte> = None
    
    /**
    * Service data mask.
    *
    * @type { ?Array<Byte> }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceDataMask: ?Array<Byte> = None
    
    /**
    * Manufacture id.
    *
    * @type { UInt16 }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var manufactureId: UInt16 = 0
    
    /**
    * Manufacture data.
    *
    * @type { ?Array<Byte> }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var manufactureData: ?Array<Byte> = None
    
    /**
    * Manufacture data mask.
    *
    * @type { ?Array<Byte> }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var manufactureDataMask: ?Array<Byte> = None
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init()
}


/**
* Describes the parameters for scan.
*
* @typedef ScanOptions
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class ScanOptions {
    /**
    * Time of delay for reporting the scan result
    *
    * @type { Int32 }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var interval: Int32 = 0
    
    /**
    * Bluetooth LE scan mode
    *
    * @type { ScanDuty }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var dutyMode: ScanDuty = SCAN_MODE_LOW_POWER
    
    /**
    * Match mode for Bluetooth LE scan filters hardware match
    *
    * @type { MatchMode }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var matchMode: MatchMode = MATCH_MODE_AGGRESSIVE
    
    /**
    * Physical Layer used during scan.
    *
    * @type { PhyType }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var phyType: PhyType = PHY_LE_1M
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(interval: Int32, dutyMode: ScanDuty, matchMode: MatchMode, phyType: PhyType)
}


/**
* Describes the settings for BLE advertising.
*
* @typedef AdvertiseSetting
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class AdvertiseSetting {
    /**
    * Minimum slot value for the advertising interval, which is {@code 32} (20 ms)
    * Maximum slot value for the advertising interval, which is {@code 16777215} (10485.759375s)
    * Default slot value for the advertising interval, which is {@code 1600} (1s)
    *
    * @type { UInt16 }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var interval: UInt16 = BLE_ADV_DEFAULT_INTERVAL
    
    /**
    * Minimum transmission power level for advertising, which is {@code -127}
    * Maximum transmission power level for advertising, which is {@code 1}
    * Default transmission power level for advertising, which is {@code -7}
    *
    * @type { Int8 }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var txPower: Int8 = BLE_ADV_TX_POWER_MEDIUM_VALUE
    
    /**
    * Indicates whether the BLE is connectable, default is {@code true}
    *
    * @type { Bool }
    * @syscap SystemCapability.Communication.Bluetooth.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var connectable: Bool = true
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(interval: UInt16, txPower: Int8, connectable: Bool)
}


/**
* Describes the advertising data.
*
* @typedef AdvertiseData
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class AdvertiseData {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public AdvertiseData(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var serviceUuids: Array<String>,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var manufactureData: Array<ManufactureData>,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var serviceData: Array<ServiceData>,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var includeDeviceName!: Bool = false
    )
}


/**
* Describes the manufacturer data.
*
* @typedef ManufactureData
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class ManufactureData {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public ManufactureData(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var manufactureId: UInt16,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var manufactureValue: Array<Byte>
    )
}


/**
* Describes the service data.
*
* @typedef ServiceData
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class ServiceData {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public ServiceData(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var serviceUuid: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var serviceValue: Array<Byte>
    )
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class AdvertisingParams {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public AdvertisingParams(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var advertisingSettings: AdvertiseSetting,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var advertisingData: AdvertiseData,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var advertisingResponse: AdvertiseData,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.Bluetooth.Core"
        ]
        public var duration!: UInt16 = 0
    )
}


/**
* Advertising state change information.
*
* @typedef AdvertisingStateChangeInfo
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class AdvertisingStateChangeInfo {
}


/**
* Describes the contents of the scan results.
*
* @typedef ScanResult
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class ScanResult {
}


/**
* The enum of scan duty.
*
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum ScanDuty {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    SCAN_MODE_LOW_POWER |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    SCAN_MODE_BALANCED |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    SCAN_MODE_LOW_LATENCY |
    ...
}



/**
* The enum of BLE match mode.
*
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum MatchMode {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    MATCH_MODE_AGGRESSIVE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    MATCH_MODE_STICKY |
    ...
}



/**
* The enum of BLE advertising state.
*
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum AdvertisingState {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    STARTED |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ENABLED |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    DISABLED |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    STOPPED |
    ...
}



/**
* Phy type used during scan.
*
* @syscap SystemCapability.Communication.Bluetooth.Core
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum PhyType {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    PHY_LE_1M |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    PHY_LE_ALL_SUPPORTED |
    ...
}



@Derive[ToString, Hashable, Equatable]
@!APILevel[
    21,
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum BluetoothBleCallbackType {
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ADVERTISING_STATE_CHANGE |
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    BLE_DEVICE_FIND |
    ...
}



