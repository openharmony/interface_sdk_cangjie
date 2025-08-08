/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

package std.database.sql

import std.collection.Map
import std.collection.HashMap
import std.sync.Mutex
import std.sort.sort
import std.random.Random
import std.time.DateTime
import std.sync.AtomicBool
import std.collection.{Map, ArrayList}
import std.collection.concurrent.LinkedBlockingQueue
import std.sync.{Timer, CatchupStyle, AtomicBool, Mutex}
import std.io.InputStream
import std.math.numeric.Decimal

/**
* ColumnInfo, contain the name, type, length of a column.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface ColumnInfo {
    /**
    * column name.
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop name: String
    
    /**
    * column type name, same with SqlDbType.name.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop typeName: String
    
    /**
    * column length.
    * <p>For text and binary field types, this is the column type length.
    * For numeric datatypes, this is the maximum precision.
    * For datetime datatypes, this is the length in characters of the String representation.
    * If not applicable or if not supported return 0. </p>
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop length: Int64
    
    /**
    * the scale size of a decimal type.
    * If not applicable or if not supported return 0.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop scale: Int64
    
    /**
    * whether the column may be null.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop nullable: Bool
    
    /**
    * column's normal maximum width in characters.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop displaySize: Int64
}

/**
* This Connection interface executes SQL statements and processes transactions.
*
* @since 0.32.3
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Connection <: Resource {
    /**
    * Indicates the state of the Connection during the most recent network operation performed on the connection.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop state: ConnectionState
    
    /**
    * Retrieves metadata about the database, common keys are predefined in SqlOption.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func getMetaData(): Map<String, String>
    
    /**
    * Return a pre-executed Statement object instance through the input SQL statement.
    *
    * @param sql : pre-executed SQL statement.
    * @return an instance object that can execute SQL statements.
    *
    * SqlException - An error occurs on the server side or the connection is interrupted.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func prepareStatement(sql: String): Statement
    
    /**
    * create a transaction instance
    * SqlException - Parallel transactions are not supported.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func createTransaction(): Transaction
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public enum ConnectionState <: Equatable<ConnectionState> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    /**
    * The connection to the data source is broken.
    * This can occur only after the connection has been opened.
    * A connection in this state may be closed and then re-opened.
    *
    * @since 0.40.1
    */
    Broken |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    /**
    * The connection is closed.
    *
    * @since 0.40.1
    */
    Closed |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    /**
    * The connection object is connecting to the data source.
    *
    * @since 0.40.1
    */
    Connecting |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    /**
    * The connection is connected.
    *
    * @since 0.40.1
    */
    Connected
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(rhs: ConnectionState): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(rhs: ConnectionState): Bool
}

