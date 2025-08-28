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
import ohos.bluetooth.{ BLUETOOTH_LOG, OPERATION_FAILED, checkRet, getErrorMsg}
import ohos.business_exception.{ BusinessException, ERR_PARAMETER_ERROR}
import ohos.callback_invoke.{ Callback1Argument, CallbackObject}
import ohos.ffi.{ Callback1Param, SUCCESS_CODE, safeMalloc, cArr2cjArr}
import ohos.labels.APILevel
import std.collection.{ArrayList, HashMap}

import ohos.bluetooth.{ BLUETOOTH_LOG, checkRet, getErrorMsg}
import ohos.business_exception.{ BusinessException, AsyncCallback, ERR_PARAMETER_ERROR}
import ohos.callback_invoke.{ CallbackObject, Callback1Argument}
import ohos.ffi.{ Callback1Param, RemoteDataLite, RetDataI32, SUCCESS_CODE, cArr2cjArr, releaseFFIData}
import ohos.bluetooth.{ BLUETOOTH_LOG, getErrorMsg, checkRet}
import ohos.ffi.{ SUCCESS_CODE , RemoteDataLite, releaseFFIData, Callback1Param}
import ohos.bluetooth.constant.ProfileConnectionState
import ohos.ffi.{ CArrUI8, cArr2cjArr, cjArr2CArr}
import std.deriving.Derive
import ohos.labels.*
import ohos.ffi.*
import std.collection.HashMap

