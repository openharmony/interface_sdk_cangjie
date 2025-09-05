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

package ohos.data.distributed_kv_store
import ohos.labels.*
import ohos.ffi.*
import std.collection.*
import ohos.business_exception.BusinessException

import ohos.app.ability.ui_ability.{UIAbilityContext, getStageContext}
import ohos.hilog.*
import std.sync.*
import ohos.callback_invoke.CallbackObject
import ohos.app.ability.BaseContext
import ohos.business_exception.getUniversalErrorMsg

/**
* Provides methods related to device-collaboration distributed databases.
* <p>To create a {@code DeviceKVStore} database, you can use the
* {@link data.distributed.common.KVManager.getKVStore(Options, String)}
* method with {@code KVStoreType} set to {@code DeviceCollaboration} for the input parameter Options.
* This database manages distributed
* data by device, and cannot modify data synchronized from remote devices. When an application writes a
* key-value pair entry
* into the database, the system automatically adds the ID of the device running the application to the key.
*
* @relation interface DeviceKVStore extends SingleKVStore
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
]
public class DeviceKVStore <: SingleKVStore {
    /**
    * Obtains the value matching the local device ID and specified key.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Incorrect parameters types;
    * <br>3.Parameter verification failed.
    * @throws { BusinessException } 15100003 - Database corrupted.
    * @throws { BusinessException } 15100004 - Not found.
    * @throws { BusinessException } 15100005 - Database or result set already closed.
    * @relation get(key: string): Promise<boolean | string | number | Uint8Array>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func get(key: String): ValueType
    
    /**
    * Obtains all key-value pairs that match the local device ID and specified key prefix.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Incorrect parameters types.
    * @throws { BusinessException } 15100003 - Database corrupted.
    * @throws { BusinessException } 15100005 - Database or result set already closed.
    * @relation getEntries(keyPrefix: string): Promise<Entry[]>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getEntries(keyPrefix: String): Array<Entry>
    
    /**
    * Obtains the list of key-value pairs matching the local device ID and specified {@code Query} object.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Incorrect parameters types.
    * @throws { BusinessException } 15100003 - Database corrupted.
    * @throws { BusinessException } 15100005 - Database or result set already closed.
    * @relation getEntries(query: Query): Promise<Entry[]>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getEntries(query: Query): Array<Entry>
    
    /**
    * Obtains the result set with the local device ID and specified prefix from a {@code DeviceKVStore} database.
    * The {@code KVStoreResultSet} object can be used to query all key-value pairs that meet the search criteria.
    * Each {@code DeviceKVStore} instance can have a maximum of four {@code KVStoreResultSet} objects at the
    * same time.
    * If you have created four objects, calling this method will return a failure. Therefore, you are advised to
    * call the closeResultSet method to close unnecessary {@code KVStoreResultSet} objects in a timely manner.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Incorrect parameters types.
    * @throws { BusinessException } 15100001 - Over max limits.
    * @throws { BusinessException } 15100003 - Database corrupted.
    * @throws { BusinessException } 15100005 - Database or result set already closed.
    * @relation getResultSet(keyPrefix: string): Promise<KVStoreResultSet>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getResultSet(keyPrefix: String): KVStoreResultSet
    
    /**
    * Obtains the {@code KVStoreResultSet} object matching the local device ID and specified {@code Query} object.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Incorrect parameters types.
    * @throws { BusinessException } 15100001 - Over max limits.
    * @throws { BusinessException } 15100003 - Database corrupted.
    * @throws { BusinessException } 15100005 - Database or result set already closed.
    * @relation getResultSet(query: Query): Promise<KVStoreResultSet>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getResultSet(query: Query): KVStoreResultSet
    
    /**
    * Obtains the number of results matching the local device ID and specified {@code Query} object.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Incorrect parameters types.
    * @throws { BusinessException } 15100003 - Database corrupted.
    * @throws { BusinessException } 15100005 - Database or result set already closed.
    * @relation getResultSize(query: Query): Promise<number>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getResultSize(query: Query): Int32
}



/**
* Provider interfaces to create a {@link KVManager} instance.
*
* @relation declare namespace distributedKVStore
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
]
public class DistributedKVStore {
    /**
    * Creates a {@link KVManager} instance based on the configuration information.
    * <p>You must pass {@link KVManagerConfig} to provide configuration information
    * to create a {@link KVManager} instance.
    *
    * @throws { IllegalArgumentException } - The context type is not supported. Only support UIAbilityContext.
    * @relation function createKVManager(config: KVManagerConfig): KVManager;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public static func createKVManager(config: KVManagerConfig): KVManager
}


/**
* Provides interfaces to manage a {@code SingleKVStore} database, including obtaining, closing, and deleting the
* {@code SingleKVStore}.
*
* @relation interface KVManager
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class KVManager <: RemoteDataLite {
    /**
    * Creates and obtains a KVStore database by specifying {@code Options} and {@code storeId}.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Incorrect parameters types;
    * <br>3.Parameter verification failed.
    * @throws { IllegalArgumentException } The type is not supported yet.
    * @throws { BusinessException } 15100002 - Open existed database with changed options.
    * @throws { BusinessException } 15100003 - Database corrupted.
    * @relation getKVStore<T>(storeId: string, options: Options): Promise<T>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getKVStore<T>(storeId: String, options: Options): T where T <: SingleKVStore
    
    /**
    * Closes the KVStore database.
    * <p>Warning: This method is not thread-safe. If you call this method to stop a KVStore database that is running,
    * your thread may crash.
    * <p>The KVStore database to close must be an object created by using the {@code getKVStore} method. Before using
    * this method, release the resources created for the database, for example, {@code KVStoreResultSet} for KVStore,
    * otherwise closing the database will fail.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Parameter verification failed.
    * @relation closeKVStore(appId: string, storeId: string): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func closeKVStore(appId: String, storeId: String): Unit
    
    /**
    * Deletes the KVStore database identified by storeId.
    * <p>Before using this method, close all KVStore instances in use that are identified by the same storeId.
    * <p>You can use this method to delete a KVStore database not in use. After the database is deleted, all its data
    * will be lost.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Parameter verification failed.
    * @throws { BusinessException } 15100004 - Not found.
    * @relation deleteKVStore(appId: string, storeId: string): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func deleteKVStore(appId: String, storeId: String): Unit
    
    /**
    * Obtains the storeId of all KVStore databases that are created by using the {@code getKVStore} method and not
    * deleted by calling the {@code deleteKVStore} method.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Parameter verification failed.
    * @relation getAllKVStoreId(appId: string): Promise<string[]>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getAllKVStoreId(appId: String): Array<String>
}


/**
* KVStore constants
* @relation interface Constants
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class Constants {
    /**
    * Max key length is 1024.
    * @relation readonly MAX_KEY_LENGTH: number;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public static let MAX_KEY_LENGTH: Int32 = 1024
    
    /**
    * Max value length is 4194303.
    * @relation readonly MAX_VALUE_LENGTH: number;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public static let MAX_VALUE_LENGTH: Int32 = 4194303
    
    /**
    * Max device coordinate key length is 896.
    * @relation readonly MAX_KEY_LENGTH_DEVICE: number;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public static let MAX_KEY_LENGTH_DEVICE: Int32 = 896
    
    /**
    * Max store id length is 128.
    * @relation readonly MAX_STORE_ID_LENGTH: number;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public static let MAX_STORE_ID_LENGTH: Int32 = 128
    
    /**
    * Max query length is 512000.
    * @relation readonly MAX_QUERY_LENGTH: number;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public static let MAX_QUERY_LENGTH: Int32 = 512000
    
    /**
    * Max batch operation size is 128.
    * @relation readonly MAX_BATCH_SIZE: number;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public static let MAX_BATCH_SIZE: Int32 = 128
}


/**
* Indicates the {@code ValueType}.
*
* @relation enum ValueType
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public enum ValueType {
    /**
    * Indicates that the value type is string.
    *
    * @relation STRING,
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    StringValue(String) |
    /**
    * Indicates that the value type is int.
    *
    * @relation INTEGER,
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    Integer(Int32) |
    /**
    * Indicates that the value type is float.
    *
    * @relation FLOAT,
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    Float(Float32) |
    /**
    * Indicates that the value type is byte array.
    *
    * @relation BYTE_ARRAY,
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    ByteArray(Array<Byte>) |
    /**
    * Indicates that the value type is boolean.
    *
    * @relation BOOLEAN,
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    Boolean(Bool) |
    /**
    * Indicates that the value type is double.
    *
    * @relation DOUBLE
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    Double(Float64) |
    ...
}


/**
* Provides configuration information to create a {@link KVManager} instance,
* which includes the caller's package name and ability or hap context.
*
* @relation interface KVManagerConfig
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class KVManagerConfig {
    /**
    * Indicates the ability or hap context
    *
    * @relation context: BaseContext
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var context: BaseContext
    
    /**
    * Indicates the bundleName
    *
    * @relation bundleName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var bundleName: String
    
    /**
    * KVManagerConfig constructor.
    *
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public init(context: BaseContext, bundleName: String)
}


/**
* Describes the KVStore security level.
*
* @relation enum SecurityLevel
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public enum SecurityLevel {
    /**
    * S1: means the db is in the low security level
    * There are some low impact when the data is leaked.
    *
    * @relation S1,
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    S1 |
    /**
    * S2: means the db is in the middle security level
    * There are some major impact when the data is leaked.
    *
    * @relation S2,
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    S2 |
    /**
    * S3: means the db is in the high security level
    * There are some severity impact when the data is leaked.
    *
    * @relation S3,
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    S3 |
    /**
    * S4: means the db is in the critical security level
    * There are some critical impact when the data is leaked.
    *
    * @relation S4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    S4 |
    ...
}


/**
* Represents a node of a {@link Schema} instance.
* <p>With a {@link Schema} instance, you can define the value fields which stored in the database.
* <p>A FieldNode of the {@link Schema} instance is either a leaf or a non-leaf node.
* <p>The leaf node must have a value; the non-leaf node must have a child {@code FieldNode}.
*
* @relation class FieldNode
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
]
public class FieldNode {
    /**
    * Indicates the nullable of database field.
    *
    * @relation nullable: boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var nullable: Bool
    
    /**
    * Indicates the default value of field node.
    *
    * @relation default: string;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var default: String
    
    /**
    * Indicates the type of value.
    *
    * @relation type: number;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var nodeType: Int32
    
    /**
    * FieldNode constructor.
    *
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public init(name: String, nullable: Bool, default: String, nodeType: Int32)
}


/**
* Represents the database schema.
* You can set the schema object in options when create or open the database.
*
* @relation class Schema
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
]
public class Schema {
    /**
    * Indicates the root json object.
    *
    * @relation root: FieldNode;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var root: FieldNode
    
    /**
    * Indicates the string array of json.
    *
    * @relation indexes: Array<string>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var indexes: Array<String>
    
    /**
    * Indicates the mode of schema.
    *
    * @relation mode: number;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var mode: Int32
    
    /**
    * Indicates the skip size of schema.
    *
    * @relation skip: number;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var skip: Int32
    
    /**
    * Schema constructor.
    *
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public init(root: FieldNode, indexes: Array<String>, mode: Int32, skip: Int32)
}


/**
* Provides configuration options to create a {@code SingleKVStore} or {@code DeviceKVStore}.
*
* @relation interface Options
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class Options {
    /**
    * Indicates whether to create a database when the database file does not exist
    * @relation createIfMissing?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var createIfMissing: Bool
    
    /**
    * Indicates whether database files to be encrypted
    * @relation encrypt?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var encrypt: Bool
    
    /**
    * Indicates whether to back up database files
    * @relation backup?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var backup: Bool
    
    /**
    * Indicates whether database files are automatically synchronized
    * @relation autoSync?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        permission: "ohos.permission.DISTRIBUTED_DATASYNC",
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var autoSync: Bool
    
    /**
    * Indicates the database security level
    * @relation securityLevel: SecurityLevel
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var securityLevel: SecurityLevel
    
    /**
    * Indicates the database schema
    * @relation schema?: Schema
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.DistributedKVStore"
    ]
    public var schema: ?Schema
    
    /**
    * Options constructor.
    *
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public init(securityLevel: SecurityLevel, createIfMissing!: Bool = true, encrypt!: Bool = false,
        backup!: Bool = true, autoSync!: Bool = false, schema!: ?Schema = None)
}


/**
* Provides key-value pairs stored in the distributedKVStore.
*
* @relation interface Entry
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class Entry {
    /**
    * Indicates the key.
    *
    * @relation key: string;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var key: String
    
    /**
    * Indicates the value.
    *
    * @relation value: Value;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public var value: ValueType
    
    /**
    * Entry constructor.
    *
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public init(key: String, value: ValueType)
}


/**
* Provides methods to operate the result set of the {@code SingleKVStore} or {@code DeviceKVStore} database.
* <p>The result set is created by using the {@code getResultSet} method in the {@code SingleKVStore} or
* {@code DeviceKVStore} class. This interface also provides methods to move the data read
* position in the result set.
*
* @relation interface KVStoreResultSet
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class KVStoreResultSet <: RemoteDataLite {
    /**
    * Obtains the number of lines in a result set.
    *
    * @relation getCount(): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public func getCount(): Int32
}


/**
* Represents a database query using predicates.
* <p>This class provides a constructor used to create a {@code Query} instance, which is used to query data
* matching specified conditions in the database.
* <p>This class also provides methods to add predicates to the {@code Query} instance.
*
* @relation class Query
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public class Query <: RemoteDataLite {
    /**
    * A constructor used to create a Query instance.
    *
    * @relation constructor()
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public init()
}


/**
* Provides methods related to single-version distributed databases.
* <p>To create a {@code SingleKVStore} database,
* you can use the {@link data.distributed.common.KVManager#getKVStore​(Options, String)} method
* with {@code KVStoreType} set to {@code SingleVersion} for the input parameter {@code Options}.
* This database synchronizes data to other databases in time sequence.
* The {@code SingleKVStore} database does not support
* synchronous transactions, or data search using snapshots.
*
* @relation interface SingleKVStore
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
]
public open class SingleKVStore <: RemoteDataLite {
    /**
    * Writes a key-value pair of the string type into the {@code SingleKVStore} database.
    * <p>If you do not want to synchronize this key-value pair to other devices, set the write option in the local
    * database.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Incorrect parameters types;
    * <br>3.Parameter verification failed.
    * @throws { BusinessException } 15100003 - Database corrupted.
    * @throws { BusinessException } 15100005 - Database or result set already closed.
    * @throws { BusinessException } 14800047 - The WAL file size exceeds the default limit.
    * @relation put(key: string, value: Uint8Array | string | number | boolean): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func put(key: String, value: ValueType): Unit
    
    /**
    * Inserts key-value pairs into the {@code SingleKVStore} database in batches.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Incorrect parameters types.
    * @throws { BusinessException } 15100003 - Database corrupted.
    * @throws { BusinessException } 15100005 - Database or result set already closed.
    * @relation putBatch(entries: Entry[]): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func putBatch(entries: Array<Entry>): Unit
    
    /**
    * Deletes the key-value pair based on a specified key.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Incorrect parameters types;
    * <br>3.Parameter verification failed.
    * @throws { BusinessException } 15100003 - Database corrupted.
    * @throws { BusinessException } 15100005 - Database or result set already closed.
    * @throws { BusinessException } 14800047 - The WAL file size exceeds the default limit.
    * @relation delete(key: string): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func delete(key: String): Unit
    
    /**
    * Deletes key-value pairs in batches from the {@code SingleKVStore} database.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Incorrect parameters types;
    * <br>3.Parameter verification failed.
    * @throws { BusinessException } 15100003 - Database corrupted.
    * @throws { BusinessException } 15100005 - Database or result set already closed.
    * @throws { BusinessException } 14800047 - The WAL file size exceeds the default limit.
    * @relation deleteBatch(keys: string[]): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func deleteBatch(keys: Array<String>): Unit
    
    /**
    * Obtains the value of a specified key.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Incorrect parameters types;
    * <br>3.Parameter verification failed.
    * @throws { BusinessException } 15100003 - Database corrupted.
    * @throws { BusinessException } 15100004 - Not found.
    * @throws { BusinessException } 15100005 - Database or result set already closed.
    * @relation get(key: string): Promise<boolean | string | number | Uint8Array>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func get(key: String): ValueType
    
    /**
    * Backs up a database in the specified filename.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Parameter verification failed.
    * @throws { BusinessException } 15100005 - Database or result set already closed.
    * @relation backup(file:string): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func backup(file: String): Unit
    
    /**
    * Restores a database from a specified database file.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Parameter verification failed.
    * @throws { BusinessException } 15100005 - Database or result set already closed.
    * @relation restore(file:string): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func restore(file: String): Unit
    
    /**
    * Starts a transaction operation in the {@code SingleKVStore} database.
    * <p>After the database transaction is started, you can submit or roll back the operation.
    *
    * @throws { BusinessException } 15100005 - Database or result set already closed.
    * @relation startTransaction(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func startTransaction(): Unit
    
    /**
    * Submits a transaction operation in the {@code SingleKVStore} database.
    *
    * @throws { BusinessException } 15100005 - Database or result set already closed.
    * @relation commit(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func commit(): Unit
    
    /**
    * Rolls back a transaction operation in the {@code SingleKVStore} database.
    *
    * @throws { BusinessException } 15100005 - Database or result set already closed.
    * @relation rollback(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func rollback(): Unit
    
    /**
    * Sets whether to enable synchronization.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Incorrect parameters types.
    * @relation enableSync(enabled: boolean): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func enableSync(enabled: Bool): Unit
    
    /**
    * Sets synchronization range labels.
    * <p>The labels determine the devices with which data will be synchronized.
    *
    * @throws { BusinessException } 401 - Parameter error.Possible causes:1.Mandatory parameters are left unspecified;
    * <br>2.Incorrect parameters types.
    * @relation setSyncParam(defaultAllowedDelayMs: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.KVStore.Core"
    ]
    public open func setSyncParam(defaultAllowedDelayMs: UInt32): Unit
}