/**
* This Datasource interface is used to process the connection to the database.
*
* @since 0.32.3
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Datasource <: Resource {
    /**
    * setting database driver connection options, common keys are predefined in SqlOption.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func setOption(key: String, value: String): Unit
    
    /**
    * Returns an available connection.
    *
    * @return a datasource connection instance.
    *
    * @since 0.32.3
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func connect(): Connection
}

/**
* The Driver interface is used to obtain datasource instance objects.
*
* @since 0.32.3
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Driver {
    /**
    * driver name
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop name: String
    
    /**
    * driver version
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop version: String
    
    /**
    * Indicates whether the driver is preferred work with the connection pool.
    * If not, the connection pool is not recommended.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop preferredPooling: Bool
    
    /**
    * Use the connectionString and opts to obtain the datasource instance.
    *
    * @param connectionString: the datasource connection string
    * @param opts: key,value tuple, the options for datasource instance, common keys are predefined in SqlOption.
    * @return a datasource instance.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func open(connectionString: String, opts: Array<(String, String)>): Datasource
}

/**
* Load an Cangjie database driver based on name.
*
* @since 0.40.1
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class DriverManager {
    /**
    * makes a database driver available by the provided name. This method is thread safe.
    * SqlException - the driverName already registered.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func register(driverName: String, driver: Driver): Unit
    
    /**
    * Unregister the database driver by name. This method is thread safe.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func deregister(driverName: String): Unit
    
    /**
    * This command is used to obtain the registered database driver by name.
    * If the registered database driver does not exist, None is returned. This method is thread safe.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func getDriver(driverName: String): Option<Driver>
    
    /**
    * Returns a list of registered database driver names (sorted). This method is thread safe.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func drivers(): Array<String>
}

/**
* connection pooled datasource implementation
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class PooledDatasource <: Datasource {
    /**
    * Initialize a PooledDatasource with specific datasource.
    *
    * @param datasource implement by driver
    *
    * @since 0.20.4
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(datasource: Datasource)
    
    /**
    * Maximum duration for which connections are allowed to remain idle in the pool. Idle connections that exceed the duration may be reclaimed.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop idleTimeout: Duration
    
    /**
    * Duration since the connection was created, after which the connection is automatically closed.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop maxLifeTime: Duration
    
    /**
    * Interval for checking the health of an idle connection to prevent it from being timed out by the database or network infrastructure.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keepaliveTime: Duration
    
    /**
    * Maximum number of connections in the connection pool. If the value is less than or equal to 0, the value is Int32.Max.
    * If the value is smaller than the current value, the setting does not take effect immediately. The setting takes effect only after idle connections are reclaimed and closed.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop maxSize: Int32
    
    /**
    * Maximum number of idle connections. If the number of idle connections exceeds the value of this parameter, the idle connections will be closed. If the value is less than or equal to 0, the value is Int32.Max.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop maxIdleSize: Int32
    
    /**
    * Timeout interval for obtaining a connection from the pool. If the timeout interval expires, the system throws SqlException.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop connectionTimeout: Duration
    
    /**
    * setting database driver connection options, common keys are predefined in SqlOption.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func setOption(key: String, value: String): Unit
    
    /**
    * Returns an available connection.
    *
    * @return a datasource connection instance.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func connect(): Connection
    
    /**
    * Reports whether the connection is closed.
    *
    * @return true if closed, otherwise false.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isClosed(): Bool
    
    /**
    * closes all connections in the pool and rejects future connect calls. Blocks until all connections are returned to pool and closed.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func close(): Unit
}

/**
* The QueryResult interface is used to represent the result set of a query statement.
*
* @since 0.32.3
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface QueryResult <: Resource {
    /**
    * Retrieves the number, types, length and other properties of this {@code QueryResult} object's columns.
    *
    * @since 0.40.1
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop columnInfos: Array<ColumnInfo>
    
    /**
    * To move a line backward, next() must be called once to move to the first line, the second call to move to the second line, and so on.
    * End when false is returned. If the value is false, an exception is thrown when other get functions are invoked.
    *
    * @return true if the next row exists, false otherwise.
    *
    * @since 0.32.3
    */
    @Deprecated[message: "Use memeber funcation `func next(): Bool` instead."]
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func next(values: Array<SqlDbType>): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func next(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func get<T>(index: Int64): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func getOrNull<T>(index: Int64): ?T
}

/**
* SqlDbType is the base class of all Sql data types. To extend user-defined types, inherit SqlDbType or SqlNullableDbType.
* All implementation types must have a public value property.
*
* @since 0.40.1
*/
@Deprecated
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop name: String
}

/**
* Base class of the type that allows null values. If the value is null, the value field value is Option.None.
*
* @since 0.40.1
*/
@Deprecated
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface SqlNullableDbType <: SqlDbType {
}

