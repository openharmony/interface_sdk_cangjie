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

package ohos.distributed_kv_store
import ohos.labels.*
import ohos.base.*
import ohos.ffi.*
import std.collection.*

import ohos.hilog.*
import std.sync.*

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
]
public class DeviceKVStore <: SingleKVStore {
    /**
    * @brief  get(key: string, callback: AsyncCallback<boolean | string | number | Uint8Array>): void
    * @brief  get(key: string): Promise<boolean | string | number | Uint8Array>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func get(key: String): ValueType
    
    /**
    * @brief  getEntries(keyPrefix: string, callback: AsyncCallback<Entry[]>): void
    * @brief  getEntries(keyPrefix: string): Promise<Entry[]>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getEntries(keyPrefix: String): ArrayList<Entry>
    
    /**
    * @brief  getEntries(query: Query, callback: AsyncCallback<Entry[]>): void
    * @brief  getEntries(query: Query): Promise<Entry[]>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getEntries(query: Query): ArrayList<Entry>
    
    /**
    * @brief  getResultSet(keyPrefix: string, callback: AsyncCallback<KVStoreResultSet>): void
    * @brief  getResultSet(keyPrefix: string): Promise<KVStoreResultSet>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getResultSet(keyPrefix: String): KVStoreResultSet
    
    /**
    * @brief  getResultSet(query: Query, callback:AsyncCallback<KVStoreResultSet>): void
    * @brief  getResultSet(query: Query): Promise<KVStoreResultSet>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getResultSet(query: Query): KVStoreResultSet
    
    /**
    * @brief  getResultSize(query: Query, callback: AsyncCallback<number>): void
    * @brief  getResultSize(query: Query): Promise<number>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getResultSize(query: Query): Int32
}



@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
]
public class DistributedKVStore {
    /**
    * @brief  createKVManager(config: KVManagerConfig): KVManager
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public static func createKVManager(config: KVManagerConfig): KVManager
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class KVManager <: RemoteDataLite {
    /**
    * @brief  getKVStore<T>(storeId: string, options: Options, callback: AsyncCallback<T>): void
    * @brief  getKVStore<T>(storeId: string, options: Options): Promise<T>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getSingleKVStore(storeId: String, options: Options): SingleKVStore
    
    /**
    * @brief  getKVStore<T>(storeId: string, options: Options, callback: AsyncCallback<T>): void
    * @brief  getKVStore<T>(storeId: string, options: Options): Promise<T>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getDeviceKVStore(storeId: String, options: Options): DeviceKVStore
    
    /**
    * @brief  closeKVStore(appId: string, storeId: string, callback: AsyncCallback<void>): void
    * @brief  closeKVStore(appId: string, storeId: string): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func closeKVStore(appId: String, storeId: String): Unit
    
    /**
    * @brief  deleteKVStore(appId: string, storeId: string, callback: AsyncCallback<void>): void
    * @brief  deleteKVStore(appId: string, storeId: string): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func deleteKVStore(appId: String, storeId: String): Unit
    
    /**
    * @brief  getAllKVStoreId(appId: string, callback: AsyncCallback<string[]>): void
    * @brief  getAllKVStoreId(appId: string): Promise<string[]>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getAllKVStoreId(appId: String): Array<String>
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public let MAX_KEY_LENGTH: Int64 = 1024


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public let MAX_VALUE_LENGTH: Int64 = 4194303


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public let MAX_KEY_LENGTH_DEVICE: Int64 = 896


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public let MAX_STORE_ID_LENGTH: Int64 = 128


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public let MAX_QUERY_LENGTH: Int64 = 512000


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public let MAX_BATCH_SIZE: Int64 = 128


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public enum ValueType <: ToString {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    STRING(String) |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    INTEGER(Int32) |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    FLOAT(Float32) |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    BYTE_ARRAY(Array<Byte>) |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    BOOLEAN(Bool) |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    DOUBLE(Float64) |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func toString(): String
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public struct KVManagerConfig {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public init(context: StageContext, bundleName: String)
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public enum SecurityLevel {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    S1 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    S2 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    S3 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    S4 |
    ...
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
]
public struct FieldNode {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var nullable: Bool = true
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var default: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var type_: Int32 = 0
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public init(name: String)
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
]
public struct Schema {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var root: FieldNode = FieldNode("undefined")
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var indexes: Array<String> = []
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var mode: Int32 = 0
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var skip: Int32 = 0
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class Options {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public init(securityLevel: SecurityLevel, createIfMissing!: Bool = true, encrypt!: Bool = false,
        backup!: Bool = true, autoSync!: Bool = false, schema!: Schema = Schema())
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public struct Entry <: ToString {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var key: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var value: ValueType
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public init(key: String, value: ValueType)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func toString(): String
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class KVStoreResultSet <: RemoteDataLite {
    /**
    * @brief  getCount(): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getCount(): Int32
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class Query <: RemoteDataLite {
    /**
    * @brief  constructor()
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public init()
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public open class SingleKVStore <: RemoteDataLite {
    /**
    * @brief  put(key: string, value: Uint8Array | string | number | boolean, callback: AsyncCallback<void>): void
    * @brief  put(key: string, value: Uint8Array | string | number | boolean): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func put(key: String, value: ValueType): Unit
    
    /**
    * @brief  putBatch(entries: Entry[], callback: AsyncCallback<void>): void
    * @brief  putBatch(entries: Entry[]): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func putBatch(entries: ArrayList<Entry>): Unit
    
    /**
    * @brief  delete(key: string, callback: AsyncCallback<void>): void
    * @brief  delete(key: string): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func delete(key: String): Unit
    
    /**
    * @brief  deleteBatch(keys: string[], callback: AsyncCallback<void>): void
    * @brief  deleteBatch(keys: string[]): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func deleteBatch(keys: ArrayList<String>): Unit
    
    /**
    * @brief  get(key: string, callback: AsyncCallback<boolean | string | number | Uint8Array>): void
    * @brief  get(key: string): Promise<boolean | string | number | Uint8Array>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func get(key: String): ValueType
    
    /**
    * @brief  backup(file:string, callback: AsyncCallback<void>):void
    * @brief  backup(file:string): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func backup(file: String): Unit
    
    /**
    * @brief  restore(file:string, callback: AsyncCallback<void>):void
    * @brief  restore(file:string): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func restore(file: String): Unit
    
    /**
    * @brief  startTransaction(callback: AsyncCallback<void>): void
    * @brief  startTransaction(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func startTransaction(): Unit
    
    /**
    * @brief  commit(callback: AsyncCallback<void>): void
    * @brief  commit(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func commit(): Unit
    
    /**
    * @brief  rollback(callback: AsyncCallback<void>): void
    * @brief  rollback(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func rollback(): Unit
    
    /**
    * @brief  enableSync(enabled: boolean, callback: AsyncCallback<void>): void
    * @brief  enableSync(enabled: boolean): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func enableSync(enabled: Bool): Unit
    
    /**
    * @brief  setSyncParam(defaultAllowedDelayMs: number, callback: AsyncCallback<void>): void
    * @brief  setSyncParam(defaultAllowedDelayMs: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func setSyncParam(defaultAllowedDelayMs: UInt32): Unit
}


