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

import ohos.base.UIThread
import ohos.hilog.Hilog
import std.sync.Mutex
import ohos.ark_interop.{JSRuntime, JSModule}
import std.convert.Parsable
import std.env.getProcessId
internal import ohos.ark_interop.{SharedObject, JSValue, JSObject, JSContext, JSCallInfo, napi_env, napi_value, JSInteropType, JSValue_, getGlobalContext, JSType}
internal import ohos.labels.APILevel
import std.collection.HashMap
import ohos.hilog.HilogChannel
import std.sync.{Mutex, AtomicInt64}
import std.collection.HashSet
import std.time.DateTime

/**
 * Determine whether in application mode.
 *
 * @param { napi_env } env - The napi environment.
 * @param { napi_value } context - The napi context.
 * @returns { Bool } Return true if in Stage mode, otherwise false.
 */
@!APILevel[
    since: "22"
]
public func isStageMode(env: napi_env, context: napi_value): Bool


/**
 * Convert JSValue to napi_value.
 *
 * @param { napi_env } env - The napi environment.
 * @param { JSValue } ark_value - The JSValue to convert.
 * @returns { napi_value } The converted napi_value.
 */
@!APILevel[
    since: "22"
]
public func arktsValuetoNapiValue(env: napi_env, ark_value: JSValue): napi_value


/**
 * Convert HashMap to JSValue.
 *
 * @param { JSContext } context - The JS Context.
 * @param { ?HashMap<String, T> } parameter - The HashMap to convert.
 * @param { (JSContext, T) -> JSValue } convert - The conversion function.
 * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
 * @throws { BusinessException } 34300004 - Thread mismatch.
 * @returns { JSValue } The converted JSValue.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func mapToJSValue<T>(
    context: JSContext,
    parameter: ?HashMap<String, T>,
    convert: (JSContext, T) -> JSValue
): JSValue


/**
 * Convert JSValue to HashMap.
 *
 * @param { JSContext } context - The JS Context.
 * @param { JSValue } value - JSValue data to be converted.
 * @param { (JSContext, JSValue) -> T } convert - The conversion function.
 * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
 * @throws { BusinessException } 34300004 - Thread mismatch.
 * @returns { ?HashMap<String, T> } The converted HashMap.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func mapFromJSValue<T>(
    context: JSContext,
    value: JSValue,
    convert: (JSContext, JSValue) -> T
): ?HashMap<String, T>


