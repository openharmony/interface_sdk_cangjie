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

package ohos.hilog
import ohos.labels.APILevel


/**
* Log level define
*
* @relation enum LogLevel
*/
@!APILevel[
    22,
    syscap: "SystemCapability.HiviewDFX.HiLog"
]
public enum LogLevel {
    /**
    * DEBUG Log level define
    *
    * @relation DEBUG = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    Debug |
    /**
    * INFO Log level define
    *
    * @relation INFO = 4
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    Info |
    /**
    * WARN Log level define
    *
    * @relation WARN = 5
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    Warning |
    /**
    * ERROR Log level define
    *
    * @relation ERROR = 6
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    Error |
    /**
    * FATAL Log level define
    *
    * @relation FATAL = 7
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    Fatal |
    ...
}


/**
* Provides interfaces to generate system logs.
*
* @relation declare namespace hilog
*/
@!APILevel[
    22,
    syscap: "SystemCapability.HiviewDFX.HiLog"
]
public class Hilog {
    /**
    * Checks whether logs of the specified tag, and level can be printed.
    *
    * @relation function isLoggable(domain: number, tag: string, level: LogLevel): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    public static func isLoggable(domain: UInt32, tag: String, level: LogLevel): Bool
    
    /**
    * Outputs debug-level logs.
    *
    * @relation function debug(domain: number, tag: string, format: string, ...args: (Object | undefined | null)[]): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    public static func debug(domain: UInt32, tag: String, format: String, args: Array<String>): Unit
    
    /**
    * Outputs info-level logs.
    *
    * @relation function info(domain: number, tag: string, format: string, ...args: (Object | undefined | null)[]): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    public static func info(domain: UInt32, tag: String, format: String, args: Array<String>): Unit
    
    /**
    * Outputs warning-level logs.
    *
    * @relation function warn(domain: number, tag: string, format: string, ...args: (Object | undefined | null)[]): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    public static func warn(domain: UInt32, tag: String, format: String, args: Array<String>): Unit
    
    /**
    * Outputs error-level logs.
    *
    * @relation function error(domain: number, tag: string, format: string, ...args: (Object | undefined | null)[]): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    public static func error(domain: UInt32, tag: String, format: String, args: Array<String>): Unit
    
    /**
    * Outputs fatal-level logs.
    *
    * @relation function fatal(domain: number, tag: string, format: string, ...args: (Object | undefined | null)[]): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    public static func fatal(domain: UInt32, tag: String, format: String, args: Array<String>): Unit
}


