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
import ohos.business_exception.BusinessException
import ohos.ark_interop.*

import ohos.base.Main
import ohos.hilog.Hilog
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

/**
* Determine whether in application mode. 
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public func isStageMode(env: napi_env, context: napi_value): Bool


/**
* Convert JSValue to napi_value.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public func arkTsValuetoNapiValue(env: napi_env, ark_value: JSValue): napi_value


/**
* Convert HashMap to JSValue.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public func mapToJSValue<T>(
    context: JSContext,
    parameter: ?HashMap<String, T>,
    convert: (JSContext, T) -> JSValue
): JSValue


/**
* Convert JSValue to HashMap.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public func mapFromJSValue<T>(
    context: JSContext,
    value: JSValue,
    convert: (JSContext, JSValue) -> T
): ?HashMap<String, T>


