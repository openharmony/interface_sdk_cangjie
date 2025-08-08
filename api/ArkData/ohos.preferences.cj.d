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

package ohos.preferences
import ohos.labels.*
import ohos.ffi.*
import ohos.base.*
import std.collection.*

import ohos.hilog.*
import std.sync.*

@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public enum ValueType {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    integer(Int64) |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    double(Float64) |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    string(String) |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    bool(Bool) |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    boolArray(Array<Bool>) |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    doubleArray(Array<Float64>) |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    stringArray(Array<String>) |
    ...
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public let MAX_KEY_LENGTH: Int64 = 1024


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public let MAX_VALUE_LENGTH: Int64 = 16 * 1024 * 1024


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public struct Options {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public let name: String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public let dataGroupId: String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public init(name: String)
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public init(name: String, dataGroupId: String)
}


type StageContext = CPointer<Unit>
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public class Preferences <: RemoteDataLite {
    /**
    * @brief getPreferences(context: Context, name: string, callback: AsyncCallback<Preferences>): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public static func getPreferences(context: StageContext, name: String): Preferences
    
    /**
    * @brief getPreferencesSync(context: Context, options: Options): Preferences
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public static func getPreferences(context: StageContext, options: Options): Preferences
    
    /**
    * @brief deletePreferences(context: Context, name: string, callback: AsyncCallback<Preferences>): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public static func deletePreferences(context: StageContext, name: String): Unit
    
    /**
    * @brief deletePreferences(context: Context, options: Options): Promise<void>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public static func deletePreferences(context: StageContext, options: Options): Unit
    
    /**
    * @brief removePreferencesFromCacheSync(context: Context, name: string): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public static func removePreferencesFromCache(context: StageContext, name: String): Unit
    
    /**
    * @brief removePreferencesFromCache(context: Context, options: Options): Promise<void>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public static func removePreferencesFromCache(context: StageContext, options: Options): Unit
    
    /**
    * @brief flush(): Promise<void>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func flush(): Unit
    
    /**
    * @brief clear(): Promise<void>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func clear(): Unit
    
    /**
    * @brief getSync(key: string, defValue: ValueType): ValueType
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func get(key: String, defValue: ValueType): ValueType
    
    /**
    * @brief putSync(key: string, value: ValueType): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func put(key: String, value: ValueType): Unit
    
    /**
    * @brief getAllSync(): Object
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func getAll(): HashMap<String, ValueType>
    
    /**
    * @brief deleteSync(key: string): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func delete(key: String): Unit
    
    /**
    * @brief hasSync(key: string): boolean
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func has(key: String): Bool
    
    /**
    * @brief on(type: ‘change’, callback: ( key : string ) => void): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func on(tp: String, callback: Callback1Argument<String>): Unit
    
    /**
    * @brief off(type: ‘change’, callback?: ( key : string ) => void): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func off(tp: String, callback: Callback1Argument<String>): Unit
    
    /**
    * @brief off(type: ‘change’, callback?: ( key : string ) => void): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func off(tp: String): Unit
}


