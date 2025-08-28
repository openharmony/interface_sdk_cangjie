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
import ohos.labels.APILevel

import ohos.business_exception.{ BusinessException, getUniversalErrorMsg}
import ohos.ffi.SUCCESS_CODE
import ohos.hilog.Hilog
import ohos.ffi.{ RetCode, RetDataCString, RetDataI64}

/**
* Indicates time type.
*
* @relation enum TimeType
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.MiscServices.Time"
]
public enum TimeType {
    /**
    * Indicates the time elapsed since the system was booted, including deep sleep time.
    *
    * @relation STARTUP = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.MiscServices.Time"
    ]
    StartUp |
    /**
    * Indicates the time elapsed since the system was booted, including deep sleep time.
    *
    * @relation ACTIVE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.MiscServices.Time"
    ]
    Active |
    ...
}


/**
* System time and timezone.
*
* @relation declare namespace systemDateTime
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.MiscServices.Time"
]
public class SystemDateTime {
    /**
    * Obtains the number of timestamp that have elapsed since the Unix epoch.
    *
    * @relation function getTime(isNanoseconds?: boolean): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.MiscServices.Time"
    ]
    public static func getTime(isNanoseconds!: Bool = false): Int64
    
    /**
    * Obtains the number of milliseconds since the system has been running.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types;
    *     3. Parameter verification failed. This error code was added due to missing issues.
    * @relation function getUptime(timeType: TimeType, isNanoseconds?: boolean): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.MiscServices.Time"
    ]
    public static func getUptime(timeType: TimeType, isNanoseconds!: Bool = false): Int64
    
    /**
    * Obtains the number of milliseconds since the system has been running.
    *
    * @relation function getTimezoneSync(): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.MiscServices.Time"
    ]
    public static func getTimezone(): String
}


