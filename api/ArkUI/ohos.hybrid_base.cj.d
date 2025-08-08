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

package ohos.hybrid_base
internal import ohos.hilog.*
internal import ohos.ark_interop.*
internal import ohos.component.*
internal import std.collection.HashMap
internal import ohos.concurrency.*


public class CJPageEntry {
    public static func getInstance(): CJPageEntry
    
    public func registerHybridPage(name: String, cjPage: CustomView): Unit
    
    public func removeHybridPage(name: String): Unit
    
    public func forceRerenderByName(name: String): Unit
    
    public func forceRerenderAllEntry(): Unit
}

public open class HybridComponentBase <: SharedObject {
    public static func registerHybridComponent(compName: String, loadHandle: () -> CPointer<Unit>,
        unloadHandle: () -> Unit)
}

