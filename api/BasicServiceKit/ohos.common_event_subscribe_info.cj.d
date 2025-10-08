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

package ohos.common_event_subscribe_info
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.business_exception.BusinessException


/**
* The CommonEventSubscribeInfo module provides APIs for providing subscriber information.
* @relation export interface CommonEventSubscribeInfo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Notification.CommonEvent"
]
public class CommonEventSubscribeInfo {
    /**
    * Common events to subscribe to.
    * @relation events: Array<string>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var events: Array<String>
    
    /**
    * Subscriber priority. The value ranges from –100 to +1000. If the value exceeds the upper or lower limit, the upper or lower limit is used.
    * @relation priority?: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var priority: Int32
    
    /**
    * User ID. If this parameter is not specified, the default value, which is the ID of the current user, will be used.
    * The value must be an existing user ID in the system. Use getOsAccountLocalId to obtain the system account ID and use it as the user ID of the subscriber.
    * @relation userId?: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var userId: Int32
    
    /**
    * Permission of the publisher. The subscriber can receive only the events from the publisher with this permission.
    * @relation publisherPermission?: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var publisherPermission: String
    
    /**
    * Device ID. Use @ohos.deviceInfo to obtain the UDID as the device ID of the subscriber. Not supported currently.
    * @relation publisherDeviceId?: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var publisherDeviceId: String
    
    /**
    * Bundle name of the publisher to subscribe to.
    * @relation publisherBundleName?: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var publisherBundleName: String
    
    /**
    * init the CommonEventSubscribeInfo
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public init(
        events: Array<String>,
        publisherPermission!: String = "",
        publisherDeviceId!: String = "",
        userId!: Int32 = UNDEFINED_USER,
        priority!: Int32 = 0,
        publisherBundleName!: String = ""
    )
}


