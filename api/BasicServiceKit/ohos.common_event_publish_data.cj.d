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

package ohos.common_event_publish_data
import std.collection.HashMap
import ohos.labels.APILevel
import ohos.value_type.{ValueType, CArrParameters, CParameters, createCpCString, createCArrParam}
import ohos.ffi.{CArrString, CTypeResource}


/**
* The CommonEventPublishData module provides APIs for defining common event content and attributes.
*
* @relation export interface CommonEventPublishData
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Notification.CommonEvent"
]
public class CommonEventPublishData {
    /**
    * Bundle name of the subscriber that can receive the common event.
    *
    * @relation bundleName?: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var bundleName: String
    
    /**
    * Common event data transferred by the publisher. The data size cannot exceed 64 KB.
    *
    * @relation data?: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var data: String
    
    /**
    * Common event data transferred by the publisher. The default value is 0.
    *
    * @relation code?: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var code: Int32
    
    /**
    * Permissions required for subscribers to receive the common event.
    *
    * @relation subscriberPermissions?: Array<string>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var subscriberPermissions: Array<String>
    
    /**
    * Whether the common event is an ordered one.
    *
    * @relation isOrdered?: boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var isOrdered: Bool
    
    /**
    * Whether the common event is a sticky one. Only system applications and system services are allowed to send sticky events.
    *
    * @relation isSticky?: boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Notification.CommonEvent",
        permission: "ohos.permission.COMMONEVENT_STICKY"
    ]
    public var isSticky: Bool
    
    /**
    * Additional information about the common event transferred by the publisher.
    *
    * @relation parameters?: { [key: string]: any }
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public var parameters: HashMap<String, ValueType>
    
    /**
    * init the CommonEventPublishData
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Notification.CommonEvent"
    ]
    public init(
        bundleName!: String = "",
        data!: String = "",
        code!: Int32 = 0,
        subscriberPermissions!: Array<String> = Array<String>(),
        isOrdered!: Bool = false,
        isSticky!: Bool = false,
        parameters!: HashMap<String, ValueType> = HashMap<String, ValueType>()
    )
}


