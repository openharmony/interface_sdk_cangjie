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

package ohos.relational_store
import ohos.labels.*
import ohos.ffi.*
import std.collection.*
import ohos.base.*

import std.math.*
import std.time.*
import std.sync.*
import ohos.hilog.*

@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public class RdbPredicates <: RemoteDataLite {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public init(name: String)
    
    /**
    * @brief  inAllDevices(): RdbPredicates
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func inAllDevices(): RdbPredicates
    
    /**
    * @brief  beginWrap(): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func beginWrap(): RdbPredicates
    
    /**
    * @brief  endWrap(): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func endWrap(): RdbPredicates
    
    /**
    * @brief  or(): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func or(): RdbPredicates
    
    /**
    * @brief  and(): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func and(): RdbPredicates
    
    /**
    * @brief  contains(field: string, value: string): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func contains(field: String, value: String): RdbPredicates
    
    /**
    * @brief  beginsWith(field: string, value: string): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func beginsWith(field: String, value: String): RdbPredicates
    
    /**
    * @brief  endsWith(field: string, value: string): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func endsWith(field: String, value: String): RdbPredicates
    
    /**
    * @brief  isNull(field: string): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func isNull(field: String): RdbPredicates
    
    /**
    * @brief  isNotNull(field: string): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func isNotNull(field: String): RdbPredicates
    
    /**
    * @brief  like(field: string, value: string): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func like(field: String, value: String): RdbPredicates
    
    /**
    * @brief  glob(field: string, value: string): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func glob(field: String, value: String): RdbPredicates
    
    /**
    * @brief  orderByAsc(field: string): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func orderByAsc(field: String): RdbPredicates
    
    /**
    * @brief  orderByDesc(field: string): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func orderByDesc(field: String): RdbPredicates
    
    /**
    * @brief  distinct(): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func distinct(): RdbPredicates
    
    /**
    * @brief  limitAs(value: number): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func limitAs(value: Int32): RdbPredicates
    
    /**
    * @brief  offsetAs(rowOffset: number): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func offsetAs(rowOffset: Int32): RdbPredicates
    
    /**
    * @brief  groupBy(fields: Array<string>): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func groupBy(fields: Array<String>): RdbPredicates
    
    /**
    * @brief  lessThanOrEqualTo(field: string, value: ValueType): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func lessThanOrEqualTo(field: String, value: ValueType): RdbPredicates
    
    /**
    * @brief  equalTo(field: string, value: ValueType): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func equalTo(field: String, value: ValueType): RdbPredicates
    
    /**  
    * @brief  greaterThanOrEqualTo(field: string, value: ValueType): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func greaterThanOrEqualTo(field: String, value: ValueType): RdbPredicates
    
    /**
    * @brief  greaterThan(field: string, value: ValueType): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func greaterThan(field: String, value: ValueType): RdbPredicates
    
    /**
    * @brief  lessThan(field: string, value: ValueType): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func lessThan(field: String, value: ValueType): RdbPredicates
    
    /**
    * @brief  notEqualTo(field: string, value: ValueType): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func notEqualTo(field: String, value: ValueType): RdbPredicates
    
    /**
    * @brief  notBetween(field: string, low: ValueType, high: ValueType): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func notBetween(field: String, lowValue: ValueType, highValue: ValueType): RdbPredicates
    
    /**
    * @brief  between(field: string, low: ValueType, high: ValueType): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func between(field: String, lowValue: ValueType, highValue: ValueType): RdbPredicates
    
    /**
    * @brief  in(field: string, value: Array<ValueType>): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func `in`(field: String, values: Array<ValueType>): RdbPredicates
    
    /**
    * @brief  notIn(field: string, value: Array<ValueType>): RdbPredicates
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func notIn(field: String, values: Array<ValueType>): RdbPredicates
}


@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public class RdbStore <: RemoteDataLite {
    /**
    * @brief  query(predicates: RdbPredicates, columns?: Array<string>):Promise<ResultSet>
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func query(predicates: RdbPredicates, columns: Array<String>): ResultSet
    
    /**
    * @brief delete(predicates: RdbPredicates, callback: AsyncCallback<number>):void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func delete(predicates: RdbPredicates): Int64
    
    /**
    * @brief backup(destName:string, callback: AsyncCallback<void>):void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func backup(destName: String): Unit
    
    /**
    * @brief restore(srcName:string, callback: AsyncCallback<void>):void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func restore(srcName: String): Unit
    
    /**
    * @brief commit():void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func commit(): Unit
    
    /**
    * @brief rollBack():void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func rollBack(): Unit
    
    /**
    * @brief beginTransaction():void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func beginTransaction(): Unit
    
    /**
    * @brief executeSql(sql: string, callback: AsyncCallback<void>):void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func executeSql(sql: String): Unit
    
    /**
    * @brief  insert(table: string, values: ValuesBucket):Promise<number>
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func insert(table: String, values: Map<String, ValueType>): Int64
    
    /**
    * @brief  insert(table: string, values: ValuesBucket, conflict: ConflictResolution,
    *  callback: AsyncCallback<number>): void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func insert(table: String, values: Map<String, ValueType>, conflict: ConflictResolution): Int64
    
    /**
    * @brief  update(values: ValuesBucket, predicates: RdbPredicates):Promise<number>
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func update(values: Map<String, ValueType>, predicates: RdbPredicates): Int64
    
    /**
    * @brief  update(values: ValuesBucket, predicates: RdbPredicates, conflict: ConflictResolution,
    *  callback: AsyncCallback<number>):void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func update(values: Map<String, ValueType>, predicates: RdbPredicates, conflict: ConflictResolution): Int64
    
    /**
    * @brief batchInsert(table: string, values: Array<ValuesBucket>, callback: AsyncCallback<number>):void
    * @brief batchInsert(table: string, values: Array<ValuesBucket>):Promise<number>
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func batchInsert(table: String, values: Array<Map<String, ValueType>>): Int64
    
    /**
    * @brief  querySql(sql: string, bindArgs?: Array<ValueType>):Promise<ResultSet>
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func querySql(sql: String, bindArgs!: Array<ValueType> = Array<ValueType>()): ResultSet
    
    /**
    * @brief executeSql(sql: string, bindArgs: Array<ValueType>, callback: AsyncCallback<void>):void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func executeSql(sql: String, bindArgs: Array<ValueType>): Unit
    
    /**
    * @brief on(event: string, interProcess: boolean, observer: Callback<void>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func on(event: String, interProcess: Bool, callback: Callback0Argument): Unit
    
    /**
    * @brief off(event: string, interProcess: boolean, observer?: Callback<void>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func off(event: String, interProcess: Bool): Unit
    
    /**
    * @brief off(event: string, interProcess: boolean, observer?: Callback<void>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func off(event: String, interProcess: Bool, callback: Callback0Argument): Unit
    
    /**
    * @brief emit(event: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func emit(event: String): Unit
}


/**
* @brief  getRdbStore(context: Context, config: StoreConfig): Promise<RdbStore>
*/
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public func getRdbStore(context: StageContext, config: StoreConfig): RdbStore


/**
* @brief  deleteRdbStore(context: Context, name: string): Promise<void>
*/
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public func deleteRdbStore(context: StageContext, name: String): Unit


/**
* @brief  deleteRdbStore(context: Context, config: StoreConfig): Promise<void>
*/
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public func deleteRdbStore(context: StageContext, config: StoreConfig): Unit


@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum SecurityLevel {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    S1 |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    S2 |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    S3 |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    S4 |
    ...
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getValue(): Int32
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum ChangeType {
    @!APILevel[
        21,
        permission: "ohos.DISTRIBUTED_DATASYNC",
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    DATA_CHANGE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    ASSET_CHANGE |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getValue(): Int32
}


@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public class StoreConfig {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public let name: String
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public let securityLevel: SecurityLevel
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public let encrypt: Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public let dataGroupId: String
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public let customDir: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.CloudSync.Client"
    ]
    public let autoCleanDirtyData: Bool
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public init(name: String, securityLevel: SecurityLevel, encrypt!: Bool = false, dataGroupId!: String = "",
        customDir!: String = "", autoCleanDirtyData!: Bool = true)
}


@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum AssetStatus {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    ASSET_NORMAL |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    ASSET_INSERT |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    ASSET_UPDATE |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    ASSET_DELETE |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    ASSET_ABNORMAL |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    ASSET_DOWNLOADING |
    ...
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getValue(): Int32
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.CloudSync.Client"
]
public enum Field {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.CloudSync.Client"
    ]
    CURSOR_FIELD |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.CloudSync.Client"
    ]
    ORIGIN_FIELD |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.CloudSync.Client"
    ]
    DELETED_FLAG_FIELD |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.CloudSync.Client"
    ]
    OWNER_FIELD |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.CloudSync.Client"
    ]
    PRIVILEGE_FIELD |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.CloudSync.Client"
    ]
    SHARING_RESOURCE_FIELD |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.CloudSync.Client"
    ]
    public func getValue(): String
}


