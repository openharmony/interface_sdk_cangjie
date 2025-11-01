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

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file.

package ohos.hilog

import ohos.labels.APILevel

/**
 * Log level define
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiLog"
]
public enum LogLevel {
    /**
     * DEBUG Log level define
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    Debug
    | 
    /**
     * INFO Log level define
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    Info
    | 
    /**
     * WARN Log level define
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    Warning
    | 
    /**
     * ERROR Log level define
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    Error
    | 
    /**
     * FATAL Log level define
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    Fatal
    | ...
}

/**
 * Provides interfaces to generate system logs.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiLog"
]
public class Hilog {
    /**
     * Checks whether logs of the specified tag, and level can be printed.
     * @param { UInt32 } domain - Indicates the service domain, which is a hexadecimal integer ranging from 0x0 to 0xFFFF
     *                          if the value exceeds the range, logs cannot be printed.
     * @param { String } tag - Identifies the log tag, length cannot exceed 32 bytes, the excess part will be truncated.
     * @param { LogLevel } level - log level
     * @returns { Bool } Returns true if the log can be printed; false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    public static func isLoggable(domain: UInt32, tag: String, level: LogLevel): Bool

    /**
     * Outputs debug-level logs.
     * @param { UInt32 } domain - Indicates the service domain, which is a hexadecimal integer ranging from 0x0 to 0xFFFF
     *                         if the value exceeds the range, logs cannot be printed.
     * @param { String } tag - Identifies the log tag, length cannot exceed 32 bytes, the excess part will be truncated.
     * @param { String } format - Indicates the log format string.
     * @param { Array<String> } args - Indicates the log parameters.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    public static func debug(domain: UInt32, tag: String, format: String, args: Array<String>): Unit

    /**
     * Outputs info-level logs.
     * @param { UInt32 } domain - Indicates the service domain, which is a hexadecimal integer ranging from 0x0 to 0xFFFF
     *                          if the value exceeds the range, logs cannot be printed.
     * @param { String } tag - Identifies the log tag, length cannot exceed 32 bytes, the excess part will be truncated.
     * @param { String } format - Indicates the log format string.
     * @param { Array<String> } args - Indicates the log format parameters.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    public static func info(domain: UInt32, tag: String, format: String, args: Array<String>): Unit

    /**
     * Outputs warning-level logs.
     * @param { UInt32 } domain - Indicates the service domain, which is a hexadecimal integer ranging from 0x0 to 0xFFFF
     *                          if the value exceeds the range, logs cannot be printed.
     * @param { String } tag - Identifies the log tag, length cannot exceed 32 bytes, the excess part will be truncated.
     * @param { String } format - Indicates the log format string.
     * @param { Array<String> } args - Indicates the log parameters.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    public static func warn(domain: UInt32, tag: String, format: String, args: Array<String>): Unit

    /**
     * Outputs error-level logs.
     * @param { UInt32 } domain - Indicates the service domain, which is a hexadecimal integer ranging from 0x0 to 0xFFFF
     *                          if the value exceeds the range, logs cannot be printed.
     * @param { String } tag - Identifies the log tag, length cannot exceed 32 bytes, the excess part will be truncated.
     * @param { String } format - Indicates the log format string.
     * @param { Array<String> } args - Indicates the log format parameters.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    public static func error(domain: UInt32, tag: String, format: String, args: Array<String>): Unit

    /**
     * Outputs fatal-level logs.
     * @param { UInt32 } domain - Indicates the service domain, which is a hexadecimal integer ranging from 0x0 to 0xFFFF
     *                          if the value exceeds the range, logs cannot be printed.
     * @param { String } tag - Identifies the log tag, length cannot exceed 32 bytes, the excess part will be truncated.
     * @param { String } format - Indicates the log format string.
     * @param { Array<String> } args - Indicates the log parameters.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiLog"
    ]
    public static func fatal(domain: UInt32, tag: String, format: String, args: Array<String>): Unit
}