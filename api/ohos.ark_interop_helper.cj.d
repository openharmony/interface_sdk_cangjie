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

package ohos.ark_interop_helper
import std.sync.{SyncCounter, AtomicBool}
import std.collection.concurrent.ConcurrentHashMap
import ohos.base.BusinessException
import ohos.ark_interop.*

import ohos.base.{BusinessException, Main, AppLog}
import std.sync.Mutex
import std.convert.*
import std.process.*
import std.env.getProcessId
internal import ohos.ark_interop.*
internal import ohos.labels.*
import std.collection.*
import ohos.hilog.HilogChannel
import std.collection.HashMap
import std.sync.*
import std.time.DateTime

@!APILevel[
    19,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Napi"
]
public func isStageMode(env: napi_env, context: napi_value): Bool


@!APILevel[
    19,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Napi"
]
public func arkTsValuetoNapiValue(env: napi_env, ark_value: JSValue): napi_value


@!APILevel[
    19,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Napi"
]
public func mapToJSValue<T>(
    context: JSContext,
    parameter: ?HashMap<String, T>,
    convert: (JSContext, T) -> JSValue
): JSValue


@!APILevel[
    19,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Napi"
]
public func mapFromJSValue<T>(
    context: JSContext,
    value: JSValue,
    convert: (JSContext, JSValue) -> T
): ?HashMap<String, T>