@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum ConflictResolution {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    ON_CONFLICT_NONE |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    ON_CONFLICT_ROLLBACK |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    ON_CONFLICT_ABORT |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    ON_CONFLICT_FAIL |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    ON_CONFLICT_IGNORE |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    ON_CONFLICT_REPLACE |
    ...
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getValue(): Int32
}


@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public struct Asset {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public let name: String
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public let uri: String
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public let path: String
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public let createTime: String
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public let modifyTime: String
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public let size: String
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public let status: AssetStatus
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public init(name: String, uri: String, path: String, createTime: String, modifyTime: String, size: String,
        status!: AssetStatus = AssetStatus.ASSET_NORMAL)
}


@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum ValueType {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    null |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    integer(Int64) |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    double(Float64) |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    string(String) |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    boolean(Bool) |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Uint8Array(Array<UInt8>) |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetEnum(Asset) |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetsEnum(Array<Asset>) |
    ...
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum DistributedType {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    DISTRIBUTED_DEVICE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.CloudSync.Client"
    ]
    DISTRIBUTED_CLOUD |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getValue(): Int32
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum SyncMode {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SYNC_MODE_PUSH |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SYNC_MODE_PULL |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.CloudSync.Client"
    ]
    SYNC_MODE_TIME_FIRST |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.CloudSync.Client"
    ]
    SYNC_MODE_NATIVE_FIRST |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.CloudSync.Client"
    ]
    SYNC_MODE_CLOUD_FIRST |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getValue(): Int32
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum Progress {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SYNC_BEGIN |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SYNC_IN_PROGRESS |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SYNC_FINISH |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getValue(): Int32
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum ProgressCode {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SUCCESS |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    UNKNOWN_ERROR |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    NETWORK_ERROR |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    CLOUD_DISABLED |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    LOCKED_BY_OTHERS |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    RECORD_LIMIT_EXCEEDED |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    NO_SPACE_FOR_ASSET |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getValue(): Int32
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum SubscribeType {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SUBSCRIBE_TYPE_REMOTE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.CloudSync.Client"
    ]
    SUBSCRIBE_TYPE_CLOUD |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.CloudSync.Client"
    ]
    SUBSCRIBE_TYPE_CLOUD_DETAILS |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getValue(): Int32
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum Origin {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    LOCAL |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    CLOUD |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    REMOTE |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getValue(): Int32
}



@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public class ResultSet <: RemoteDataLite {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop columnNames: Array<String>
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop columnCount: Int32
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop rowCount: Int32
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop rowIndex: Int32
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop isAtFirstRow: Bool
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop isAtLastRow: Bool
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop isEnded: Bool
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop isStarted: Bool
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop isClosed: Bool
    
    /**
    * @brief  getDouble(columnIndex: number): number
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getDouble(columnIndex: Int32): Float64
    
    /**
    * @brief  goToRow(position: number): boolean
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func goToRow(position: Int32): Bool
    
    /**
    * @brief  goToPreviousRow(): boolean
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func goToPreviousRow(): Bool
    
    /**
    * @brief  goToLastRow(): boolean
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func goToLastRow(): Bool
    
    /**
    * @brief  getColumnName(columnIndex: number): string
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getColumnName(columnIndex: Int32): String
    
    /**
    * @brief  isColumnNull(columnIndex: number): boolean
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func isColumnNull(columnIndex: Int32): Bool
    
    /**
    * @brief  getAsset(columnIndex: number): Asset
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getAsset(columnIndex: Int32): Asset
    
    /**
    * @brief  close(): void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func close(): Unit
    
    /**
    * @brief  getColumnIndex(columnName: string): number
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getColumnIndex(columnName: String): Int32
    
    /**
    * @brief  getString(columnIndex: number): string
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getString(columnIndex: Int32): String
    
    /**
    * @brief  goToFirstRow(): boolean
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func goToFirstRow(): Bool
    
    /**
    * @brief  getAssets(columnIndex: number): Assets
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getAssets(columnIndex: Int32): Array<Asset>
    
    /**
    * @brief  getLong(columnIndex: number): number
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getLong(columnIndex: Int32): Int64
    
    /**
    * @brief  goToNextRow(): boolean
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func goToNextRow(): Bool
    
    /**
    * @brief  getBlob(columnIndex: number): Uint8Array
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getBlob(columnIndex: Int32): Array<UInt8>
    
    /**
    * @brief  goTo(offset:number): boolean
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func goTo(offset: Int32): Bool
    
    /**
    * @brief  getRow(): ValuesBucket
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getRow(): Map<String, ValueType>
}