/**
* create a Gatt server instance.
*
* @relation function createGattServer(): GattServer
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
* @throws { BusinessException } 801 - Capability not supported.
* @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
* @relation function createGattClientDevice(deviceId: string): GattClientDevice
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
* @param { ?ScanOptions } options - Indicates the parameters for scanning and if the user does not assign a value, the default value will be used.
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 801 - Capability not supported.
* @throws { BusinessException } 2900001 - Service stopped.
* @throws { BusinessException } 2900003 - Bluetooth disabled.
* @throws { BusinessException } 2900099 - Operation failed.
* @throws { BusinessException } 2902054 - The length of the advertising data exceeds the upper limit.
* @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
* @relation function startBLEScan(filters: Array<ScanFilter>, options?: ScanOptions): void
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
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 801 - Capability not supported.
* @throws { BusinessException } 2900001 - Service stopped.
* @throws { BusinessException } 2900003 - Bluetooth disabled.
* @throws { BusinessException } 2900099 - Operation failed.
* @relation function stopBLEScan(): void
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
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 801 - Capability not supported.
* @throws { BusinessException } 2900001 - Service stopped.
* @throws { BusinessException } 2900003 - Bluetooth disabled.
* @throws { BusinessException } 2900099 - Operation failed.
* @throws { BusinessException } 2902054 - The length of the advertising data exceeds the upper limit.
* @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
* @relation function startAdvertising(setting: AdvertiseSetting, advData: AdvertiseData, advResponse?: AdvertiseData): void
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
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 801 - Capability not supported.
* @throws { BusinessException } 2900001 - Service stopped.
* @throws { BusinessException } 2900003 - Bluetooth disabled.
* @throws { BusinessException } 2900099 - Operation failed.
* @relation function stopAdvertising(): void
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
*
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 801 - Capability not supported.
* @throws { BusinessException } 2900001 - Service stopped.
* @throws { BusinessException } 2900003 - Bluetooth disabled.
* @throws { BusinessException } 2900099 - Operation failed.
* @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
* @relation function startAdvertising(advertisingParams: AdvertisingParams): Promise<number>
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
* @throws { BusinessException } 201 - Permission denied.
* @throws { BusinessException } 801 - Capability not supported.
* @throws { BusinessException } 2900001 - Service stopped.
* @throws { BusinessException } 2900003 - Bluetooth disabled.
* @throws { BusinessException } 2900099 - Operation failed.
* @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
* @relation function stopAdvertising(advertisingId: number): Promise<void>
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
* @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
* @relation function on(type: 'advertisingStateChange', callback: Callback<AdvertisingStateChangeInfo>): void
*/
@!APILevel[
    21,
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func on(eventType: BluetoothBleCallbackType, callback: Callback1Argument<AdvertisingStateChangeInfo>): Unit


/**
* Subscribe BLE scan result.
*
* @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
* @relation function on(type: 'BLEDeviceFind', callback: Callback<Array<ScanResult>>): void
*/
@!APILevel[
    21,
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func on(eventType: BluetoothBleCallbackType, callback: Callback1Argument<Array<ScanResult>>): Unit


/**
* Unsubscribe from callback event.
*
* @relation function off(type: 'advertisingStateChange', callback?: Callback<AdvertisingStateChangeInfo>): void
* @relation function off(type: 'BLEDeviceFind', callback?: Callback<Array<ScanResult>>): void
*/
@!APILevel[
    21,
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func off(eventType: BluetoothBleCallbackType, callback!: ?CallbackObject = None): Unit


/**
* Manages GATT client. Before calling an Gatt client method, you must use createGattClientDevice to create an GattClientDevice instance.
*
* @relation interface GattClientDevice
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class GattClientDevice <: RemoteDataLite {
    /**
    * Connects to a BLE peripheral device.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @relation connect(): void
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
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @relation disconnect(): void
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
    * This method unregisters the device and clears the registered callbacks and handles.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @relation close(): void
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
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation getDeviceName(): Promise<string>
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
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation getServices(): Promise<Array<GattService>>
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func getServices(callback: AsyncCallback<Array<GattService>>): Unit
    
    /**
    * Reads the characteristic of a BLE peripheral device.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2901000 - Read forbidden.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation readCharacteristicValue(characteristic: BLECharacteristic): Promise<BLECharacteristic>
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func readCharacteristicValue(
        characteristic: BLECharacteristic,
        callback: AsyncCallback<BLECharacteristic>
    ): Unit
    
    /**
    * Reads the descriptor of a BLE peripheral device.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900011 - The operation is busy. The last operation is not complete.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @throws { BusinessException } 2901000 - Read forbidden.
    * @throws { BusinessException } 2901003 - The connection is not established.
    * @throws { BusinessException } 2901004 - The connection is congested.
    * @throws { BusinessException } 2901005 - The connection is not encrypted.
    * @throws { BusinessException } 2901006 - The connection is not authenticated.
    * @throws { BusinessException } 2901007 - The connection is not authorized.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation readDescriptorValue(descriptor: BLEDescriptor): Promise<BLEDescriptor>
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func readDescriptorValue(descriptor: BLEDescriptor, callback: AsyncCallback<BLEDescriptor>): Unit
    
    /**
    * Writes the characteristic of a BLE peripheral device.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2901001 - Write forbidden.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation writeCharacteristicValue(characteristic: BLECharacteristic, writeType: GattWriteType): Promise<void>
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func writeCharacteristicValue(characteristic: BLECharacteristic, writeType: GattWriteType,
        callback: AsyncCallback<Unit>): Unit
    
    /**
    * Writes the descriptor of a BLE peripheral device.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2901001 - Write forbidden.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation writeDescriptorValue(descriptor: BLEDescriptor): Promise<void>
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func writeDescriptorValue(descriptor: BLEDescriptor, callback: AsyncCallback<Unit>): Unit
    
    /**
    * Get the RSSI value of this BLE peripheral device.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation getRssiValue(): Promise<number>
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func getRssiValue(callback: AsyncCallback<Int32>): Unit
    
    /**
    * Set the mtu size of a BLE peripheral device.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation setBLEMtuSize(mtu: number): void
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
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation setCharacteristicChangeNotification(characteristic: BLECharacteristic, enable: boolean): Promise<void>
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func setCharacteristicChangeNotification(characteristic: BLECharacteristic, enable: Bool, callback: AsyncCallback<Unit>): Unit
    
    /**
    * Enables or disables indication of a characteristic when value changed.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation setCharacteristicChangeIndication(characteristic: BLECharacteristic, enable: boolean): Promise<void>
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func setCharacteristicChangeIndication(characteristic: BLECharacteristic, enable: Bool, callback: AsyncCallback<Unit>): Unit
    
    /**
    * Subscribe characteristic value changed event.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation on(type: 'BLECharacteristicChange', callback: Callback<BLECharacteristic>): void
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(eventType: BluetoothBleGattClientDeviceCallbackType, callback: Callback1Argument<BLECharacteristic>): Unit
    
    /**
    * Subscribe client connection state changed event.
    *
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation on(type: 'BLEConnectionStateChange', callback: Callback<BLEConnectionChangeState>): void
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(
        eventType: BluetoothBleGattClientDeviceCallbackType,
        callback: Callback1Argument<BLEConnectionChangeState>
    ): Unit
    
    /**
    * Subscribe mtu changed event.
    *
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation on(type: 'BLEMtuChange', callback: Callback<number>): void
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(eventType: BluetoothBleGattClientDeviceCallbackType, callback: Callback1Argument<Int32>): Unit
    
    /**
    * Unsubscribe mtu changed event.
    *
    * @relation off(type: 'BLECharacteristicChange', callback?: Callback<BLECharacteristic>): void
    * @relation off(type: 'BLEConnectionStateChange', callback?: Callback<BLEConnectionChangeState>): void
    * @relation off(type: 'BLEMtuChange', callback?: Callback<number>): void
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func off(eventType: BluetoothBleGattClientDeviceCallbackType, callback!: ?CallbackObject = None): Unit
}


/**
* Manages GATT server. Before calling an Gatt server method, you must use createGattServer to create an GattServer instance.
*
* @relation interface GattServer
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class GattServer <: RemoteDataLite {
    /**
    * Adds a specified service to be hosted.
    * The added service and its characteristics are provided by the local device.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation addService(service: GattService): void
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
    * @throws { BusinessException} 201 - Permission denied.
    * @throws { BusinessException} 801 - Capability not supported.
    * @throws { BusinessException} 2900001 - Service stopped.
    * @throws { BusinessException} 2900003 - Bluetooth disabled.
    * @throws { BusinessException} 2900004 - Profile not supported.
    * @throws { BusinessException} 2900099 - Operation failed.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation removeService(serviceUuid: string): void
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func removeService(serviceUuid: String): Unit
    
    /**
    * Closes this GattServer object and unregisters its callbacks.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @relation close(): void
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
    * This method should be called for every BLE peripheral device that has requested notifications.
    *
    * @param { String } deviceId - Indicates device ID. For example, "11:22:33:AA:BB:FF".
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation notifyCharacteristicChanged(deviceId: string, notifyCharacteristic: NotifyCharacteristic): Promise<void>
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
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 2900001 - Service stopped.
    * @throws { BusinessException } 2900003 - Bluetooth disabled.
    * @throws { BusinessException } 2900099 - Operation failed.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation sendResponse(serverResponse: ServerResponse): void
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
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation on(type: 'characteristicRead', callback: Callback<CharacteristicReadRequest>): void
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<CharacteristicReadRequest>): Unit
    
    /**
    * Subscribe characteristic write event.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation on(type: 'characteristicWrite', callback: Callback<CharacteristicWriteRequest>): void
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<CharacteristicWriteRequest>): Unit
    
    /**
    * Subscribe descriptor read event.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation on(type: 'descriptorRead', callback: Callback<DescriptorReadRequest>): void
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<DescriptorReadRequest>): Unit
    
    /**
    * Subscribe descriptor write event.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation on(type: 'descriptorWrite', callback: Callback<DescriptorWriteRequest>): void
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<DescriptorWriteRequest>): Unit
    
    /**
    * Subscribe server connection state changed event.
    *
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation on(type: 'connectionStateChange', callback: Callback<BLEConnectionChangeState>): void
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<BLEConnectionChangeState>): Unit
    
    /**
    * Subscribe mtu changed event.
    *
    * @throws { IllegalArgumentException } - Invalid parameter, Parameter verification failed.
    * @relation on(type: 'BLEMtuChange', callback: Callback<number>): void
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<Int32>): Unit
    
    /**
    * Unsubscribe mtu changed event.
    *
    * @relation off(type: 'characteristicRead', callback?: Callback<CharacteristicReadRequest>): void
    * @relation off(type: 'characteristicWrite', callback?: Callback<CharacteristicWriteRequest>): void
    * @relation off(type: 'descriptorRead', callback?: Callback<DescriptorReadRequest>): void
    * @relation off(type: 'descriptorWrite', callback?: Callback<DescriptorWriteRequest>): void
    * @relation off(type: 'connectionStateChange', callback?: Callback<BLEConnectionChangeState>): void
    * @relation off(type: 'BLEMtuChange', callback?: Callback<number>): void
    */
    @!APILevel[
        21,
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func off(eventType: BluetoothBleGattServerCallbackType, callback!: ?CallbackObject = None): Unit
}


/**
* Describes the Gatt service.
*
* @relation interface GattService
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class GattService {
    /**
    * The UUID of a GattService instance.
    *
    * @relation serviceUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUuid: String
    
    /**
    * Indicates whether the GattService instance is primary or secondary.
    *
    * @relation isPrimary: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var isPrimary: Bool
    
    /**
    * The BLECharacteristic list belongs to this GattService instance.
    *
    * @relation characteristics: Array<BLECharacteristic>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristics: Array<BLECharacteristic>
    
    /**
    * The list of GATT services contained in the service.
    *
    * @relation includeServices?: Array<GattService>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var includeServices: Array<GattService>
    
    /**
    * GattService constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        serviceUuid: String,
        isPrimary: Bool,
        characteristics: Array<BLECharacteristic>,
        includeServices!: Array<GattService> = []
    )
}


/**
* Describes the Gatt characteristic.
*
* @relation interface BLECharacteristic
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class BLECharacteristic {
    /**
    * The UUID of the GattService instance to which the characteristic belongs
    *
    * @relation serviceUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUuid: String
    
    /**
    * The UUID of a BLECharacteristic instance
    *
    * @relation characteristicUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicUuid: String
    
    /**
    * The value of a BLECharacteristic instance
    *
    * @relation characteristicValue: ArrayBuffer
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicValue: Array<Byte>
    
    /**
    * The list of BLEDescriptor contained in the characteristic
    *
    * @relation descriptors: Array<BLEDescriptor>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var descriptors: Array<BLEDescriptor>
    
    /**
    * The properties of a BLECharacteristic instance
    *
    * @relation properties?: GattProperties
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var properties: GattProperties
    
    /**
    * BLECharacteristic constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        serviceUuid: String,
        characteristicUuid: String,
        characteristicValue: Array<Byte>,
        descriptors: Array<BLEDescriptor>,
        properties!: GattProperties = GattProperties(),
        permissions!: GattPermissions = GattPermissions(),
        characteristicValueHandle!: UInt32 = 0
    )
}


/**
* Describes the Gatt descriptor.
*
* @relation interface BLEDescriptor
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class BLEDescriptor {
    /**
    * The UUID of the GattService instance to which the descriptor belongs
    *
    * @relation serviceUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUuid: String
    
    /**
    * The UUID of the BLECharacteristic instance to which the descriptor belongs
    *
    * @relation characteristicUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicUuid: String
    
    /**
    * The UUID of the BLEDescriptor instance
    *
    * @relation descriptorUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var descriptorUuid: String
    
    /**
    * The value of the BLEDescriptor instance
    *
    * @relation descriptorValue: ArrayBuffer
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var descriptorValue: Array<Byte>
    
    /**
    * BLEDescriptor constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        serviceUuid: String,
        characteristicUuid: String,
        descriptorUuid: String,
        descriptorValue: Array<Byte>,
        descriptorHandle!: UInt32 = 0,
        permissions!: GattPermissions = GattPermissions()
    )
}


/**
* Describes the properties of a gatt characteristic.
*
* @relation interface GattProperties
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class GattProperties {
    /**
    * Support write property of the characteristic.
    *
    * @relation write?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var write: Bool
    
    /**
    * Support write no response property of the characteristic.
    *
    * @relation writeNoResponse?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var writeNoResponse: Bool
    
    /**
    * Support read property of the characteristic.
    *
    * @relation read?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var read: Bool
    
    /**
    * Support notify property of the characteristic.
    *
    * @relation notify?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var notify: Bool
    
    /**
    * Support indicate property of the characteristic.
    *
    * @relation indicate?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var indicate: Bool
    
    /**
    * GattProperties constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        write!: Bool = true,
        writeNoResponse!: Bool = true,
        read!: Bool = true,
        notify!: Bool = false,
        indicate!: Bool = false,
        broadcast!: Bool = false,
        authenticatedSignedWrite!: Bool = false,
        extendedProperties!: Bool = false
    )
}


/**
* Describes the value of the indication or notification sent by the Gatt server.
*
* @relation interface NotifyCharacteristic
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class NotifyCharacteristic {
    /**
    * The UUID of the GattService instance to which the characteristic belongs
    *
    * @relation serviceUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUuid: String
    
    /**
    * The UUID of a NotifyCharacteristic instance
    *
    * @relation characteristicUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicUuid: String
    
    /**
    * The value of a NotifyCharacteristic instance
    *
    * @relation characteristicValue: ArrayBuffer
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicValue: Array<Byte>
    
    /**
    * Specifies whether to request confirmation from the BLE peripheral device (indication) or
    * send a notification. Value true indicates the former and false indicates the latter.
    *
    * @relation confirm: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var confirm: Bool
    
    /**
    * NotifyCharacteristic constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        serviceUuid: String,
        characteristicUuid: String,
        characteristicValue: Array<Byte>,
        confirm: Bool
    )
}


/**
* Describes the parameters of a response send by the server to a specified read or write request.
*
* @relation interface ServerResponse
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class ServerResponse {
    /**
    * Indicates the address of the client to which to send the response
    *
    * @relation deviceId: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String
    
    /**
    * The Id of the write request
    *
    * @relation transId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var transId: Int32
    
    /**
    * Indicates the status of the read or write request, set this parameter to '0' in normal cases
    *
    * @relation status: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var status: Int32
    
    /**
    * Indicates the byte offset of the start position for reading or writing operation
    *
    * @relation offset: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var offset: Int32
    
    /**
    * Indicates the value to be sent
    *
    * @relation value: ArrayBuffer
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var value: Array<Byte>
    
    /**
    * ServerResponse constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        deviceId: String,
        transId: Int32,
        status: Int32,
        offset: Int32,
        value: Array<Byte>
    )
}


/**
* The enum of gatt characteristic write type
*
* @relation enum GattWriteType
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum GattWriteType {
    /**
    * Write characteristic with response.
    *
    * @relation WRITE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    Write |
    /**
    * Write characteristic without response.
    *
    * @relation WRITE_NO_RESPONSE = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    WriteNoResponse |
    ...
}



/**
* Describes the parameters of the Gatt client's characteristic read request.
*
* @relation interface CharacteristicReadRequest
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class CharacteristicReadRequest {
    /**
    * Indicates the address of the client that initiates the read request
    *
    * @relation deviceId: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String
    
    /**
    * The Id of the read request
    *
    * @relation transId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var transId: Int32
    
    /**
    * Indicates the byte offset of the start position for reading characteristic value
    *
    * @relation offset: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var offset: Int32
    
    /**
    * The UUID of a CharacteristicReadRequest instance
    *
    * @relation characteristicUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicUuid: String
    
    /**
    * The UUID of the service to which the characteristic belongs
    *
    * @relation serviceUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUuid: String
}


/**
* Describes the parameters of the of the Gatt client's characteristic write request.
*
* @relation interface CharacteristicWriteRequest
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class CharacteristicWriteRequest {
    /**
    * Indicates the address of the client that initiates the write request
    *
    * @relation deviceId: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String
    
    /**
    * The Id of the write request
    *
    * @relation transId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var transId: Int32
    
    /**
    * Indicates the byte offset of the start position for writing characteristic value
    *
    * @relation offset: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var offset: Int32
    
    /**
    * Whether this request should be pending for later operation
    *
    * @relation isPrepared: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var isPrepared: Bool
    
    /**
    * Whether the remote client need a response
    *
    * @relation needRsp: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var needRsp: Bool
    
    /**
    * Indicates the value to be written
    *
    * @relation value: ArrayBuffer
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var value: Array<Byte>
    
    /**
    * The UUID of a CharacteristicWriteRequest instance
    *
    * @relation characteristicUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicUuid: String
    
    /**
    * The UUID of the service to which the characteristic belongs
    *
    * @relation serviceUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUuid: String
}


/**
* Describes the parameters of the Gatt client's descriptor read request.
*
* @relation interface DescriptorReadRequest
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class DescriptorReadRequest {
    /**
    * Indicates the address of the client that initiates the read request
    *
    * @relation deviceId: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String
    
    /**
    * The Id of the read request
    *
    * @relation transId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var transId: Int32
    
    /**
    * Indicates the byte offset of the start position for reading characteristic value
    *
    * @relation offset: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var offset: Int32
    
    /**
    * The UUID of a DescriptorReadRequest instance
    *
    * @relation descriptorUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var descriptorUuid: String
    
    /**
    * The UUID of the characteristic to which the descriptor belongs
    *
    * @relation characteristicUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicUuid: String
    
    /**
    * The UUID of the service to which the descriptor belongs
    *
    * @relation serviceUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUuid: String
}


/**
* Describes the parameters of the Gatt client's characteristic write request.
*
* @relation interface DescriptorWriteRequest
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class DescriptorWriteRequest {
    /**
    * Indicates the address of the client that initiates the write request
    *
    * @relation deviceId: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String
    
    /**
    * The Id of the write request
    *
    * @relation transId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var transId: Int32
    
    /**
    * Indicates the byte offset of the start position for writing characteristic value
    *
    * @relation offset: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var offset: Int32
    
    /**
    * Whether this request should be pending for later operation
    *
    * @relation isPrepared: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var isPrepared: Bool
    
    /**
    * Whether the remote client need a response
    *
    * @relation needRsp: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var needRsp: Bool
    
    /**
    * Indicates the value to be written
    *
    * @relation value: ArrayBuffer
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var value: Array<Byte>
    
    /**
    * The UUID of a DescriptorWriteRequest instance
    *
    * @relation descriptorUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var descriptorUuid: String
    
    /**
    * The UUID of the characteristic to which the descriptor belongs
    *
    * @relation characteristicUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicUuid: String
    
    /**
    * The UUID of the service to which the descriptor belongs
    *
    * @relation serviceUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUuid: String
}


/**
* Describes the Gatt profile connection state.
*
* @relation interface BLEConnectionChangeState
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class BLEConnectionChangeState {
    /**
    * Indicates the peer device address
    *
    * @relation deviceId: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String
    
    /**
    * Connection state of the Gatt profile
    *
    * @relation state: ProfileConnectionState
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var state: ProfileConnectionState
}


/**
* Bluetooth Ble GattServer CallbackType.
*/
@Derive[ToString, Hashable, Equatable]
@!APILevel[
    21,
    permission: "ohos.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum BluetoothBleGattServerCallbackType {
    /**
    * Characteristic Read
    */
    @!APILevel[
        21,
        permission: "ohos.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CharacteristicRead |
    /**
    * Characteristic Write
    */
    @!APILevel[
        21,
        permission: "ohos.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CharacteristicWrite |
    /**
    * Descriptor Read
    */
    @!APILevel[
        21,
        permission: "ohos.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    DescriptorRead |
    /**
    * Descriptor Write
    */
    @!APILevel[
        21,
        permission: "ohos.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    DescriptorWrite |
    /**
    * Connection State Change
    */
    @!APILevel[
        21,
        permission: "ohos.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ConnectionStateChange |
    /**
    * Ble Mtu Change
    */
    @!APILevel[
        21,
        permission: "ohos.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ServerBleMtuChange |
    ...
}



/**
* Bluetooth Ble GattClientDevice CallbackType.
*/
@Derive[ToString, Hashable, Equatable]
@!APILevel[
    21,
    permission: "ohos.ACCESS_BLUETOOTH",
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum BluetoothBleGattClientDeviceCallbackType {
    /**
    * Ble Characteristic Change
    */
    @!APILevel[
        21,
        permission: "ohos.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    BleCharacteristicChange |
    /**
    * BleConnection State Change
    */
    @!APILevel[
        21,
        permission: "ohos.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    BleConnectionStateChange |
    /**
    * Ble Mtu Change
    */
    @!APILevel[
        21,
        permission: "ohos.ACCESS_BLUETOOTH",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ClientBleMtuChange |
    ...
}



/**
* Describes the permission of a att attribute item.
*
* @relation interface GattPermissions
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class GattPermissions {
    /**
    * The attribute field has the read permission.
    *
    * @relation read?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var read: Bool
    
    /**
    * The attribute field has the encrypted read permission.
    *
    * @relation readEncrypted?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var readEncrypted: Bool
    
    /**
    * The attribute field has the read permission for encryption authentication.
    *
    * @relation readEncryptedMitm?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var readEncryptedMitm: Bool
    
    /**
    * The attribute field has the write permission.
    *
    * @relation write?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var write: Bool
    
    /**
    * The attribute field has the encrypted write permission.
    *
    * @relation writeEncrypted?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var writeEncrypted: Bool
    
    /**
    * The attribute field has the write permission for encryption authentication.
    *
    * @relation writeEncryptedMitm?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var writeEncryptedMitm: Bool
    
    /**
    * The attribute field has the signed write permission.
    *
    * @relation writeSigned?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var writeSigned: Bool
    
    /**
    * The attribute field has the write permission for signature authentication.
    *
    * @relation writeSignedMitm?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var writeSignedMitm: Bool
    
    /**
    * GattPermissions constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init (
        read!: Bool = true,
        readEncrypted!: Bool = false,
        readEncryptedMitm!: Bool = false,
        write!: Bool = true,
        writeEncrypted!: Bool = false,
        writeEncryptedMitm!: Bool = false,
        writeSigned!: Bool = false,
        writeSignedMitm!: Bool = false
    )
}



/**
* Describes the criteria for filtering scanning results can be set.
*
* @relation interface ScanFilter
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
    * @relation deviceId?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String
    
    /**
    * The name of a BLE peripheral device
    *
    * @relation name?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var name: String
    
    /**
    * The service UUID of a BLE peripheral device
    *
    * @relation serviceUuid?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUuid: String
    
    /**
    * Service UUID mask.
    *
    * @relation serviceUuidMask?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUuidMask: String
    
    /**
    * Service solicitation UUID.
    *
    * @relation serviceSolicitationUuid?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceSolicitationUuid: String
    
    /**
    * Service solicitation UUID mask.
    *
    * @relation serviceSolicitationUuidMask?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceSolicitationUuidMask: String
    
    /**
    * Service data.
    *
    * @relation serviceData?: ArrayBuffer
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceData: Array<Byte>
    
    /**
    * Service data mask.
    *
    * @relation serviceDataMask?: ArrayBuffer
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceDataMask: Array<Byte>
    
    /**
    * Manufacture id.
    *
    * @relation manufactureId?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var manufactureId: UInt16
    
    /**
    * Manufacture data.
    *
    * @relation manufactureData?: ArrayBuffer
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var manufactureData: Array<Byte>
    
    /**
    * Manufacture data mask.
    *
    * @relation manufactureDataMask?: ArrayBuffer
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var manufactureDataMask: Array<Byte>
    
    /**
    * ScanFilter constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        deviceId!: String = "",
        name!: String = "",
        serviceUuid!: String = "",
        serviceUuidMask!: String = "",
        serviceSolicitationUuid!: String = "",
        serviceSolicitationUuidMask!: String = "",
        serviceData!: Array<Byte> = [],
        serviceDataMask!: Array<Byte> = [],
        manufactureId!: UInt16 = 0,
        manufactureData!: Array<Byte> = [],
        manufactureDataMask!: Array<Byte> = []
    )
}


/**
* Describes the parameters for scan.
*
* @relation interface ScanOptions
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
    * @relation interval?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var interval: Int32
    
    /**
    * Bluetooth LE scan mode
    *
    * @relation dutyMode?: ScanDuty
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var dutyMode: ScanDuty
    
    /**
    * Match mode for Bluetooth LE scan filters hardware match
    *
    * @relation matchMode?: MatchMode
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var matchMode: MatchMode
    
    /**
    * Physical Layer used during scan.
    *
    * @relation phyType?: PhyType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var phyType: PhyType
    
    /**
    * ScanOptions constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        interval!: Int32 = 0,
        dutyMode!: ScanDuty = ScanModeLowPower,
        matchMode!: MatchMode = MatchModeAggressive,
        phyType!: PhyType = PhyLe1M,
        reportMode!: ScanReportMode = Normal
    )
}


/**
* Describes the settings for BLE advertising.
*
* @relation interface AdvertiseSetting
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class AdvertiseSetting {
    /**
    * Minimum slot value for the advertising interval, which is 32 (20 ms)
    * Maximum slot value for the advertising interval, which is 16777215} (10485.759375s)
    * Default slot value for the advertising interval, which is 1600 (1s)
    *
    * @relation interval?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var interval: UInt16
    
    /**
    * Minimum transmission power level for advertising, which is -127
    * Maximum transmission power level for advertising, which is 1
    * Default transmission power level for advertising, which is -7
    *
    * @relation txPower?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var txPower: Int8
    
    /**
    * Indicates whether the BLE is connectable, default is true
    *
    * @relation connectable?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var connectable: Bool
    
    /**
    * AdvertiseSetting constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(interval!: UInt16 = BLE_ADV_DEFAULT_INTERVAL, txPower!: Int8 = BLE_ADV_TX_POWER_MEDIUM_VALUE, connectable!: Bool = true)
}


/**
* Describes the advertising data.
*
* @relation interface AdvertiseData
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class AdvertiseData {
    /**
    * The specified service UUID list to this advertisement
    *
    * @relation serviceUuids: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUuids: Array<String>
    
    /**
    * The specified manufacturer data list to this advertisement
    *
    * @relation manufactureData: Array<ManufactureData>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var manufactureData: Array<ManufactureData>
    
    /**
    * The specified service data list to this advertisement
    *
    * @relation serviceData: Array<ServiceData>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceData: Array<ServiceData>
    
    /**
    * Indicates whether the device name will be included in the advertisement packet.
    *
    * @relation includeDeviceName?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var includeDeviceName: Bool
    
    /**
    * AdvertiseData constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        serviceUuids: Array<String>,
        manufactureData: Array<ManufactureData>,
        serviceData: Array<ServiceData>,
        includeDeviceName!: Bool = false,
        includeTxPower!: Bool = false
    )
}


/**
* Describes the manufacturer data.
*
* @relation interface ManufactureData
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class ManufactureData {
    /**
    * Indicates the manufacturer ID assigned by Bluetooth SIG
    *
    * @relation manufactureId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var manufactureId: UInt16
    
    /**
    * Indicates the manufacturer data to add
    *
    * @relation manufactureValue: ArrayBuffer
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var manufactureValue: Array<Byte>
    
    /**
    * ManufactureData constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        manufactureId: UInt16,
        manufactureValue: Array<Byte>
    )
}


/**
* Describes the service data.
*
* @relation interface ServiceData
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class ServiceData {
    /**
    * Indicates the UUID of the service data to add
    *
    * @relation serviceUuid: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUuid: String
    
    /**
    * Indicates the service data to add
    *
    * @relation serviceValue: ArrayBuffer
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceValue: Array<Byte>
    
    /**
    * ServiceData constructor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        serviceUuid: String,
        serviceValue: Array<Byte>
    )
}


/**
* Describes the advertising parameters.
*
* @relation interface AdvertisingParams
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class AdvertisingParams {
    /**
    * Indicates the advertising settings.
    *
    * @relation advertisingSettings: AdvertiseSetting
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var advertisingSettings: AdvertiseSetting
    
    /**
    * Indicates the advertising data.
    *
    * @relation advertisingData: AdvertiseData
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var advertisingData: AdvertiseData
    
    /**
    * Indicates the advertising response.
    *
    * @relation advertisingResponse?: AdvertiseData
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var advertisingResponse: AdvertiseData
    
    /**
    * Indicates the duration for advertising continuously.
    * The duration, in 10ms unit. Valid range is from 1 (10ms) to 65535 (655,350 ms).
    * If this parameter is not specified or is set to 0, advertisement is continuously sent.
    *
    * @relation duration?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var duration: UInt16
    
    /**
    * AdvertisingParams constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        advertisingSettings: AdvertiseSetting,
        advertisingData: AdvertiseData,
        advertisingResponse!: AdvertiseData = AdvertiseData([], [], []),
        duration!: UInt16 = 0
    )
}


/**
* Advertising state change information.
*
* @relation interface AdvertisingStateChangeInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class AdvertisingStateChangeInfo {
    /**
    * Indicates the ID of current advertising.
    *
    * @relation advertisingId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var advertisingId: Int32
    
    /**
    * Indicates the advertising state.
    *
    * @relation state: AdvertisingState
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var state: AdvertisingState
}


/**
* Describes the contents of the scan results.
*
* @relation interface ScanResult
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class ScanResult {
    /**
    * Address of the scanned device
    *
    * @relation deviceId: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String
    
    /**
    * RSSI of the remote device
    *
    * @relation rssi: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var rssi: Int32
    
    /**
    * The raw data of broadcast packet
    *
    * @relation data: ArrayBuffer
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var data: Array<Byte>
    
    /**
    * The local name of the BLE device
    *
    * @relation deviceName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceName: String
    
    /**
    * Connectable of the remote device
    *
    * @relation connectable: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var connectable: Bool
}


/**
* The enum of scan duty.
*
* @relation enum ScanDuty
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum ScanDuty {
    /**
    * low power mode
    *
    * @relation SCAN_MODE_LOW_POWER = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ScanModeLowPower |
    /**
    * balanced power mode
    *
    * @relation SCAN_MODE_BALANCED = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ScanModeBalanced |
    /**
    * Scan using highest duty cycle
    *
    * @relation SCAN_MODE_LOW_LATENCY = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ScanModeLowLatency |
    ...
}



/**
* The enum of BLE match mode.
*
* @relation enum MatchMode
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum MatchMode {
    /**
    * aggressive mode
    *
    * @relation MATCH_MODE_AGGRESSIVE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    MatchModeAggressive |
    /**
    * sticky mode
    *
    * @relation MATCH_MODE_STICKY = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    MatchModeSticky |
    ...
}



/**
* The enum of BLE advertising state.
*
* @relation enum AdvertisingState
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum AdvertisingState {
    /**
    * advertising started.
    *
    * @relation STARTED = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    Started |
    /**
    * advertising temporarily enabled.
    *
    * @relation ENABLED = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    Enabled |
    /**
    * advertising temporarily disabled.
    *
    * @relation DISABLED = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    Disabled |
    /**
    * advertising stopped.
    *
    * @relation STOPPED = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    Stopped |
    ...
}



/**
* Phy type used during scan.
*
* @relation enum PhyType
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum PhyType {
    /**
    * Use 1M phy for scanning.
    *
    * @relation PHY_LE_1M = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    PhyLe1M |
    /**
    * Use all supported Phys for scanning.
    *
    * @relation PHY_LE_ALL_SUPPORTED = 255
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    PhyLeAllSupported |
    ...
}



/**
* Bluetooth Ble CallbackType
*/
@Derive[ToString, Hashable, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum BluetoothBleCallbackType {
    /**
    * Advertising State Change
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    AdvertisingStateChange |
    /**
    * Ble Device Find
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    BleDeviceFind |
    ...
}



/**
* Report mode used during scan.
*
* @relation enum ScanReportMode
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum ScanReportMode {
    /**
    * In normal mode, the advertisement packet is reported immediately after being scanned.
    *
    * @relation NORMAL = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    Normal |
    /**
    * Enables the batch mode in which advertisement packets are sent after the interval specified by {@link
    * ScanOptions#interval}.
    *
    * @relation BATCH = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    Batch |
    /**
    * In low sensitivity fence mode, the advertisement packets are reported only when they are received for
    * the first time and lost for the last time. The reception sensitivity is low.
    *
    * @relation FENCE_SENSITIVITY_LOW = 10
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    FenceSensitivityLow |
    /**
    * In high sensitivity fence mode, the advertisement packets are reported only when they are received for
    * the first time and lost for the last time. The reception sensitivity is high.
    *
    * @relation FENCE_SENSITIVITY_HIGH = 11
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    FenceSensitivityHigh |
    ...
}