/**
* Fixed-length character string, corresponding to the Cangjie String type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `String` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlChar <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: String)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Fixed-length character string, corresponding to the Cangjie String type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?String` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableChar <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?String)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Variable-length character string, corresponding to the Cangjie String type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `String` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlVarchar <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: String)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Variable-length character string, corresponding to the Cangjie String type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?String` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableVarchar <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?String)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Fixed-length binary string, corresponding to the Cangjie Array<Byte> type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Array<Byte>` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlBinary <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: Array<Byte>)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: Array<Byte>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Fixed-length binary character string corresponding to the Array<Byte> type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Array<Byte>` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableBinary <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?Array<Byte>)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?Array<Byte>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Variable-length binary character string, corresponding to the Cangjie Array<Byte> type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Array<Byte>` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlVarBinary <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: Array<Byte>)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: Array<Byte>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Variable-length binary character string, corresponding to the Array<Byte> type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Array<Byte>` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableVarBinary <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?Array<Byte>)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?Array<Byte>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Variable-length character data (character large object), corresponding to the Cangjie InputStream type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `InputStream` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlClob <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: InputStream)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: InputStream
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Variable-length character data (character large object), corresponding to the Cangjie InputStream type, which can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?InputStream` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableClob <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?InputStream)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?InputStream
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Variable-length binary character data (Binary Large Object), corresponding to the Cangjie InputStream type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `InputStream` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlBlob <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: InputStream)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: InputStream
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Variable-length binary character data (Binary Large Object), corresponding to the Cangjie InputStream type, which can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?InputStream` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableBlob <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?InputStream)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?InputStream
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Boolean type, corresponding to the Cangjie Bool type
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Bool` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlBool <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: Bool)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Boolean type, corresponding to the warehouse Bool type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Bool` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableBool <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?Bool)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Byte, corresponding to the Cangjie Int8 type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Int8` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlByte <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: Int8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Byte, corresponding to the warehouse Int8 type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Int8` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableByte <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?Int8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Small integer, corresponding to the Cangjie Int16 type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Int16` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlSmallInt <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: Int16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Small integer, corresponding to the Cangjie Int16 type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Int16` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableSmallInt <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?Int16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Medium integer, corresponding to Cangjie Int32 type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Int32` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlInteger <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: Int32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Medium integer, corresponding to Cangjie Int32 type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Int32` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableInteger <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?Int32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Large integer, corresponding to the Cangjie Int64 type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Int64` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlBigInt <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: Int64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Large integer, corresponding to the Cangjie Int64 type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Int64` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableBigInt <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?Int64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Floating point number, corresponding to the Cangjie Float32 type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Float32` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlReal <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: Float32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: Float32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Floating point number, corresponding to the Cangjie Float32 type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Float32` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableReal <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?Float32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?Float32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Double-precision number, corresponding to the Cangjie Float64 type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Float64` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlDouble <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: Float64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: Float64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Double-precision number, corresponding to the Cangjie Float64 type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Float64` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableDouble <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?Float64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?Float64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Date, which is valid only for the year, month, and day. It corresponds to the Cangjie DateTime type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `DateTime` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlDate <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: DateTime)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: DateTime
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Date, which is valid only for the year, month, and day. It corresponds to the Cangjie DateTime type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?DateTime` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableDate <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?DateTime)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?DateTime
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Time, which is valid only for hour, minute, second, and millisecond. It corresponds to the Cangjie DateTime type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `DateTime` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlTime <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: DateTime)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: DateTime
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Time, which is valid only for hour, minute, second, and millisecond. It corresponds to the Cangjie DateTime type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?DateTime` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableTime <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?DateTime)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?DateTime
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Time with a time zone, which is valid only for the hour, minute, second, and millisecond and timezone. It corresponds to the Cangjie DateTime type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `DateTime` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlTimeTz <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: DateTime)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: DateTime
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Time with a time zone, which is valid only for the hour, minute, second, and millisecond and timezone. It corresponds to the Cangjie DateTime type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?DateTime` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableTimeTz <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?DateTime)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?DateTime
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Timestamp, corresponding to the Cangjie DateTime type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `DateTime` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlTimestamp <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: DateTime)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: DateTime
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Timestamp, corresponding to the Cangjie DateTime type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?DateTime` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableTimestamp <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?DateTime)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?DateTime
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Interval, corresponding to the Cangjie Duration type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Duration` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlInterval <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: Duration)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: Duration
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* Interval, corresponding to the Cangjie Duration type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Duration` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableInterval <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?Duration)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?Duration
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* SqlDecimal, corresponding to the Cangjie Decimal type.
*
* @since 0.50.2
*/
@Deprecated[message: "Use `Decimal` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlDecimal <: SqlDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: Decimal)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: Decimal
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* SqlNullableDecimal, corresponding to the Cangjie Decimal type. The value can be null.
*
* @since 0.50.2
*/
@Deprecated[message: "Use `?Decimal` instead."]
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlNullableDecimal <: SqlNullableDbType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: ?Decimal)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop value: ?Decimal
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

