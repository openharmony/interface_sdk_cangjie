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

package ohos.hiviewdfx.hi_app_event
import ohos.ffi.*
import ohos.labels.*
import ohos.business_exception.BusinessException
import std.collection.*

import ohos.hilog.*
import ohos.business_exception.*

/**
* Defines a subscription data holder for processing event information.
*
* @relation class AppEventPackageHolder
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class AppEventPackageHolder <: RemoteDataLite {
    /**
    * Constructs an AppEventPackageHolder instance. You can call addWatcher to add an event watcher, and then 
    * associate the AppEventPackageHolder instance with the watcher added in the application based on the watcher name.
    *
    * @relation constructor(watcherName: string)
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public init(watcherName: String)
    
    /**
    * Sets the threshold for the data size of the event package obtained each time.
    *
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } 11104001 - Invalid size value.
    * @relation setSize(size: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public func setSize(size: Int32): Unit
    
    /**
    * Obtains the subscription event.
    * The system obtains the subscription event data based on the data size threshold specified by setSize or the 
    * number of data records specified by setRow. By default, one subscription event data record is obtained. When all 
    * subscription event data is obtained, null is returned.
    * When setRow and setSize are called at the same time, only setRow takes effect.
    *
    * @relation takeNext(): AppEventPackage
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public func takeNext(): Option<AppEventPackage>
}


/**
* Enumerates event types.
*
* @relation enum EventType
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public enum EventType {
    /**
    * Fault event.
    *
    * @relation FAULT = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    Fault |
    /**
    * Statistic event.
    *
    * @relation STATISTIC = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    Statistic |
    /**
    * Security event.
    *
    * @relation SECURITY = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    Security |
    /**
    * Behavior event.
    *
    * @relation BEHAVIOR = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    Behavior |
    ...
    /**
    * get the corresponding mapping value.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public func getValue(): UInt32
}


/**
* Enumerates EventValueType types.
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public enum EventValueType <: ToString {
    /**
    * IntValue event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    IntValue(Int32) |
    /**
    * FloatValue event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    FloatValue(Float64) |
    /**
    * StringValue event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    StringValue(String) |
    /**
    * BoolValue event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    BoolValue(Bool) |
    /**
    * ArrString event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    ArrString(Array<String>) |
    /**
    * ArrI32 event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    ArrI32(Array<Int32>) |
    /**
    * ArrBool event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    ArrBool(Array<Bool>) |
    /**
    * ArrF64 event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    ArrF64(Array<Float64>) |
    /**
    * Int64Value event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    Int64Value(Int64) |
    /**
    * ArrInt64 event.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    ArrInt64(Array<Int64>) |
    ...
    /**
    * get the corresponding mapping value.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public func toString(): String
}


/**
* Provides domain name constants.
*
* @relation namespace domain
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class Domain {
    /**
    * System domain.
    *
    * @relation const OS: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const OS = "OS"
}


/**
* Provides event name constants, including system event name constants and application event name constants. 
* The application event name constants are optional custom event names reserved when you call Write for 
* application event logging.
*
* @relation namespace event
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class Event {
    /**
    * User login event. This is a reserved application event name constant.
    *
    * @relation const USER_LOGIN: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const USER_LOGIN = "hiappevent.user_login"
    
    /**
    * User logout event. This is a reserved application event name constant.
    *
    * @relation const USER_LOGOUT: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const USER_LOGOUT = "hiappevent.user_logout"
    
    /**
    * Distributed service startup event. This is a reserved application event name constant.
    *
    * @relation const DISTRIBUTED_SERVICE_START: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const DISTRIBUTED_SERVICE_START = "hiappevent.distributed_service_start"
    
    /**
    * Application crash event. This is a system event name constant.
    *
    * @relation const APP_CRASH: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const APP_CRASH = "APP_CRASH"
    
    /**
    * Application freeze event. This is a system event name constant.
    *
    * @relation const APP_FREEZE: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const APP_FREEZE = "APP_FREEZE"
}


/**
* Provides parameter name constants.
*
* @relation namespace param
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class Param {
    /**
    * Custom user ID.
    *
    * @relation const USER_ID: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const USER_ID = "user_id"
    
    /**
    * Distributed service name.
    *
    * @relation const DISTRIBUTED_SERVICE_NAME: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const DISTRIBUTED_SERVICE_NAME = "ds_name"
    
    /**
    * Distributed service instance ID.
    *
    * @relation const DISTRIBUTED_SERVICE_INSTANCE_ID: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const DISTRIBUTED_SERVICE_INSTANCE_ID = "ds_instance_id"
}


/**
* Defines parameters of the event information.
*
* @relation interface AppEventInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class AppEventInfo {
    /**
    * Event domain. The value is a string of up to 32 characters, including digits (0 to 9), letters (a to z), and 
    * underscores (_). It must start with a letter and cannot end with an underscore (_).
    *
    * @relation domain: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var domain: String
    
    /**
    * Event name. The value is string that contains a maximum of 48 characters, including digits (0 to 9), letters 
    * (a to z), underscore (_), and dollar sign ($). It must start with a letter or dollar sign ($) and end with a 
    * digit or letter.
    *
    * @relation name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var name: String
    
    /**
    * Event type.
    *
    * @relation eventType: EventType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var eventType: EventType
    
    /**
    * Event parameter object, which consists of a parameter name and a parameter value. In system events, the fields 
    * contained in params are defined by system. For details about the fields, you can see the overviews of system 
    * events, for example, Crash Event Overview. For application events, you need to define the parameters of the 
    * Write API. The specifications are as follows:
    * <br>- A parameter name is a string that contains a maximum of 32 characters, including digits (0 to 9), letters 
    * (a to z), underscore (_), and dollar sign ($). It must start with a letter or dollar sign ($) and end with a 
    * digit or letter. For example, testName and $123_name.
    * <br>- The parameter value can be a string, number, boolean, or array. The string type parameter can contain a 
    * maximum of 8 x 1024 characters. If the length exceeds the limit, the parameter and its name will be discarded. 
    * The value of the number type parameter must be within the range of Number.MIN_SAFE_INTEGER to 
    * Number.MAX_SAFE_INTEGER. If the value exceeds the range, an uncertain value may be generated. The element type 
    * in the array type parameter can only be string, number, or boolean. The number of elements must be less than 
    * 100. If this limit is exceeded, excess elements will be discarded.
    * <br>- The maximum number of parameters is 32. If this limit is exceeded, excess parameters will be discarded.
    *
    *
    * @relation params: object
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var params: HashMap<String, EventValueType>
    
    /**
    * AppEventInfo constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public init(domain: String, name: String, event: EventType, params: HashMap<String, EventValueType>)
}


/**
* Provides configuration options for application event logging.
*
* @relation interface ConfigOption
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class ConfigOption {
    /**
    * Whether to enable the event logging function. The default value is false. 
    * If this parameter is set to true, the logging function is disabled. Otherwise, the logging function is 
    * enabled.
    *
    * @relation disable?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var disable: Bool
    
    /**
    * Quota for the directory that stores event logging files. The default value is 10M. 
    * <br>It is recommended that the quota be less than or equal to 10 MB. Otherwise, the API efficiency may be 
    * affected. If the directory size exceeds the specified quota when application event logging is performed, event 
    * logging files in the directory will be cleared one by one based on the generation time to ensure that directory 
    * size does not exceed the quota.
    * <br>The quota value must meet the following requirements:
    * <br>- The quota value consists of only digits and a unit (which can be one of [b|k|kb|m|mb|g|gb|t|tb], which are 
    * case insensitive.)
    * <br>- The quota value must start with a digit. You can determine whether to pass the unit. If the unit is left 
    * empty, b (that is, byte) is used by default.
    *
    * @relation maxStorage?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var maxStorage: String
    
    /**
    * ConfigOption constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public init(disable!: Bool = false, maxStorage!: String = "10M")
}


/**
* Event description configuration that can be reported by the data processor.
*
* @relation interface AppEventReportConfig
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class AppEventReportConfig {
    /**
    * Event domain. The value is a string that contains a maximum of 32 characters, including digits (0 to 9), letters 
    * (a to z), and underscore (_). It must start with a letter and cannot end with an underscore (_). The default 
    * value is an empty string.
    *
    * @relation domain?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var domain: String
    
    /**
    * Event name. The value is string that contains a maximum of 48 characters, including digits (0 to 9), letters 
    * (a to z), underscore (_), and dollar sign ($). It must start with a letter or dollar sign ($) and end with a 
    * digit or letter. The default value is an empty string.
    *
    * @relation name?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var name: String
    
    /**
    * Whether to report events in real time. The value true indicates that events are reported in real time, and the 
    * value false indicates the opposite. The default value is false.
    *
    * @relation isRealTime?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var isRealTime: Bool
    
    /**
    * AppEventReportConfig constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public init(domain!: String = "", name!: String = "", isRealTime!: Bool = false)
}


/**
* Defines a data processor for reporting and managing events. You can customize processor configurations as required.
*
* @relation interface Processor
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class Processor {
    /**
    * Name of a data processor. The value is string that contains a maximum of 256 characters, including digits (0 to 
    * 9), letters (a to z), underscore (_), and dollar sign ($). It must not start with a digit.
    *
    * @relation name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var name: String
    
    /**
    * Whether to enable the debug mode. The default value is false. The value true means to enable the debugging mode, 
    * and the value false means the opposite.
    *
    * @relation debugMode?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var debugMode: Bool
    
    /**
    * Server location information. It is left empty by default. The length of the input string cannot exceed 8 KB. If 
    * the length exceeds 8 KB, the default value is used.
    *
    * @relation routeInfo?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var routeInfo: String
    
    /**
    * Application ID. It is left empty by default. The length of the input string cannot exceed 8 KB. If the length 
    * exceeds 8 KB, the default value is used.
    *
    * @relation appId?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var appId: String
    
    /**
    * Whether to report an event when the data processor starts. The default value is false. The value true means to 
    * report events, and the value false means the opposite.
    *
    * @relation onStartReport?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var onStartReport: Bool
    
    /**
    * Whether to report an event when an application switches to the background. The default value is false. The value 
    * true means to report events, and the value false means the opposite.
    *
    * @relation onBackgroundReport?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var onBackgroundReport: Bool
    
    /**
    * Interval for event reporting, in seconds. The input value must be greater than or equal to 0. If the input value 
    * is less than 0, the default value 0 is used and periodic reporting is not performed.
    *
    * @relation periodReport?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var periodReport: Int32
    
    /**
    * Event reporting threshold. When the number of events reaches the threshold, an event is reported. The value must 
    * be greater than 0 and less than 1000. If the value is not within the range, the default value 0 is used and no 
    * events are reported.
    *
    * @relation batchReport?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var batchReport: Int32
    
    /**
    * Name array of user IDs that can be reported by the data processor. name corresponds to the name parameter of the 
    * setUserId API. The default value is an empty array.
    *
    * @relation userIds?: string[]
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var userIds: Array<String>
    
    /**
    * Name array of user properties that can be reported by the data processor. name corresponds to the name parameter 
    * of the setUserProperty API. The default value is an empty array.
    *
    * @relation userProperties?: string[]
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var userProperties: Array<String>
    
    /**
    * Event description configuration array that can be reported by the data processor. The default value is an empty 
    * array.
    *
    * @relation eventConfigs?: AppEventReportConfig[]
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var eventConfigs: Array<AppEventReportConfig>
    
    /**
    * Processor constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public init(name: String, debugMode!: Bool = false, routeInfo!: String = "", appId!: String = "",
        onStartReport!: Bool = false, onBackgroundReport!: Bool = false, periodReport!: Int32 = 0,
        batchReport!: Int32 = 0, userIds!: Array<String> = [], userProperties!: Array<String> = [],
        eventConfigs!: Array<AppEventReportConfig> = [])
}


/**
* Defines parameters of an AppEventPackage object. This API is used to obtain detail information about an event 
* package, which is obtained using the takeNext API.
*
* @relation interface AppEventPackage
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class AppEventPackage {
    /**
    * Event package ID, which is named from 0 in ascending order.
    *
    * @relation packageId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var packageId: Int32
    
    /**
    * Number of events in the event package.
    *
    * @relation row: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var row: Int32
    
    /**
    * Event size of the event package, in bytes.
    *
    * @relation size: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var size: Int32
    
    /**
    * Event data in the event package.
    *
    * @relation data: string[]
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var data: Array<String>
}


/**
* Defines the triggering condition parameters of the onTrigger callback of a Watcher.
*
* @relation interface TriggerCondition
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class TriggerCondition {
    /**
    * Total number of events that trigger callback. The value is a positive integer. The default value is 0, 
    * indicating that no callback is triggered. If this parameter is set to a negative value, the default 
    * value is used.
    *
    * @relation row?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var row: Int32
    
    /**
    * Total size of events that trigger callback. The value is a positive integer, in bytes. The default value is 0, 
    * indicating that no callback is triggered. If this parameter is set to a negative value, the default value is 
    * used.
    *
    * @relation size?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var size: Int32
    
    /**
    * Timeout interval for triggering callback. The value is a positive integer, in unit of 30s. The default value is 
    * 0, indicating that no callback is triggered. If this parameter is set to a negative value, the default value is 
    * used.
    *
    * @relation timeOut?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var timeOut: Int32
    
    /**
    * TriggerCondition constructor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public init(row!: Int32 = 0, size!: Int32 = 0, timeOut!: Int32 = 0)
}


/**
* Defines parameters of subscription filtering conditions of a Watcher. This API is used to set event filtering 
* conditions in the event watcher to ensure that only the events that meet the filtering conditions are subscribed 
* to.
*
* @relation interface AppEventFilter
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class AppEventFilter {
    /**
    * Event domain, which can be the system event domain (hiAppEvent.domain.OS) or the event domain of the custom 
    * event information (AppEventInfo) passed through the Write API.
    *
    * @relation domain: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var domain: String
    
    /**
    * Event types. If this parameter is not set, events are not filtered by default.
    *
    * @relation eventTypes?: EventType[]
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var eventTypes: Array<EventType>
    
    /**
    * Names of the events to be subscribed. If this parameter is not set, events are not filtered by default.
    *
    * @relation names?: string[]
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var names: Array<String>
    
    /**
    * AppEventFilter constructor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public init(domain: String, eventTypes!: Array<EventType> = [], names!: Array<String> = [])
}


/**
* Defines parameters of the event group returned by a subscription. This API can be used to obtain detail 
* information about an event group, which is often used in the onReceive callback of Watcher.
*
* @relation interface AppEventGroup
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class AppEventGroup {
    /**
    * Event name.
    *
    * @relation name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var name: String
    
    /**
    * Event object group.
    *
    * @relation appEventInfos: Array<AppEventInfo>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var appEventInfos: Array<AppEventInfo>
}


/**
* Defines parameters for a Watcher object. This API is used to configure and manage event watchers to subscribe to 
* and process specified events.
*
* @relation interface Watcher
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class Watcher {
    /**
    * Unique name of a watcher. The value contains a maximum of 32 characters, including digits (0 to 9), letters 
    * (a to z), underscore (_). It must start with a letter and end with a digit or letter. For example, testName1 
    * and crash_Watcher.
    *
    * @relation name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var name: String
    
    /**
    * Subscription callback triggering condition. This parameter takes effect only when it is passed together with 
    * onTrigger. If this parameter is not set, the onTrigger callback is not triggered by default.
    *
    * @relation triggerCondition?: TriggerCondition
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var triggerCondition: TriggerCondition
    
    /**
    * Subscription filtering condition. This parameter is passed only when subscription events need to be filtered. 
    * If this parameter is not set, events are not filtered by default.
    *
    * @relation appEventFilters?: AppEventFilter[]
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var appEventFilters: Array<AppEventFilter>
    
    /**
    * Subscription callback. This parameter takes effect only when it is passed together with triggerCondition. 
    * The input arguments are described as follows: 
    * <br>curRow: total number of subscription events when the callback is triggered.
    * <br>curSize: total size of subscribed events when the callback is triggered, in bytes.
    * <br>holder: subscription data holder, which can be used to process subscribed events.
    *
    * @relation onTrigger?: (curRow: number, curSize: number, holder: AppEventPackageHolder) => void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var onTrigger: Option<(Int32, Int32, AppEventPackageHolder) -> Unit>
    
    /**
    * Real-time subscription callback. Only this callback function is triggered if it is passed together with 
    * onTrigger. The input arguments are described as follows: 
    * <br>domain: domain name.
    * <br>appEventGroups: event group.
    *
    * @relation onReceive?: (domain: string, appEventGroups: Array<AppEventGroup>) => void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var onReceive: Option<(String, Array<AppEventGroup>) -> Unit>
    
    /**
    * Watcher constructor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public init(name: String, triggerCondition!: TriggerCondition = TriggerCondition(),
        appEventFilters!: Array<AppEventFilter> = [],
        onTrigger!: Option<(Int32, Int32, AppEventPackageHolder) -> Unit> = None,
        onReceive!: Option<(String, Array<AppEventGroup>) -> Unit> = None)
}


/**
* Provides the event logging function for applications to log the fault, statistical, security,
* and user behavior events reported during running. Based on event information,
* you will be able to analyze the running status of applications.
*
* @relation declare namespace hiAppEvent
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class HiAppEvent {
    /**
    * Writes events of the AppEventInfo type.The event 
    * object written by calling this API is a custom object. To avoid conflicts with system events, you are not advised 
    * to write it to system events (system event name constants defined in Event). The events written by this API can be 
    * subscribed to through (addWatcher).
    *
    * @relation function write(info: AppEventInfo): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func write(info: AppEventInfo): Unit
    
    /**
    * Configures the application event logging function, such as setting the logging switch and directory storage quota.
    *
    * @relation function configure(config: ConfigOption): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func configure(config: ConfigOption): Unit
    
    /**
    * Adds a data processor to migrate event data to the cloud. You can preset the implementation of the processor on 
    * the device and set its properties based on its constraints.
    * <br>The configuration information of Processor must be provided by the data processor. Yet, as no data processor 
    * is preset in the device for interaction for the moment, migrating events to the cloud is unavailable.
    *
    * @relation function addProcessor(processor: Processor): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func addProcessor(processor: Processor): Int64
    
    /**
    * Removes the data processor of a reported event.
    * @relation function removeProcessor(id: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func removeProcessor(id: Int64): Unit
    
    /**
    * Sets a user ID, which is used for association when a Processor is configured.
    *
    * @relation function setUserId(name: string, value: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func setUserId(name: String, value: String): Unit
    
    /**
    * Obtains the value set through setUserId.
    *
    * @relation function getUserId(name: string): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func getUserId(name: String): String
    
    /**
    * Sets a user property, which is used for association when a Processor is configured.
    *
    * @relation function setUserProperty(name: string, value: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func setUserProperty(name: String, value: String): Unit
    
    /**
    * Obtains the value set through setUserProperty.
    *
    * @relation function getUserProperty(name: string): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func getUserProperty(name: String): String
    
    /**
    * Clears local logging data of the application.
    *
    * @relation function clearData(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func clearData(): Unit
    
    /**
    * Add event watcher.
    *
    * @param { Watcher } watcher Watcher object for monitoring events.
    * @returns { AppEventPackageHolder } Holder object, which is used to read the monitoring data of the watcher.
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } 11102001 - Invalid watcher name.
    * @throws { BusinessException } 11102002 - Invalid filtering event domain.
    * @throws { BusinessException } 11102003 - Invalid row value.
    * @throws { BusinessException } 11102004 - Invalid size value.
    * @throws { BusinessException } 11102005 - Invalid timeout value.
    * @relation function addWatcher(watcher: Watcher): AppEventPackageHolder
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func addWatcher(watcher: Watcher): Option<AppEventPackageHolder>
    
    /**
    * Remove event watcher.
    *
    * @param { Watcher } watcher Watcher object for monitoring events.
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } 11102001 - Invalid watcher name.
    * @relation function removeWatcher(watcher: Watcher): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func removeWatcher(watcher: Watcher): Unit
}


