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

package ohos.ui_resource
import ohos.base.*
import ohos.resource_manager.AppResource
import ohos.encoding.json.*
import ohos.labels.APILevel


@C
public struct NativeDimension {
    public NativeDimension(
        public let value: Float64,
        public let unit: Int32
    )
}

@C
public struct NativeResourceObject {
    public NativeResourceObject(
        public let bundleName: CString,
        public let moduleName: CString,
        public let id: Int32,
        public let resType: Int32,
        public let paramsJsonStr: CString
    )
}

public let UNKNOWN_RESOURCE_TYPE: Int32 = -1

@!APILevel[
    12,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func getResourceString(res: AppResource): String


@!APILevel[
    12,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func getResourceMedia(res: AppResource): String


@!APILevel[
    12,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func getResourceColor(res: AppResource): Color


@!APILevel[
    12,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func getResourceLength(res: AppResource): Length


@!APILevel[
    19,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func getResourceDouble(res: AppResource): Float64


@!APILevel[
    19,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func getResourceUInt32(res: AppResource): UInt32


@!APILevel[
    19,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func getResourceInt32(res: AppResource): Int32


@!APILevel[
    19,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func getResourceStringArray(res: AppResource): Array<String>


@!APILevel[
    19,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func getResourceBool(res: AppResource): Bool


@!APILevel[
    19,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func getResourceSymbolId(res: AppResource): UInt32


@!APILevel[
    12,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func parseResourceParams(paramsOpt: ?Array<Any>): String


