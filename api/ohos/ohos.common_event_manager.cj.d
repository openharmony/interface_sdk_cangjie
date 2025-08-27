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

package ohos.common_event_manager
import ohos.labels.APILevel
import ohos.ffi.{Callback1Param, INVALID_CODE}
import ohos.common_event_data.CCommonEventData
import ohos.common_event_publish_data.CCommonEventPublishData
import ohos.business_exception.{BusinessException, AsyncCallback}
public import ohos.common_event_data.CommonEventData
public import ohos.common_event_publish_data.CommonEventPublishData
public import ohos.common_event_subscribe_info.CommonEventSubscribeInfo
public import ohos.common_event_subscriber.CommonEventSubscriber
public import ohos.value_type.ValueType

import ohos.business_exception.{BusinessException, getUniversalErrorMsg}
import std.collection.HashMap
import ohos.ffi.{INVALID_CODE, SUCCESS_CODE}
import ohos.hilog.HilogChannel

/**
* The CommonEventManager module provides common event capabilities, including the capabilities to publish, subscribe to, and unsubscribe from common events.
* @relation declare namespace commonEventManager
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Notification.CommonEvent"
]
public class CommonEventManager {
    /**
    * Publishes an ordered, sticky, or standard common event.
    *
    * @param { String } event - Name of the common event to publish.
    * @param { CommonEventPublishData } options - Attributes of the common event to publish.
    * @throws { BusinessException } 1500004 - If not System services or System app.
    * @throws { BusinessException } 1500007 - If error sending message to Common Event Service.
    * @throws { BusinessException } 1500008 - If Common Event Service does not complete initialization.
    * @throws { BusinessException } 1500009 - If error obtaining system parameters.
    * @relation export function publish(event: string, callback: AsyncCallback<void>): void
    * @relation export function publish(event: string, options: CommonEventPublishData, callback: AsyncCallback<void>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public static func publish(event: String, options!: CommonEventPublishData =  CommonEventPublishData()): Unit
    
    /**
    * create the CommonEventSubscriber for the SubscriberInfo.
    *
    * @param { CommonEventSubscribeInfo } subscribeInfo - Indicates the information of the subscriber.
    * @returns { CommonEventSubscriber } CommonEventSubscriber instance.
    * @relation function createSubscriber(subscribeInfo: CommonEventSubscribeInfo): Promise<CommonEventSubscriber>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public static func createSubscriber(subscribeInfo: CommonEventSubscribeInfo): CommonEventSubscriber
    
    /**
    * subscribe an ordered, sticky, or standard common event.
    *
    * @param { CommonEventSubscriber } subscriber - Indicate the subscriber of the common event.
    * @throws { BusinessException } 1500007 - If error sending message to Common Event Service.
    * @throws { BusinessException } 1500008 - If Common Event Service does not complete initialization.
    * @relation export function subscribe(subscriber: CommonEventSubscriber, callback: AsyncCallback<CommonEventData>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public static func subscribe(subscriber: CommonEventSubscriber, callback: AsyncCallback<CommonEventData>): Unit
    
    /**
    * unsubscribe from an ordered, sticky, or standard common event.
    *
    * @param { CommonEventSubscriber } subscriber - Indicate the subscriber of the common event.
    * @throws { BusinessException } 1500007 - If error sending message to Common Event Service.
    * @throws { BusinessException } 1500008 - If Common Event Service does not complete initialization.
    * @relation export function unsubscribe(subscriber: CommonEventSubscriber, callback?: AsyncCallback<void>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public static func unsubscribe(subscriber: CommonEventSubscriber): Unit
}


/**
* The event type that the commonEvent supported.
*
* @relation export enum Support
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Notification.CommonEvent"
]
public enum Support {
    /**
    * Sent when ability is added.
    *
    * @relation COMMON_EVENT_ABILITY_ADDED = "common.event.ABILITY_ADDED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventAbilityAdded |
    /**
    * Sent when ability is removed.
    *
    * @relation COMMON_EVENT_ABILITY_REMOVED = "common.event.ABILITY_REMOVED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventAbilityRemoved |
    /**
    * Sent when ability is updated.
    *
    * @relation COMMON_EVENT_ABILITY_UPDATED = "common.event.ABILITY_UPDATED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventAbilityUpdated |
    /**
    * Account was deleted.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_ACCOUNT_DELETED = "usual.event.data.ACCOUNT_DELETED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventAccountDeleted |
    /**
    * Indicates the common event Action indicating that the airplane mode status of the device changes.
    * Users can register this event to listen to the change of the airplane mode status of the device.
    *
    * @relation COMMON_EVENT_AIRPLANE_MODE_CHANGED = "usual.event.AIRPLANE_MODE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventAirplaneModeChanged |
    /**
    * This commonEvent means when the charging state, level and so on about the battery.
    *
    * @relation COMMON_EVENT_BATTERY_CHANGED = "usual.event.BATTERY_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBatteryChanged |
    /**
    * This commonEvent means when the device in low battery state.
    *
    * @relation COMMON_EVENT_BATTERY_LOW = "usual.event.BATTERY_LOW"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBatteryLow |
    /**
    * This commonEvent means when the battery level is an ok state.
    *
    * @relation COMMON_EVENT_BATTERY_OKAY = "usual.event.BATTERY_OKAY"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBatteryOkay |
    /**
    * Bluetooth.handsfree.ag.connect.state.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_HANDSFREE_AG_CONNECT_STATE_UPDATE = "usual.event.bluetooth.handsfree.ag.CONNECT_STATE_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothHandsfreeAgConnectStateUpdate |
    /**
    * Bluetooth.handsfree.ag.current.device.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_HANDSFREE_AG_CURRENT_DEVICE_UPDATE = "usual.event.bluetooth.handsfree.ag.CURRENT_DEVICE_UPDATE",
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothHandsfreeAgCurrentDeviceUpdate |
    /**
    * Bluetooth.handsfree.ag.audio.state.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_HANDSFREE_AG_AUDIO_STATE_UPDATE = "usual.event.bluetooth.handsfree.ag.AUDIO_STATE_UPDATE",
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothHandsfreeAgAudioStateUpdate |
    /**
    * Bluetooth.a2dpsource.connect.state.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_A2DPSOURCE_CONNECT_STATE_UPDATE = "usual.event.bluetooth.a2dpsource.CONNECT_STATE_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothA2dpsourceConnectStateUpdate |
    /**
    * Bluetooth.a2dpsource.current.device.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_A2DPSOURCE_CURRENT_DEVICE_UPDATE = "usual.event.bluetooth.a2dpsource.CURRENT_DEVICE_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothA2dpsourceCurrentDeviceUpdate |
    /**
    * Bluetooth.a2dpsource.playing.state.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_A2DPSOURCE_PLAYING_STATE_UPDATE = "usual.event.bluetooth.a2dpsource.PLAYING_STATE_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothA2dpsourcePlayingStateUpdate |
    /**
    * Bluetooth.a2dpsource.avrcp.connect.state.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_A2DPSOURCE_AVRCP_CONNECT_STATE_UPDATE = "usual.event.bluetooth.a2dpsource.AVRCP_CONNECT_STATE_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothA2dpsourceAvrcpConnectStateUpdate |
    /**
    * Bluetooth.a2dpsource.codec.value.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_A2DPSOURCE_CODEC_VALUE_UPDATE = "usual.event.bluetooth.a2dpsource.CODEC_VALUE_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothA2dpsourceCodecValueUpdate |
    /**
    * Bluetooth.remotedevice.discovered.
    *
    * @relation COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_DISCOVERED = "usual.event.bluetooth.remotedevice.DISCOVERED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothRemotedeviceDiscovered |
    /**
    * Bluetooth.remotedevice.class.value.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_CLASS_VALUE_UPDATE = "usual.event.bluetooth.remotedevice.CLASS_VALUE_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothRemotedeviceClassValueUpdate |
    /**
    * Bluetooth.remotedevice.acl.connected.
    *
    * @relation COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_ACL_CONNECTED = "usual.event.bluetooth.remotedevice.ACL_CONNECTED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothRemotedeviceAclConnected |
    /**
    * Bluetooth.remotedevice.acl.disconnected.
    *
    * @relation COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_ACL_DISCONNECTED = "usual.event.bluetooth.remotedevice.ACL_DISCONNECTED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothRemotedeviceAclDisconnected |
    /**
    * Bluetooth.remotedevice.name.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_NAME_UPDATE = "usual.event.bluetooth.remotedevice.NAME_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothRemotedeviceNameUpdate |
    /**
    * Bluetooth.remotedevice.pair.state.
    *
    * @relation COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_PAIR_STATE = "usual.event.bluetooth.remotedevice.PAIR_STATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothRemotedevicePairState |
    /**
    * Bluetooth.remotedevice.battery.value.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_BATTERY_VALUE_UPDATE = "usual.event.bluetooth.remotedevice.BATTERY_VALUE_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothRemotedeviceBatteryValueUpdate |
    /**
    * Bluetooth.remotedevice.sdp.result.
    *
    * @relation COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_SDP_RESULT = "usual.event.bluetooth.remotedevice.SDP_RESULT"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothRemotedeviceSdpResult |
    /**
    * Bluetooth.remotedevice.uuid.value.
    *
    * @relation COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_UUID_VALUE = "usual.event.bluetooth.remotedevice.UUID_VALUE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothRemotedeviceUuidValue |
    /**
    * Bluetooth.remotedevice.pairing.req.
    *
    * @relation COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_PAIRING_REQ = "usual.event.bluetooth.remotedevice.PAIRING_REQ"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothRemotedevicePairingReq |
    /**
    * Bluetooth.remotedevice.pairing.cancel.
    *
    * @relation COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_PAIRING_CANCEL = "usual.event.bluetooth.remotedevice.PAIRING_CANCEL"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothRemotedevicePairingCancel |
    /**
    * Bluetooth.remotedevice.connect.req.
    *
    * @relation COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_CONNECT_REQ = "usual.event.bluetooth.remotedevice.CONNECT_REQ"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothRemotedeviceConnectReq |
    /**
    * Bluetooth.remotedevice.connect.reply
    *
    * @relation COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_CONNECT_REPLY = "usual.event.bluetooth.remotedevice.CONNECT_REPLY"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothRemotedeviceConnectReply |
    /**
    * Bluetooth.remotedevice.connect.cancel.
    *
    * @relation COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_CONNECT_CANCEL = "usual.event.bluetooth.remotedevice.CONNECT_CANCEL"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothRemotedeviceConnectCancel |
    /**
    * Bluetooth.handsfreeunit.connect.state.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_HANDSFREEUNIT_CONNECT_STATE_UPDATE = "usual.event.bluetooth.handsfreeunit.CONNECT_STATE_UPDATE",
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothHandsfreeunitConnectStateUpdate |
    /**
    * Bluetooth.handsfreeunit.audio.state.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_HANDSFREEUNIT_AUDIO_STATE_UPDATE = "usual.event.bluetooth.handsfreeunit.AUDIO_STATE_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothHandsfreeunitAudioStateUpdate |
    /**
    * Bluetooth.handsfreeunit.ag.common.event.
    *
    * @relation COMMON_EVENT_BLUETOOTH_HANDSFREEUNIT_AG_COMMON_EVENT = "usual.event.bluetooth.handsfreeunit.AG_COMMON_EVENT"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothHandsfreeunitAgCommonEvent |
    /**
    * Bluetooth.handsfreeunit.ag.call.state.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_HANDSFREEUNIT_AG_CALL_STATE_UPDATE = "usual.event.bluetooth.handsfreeunit.AG_CALL_STATE_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothHandsfreeunitAgCallStateUpdate |
    /**
    * Bluetooth.host.state.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_HOST_STATE_UPDATE = "usual.event.bluetooth.host.STATE_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothHostStateUpdate |
    /**
    * Bluetooth.host.req.discoverable.
    *
    * @relation COMMON_EVENT_BLUETOOTH_HOST_REQ_DISCOVERABLE = "usual.event.bluetooth.host.REQ_DISCOVERABLE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothHostReqDiscoverable |
    /**
    * Bluetooth.host.req.enable.
    *
    * @relation COMMON_EVENT_BLUETOOTH_HOST_REQ_ENABLE = "usual.event.bluetooth.host.REQ_ENABLE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothHostReqEnable |
    /**
    * Bluetooth.host.req.disable.
    *
    * @relation COMMON_EVENT_BLUETOOTH_HOST_REQ_DISABLE = "usual.event.bluetooth.host.REQ_DISABLE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothHostReqDisable |
    /**
    * Bluetooth.host.scan.mode.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_HOST_SCAN_MODE_UPDATE = "usual.event.bluetooth.host.SCAN_MODE_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothHostScanModeUpdate |
    /**
    * Bluetooth.host.discovery.started.
    *
    * @relation COMMON_EVENT_BLUETOOTH_HOST_DISCOVERY_STARTED = "usual.event.bluetooth.host.DISCOVERY_STARTED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothHostDiscoveryStarted |
    /**
    * Bluetooth.host.discovery.finished.
    *
    * @relation COMMON_EVENT_BLUETOOTH_HOST_DISCOVERY_FINISHED = "usual.event.bluetooth.host.DISCOVERY_FINISHED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothHostDiscoveryFinished |
    /**
    * Bluetooth.host.name.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_HOST_NAME_UPDATE = "usual.event.bluetooth.host.NAME_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothHostNameUpdate |
    /**
    * Bluetooth.a2dp.connect.state.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_A2DPSINK_CONNECT_STATE_UPDATE = "usual.event.bluetooth.a2dpsink.CONNECT_STATE_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothA2dpsinkConnectStateUpdate |
    /**
    * Bluetooth.a2dp.playing.state.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_A2DPSINK_PLAYING_STATE_UPDATE = "usual.event.bluetooth.a2dpsink.PLAYING_STATE_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothA2dpsinkPlayingStateUpdate |
    /**
    * Bluetooth.a2dp.audio.state.update.
    *
    * @relation COMMON_EVENT_BLUETOOTH_A2DPSINK_AUDIO_STATE_UPDATE = "usual.event.bluetooth.a2dpsink.AUDIO_STATE_UPDATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBluetoothA2dpsinkAudioStateUpdate |
    /**
    * This commonEvent means when an existing application package is removed from the device.
    *
    * @relation COMMON_EVENT_BUNDLE_REMOVED = "usual.event.BUNDLE_REMOVED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBundleRemoved |
    /**
    * This commonEvent means when the device is booted or system upgrade completed, and only be sent by system.
    * This API can be called only by system applications.
    *
    * @relation COMMON_EVENT_BOOT_COMPLETED = "usual.event.BOOT_COMPLETED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventBootCompleted |
    /**
    * Indicates the action of a common event that the network connectivity changed.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_CONNECTIVITY_CHANGE = "usual.event.CONNECTIVITY_CHANGE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventConnectivityChange |
    /**
    * Indicates the action of a common event that the call state has been changed.
    * To subscribe to this protected common event, your application must have the ohos.permission.GET_TELEPHONY_STATE
    *
    * @relation COMMON_EVENT_CALL_STATE_CHANGED = "usual.event.CALL_STATE_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventCallStateChanged |
    /**
    * Sent when device"s charge idle mode changed.
    *
    * @relation COMMON_EVENT_CHARGE_IDLE_MODE_CHANGED = "usual.event.CHARGE_IDLE_MODE_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventChargeIdleModeChanged |
    /**
    * Sent when start charging battery.
    *
    * @relation COMMON_EVENT_DISCHARGING = "usual.event.DISCHARGING"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventCharging |
    /**
    * The device configuration such as orientation,locale have been changed.
    *
    * @relation COMMON_EVENT_CONFIGURATION_CHANGED = "usual.event.CONFIGURATION_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventConfigurationChanged |
    /**
    * This commonEvent means when the dialog to dismiss.
    *
    * @relation COMMON_EVENT_CLOSE_SYSTEM_DIALOGS = "usual.event.CLOSE_SYSTEM_DIALOGS"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventCloseSystemDialogs |
    /**
    * The external storage was eject.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_DISK_EJECT = "usual.event.data.DISK_EJECT"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventDiskEject |
    /**
    * The external storage was unmountable.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_DISK_UNMOUNTABLE = "usual.event.data.DISK_UNMOUNTABLE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventDiskUnmountable |
    /**
    * The external storage was bad removal.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_DISK_BAD_REMOVAL = "usual.event.data.DISK_BAD_REMOVAL"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventDiskBadRemoval |
    /**
    * The external storage was mounted.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_DISK_MOUNTED = "usual.event.data.DISK_MOUNTED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventDiskMounted |
    /**
    * The external storage was unmounted.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_DISK_UNMOUNTED = "usual.event.data.DISK_UNMOUNTED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventDiskUnmounted |
    /**
    * The external storage was removed.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_DISK_REMOVED = "usual.event.data.DISK_REMOVED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventDiskRemoved |
    /**
    * Sent when device"s idle mode changed
    *
    * @relation COMMON_EVENT_DEVICE_IDLE_MODE_CHANGED = "usual.event.DEVICE_IDLE_MODE_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventDeviceIdleModeChanged |
    /**
    * Sent when stop charging battery.
    *
    * @relation COMMON_EVENT_DISCHARGING = "usual.event.DISCHARGING"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventDischarging |
    /**
    * Distributed account logs off.
    *
    * @relation COMMON_EVENT_DISTRIBUTED_ACCOUNT_LOGOFF = "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventDistributedAccountLogoff |
    /**
    * Distributed account is invalid.
    *
    * @relation COMMON_EVENT_DISTRIBUTED_ACCOUNT_TOKEN_INVALID = "common.event.DISTRIBUTED_ACCOUNT_TOKEN_INVALID"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventDistributedAccountTokenInvalid |
    /**
    * Distributed account logout successfully.
    *
    * @relation COMMON_EVENT_DISTRIBUTED_ACCOUNT_LOGOUT = "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventDistributedAccountLogout |
    /**
    * Distributed account login successfully.
    *
    * @relation COMMON_EVENT_DISTRIBUTED_ACCOUNT_LOGIN = "common.event.DISTRIBUTED_ACCOUNT_LOGIN"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventDistributedAccountLogin |
    /**
    * Send by the smart function when the system in drive mode.
    *
    * @relation COMMON_EVENT_DRIVE_MODE = "common.event.DRIVE_MODE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventDriveMode |
    /**
    * This commonEvent means when the current date is changed.
    *
    * @relation COMMON_EVENT_DATE_CHANGED = "usual.event.DATE_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventDateChanged |
    /**
    * Resources for a set of packages are currently unavailable since the media on which they exist is unavailable.
    *
    * @relation COMMON_EVENT_EXTERNAL_APPLICATIONS_UNAVAILABLE = "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventExternalApplicationsUnavailable |
    /**
    * Resources for a set of packages (which were previously unavailable) are currently
    * available since the media on which they exist is available.
    *
    * @relation COMMON_EVENT_EXTERNAL_APPLICATIONS_AVAILABLE = "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventExternalApplicationsAvailable |
    /**
    * Foundation was ready.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_FOUNDATION_READY = "common.event.FOUNDATION_READY"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventFoundationReady |
    /**
    * Send by the smart function when the system in home mode.
    *
    * @relation COMMON_EVENT_HOME_MODE = "common.event.HOME_MODE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventHomeMode |
    /**
    * Indicate http proxy has been changed.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_HTTP_PROXY_CHANGE = "usual.event.HTTP_PROXY_CHANGE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventHttpProxyChange |
    /**
    * The ivi is about to go into sleep state when the ivi is turned off power.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_IVI_SLEEP = "common.event.IVI_SLEEP"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventIviSleep |
    /**
    * The ivi is slept and notify the app stop playing.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_IVI_PAUSE = "common.event.IVI_PAUSE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventIviPause |
    /**
    * The ivi is standby and notify the app stop playing.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_IVI_STANDBY = "common.event.IVI_STANDBY"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventIviStandby |
    /**
    * The app stop playing and save state.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_IVI_LASTMODE_SAVE = "common.event.IVI_LASTMODE_SAVE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventIviLastmodeSave |
    /**
    * The ivi is voltage abnormal.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_IVI_VOLTAGE_ABNORMAL = "common.event.IVI_VOLTAGE_ABNORMAL"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventIviVoltageAbnormal |
    /**
    * The ivi temperature is too high.
    * This is a protected common event that can only be sent by system.this common event will be delete later,
    * please use COMMON_EVENT_IVI_TEMPERATURE_ABNORMAL.
    *
    * @relation COMMON_EVENT_IVI_HIGH_TEMPERATURE = "common.event.IVI_HIGH_TEMPERATURE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventIviHighTemperature |
    /**
    * The ivi temperature is extreme high.
    * This is a protected common event that can only be sent by system.this common event will be delete later,
    * please use COMMON_EVENT_IVI_TEMPERATURE_ABNORMAL.
    *
    * @relation COMMON_EVENT_IVI_EXTREME_TEMPERATURE = "common.event.IVI_EXTREME_TEMPERATURE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventIviExtremeTemperature |
    /**
    * The ivi temperature is abnormal.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_IVI_TEMPERATURE_ABNORMAL = "common.event.IVI_TEMPERATURE_ABNORMAL"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventIviTemperatureAbnormal |
    /**
    * The ivi voltage is recovery.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_IVI_VOLTAGE_RECOVERY = "common.event.IVI_VOLTAGE_RECOVERY"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventIviVoltageRecovery |
    /**
    * The ivi temperature is recovery.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_IVI_TEMPERATURE_RECOVERY = "common.event.IVI_TEMPERATURE_RECOVERY"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventIviTemperatureRecovery |
    /**
    * The battery service is active.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_IVI_ACTIVE = "common.event.IVI_ACTIVE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventIviActive |
    /**
    * This commonEvent means when the device finnish booting, but still in the locked state.
    *
    * @relation COMMON_EVENT_LOCKED_BOOT_COMPLETED = "usual.event.LOCKED_BOOT_COMPLETED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventLockedBootCompleted |
    /**
    * The current device"s locale has changed.
    *
    * @relation COMMON_EVENT_LOCALE_CHANGED = "usual.event.LOCALE_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventLocaleChanged |
    /**
    * Gps mode state changed.
    *
    * @relation COMMON_EVENT_LOCATION_MODE_STATE_CHANGED = "usual.event.location.MODE_STATE_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventLocationModeStateChanged |
    /**
    * This commonEvent means when a new version application package is installed on the device and
    * replace the old version, it does not contain additional data and only be sent to the replaced application.
    *
    * @relation COMMON_EVENT_MY_PACKAGE_REPLACED = "usual.event.MY_PACKAGE_REPLACED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventMyPackageReplaced |
    /**
    * This commonEvent Sent to a package that has been suspended by the system.
    *
    * @relation COMMON_EVENT_MY_PACKAGE_SUSPENDED = "usual.event.MY_PACKAGE_SUSPENDED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventMyPackageSuspended |
    /**
    * Sent to a package that has been un-suspended.
    *
    * @relation COMMON_EVENT_MY_PACKAGE_UNSUSPENDED = "usual.event.MY_PACKAGE_UNSUSPENDED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventMyPackageUnsuspended |
    /**
    * Indicates low memory condition notification acknowledged by user and package management should be started.
    *
    * @relation COMMON_EVENT_MANAGE_PACKAGE_STORAGE = "usual.event.MANAGE_PACKAGE_STORAGE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventManagePackageStorage |
    /**
    * Nfc state change.
    *
    * @relation COMMON_EVENT_NFC_ACTION_ADAPTER_STATE_CHANGED = "usual.event.nfc.action.ADAPTER_STATE_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventNfcActionAdapterStateChanged |
    /**
    * Nfc field on detected.
    *
    * @relation COMMON_EVENT_NFC_ACTION_RF_FIELD_ON_DETECTED = "usual.event.nfc.action.RF_FIELD_ON_DETECTED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventNfcActionRfFieldOnDetected |
    /**
    * Nfc field off detected.
    *
    * @relation COMMON_EVENT_NFC_ACTION_RF_FIELD_OFF_DETECTED = "usual.event.nfc.action.RF_FIELD_OFF_DETECTED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventNfcActionRfFieldOffDetected |
    /**
    * Indicates the action of a common event that the network state has been changed.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_NETWORK_STATE_CHANGED = "usual.event.NETWORK_STATE_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventNetworkStateChanged |
    /**
    * Send by the smart function when the system in office mode.
    *
    * @relation COMMON_EVENT_OFFICE_MODE = "common.event.OFFICE_MODE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventOfficeMode |
    /**
    * This commonEvent means when the other power is connected to the device.
    *
    * @relation COMMON_EVENT_POWER_CONNECTED = "usual.event.POWER_CONNECTED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventPowerConnected |
    /**
    * This commonEvent means when the other power is removed from the device.
    *
    * @relation COMMON_EVENT_POWER_DISCONNECTED = "usual.event.POWER_DISCONNECTED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventPowerDisconnected |
    /**
    * This commonEvent means when a new application package is installed on the device.
    *
    * @relation COMMON_EVENT_PACKAGE_ADDED = "usual.event.PACKAGE_ADDED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventPackageAdded |
    /**
    * This commonEvent means when a new version application package is installed on the device and
    * replace the old version.the data contains the name of the package.
    *
    * @relation COMMON_EVENT_PACKAGE_REPLACED = "usual.event.PACKAGE_REPLACED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventPackageReplaced |
    /**
    * This commonEvent means when an existing application package is removed from the device.
    *
    * @relation COMMON_EVENT_PACKAGE_REMOVED = "usual.event.PACKAGE_REMOVED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventPackageRemoved |
    /**
    * This commonEvent means when an existing application package is completely removed from the device.
    *
    * @relation COMMON_EVENT_PACKAGE_FULLY_REMOVED = "usual.event.PACKAGE_FULLY_REMOVED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventPackageFullyRemoved |
    /**
    * This commonEvent means when an existing application package has been changed.
    *
    * @relation COMMON_EVENT_PACKAGE_CHANGED = "usual.event.PACKAGE_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventPackageChanged |
    /**
    * This commonEvent means the user has restarted a package, and all of its processes have been killed.
    *
    * @relation COMMON_EVENT_PACKAGE_RESTARTED = "usual.event.PACKAGE_RESTARTED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventPackageRestarted |
    /**
    * This commonEvent means the user has cleared the package data.
    *
    * @relation COMMON_EVENT_PACKAGE_DATA_CLEARED = "usual.event.PACKAGE_DATA_CLEARED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventPackageDataCleared |
    /**
    * This commonEvent means the user has cleared the package cache.
    *
    * @relation COMMON_EVENT_PACKAGE_CACHE_CLEARED = "usual.event.PACKAGE_CACHE_CLEARED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventPackageCacheCleared |
    /**
    * This commonEvent means the packages have been suspended.
    *
    * @relation COMMON_EVENT_PACKAGES_SUSPENDED = "usual.event.PACKAGES_SUSPENDED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventPackagesSuspended |
    /**
    * This commonEvent means the packages have been un-suspended.
    *
    * @relation COMMON_EVENT_PACKAGES_UNSUSPENDED = "usual.event.PACKAGES_UNSUSPENDED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventPackagesUnsuspended |
    /**
    * The application is first launched after installed.
    *
    * @relation COMMON_EVENT_PACKAGE_FIRST_LAUNCH = "usual.event.PACKAGE_FIRST_LAUNCH"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventPackageFirstLaunch |
    /**
    * Sent by system package verifier when a package need to be verified.
    *
    * @relation COMMON_EVENT_PACKAGE_NEEDS_VERIFICATION = "usual.event.PACKAGE_NEEDS_VERIFICATION"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventPackageNeedsVerification |
    /**
    * Sent by system package verifier when a package is verified.
    *
    * @relation COMMON_EVENT_PACKAGE_VERIFIED = "usual.event.PACKAGE_VERIFIED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventPackageVerified |
    /**
    * Sent when device"s power save mode changed
    *
    * @relation COMMON_EVENT_POWER_SAVE_MODE_CHANGED = "usual.event.POWER_SAVE_MODE_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventPowerSaveModeChanged |
    /**
    * Indicate the result of quick fix apply.
    * This common event can be triggered only by system.
    *
    * @relation COMMON_EVENT_QUICK_FIX_APPLY_RESULT = "usual.event.QUICK_FIX_APPLY_RESULT"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventQuickFixApplyResult |
    /**
    * Indicate the result of quick fix revoke.
    * This common event can be triggered only by system.
    *
    * @relation COMMON_EVENT_QUICK_FIX_REVOKE_RESULT = "usual.event.QUICK_FIX_REVOKE_RESULT"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventQuickFixRevokeResult |
    /**
    * This commonEvent means when the device is shutting down, note: turn off, not sleeping.
    *
    * @relation COMMON_EVENT_SHUTDOWN = "usual.event.SHUTDOWN"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventShutdown |
    /**
    * This commonEvent means when the screen is turned off.
    *
    * @relation COMMON_EVENT_SCREEN_OFF = "usual.event.SCREEN_OFF"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventScreenOff |
    /**
    * This commonEvent means when the device is awakened and interactive.
    *
    * @relation COMMON_EVENT_SCREEN_ON = "usual.event.SCREEN_ON"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventScreenOn |
    /**
    * sent by the window manager service when the window mode is split.
    *
    * @relation COMMON_EVENT_SPLIT_SCREEN = "common.event.SPLIT_SCREEN"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventSplitScreen |
    /**
    * The notification slot has been updated.
    * This is a protected common event that can only be sent by system.
    * This API can be called only by system applications.
    *
    * @relation COMMON_EVENT_SLOT_CHANGE = "usual.event.SLOT_CHANGE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventSlotChange |
    /**
    * Indicate the action of a common event that the spn display information has been updated.
    * This common event can be triggered only by system.
    *
    * @relation COMMON_EVENT_SPN_INFO_CHANGED = "usual.event.SPN_INFO_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventSpnInfoChanged |
    /**
    * Indicates the action of a common event that the signal info has been changed.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_SIGNAL_INFO_CHANGED = "usual.event.SIGNAL_INFO_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventSignalInfoChanged |
    /**
    * Indicates the action of a common event that the phone SIM card state has changed.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_SIM_STATE_CHANGED = "usual.event.SIM_STATE_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventSimStateChanged |
    /**
    * This commonEvent means when the screen is locked.
    *
    * @relation COMMON_EVENT_SCREEN_LOCKED = "usual.event.SCREEN_LOCKED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventScreenLocked |
    /**
    * This commonEvent means when the screen is unlocked.
    *
    * @relation COMMON_EVENT_SCREEN_UNLOCKED = "usual.event.SCREEN_UNLOCKED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventScreenUnlocked |
    /**
    * This commonEvent means when the thermal state level change.
    *
    * @relation COMMON_EVENT_THERMAL_LEVEL_CHANGED = "usual.event.THERMAL_LEVEL_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventThermalLevelChanged |
    /**
    * This commonEvent means when the current time is changed.
    *
    * @relation COMMON_EVENT_TIME_TICK = "usual.event.TIME_TICK"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventTimeTick |
    /**
    * This commonEvent means when the time is set.
    *
    * @relation COMMON_EVENT_TIME_CHANGED = "usual.event.TIME_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventTimeChanged |
    /**
    * This commonEvent means when the time zone is changed.
    *
    * @relation COMMON_EVENT_TIMEZONE_CHANGED = "usual.event.TIMEZONE_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventTimezoneChanged |
    /**
    * A user id has been removed from the system.
    *
    * @relation COMMON_EVENT_UID_REMOVED = "usual.event.UID_REMOVED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUidRemoved |
    /**
    * Remind new user of preparing to start.
    *
    * @relation COMMON_EVENT_USER_STARTED = "usual.event.USER_STARTED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUserStarted |
    /**
    * Remind previous user of that the service has been the background.
    *
    * @relation COMMON_EVENT_USER_BACKGROUND = "usual.event.USER_BACKGROUND"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUserBackground |
    /**
    * Remind new user of that the service has been the foreground.
    *
    * @relation COMMON_EVENT_USER_FOREGROUND = "usual.event.USER_FOREGROUND"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUserForeground |
    /**
    * Remind new user of that the service has been switched to new user.
    *
    * @relation COMMON_EVENT_USER_SWITCHED = "usual.event.USER_SWITCHED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUserSwitched |
    /**
    * Remind new user of that the service has been starting.
    *
    * @relation COMMON_EVENT_USER_STARTING = "usual.event.USER_STARTING"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUserStarting |
    /**
    * Remind new user of that the service has been unlocked.
    *
    * @relation COMMON_EVENT_USER_UNLOCKED = "usual.event.USER_UNLOCKED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUserUnlocked |
    /**
    * Remind new user of that the service has been stopping.
    *
    * @relation COMMON_EVENT_USER_STOPPING = "usual.event.USER_STOPPING"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUserStopping |
    /**
    * Remind new user of that the service has stopped.
    *
    * @relation COMMON_EVENT_USER_STOPPED = "usual.event.USER_STOPPED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUserStopped |
    /**
    * User added.
    *
    * @relation COMMON_EVENT_USER_ADDED = "usual.event.USER_ADDED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUserAdded |
    /**
    * User removed.
    *
    * @relation COMMON_EVENT_USER_REMOVED = "usual.event.USER_REMOVED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUserRemoved |
    /**
    * The usb state change events.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_USB_STATE = "usual.event.hardware.usb.action.USB_STATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUsbState |
    /**
    * The usb port changed.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_USB_PORT_CHANGED = "usual.event.hardware.usb.action.USB_PORT_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUsbPortChanged |
    /**
    * The usb device attached.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_USB_DEVICE_ATTACHED = "usual.event.hardware.usb.action.USB_DEVICE_ATTACHED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUsbDeviceAttached |
    /**
    * The usb device detached.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_USB_DEVICE_DETACHED = "usual.event.hardware.usb.action.USB_DEVICE_DETACHED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUsbDeviceDetached |
    /**
    * The usb accessory attached.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_USB_ACCESSORY_ATTACHED = "usual.event.hardware.usb.action.USB_ACCESSORY_ATTACHED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUsbAccessoryAttached |
    /**
    * The usb accessory detached.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_USB_ACCESSORY_DETACHED = "usual.event.hardware.usb.action.USB_ACCESSORY_DETACHED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUsbAccessoryDetached |
    /**
    * Indicate the action of a common event that the user information has been updated.
    * This common event can be triggered only by system.
    *
    * @relation COMMON_EVENT_USER_INFO_UPDATED = "usual.event.USER_INFO_UPDATED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventUserInfoUpdated |
    /**
    * The external storage was removed.
    * This is a protected common event that can only be sent by system.
    * This API can be called only by system applications.
    *
    * @relation COMMON_EVENT_VOLUME_REMOVED = "usual.event.data.VOLUME_REMOVED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventVolumeRemoved |
    /**
    * The external storage was unmounted.
    * This is a protected common event that can only be sent by system.
    * This API can be called only by system applications.
    *
    * @relation COMMON_EVENT_VOLUME_UNMOUNTED = "usual.event.data.VOLUME_UNMOUNTED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventVolumeUnmounted |
    /**
    * The external storage was mounted.
    * This is a protected common event that can only be sent by system.
    * This API can be called only by system applications.
    *
    * @relation COMMON_EVENT_VOLUME_MOUNTED = "usual.event.data.VOLUME_MOUNTED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventVolumeMounted |
    /**
    * The external storage was bad removal.
    * This is a protected common event that can only be sent by system.
    * This API can be called only by system applications.
    *
    * @relation COMMON_EVENT_VOLUME_BAD_REMOVAL = "usual.event.data.VOLUME_BAD_REMOVAL"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventVolumeBadRemoval |
    /**
    * The external storage was eject.
    * This is a protected common event that can only be sent by system.
    * This API can be called only by system applications.
    *
    * @relation COMMON_EVENT_VOLUME_EJECT = "usual.event.data.VOLUME_EJECT"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventVolumeEject |
    /**
    * The visible of account was updated.
    * This is a protected common event that can only be sent by system.
    *
    * @relation COMMON_EVENT_VISIBLE_ACCOUNTS_UPDATED = "usual.event.data.VISIBLE_ACCOUNTS_UPDATED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventVisibleAccountsUpdated |
    /**
    * WIFI state.
    *
    * @relation COMMON_EVENT_WIFI_POWER_STATE = "usual.event.wifi.POWER_STATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventWifiPowerState |
    /**
    * WIFI scan results.
    *
    * @relation COMMON_EVENT_WIFI_SCAN_FINISHED = "usual.event.wifi.SCAN_FINISHED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventWifiScanFinished |
    /**
    * WIFI RSSI change.
    *
    * @relation COMMON_EVENT_WIFI_RSSI_VALUE = "usual.event.wifi.RSSI_VALUE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventWifiRssiValue |
    /**
    * WIFI connect state.
    *
    * @relation COMMON_EVENT_WIFI_CONN_STATE = "usual.event.wifi.CONN_STATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventWifiConnState |
    /**
    * WIFI hotspot state.
    *
    * @relation COMMON_EVENT_WIFI_HOTSPOT_STATE = "usual.event.wifi.HOTSPOT_STATE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventWifiHotspotState |
    /**
    * WIFI ap sta join.
    *
    * @relation COMMON_EVENT_WIFI_AP_STA_JOIN = "usual.event.wifi.WIFI_HS_STA_JOIN"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventWifiApStaJoin |
    /**
    * WIFI ap sta join.
    *
    * @relation COMMON_EVENT_WIFI_AP_STA_LEAVE = "usual.event.wifi.WIFI_HS_STA_LEAVE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventWifiApStaLeave |
    /**
    * Indicates Wi-Fi MpLink state notification acknowledged by binding or unbinding MpLink.
    *
    * @relation COMMON_EVENT_WIFI_MPLINK_STATE_CHANGE = "usual.event.wifi.mplink.STATE_CHANGE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventWifiMplinkStateChange |
    /**
    * Indicates Wi-Fi P2P connection state notification acknowledged by connecting or disconnected P2P.
    *
    * @relation COMMON_EVENT_WIFI_P2P_CONN_STATE = "usual.event.wifi.p2p.CONN_STATE_CHANGE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventWifiP2pConnState |
    /**
    * Indicates that the Wi-Fi P2P state change.
    *
    * @relation COMMON_EVENT_WIFI_P2P_STATE_CHANGED = "usual.event.wifi.p2p.STATE_CHANGE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventWifiP2pStateChanged |
    /**
    * Indicates that the Wi-Fi P2P peers state change.
    *
    * @relation COMMON_EVENT_WIFI_P2P_PEERS_STATE_CHANGED = "usual.event.wifi.p2p.DEVICES_CHANGE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventWifiP2pPeersStateChanged |
    /**
    * Indicates that the Wi-Fi P2P discovery state change.
    *
    * @relation COMMON_EVENT_WIFI_P2P_PEERS_DISCOVERY_STATE_CHANGED = "usual.event.wifi.p2p.PEER_DISCOVERY_STATE_CHANGE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventWifiP2pPeersDiscoveryStateChanged |
    /**
    * Indicates that the Wi-Fi P2P current device state change.
    *
    * @relation COMMON_EVENT_WIFI_P2P_CURRENT_DEVICE_STATE_CHANGED = "usual.event.wifi.p2p.CURRENT_DEVICE_CHANGE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventWifiP2pCurrentDeviceStateChanged |
    /**
    * Indicates that the Wi-Fi P2P group info is changed.
    *
    * @relation COMMON_EVENT_WIFI_P2P_GROUP_STATE_CHANGED = "usual.event.wifi.p2p.GROUP_STATE_CHANGED"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    CommonEventWifiP2pGroupStateChanged |
    ...
    /**
    * Get the Support value represented in String.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public func toString(): String
}


