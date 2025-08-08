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

package ohos.system_date_time
import ohos.ffi.*
import ohos.hilog.*
import ohos.labels.*
import ohos.base.*

import std.collection.*

@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.MiscServices.Time"
]
public enum TimeType {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.MiscServices.Time"
    ]
    STARTUP |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.MiscServices.Time"
    ]
    ACTIVE |
    ...
}


@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.MiscServices.Time"
]
public class SystemDateTime {
    /**
    *  @brief getCurrentTime(isNano: boolean, callback: AsyncCallback<number>): void
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.MiscServices.Time"
    ]
    public static func getCurrentTime(isNano!: Bool = false): Int64
    
    /**
    *  @brief getRealActiveTime(isNano?: boolean): Promise<number>
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.MiscServices.Time"
    ]
    public static func getRealActiveTime(isNano!: Bool = false): Int64
    
    /**
    *  @brief getRealTime(isNano?: boolean): Promise<number>
    */
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.MiscServices.Time"
    ]
    public static func getRealTime(isNano!: Bool = false): Int64
    
    /**
    *  @brief getTime(isNanoseconds?: boolean): number
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.MiscServices.Time"
    ]
    public static func getTime(isNano!: Bool = false): Int64
    
    /**
    *  @brief getUptime(timeType: TimeType, isNanoseconds?: boolean): number
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.MiscServices.Time"
    ]
    public static func getUptime(timeType: TimeType, isNano!: Bool = false): Int64
    
    /**
    *  @brief getTimezone(callback: AsyncCallback<string>): void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.MiscServices.Time"
    ]
    public static func getTimezone(): String
}