/**
* The SqlException class is used to handle SQL-related exceptions.
*
* @since 0.32.3
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public open class SqlException <: Exception {
    /**
    * a five-character string where IDMS returns the status of the last SQL statement executed.
    *
    * @since 0.43.2
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop sqlState: String
    
    /**
    * error code that is specific to each vendor.
    *
    * @since 0.43.2
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop errorCode: Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public override prop message: String
    
    /**
    * Parameterless constructor.
    *
    * @since 0.32.3
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    /**
    * Parameter constructor.
    *
    * @param message : predefined message.
    * @param sqlState : a five-character string where IDMS returns the status of the last SQL statement executed.
    * @param errorCode : an integer error code that is specific to each vendor.
    *
    * @since 0.43.2
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String, sqlState: String, errorCode: Int64)
    
    /**
    * Parameter constructor.
    *
    * @param message : predefined message.
    *
    * @since 0.32.3
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

/**
* Predefined SQL option name and value. If extension is required, do not conflict with these names and values.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SqlOption {
    /**
    * URL, which is usually used for database connection strings in SQL api.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const URL: String = "url"
    
    /**
    * Host, host name or IP address of the database server
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const Host: String = "host"
    
    /**
    * Username, user name for connecting to the database
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const Username: String = "username"
    
    /**
    * Password, password for connecting to the database
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const Password: String = "password"
    
    /**
    * Driver, database driver name, for example, postgres and opengauss.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const Driver: String = "driver"
    
    /**
    * Database, database Name
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const Database: String = "database"
    
    /**
    * Encoding, encoding type of the database character set.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const Encoding: String = "encoding"
    
    /**
    * ConnectionTimeout, timeout interval of the connect operation, in milliseconds.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const ConnectionTimeout: String = "connection_timeout"
    
    /**
    * UpdateTimeout, timeout interval of the update operation, in milliseconds.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const UpdateTimeout: String = "update_timeout"
    
    /**
    * QueryTimeout, Timeout interval of the query operation, in milliseconds.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const QueryTimeout: String = "query_timeout"
    
    /**
    * FetchRows, Specifies the number of rows to fetch from the database when additional rows need to be fetched
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const FetchRows: String = "fetch_rows"
    
    /**
    * SSLMode, transport layer encryption mode
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const SSLMode: String = "ssl.mode"
    
    /**
    * SSLModePreferred, value for SSLMode, first try an SSL connection; if that fails, try a non-SSL connection.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const SSLModePreferred: String = "ssl.mode.preferred"
    
    /**
    * SSLModeDisabled, value for SSLMode, Establish an unencrypted connection.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const SSLModeDisabled: String = "ssl.mode.disabled"
    
    /**
    * SSLModeRequired, value for SSLMode, only try an SSL connection. If a root CA file is present, verify the certificate in the same way as if verify-ca was specified.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const SSLModeRequired: String = "ssl.mode.required"
    
    /**
    * SSLModeVerifyCA, value for SSLMode, only try an SSL connection, and verify that the server certificate is issued by a trusted certificate authority (CA).
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const SSLModeVerifyCA: String = "ssl.mode.verify_ca"
    
    /**
    * SSLModeVerifyFull, value for SSLMode, only try an SSL connection, verify that the server certificate is issued by a trusted CA and that the requested server host name matches that in the certificate.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const SSLModeVerifyFull: String = "ssl.mode.verify_full"
    
    /**
    * SSLCA, specifies the name of a file containing SSL certificate authority (CA) certificate(s).
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const SSLCA: String = "ssl.ca"
    
    /**
    * SSLCert, specifies the file name of the client SSL certificate.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const SSLCert: String = "ssl.cert"
    
    /**
    * SSLKey, specifies the location for the secret key used for the client certificate.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const SSLKey: String = "ssl.key"
    
    /**
    * SSLKeyPassword, the password for the secret key specified in SSLKey
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const SSLKeyPassword: String = "ssl.key.password"
    
    /**
    * SSLSni, setting the value "Server Name Indication" (SNI) on SSL-enabled connections, in Bool type
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const SSLSni: String = "ssl.sni"
    
    /**
    * Tls12Ciphersuites, The list of permissible encryption ciphers for connections that use TLS protocols up through TLSv1.2.
    * The value is a list of zero or more colon-separated ciphersuite names.
    * For example: "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:TLS_DHE_RSA_WITH_AES_128_CBC_SHA"
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const Tls12Ciphersuites: String = "tls1.2.ciphersuites"
    
    /**
    * Tls13Ciphersuites, specifies which ciphersuites the client permits for encrypted connections that use TLSv1.3.
    * The value is a list of zero or more colon-separated ciphersuite names.
    * For example: "TLS_AES_256_GCM_SHA384:TLS_CHACHA20_POLY1305_SHA256"
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const Tls13Ciphersuites: String = "tls1.3.ciphersuites"
    
    /**
    * TlsVersion, specifies the TLS protocols the client permits for encrypted connections.
    * The value is a list of one or more comma-separated protocol versions.
    * For example:"TLSv1.2,TLSv1.3"
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const TlsVersion: String = "tls.version"
}

/**
* The Statement interface is bound to a Connection, that is the pre-execution interface of SQL statements.
*
* @since 0.32.3
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Statement <: Resource {
    /**
    * Retrieves the number, types, length and other properties of this prepared {@code Statement} object's parameters.
    *
    * @since 0.43.2
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop parameterColumnInfos: Array<ColumnInfo>
    
    /**
    * setOption sets a string option on this statement
    *
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func setOption(key: String, value: String): Unit
    
    /**
    * executes a prepared statement with the given arguments and returns a UpdateResult summarizing the effect of the statement.
    *
    * @return a update result
    *
    * SqlException - An exception occurs during the execution, for example, the network is interrupted, the server times out, or the number of parameters is incorrect.
    */
    @Deprecated[message: "Use memeber funcation `func update(): UpdateResult` instead."]
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func update(params: Array<SqlDbType>): UpdateResult
    
    /**
    * executes a prepared query statement with the given arguments and
    * @return the query results
    *
    * SqlException - An exception occurs during the execution, for example, the network is interrupted, the server times out, or the number of parameters is incorrect.
    */
    @Deprecated[message: "Use memeber funcation `func query(): QueryResult` instead."]
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func query(params: Array<SqlDbType>): QueryResult
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func set<T>(index: Int64, value: T): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func setNull(index: Int64): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func update(): UpdateResult
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func query(): QueryResult
}

