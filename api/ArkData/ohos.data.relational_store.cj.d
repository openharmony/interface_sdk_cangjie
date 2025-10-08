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

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package ohos.data.relational_store
import ohos.labels.*
import ohos.ffi.*
import ohos.business_exception.{ BusinessException, ERR_PARAMETER_ERROR}

import std.collection.*
import std.sync.*
import ohos.callback_invoke.{Callback0Argument, CallbackObject}
import ohos.app.ability.ui_ability.{UIAbilityContext, getStageContext}
import ohos.business_exception.BusinessException
import ohos.hilog.*
import ohos.business_exception.{ BusinessException, UNIVERSAL_ERROR_MAP, getUniversalErrorMsg}

/**
* Manages relational database configurations.
*
* @relation class RdbPredicates
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public class RdbPredicates <: RemoteDataLite {
    /**
    * A parameterized constructor used to create a RdbPredicates instance.
    *
    * @relation constructor(name: string);
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public init(name: String)
    
    /**
    * Specifies all remote devices which connect to local device when syncing distributed database.
    * When query database, this function should not be called.
    *
    * @relation inAllDevices(): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func inAllDevices(): RdbPredicates
    
    /**
    * Adds a left parenthesis to the RdbPredicates.
    * This method is similar to ( of the SQL statement and needs to be used together with endWrap().
    *
    * @relation beginWrap(): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func beginWrap(): RdbPredicates
    
    /**
    * Adds a right parenthesis to the RdbPredicates.
    * This method is similar to ) of the SQL statement and needs to be used together with beginWrap().
    *
    * @relation endWrap(): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func endWrap(): RdbPredicates
    
    /**
    * Adds an or condition to the RdbPredicates.
    * This method is similar to or of the SQL statement.
    *
    * @relation or(): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func or(): RdbPredicates
    
    /**
    * Adds an and condition to the RdbPredicates.
    * This method is similar to and of the SQL statement.
    *
    * @relation and(): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func and(): RdbPredicates
    
    /**
    * Configure the RdbPredicates to match the field whose data type is string and value
    * contains a specified value.
    * This method is similar to contains of the SQL statement.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation contains(field: string, value: string): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func contains(field: String, value: String): RdbPredicates
    
    /**
    * Configure the RdbPredicates to match the field whose data type is string and value starts
    * with a specified string.
    * This method is similar to value% of the SQL statement.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation beginsWith(field: string, value: string): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func beginsWith(field: String, value: String): RdbPredicates
    
    /**
    * Configure the RdbPredicates to match the field whose data type is string and value
    * ends with a specified string.
    * This method is similar to %value of the SQL statement.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation endsWith(field: string, value: string): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func endsWith(field: String, value: String): RdbPredicates
    
    /**
    * Configure the RdbPredicates to match the fields whose value is null.
    * This method is similar to is null of the SQL statement.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation isNull(field: string): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func isNull(field: String): RdbPredicates
    
    /**
    * Configure the RdbPredicates to match the specified fields whose value is not null.
    * This method is similar to is not null of the SQL statement.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation isNotNull(field: string): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func isNotNull(field: String): RdbPredicates
    
    /**
    * Configure the RdbPredicates to match the fields whose data type is string and value is
    * similar to a specified string.
    * This method is similar to like of the SQL statement.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation like(field: string, value: string): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func like(field: String, value: String): RdbPredicates
    
    /**
    * Configure RdbPredicates to match the specified field whose data type is string and the value contains
    * a wildcard.
    * Different from like, the input parameters of this method are case-sensitive.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation glob(field: string, value: string): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func glob(field: String, value: String): RdbPredicates
    
    /**
    * Restricts the ascending order of the return list. When there are several orders,
    * the one close to the head has the highest priority.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation orderByAsc(field: string): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func orderByAsc(field: String): RdbPredicates
    
    /**
    * Restricts the descending order of the return list. When there are several orders,
    * the one close to the head has the highest priority.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation orderByDesc(field: string): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func orderByDesc(field: String): RdbPredicates
    
    /**
    * Restricts each row of the query result to be unique.
    *
    * @relation distinct(): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func distinct(): RdbPredicates
    
    /**
    * Restricts the max number of return records.
    *
    * @returns { RdbPredicates } - The SQL query statement with the specified {@link RdbPredicates}.
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation limitAs(value: number): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func limitAs(value: Int32): RdbPredicates
    
    /**
    * Configure RdbPredicates to specify the start position of the returned result.
    * Use this method together with limit(number).
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation offsetAs(rowOffset: number): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func offsetAs(rowOffset: Int32): RdbPredicates
    
    /**
    * Configure RdbPredicates to group query results by specified columns.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation groupBy(fields: Array<string>): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func groupBy(fields: Array<String>): RdbPredicates
    
    /**
    * Restricts the value of the field to be smaller than or equal to the specified value.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation lessThanOrEqualTo(field: string, value: ValueType): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func lessThanOrEqualTo(field: String, value: ValueType): RdbPredicates
    
    /**
    * Configure the RdbPredicates to match the field whose data type is ValueType and value is equal
    * to a specified value.
    * This method is similar to = of the SQL statement.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation equalTo(field: string, value: ValueType): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func equalTo(field: String, value: ValueType): RdbPredicates
    
    /**
    * Restricts the value of the field to be greater than or equal to the specified value.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation greaterThanOrEqualTo(field: string, value: ValueType): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func greaterThanOrEqualTo(field: String, value: ValueType): RdbPredicates
    
    /**
    * Restricts the value of the field to be greater than the specified value.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation greaterThan(field: string, value: ValueType): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func greaterThan(field: String, value: ValueType): RdbPredicates
    
    /**
    * Restricts the value of the field to be smaller than the specified value.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation lessThan(field: string, value: ValueType): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func lessThan(field: String, value: ValueType): RdbPredicates
    
    /**
    * Configure the RdbPredicates to match the field whose data type is ValueType and value is not equal to
    * a specified value.
    * This method is similar to != of the SQL statement.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation notEqualTo(field: string, value: ValueType): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func notEqualTo(field: String, value: ValueType): RdbPredicates
    
    /**
    * Configure RdbPredicates to match the specified field whose value is out of a given range.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation notBetween(field: string, low: ValueType, high: ValueType): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func notBetween(field: String, low: ValueType, high: ValueType): RdbPredicates
    
    /**
    * Configure RdbPredicates to match the specified field whose value is within a given range.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation between(field: string, low: ValueType, high: ValueType): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func between(field: String, low: ValueType, high: ValueType): RdbPredicates
    
    /**
    * Configure RdbPredicates to match the specified field whose data type is ValueType array and values
    * are within a given range.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation in(field: string, value: Array<ValueType>): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func `in`(field: String, value: Array<ValueType>): RdbPredicates
    
    /**
    * Configure RdbPredicates to match the specified field whose data type is ValueType array and values
    * are out of a given range.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @relation notIn(field: string, value: Array<ValueType>): RdbPredicates
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func notIn(field: String, value: Array<ValueType>): RdbPredicates
}


/**
* Provides methods for managing the relational database (RDB).
* This class provides methods for creating, querying, updating, and deleting RDBs.
*
* @relation interface RdbStore
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public class RdbStore <: RemoteDataLite {
    /**
    * Queries data in the database based on specified conditions.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800015 - The database does not respond.
    * @relation query(predicates: RdbPredicates, columns?: Array<string>): Promise<ResultSet>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func query(predicates: RdbPredicates, columns!: Array<String> = []): ResultSet
    
    /**
    * Deletes data from the database based on a specified instance object of RdbPredicates.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800015 - The database does not respond.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @throws { BusinessException  } 14800047 - The WAL file size exceeds the default limit.
    * @relation delete(predicates: RdbPredicates): Promise<number>;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func delete(predicates: RdbPredicates): Int64
    
    /**
    * Backs up a database in a specified name.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800015 - The database does not respond.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @relation backup(destName: string): Promise<void>;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func backup(destName: String): Unit
    
    /**
    * Restores a database from a specified database file.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800015 - The database does not respond.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @relation restore(srcName: string): Promise<void>;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func restore(srcName: String): Unit
    
    /**
    * Commit the the sql you have executed.
    *
    * @throws { BusinessException  } 401 - Parameter error. The store must not be nullptr.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800015 - The database does not respond.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @relation commit():void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func commit(): Unit
    
    /**
    * Roll back the sql you have already executed.
    *
    * @throws { BusinessException  } 401 - Parameter error. The store must not be nullptr.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800015 - The database does not respond.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @relation rollBack():void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func rollBack(): Unit
    
    /**
    * BeginTransaction before execute your sql.
    *
    * @throws { BusinessException  } 401 - Parameter error. The store must not be nullptr.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800015 - The database does not respond.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @throws { BusinessException  } 14800047 - The WAL file size exceeds the default limit.
    * @relation beginTransaction():void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func beginTransaction(): Unit
    
    /**
    * Inserts a row of data into the target table.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800015 - The database does not respond.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @throws { BusinessException  } 14800047 - The WAL file size exceeds the default limit.
    * @relation insertSync(table: string, values: ValuesBucket, conflict?: ConflictResolution): number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func insert(table: String, values: ValuesBucket,
        conflict!: ConflictResolution = ConflictResolution.OnConflictNone): Int64
    
    /**
    * Updates data in the database based on a specified instance object of RdbPredicates.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800015 - The database does not respond.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @throws { BusinessException  } 14800047 - The WAL file size exceeds the default limit.
    * @relation updateSync(values: ValuesBucket, predicates: RdbPredicates, conflict?: ConflictResolution): number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func update(values: ValuesBucket, predicates: RdbPredicates,
        conflict!: ConflictResolution = ConflictResolution.OnConflictNone): Int64
    
    /**
    * Inserts a batch of data into the target table.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800047 - The WAL file size exceeds the default limit.
    * @relation batchInsert(table: string, values: Array<ValuesBucket>):Promise<number>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func batchInsert(table: String, values: Array<ValuesBucket>): Int64
    
    /**
    * Queries data in the database based on SQL statement.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800015 - The database does not respond.
    * @relation querySql(sql: string, bindArgs?: Array<ValueType>):Promise<ResultSet>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func querySql(sql: String, bindArgs!: Array<ValueType> = []): ResultSet
    
    /**
    * Executes a SQL statement that contains specified parameters but returns no value.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 801 - Capability not supported the sql(attach,begin,commit,rollback etc.).
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800015 - The database does not respond.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @throws { BusinessException  } 14800047 - The WAL file size exceeds the default limit.
    * @relation executeSql(sql: string, bindArgs?: Array<ValueType>): Promise<void>;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func executeSql(sql: String, bindArgs!: Array<ValueType> = []): Unit
    
    /**
    * Registers an observer for the database.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 801 - Capability not supported.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800050 - Failed to obtain the subscription service.
    * @relation on(event: string, interProcess: boolean, observer: Callback<void>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func on(event: String, interProcess: Bool, observer: Callback0Argument): Unit
    
    /**
    * Remove specified observer of specified type from the database.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 801 - Capability not supported.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800050 - Failed to obtain the subscription service.
    * @relation off(event: string, interProcess: boolean, observer?: Callback<void>): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func off(event: String, interProcess: Bool, observer!: ?Callback0Argument = None): Unit
    
    /**
    * Notifies the registered observers of a change to the data resource specified by Uri.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 801 - Capability not supported.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800050 - Failed to obtain the subscription service.
    * @relation emit(event: string): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func emit(event: String): Unit
}


/**
* Obtains a RDB store.
* You can set parameters of the RDB store as required. In general, this method is recommended
* to obtain a rdb store.
*
* @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
* <br>2. Incorrect parameter types; 3. Parameter verification failed. 
* @throws { BusinessException  } 14800000 - Inner error.
* @throws { BusinessException  } 14800010 - Failed to open or delete the database by an invalid database path.
* @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
* @throws { BusinessException  } 14801001 - The operation is supported in the stage model only.
* @throws { BusinessException  } 14801002 - Invalid data group ID.
* @throws { BusinessException  } 14800017 - StoreConfig is changed.
* @throws { BusinessException  } 14800020 - The secret key is corrupted or lost.
* @throws { BusinessException  } 14800021 - SQLite: Generic error.
* Possible causes: Insert failed or the updated data does not exist.
* @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
* @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
* @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
* @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
* @throws { BusinessException  } 14800029 - SQLite: The database is full.
* @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
* @throws { IllegalArgumentException } - The context is invalid.
*
* @relation function getRdbStore(context: Context, config: StoreConfig): Promise<RdbStore>;
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public func getRdbStore(context: UIAbilityContext, config: StoreConfig): RdbStore


/**
* Deletes the database with a specified store config.
* When specify custom directory, this function should be called.
*
* @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
* <br>2. Incorrect parameter types.
* @throws { BusinessException  } 14800000 - Inner error.
* @throws { BusinessException  } 14800010 - Failed to open or delete the database by an invalid database path.
* @throws { IllegalArgumentException } - The context is invalid.
*
* @relation function deleteRdbStore(context: Context, name: string): Promise<void>;
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public func deleteRdbStore(context: UIAbilityContext, name: String): Unit


/**
* Deletes the database with a specified store config.
* When specify custom directory, this function should be called.
*
* @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
* <br>2. Incorrect parameter types.
* @throws { BusinessException  } 14800000 - Inner error.
* @throws { BusinessException  } 14800010 - Failed to open or delete the database by an invalid database path.
* @throws { BusinessException  } 14801001 - The operation is supported in the stage model only.
* @throws { BusinessException  } 14801002 - Invalid data group ID.
* @throws { IllegalArgumentException } - The context is invalid.
*
* @relation function deleteRdbStore(context: Context, config: StoreConfig): Promise<void>;
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public func deleteRdbStore(context: UIAbilityContext, config: StoreConfig): Unit


public type Assets = Array<Asset>

public type ValuesBucket = Map<String, ValueType>

/**
* Specifies the cryptographic parameters used when opening an encrypted database.
* @relation interface CryptoParam
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public class CryptoParam {
    /**
    * Specifies the key used when opening an encrypted database.
    * When finished passing the key to the database, its content should be set to all-zero.
    * @relation encryptionKey: Uint8Array;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var encryptionKey: Array<UInt8>
    
    /**
    * Specifies the number of KDF iterations used when opening an encrypted database.
    * Default number is 10000.
    * When the number is set to 0, use default iteration number and encryption algorithm.
    * @relation iterationCount?: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var iterationCount: Int32
    
    /**
    * Specifies the encryption algorithm when opening an encrypted database.
    * Default encryption algorithm is AES_256_GCM.
    * @relation encryptionAlgo?: EncryptionAlgo;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var encryptionAlgo: EncryptionAlgo
    
    /**
    * Specifies the HMAC algorithm when opening an encrypted database.
    * Default HMAC algorithm is SHA256.
    * @relation hmacAlgo?: HmacAlgo;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var hmacAlgo: HmacAlgo
    
    /**
    * Specifies the KDF algorithm when opening an encrypted database.
    * Default KDF SHA algorithm is the same as HMAC algorithm.
    * @relation kdfAlgo?: KdfAlgo;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var kdfAlgo: ?KdfAlgo
    
    /**
    * Specifies the page size used when opening an encrypted database.
    * Default crypto page size is 1024.
    * @relation cryptoPageSize?: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var cryptoPageSize: UInt32
    
    /**
    * CryptoParam constructor.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public init(encryptionKey: Array<UInt8>, iterationCount!: Int32 = 10000,
        encryptionAlgo!: EncryptionAlgo = EncryptionAlgo.Aes256Gcm,
        hmacAlgo!: HmacAlgo = HmacAlgo.Sha256, kdfAlgo!: ?KdfAlgo = None,
        cryptoPageSize!: UInt32 = 1024)
}


/**
* Enumerates the supported KDF algorithm when opening a database.
* @relation enum KdfAlgo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum KdfAlgo {
    /**
    * KDF_SHA1: PBKDF2_HMAC_SHA1 algorithm.
    * @relation KDF_SHA1 = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    KdfSha1 |
    /**
    * PBKDF2_HMAC_SHA256 algorithm.
    * @relation KDF_SHA256
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    KdfSha256 |
    /**
    * PBKDF2_HMAC_SHA512 algorithm.
    * @relation KDF_SHA512
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    KdfSha512 |
    ...
}


/**
* Enumerates the supported HMAC algorithm when opening a database.
* @relation enum HmacAlgo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum HmacAlgo {
    /**
    * HMAC_SHA1 algorithm.
    * @relation SHA1 = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Sha1 |
    /**
    * HMAC_SHA256 algorithm.
    * @relation SHA256
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Sha256 |
    /**
    * HMAC_SHA512 algorithm.
    * @relation SHA512
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Sha512 |
    ...
}


/**
* Enumerates the supported encryption algorithm when opening a database.
* @relation enum EncryptionAlgo
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum EncryptionAlgo {
    /**
    * Database is encrypted using AES_256_GCM.
    * @relation AES_256_GCM = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Aes256Gcm |
    /**
    * Database is encrypted using AES_256_CBC.
    * @relation AES_256_CBC
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Aes256Cbc |
    ...
}


/**
* Enumerates the supported tokenizer when opening a database.
* @relation enum Tokenizer
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum Tokenizer {
    /**
    * not use tokenizer.
    * @relation NONE_TOKENIZER = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    NoneTokenizer |
    /**
    * native icu tokenizer.
    * @relation ICU_TOKENIZER
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    IcuTokenizer |
    /**
    * self-developed enhance tokenizer.
    * @relation CUSTOM_TOKENIZER
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    CustomTokenizer |
    ...
}


/**
* Describes the {@code RdbStore} type.
*
* @relation enum SecurityLevel
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum SecurityLevel {
    /**
    * S1: means the db is low level security
    * There are some low impact, when the data is leaked.
    *
    * @relation S1 = 1,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    S1 |
    /**
    * S2: means the db is middle level security
    * There are some major impact, when the data is leaked.
    *
    * @relation S2 = 2,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    S2 |
    /**
    * S3: means the db is high level security
    * There are some severity impact, when the data is leaked.
    *
    * @relation S3 = 3,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    S3 |
    /**
    * S4: means the db is critical level security
    * There are some critical impact, when the data is leaked.
    *
    * @relation S4 = 4
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    S4 |
    ...
}


/**
* Describes the change type.
*
* @relation enum ChangeType
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum ChangeType {
    /**
    * Means the change type is data change.
    *
    * @relation DATA_CHANGE,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    DataChange |
    /**
    * Means the change type is asset change.
    *
    * @relation ASSET_CHANGE
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetChange |
    ...
}


/**
* Manages relational database configurations.
*
* @relation interface StoreConfig
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public class StoreConfig {
    /**
    * The database name.
    * @relation name: string;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var name: String
    
    /**
    * Specifies the security level of the database.
    * @relation securityLevel: SecurityLevel;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var securityLevel: SecurityLevel
    
    /**
    * Specifies whether the database is encrypted.
    * @relation encrypt?: boolean;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var encrypt: Bool
    
    /**
    * The data group id of application.
    * @relation dataGroupId?: string;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var dataGroupId: String
    
    /**
    * Specifies the directory relative to the database directory obtained from context.
    * @relation customDir?: string;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var customDir: String
    
    /**
    * Specifies the root directory relative to the database
    * @relation rootDir?: string;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var rootDir: String
    
    /**
    * Specifies whether to clean up dirty data that is synchronized to
    * the local but deleted in the cloud.
    * @relation autoCleanDirtyData?: boolean;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    public var autoCleanDirtyData: Bool
    
    /**
    * Specifies whether database allows rebuild.
    * @relation allowRebuild?: boolean;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var allowRebuild: Bool
    
    /**
    * Specifies whether the database opened is read-only.
    * If isReadOnly is true, other configuration items will become invalid.
    * @relation isReadOnly?: boolean;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var isReadOnly: Bool
    
    /**
    * Indicates the names of the shared library containing fts etc.
    * @relation pluginLibs?: Array<string>;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var pluginLibs: Array<String>
    
    /**
    * Specifies the cryptographic parameters used when opening an encrypted database.
    * @relation cryptoParam?: CryptoParam;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var cryptoParam: CryptoParam
    
    /**
    * Specifies whether the vector type is supported.
    * @relation vector?: boolean;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var vector: Bool
    
    /**
    * Specifies the tokenizer type when using fts capability.
    * @relation tokenizer?: Tokenizer;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var tokenizer: Tokenizer
    
    /**
    * Specifies whether the database need persistence.
    * @relation persist?: boolean;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var persist: Bool
    
    /**
    * Specifies whether the database enable the capabilities for semantic indexing processing.
    * @relation enableSemanticIndex?: boolean;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var enableSemanticIndex: Bool
    
    /**
    * StoreConfig constructor.
    * 
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public init(securityLevel: SecurityLevel, name!: String = "",
        encrypt!: Bool = false, dataGroupId!: String = "",
        customDir!: String = "", rootDir!: String = "",
        autoCleanDirtyData!: Bool = true, allowRebuild!: Bool = false,
        isReadOnly!: Bool = false, pluginLibs!: Array<String> = Array<String>(),
        cryptoParam!: CryptoParam = CryptoParam(), vector!: Bool = false,
        tokenizer!: Tokenizer = Tokenizer.NoneTokenizer, persist!: Bool = true,
        enableSemanticIndex!: Bool = false)
}


/**
* Describes the status of asset
*
* @relation enum AssetStatus
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum AssetStatus {
    /**
    * ASSET_NORMAL: means the status of asset is normal.
    *
    * @relation ASSET_NORMAL,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetNormal |
    /**
    * ASSET_INSERT: means the asset needs to be inserted.
    *
    * @relation ASSET_INSERT,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetInsert |
    /**
    * ASSET_UPDATE: means the asset needs to be updated.
    *
    * @relation ASSET_UPDATE,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetUpdate |
    /**
    * ASSET_DELETE: means the asset needs to be deleted.
    *
    * @relation ASSET_DELETE,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetDelete |
    /**
    * ASSET_ABNORMAL: means the status of asset is abnormal.
    *
    * @relation ASSET_ABNORMAL,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetAbnormal |
    /**
    * ASSET_DOWNLOADING: means the status of asset is downloading.
    *
    * @relation ASSET_DOWNLOADING
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetDownloading |
    ...
}


/**
* Enumerates the field.
*
* @relation enum Field
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
]
public enum Field {
    /**
    * Cursor field.
    *
    * @relation CURSOR_FIELD = '#_cursor',
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    CursorField |
    /**
    * Origin field. For details, see {@link Origin}.
    *
    * @relation ORIGIN_FIELD = '#_origin',
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    OriginField |
    /**
    * Deleted flag field.
    * Indicates whether data has deleted in cloud.
    *
    * @relation DELETED_FLAG_FIELD = '#_deleted_flag',
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    DeletedFlagField |
    /**
    * Owner field.
    *
    * @relation OWNER_FIELD = '#_cloud_owner',
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    OwnerField |
    /**
    * Privilege field.
    *
    * @relation PRIVILEGE_FIELD = '#_cloud_privilege',
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    PrivilegeField |
    /**
    * Sharing resource field.
    *
    * @relation SHARING_RESOURCE_FIELD = '#_sharing_resource_field'
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    SharingResourceField |
    ...
}


/**
* Describes the conflict resolutions to insert data into the table.
*
* @relation enum ConflictResolution
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum ConflictResolution {
    /**
    * Implements no action when conflict occurs.
    *
    * @relation ON_CONFLICT_NONE = 0,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    OnConflictNone |
    /**
    * Implements rollback operation when conflict occurs.
    *
    * @relation ON_CONFLICT_ROLLBACK = 1,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    OnConflictRollback |
    /**
    * Implements abort operation when conflict occurs.
    *
    * @relation ON_CONFLICT_ABORT = 2,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    OnConflictAbort |
    /**
    * Implements fail operation when conflict occurs.
    *
    * @relation ON_CONFLICT_FAIL = 3,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    OnConflictFail |
    /**
    * Implements ignore operation when conflict occurs.
    *
    * @relation ON_CONFLICT_IGNORE = 4,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    OnConflictIgnore |
    /**
    * Implements replace operation operator when conflict occurs.
    *
    * @relation ON_CONFLICT_REPLACE = 5
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    OnConflictReplace |
    ...
}


/**
* Records information of the asset.
*
* @relation interface Asset
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public class Asset {
    /**
    * The name of asset.
    *
    * @relation name: string;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var name: String
    
    /**
    * The uri of asset.
    *
    * @relation uri: string;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var uri: String
    
    /**
    * The path of asset.
    *
    * @relation path: string;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var path: String
    
    /**
    * The create time of asset.
    *
    * @relation createTime: string;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var createTime: String
    
    /**
    * The modify time of asset.
    *
    * @relation modifyTime: string;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var modifyTime: String
    
    /**
    * The size of asset.
    *
    * @relation size: string;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var size: String
    
    /**
    * The status of asset.
    *
    * @relation status?: AssetStatus;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var status: AssetStatus
    
    /**
    * Asset constructor.
    * 
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public init(name: String, uri: String, path: String, createTime: String, modifyTime: String, size: String,
        status!: AssetStatus = AssetStatus.AssetNormal)
}


/**
* Indicates possible value types.
*
* @relation type ValueType = null | number | string | boolean | Uint8Array | Asset | Assets | Float32Array | bigint;
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum ValueType {
    /**
    * Indicates null.
    * 
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Null |
    /**
    * Indicates Int64.
    * 
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Integer(Int64) |
    /**
    * Indicates Float64.
    * 
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Double(Float64) |
    /**
    * Indicates String.
    * 
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    StringValue(String) |
    /**
    * Indicates Bool.
    * 
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Boolean(Bool) |
    /**
    * Indicates Array<UInt8>.
    * 
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Uint8Array(Array<UInt8>) |
    /**
    * Indicates Asset.
    * 
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetEnum(Asset) |
    /**
    * Indicates Array<Asset>.
    * 
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetsEnum(Array<Asset>) |
    ...
}


/**
* Describes the distribution type of the tables.
*
* @relation enum DistributedType
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum DistributedType {
    /**
    * Indicates the table is distributed among the devices.
    *
    * @relation DISTRIBUTED_DEVICE,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    DistributedDevice |
    /**
    * Indicates the table is distributed between the cloud and the devices.
    *
    * @relation DISTRIBUTED_CLOUD
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    DistributedCloud |
    ...
}


/**
* Indicates the database synchronization mode.
*
* @relation enum SyncMode
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum SyncMode {
    /**
    * Indicates the data is pushed to remote device from local device.
    *
    * @relation SYNC_MODE_PUSH = 0,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SyncModePush |
    /**
    * Indicates the data is pulled from remote device to local device.
    *
    * @relation SYNC_MODE_PULL = 1,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SyncModePull |
    /**
    * Indicates the data is pulled from remote device to local device.
    *
    * @relation SYNC_MODE_TIME_FIRST,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    SyncModeTimeFirst |
    /**
    * Indicates force push the native data to the cloud.
    *
    * @relation SYNC_MODE_NATIVE_FIRST,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    SyncModeNativeFirst |
    /**
    * Indicates the data is pulled from cloud to local device.
    *
    * @relation SYNC_MODE_CLOUD_FIRST
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    SyncModeCloudFirst |
    ...
}


/**
* The cloud sync progress.
*
* @relation enum Progress
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum Progress {
    /**
    * ISYNC_BEGIN: means the sync process begin.
    *
    * @relation SYNC_BEGIN,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SyncBegin |
    /**
    * SYNC_BEGIN: means the sync process is in progress.
    *
    * @relation SYNC_IN_PROGRESS,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SyncInProgress |
    /**
    * SYNC_BEGIN: means the sync process is finished.
    *
    * @relation SYNC_FINISH
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SyncFinish |
    ...
}


/**
* Describes the subscription type.
*
* @relation enum SubscribeType
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum SubscribeType {
    /**
    * Subscription to remote data changes.
    *
    * @relation SUBSCRIBE_TYPE_REMOTE = 0,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SubscribeTypeRemote |
    /**
    * Subscription to cloud data changes.
    *
    * @relation SUBSCRIBE_TYPE_CLOUD,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    SubscribeTypeCloud |
    /**
    * Subscription to cloud data changes details.
    *
    * @relation SUBSCRIBE_TYPE_CLOUD_DETAILS,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    SubscribeTypeCloudDetails |
    ...
}


/**
* Describes the data origin sources.
*
* @relation enum Origin
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
]
public enum Origin {
    /**
    * Indicates the data source is local.
    *
    * @relation LOCAL,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    Local |
    /**
    * Indicates the data source is cloud.
    *
    * @relation CLOUD,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    Cloud |
    /**
    * Indicates the data source is remote.
    *
    * @relation REMOTE,
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    Remote |
    ...
}



/**
* Provides methods for accessing a database result set generated by querying the database.
*
* @relation interface ResultSet
*/
@!APILevel[
    22,
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public class ResultSet <: RemoteDataLite {
    /**
    * Obtains the names of all columns in a result set.
    * The column names are returned as a string array, in which the strings are in the same order
    * as the columns in the result set.
    *
    * @relation columnNames: Array<string>;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop columnNames: Array<String>
    
    /**
    * Obtains the number of columns in the result set.
    * The returned number is equal to the length of the string array returned by the
    * columnNames method.
    *
    * @relation columnCount: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop columnCount: Int32
    
    /**
    * Obtains the number of rows in the result set.
    *
    * @relation rowCount: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop rowCount: Int32
    
    /**
    * Obtains the current index of the result set.
    * The result set index starts from 0.
    *
    * @relation rowIndex: number;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop rowIndex: Int32
    
    /**
    * Checks whether the cursor is positioned at the first row.
    *
    * @relation isAtFirstRow: boolean;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop isAtFirstRow: Bool
    
    /**
    * Checks whether the cursor is positioned at the last row.
    *
    * @relation isAtLastRow: boolean;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop isAtLastRow: Bool
    
    /**
    * Checks whether the cursor is positioned after the last row.
    *
    * @relation isEnded: boolean;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop isEnded: Bool
    
    /**
    * Checks whether the cursor is positioned before the first row.
    *
    * @relation isStarted: boolean;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop isStarted: Bool
    
    /**
    * Checks whether the current result set is closed.
    * If the result set is closed by calling the close method, true will be returned.
    *
    * @relation isClosed: boolean;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop isClosed: Bool
    
    /**
    * Obtains the value of the specified column in the current row as double.
    * The implementation class determines whether to throw an exception if the value of the specified column
    * in the current row is null, the specified column is not of the double type.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
    * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @relation getDouble(columnIndex: number): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getDouble(columnIndex: Int32): Float64
    
    /**
    * Go to the specified row of the result set.
    *
    * @relation goToRow(position: number): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func goToRow(position: Int32): Bool
    
    /**
    * Go to the previous row of the result set.
    *
    * @relation goToPreviousRow(): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func goToPreviousRow(): Bool
    
    /**
    * Go to the last row of the result set.
    *
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800019 - The SQL must be a query statement.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @relation goToLastRow(): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func goToLastRow(): Bool
    
    /**
    * Obtains the column name based on the specified column index.
    * The column index is passed as an input parameter.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800019 - The SQL must be a query statement.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @relation getColumnName(columnIndex: number): string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getColumnName(columnIndex: Int32): String
    
    /**
    * Checks whether the value of the specified column in the current row is null.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
    * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @relation isColumnNull(columnIndex: number): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func isColumnNull(columnIndex: Int32): Bool
    
    /**
    * Obtains the value of the specified column in the current row as an asset.
    * The implementation class determines whether to throw an exception if the value of the specified column
    * in the current row is null or the specified column is not of the Asset type.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
    * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @relation getAsset(columnIndex: number): Asset
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getAsset(columnIndex: Int32): Asset
    
    /**
    * Closes the result set.
    * Calling this method on the result set will release all of its resources and makes it ineffective.
    *
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
    * @relation close(): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func close(): Unit
    
    /**
    * Obtains the column index based on the specified column name.
    * The column name is passed as an input parameter.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800019 - The SQL must be a query statement.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @relation getColumnIndex(columnName: string): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getColumnIndex(columnName: String): Int32
    
    /**
    * Obtains the value of the specified column in the current row as string.
    * The implementation class determines whether to throw an exception if the value of the specified column
    * in the current row is null or the specified column is not of the string type.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
    * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @relation getString(columnIndex: number): string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getString(columnIndex: Int32): String
    
    /**
    * Go to the first row of the result set.
    *
    * @relation goToFirstRow(): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func goToFirstRow(): Bool
    
    /**
    * Obtains the value of the specified column in the current row as assets.
    * The implementation class determines whether to throw an exception if the value of the specified column
    * in the current row is null or the specified column is not of the Assets type.
    *
    * @returns { Assets } The value of the specified column as assets.
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
    * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @relation getAssets(columnIndex: number): Assets
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getAssets(columnIndex: Int32): Assets
    
    /**
    * Obtains the value of the specified column in the current row as long.
    * The implementation class determines whether to throw an exception if the value of the specified column
    * in the current row is null, the specified column is not of the integer type.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
    * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @relation getLong(columnIndex: number): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getLong(columnIndex: Int32): Int64
    
    /**
    * Go to the next row of the result set.
    *
    * @relation goToNextRow(): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func goToNextRow(): Bool
    
    /**
    * Obtains the value of the specified column in the current row as a byte array.
    * The implementation class determines whether to throw an exception if the value of the specified column
    * in the current row is null or the specified column is not of the Blob type.
    *
    * @throws { BusinessException  } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified;
    * <br>2. Incorrect parameter types.
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
    * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @relation getBlob(columnIndex: number): Uint8Array
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getBlob(columnIndex: Int32): Array<UInt8>
    
    /**
    * Go to the specified row of the result set forwards or backwards by an offset relative to its current position.
    * A positive offset indicates moving backwards, and a negative offset indicates moving forwards.
    *
    * @relation goTo(offset: number): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func goTo(offset: Int32): Bool
    
    /**
    * Obtains the values of all columns in the specified row.
    * Inserting an empty blob, after API14 and API14, the obtained value is an empty blob; Before API 14,
    * the obtained value was null.
    *
    * @throws { BusinessException  } 14800000 - Inner error.
    * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
    * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
    * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
    * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
    * @throws { BusinessException  } 14800021 - SQLite: Generic error.
    * Possible causes: Insert failed or the updated data does not exist.
    * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
    * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
    * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
    * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
    * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
    * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
    * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
    * @throws { BusinessException  } 14800029 - SQLite: The database is full.
    * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
    * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
    * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
    * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
    * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
    * @relation getRow(): ValuesBucket
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func getRow(): ValuesBucket
}