/**
* Transaction isolation defines when and how the results of an operation in a transaction are visible to other concurrent transaction operations in a database system.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public enum TransactionIsoLevel <: ToString & Hashable & Equatable<TransactionIsoLevel> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // unspecified transaction isolation level, the behavior depends on a specific database server.
    Unspecified |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // The transaction waits until rows write-locked by other transactions are unlocked; this prevents it from reading any "dirty" data.
    ReadCommitted |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // Transactions are not isolated from each other. 
    ReadUncommitted |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // The transaction waits until rows write-locked by other transactions are unlocked; this prevents it from reading any "dirty" data.
    RepeatableRead |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // Snapshot isolation avoids most locking and blocking by using row versioning. 
    Snapshot |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // The transaction waits until rows write-locked by other transactions are unlocked; this prevents it from reading any "dirty" data.
    Serializable |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // Linearizability is relevant when you are looking at a subset of operations on a single object (i.e. a db row or a nosql record).
    Linearizable |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // The pending changes from more highly isolated transactions cannot be overwritten.
    Chaos
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(rhs: TransactionIsoLevel): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(rhs: TransactionIsoLevel): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
}

/**
* Transactional read/write mode.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public enum TransactionAccessMode <: ToString & Hashable & Equatable<TransactionAccessMode> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // unspecified transaction access mode, the behavior depends on a specific database server.
    Unspecified |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // read-write mode
    ReadWrite |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // readonly mode
    ReadOnly
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(rhs: TransactionAccessMode): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(rhs: TransactionAccessMode): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
}

/**
* Deferred Mode for Transactions.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public enum TransactionDeferrableMode <: ToString & Hashable & Equatable<TransactionDeferrableMode> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // Unspecified transaction defer mode, the behavior depends on a specific database server.
    Unspecified |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // DEFERRABLE
    Deferrable |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // NOT_DEFERRABLE
    NotDeferrable
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(rhs: TransactionDeferrableMode): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(rhs: TransactionDeferrableMode): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
}

/**
* Defines the core behavior of database transactions.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Transaction {
    /**
    * Transaction isolation.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut prop isoLevel: TransactionIsoLevel
    
    /**
    * Transactional read/write mode.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut prop accessMode: TransactionAccessMode
    
    /**
    * Deferred Mode for Transactions.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut prop deferrableMode: TransactionDeferrableMode
    
    /**
    * Starts a database transaction.
    * SqlException - Parallel transactions are not supported.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func begin(): Unit
    
    /**
    * Commits the database transaction.
    * SqlException - An error occurred while trying to commit the transaction.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func commit(): Unit
    
    /**
    * Rolls back a transaction from a pending state.
    * SqlException - An error occurred while trying to rollback the transaction.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func rollback(): Unit
    
    /**
    * Rolls back a transaction from a pending state, and specifies the transaction or savepoint name.
    * SqlException - An error occurred while trying to rollback the transaction.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func rollback(savePointName: String): Unit
    
    /**
    * Creates a savepoint in the transaction that can be used to roll back a part of the transaction, and specifies the savepoint name.
    * SqlException - An error occurred while trying to create the savepoint.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func save(savePointName: String): Unit
    
    /**
    * Destroys a savepoint previously defined in the current transaction. This allows the system to reclaim some resources before the transaction ends.
    * SqlException - An error occurred while trying to release the savepoint.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func release(savePointName: String): Unit
}

/**
* The UpdateResult interface indicates the result of executing the Insert, Update, and Delete statements.
*
* @since 0.32.3
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface UpdateResult {
    /**
    * Number of rows affected by the Insert, Update, and Delete statements.
    *
    * @since 0.32.3
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop rowCount: Int64
    
    /**
    * This is the last ROW ID automatically generated after the Insert statement is executed. 0 if not supported.
    *
    * @since 0.32.3
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop lastInsertId: Int64
}

