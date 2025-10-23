/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

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
@!APILevel[since: "22"]
public interface ColumnInfo {
    /**
    * column name.
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    prop name: String
    
    /**
    * column type name, same with SqlDbType.name.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
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
    @!APILevel[since: "22"]
    prop length: Int64
    
    /**
    * the scale size of a decimal type.
    * If not applicable or if not supported return 0.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    prop scale: Int64
    
    /**
    * whether the column may be null.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    prop nullable: Bool
    
    /**
    * column's normal maximum width in characters.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    prop displaySize: Int64
}

/**
* This Connection interface executes SQL statements and processes transactions.
*
* @since 0.32.3
*/
@!APILevel[since: "22"]
public interface Connection <: Resource {
    /**
    * Indicates the state of the Connection during the most recent network operation performed on the connection.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    prop state: ConnectionState
    
    /**
    * Retrieves metadata about the database, common keys are predefined in SqlOption.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
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
    @!APILevel[since: "22"]
    func prepareStatement(sql: String): Statement
    
    /**
    * create a transaction instance
    * SqlException - Parallel transactions are not supported.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    func createTransaction(): Transaction
}

@!APILevel[since: "22"]
public enum ConnectionState <: Equatable<ConnectionState> {
    @!APILevel[since: "22"]
    /**
    * The connection to the data source is broken.
    * This can occur only after the connection has been opened.
    * A connection in this state may be closed and then re-opened.
    *
    * @since 0.40.1
    */
    Broken |
    @!APILevel[since: "22"]
    /**
    * The connection is closed.
    *
    * @since 0.40.1
    */
    Closed |
    @!APILevel[since: "22"]
    /**
    * The connection object is connecting to the data source.
    *
    * @since 0.40.1
    */
    Connecting |
    @!APILevel[since: "22"]
    /**
    * The connection is connected.
    *
    * @since 0.40.1
    */
    Connected
    @!APILevel[since: "22"]
    public operator func ==(rhs: ConnectionState): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(rhs: ConnectionState): Bool
}

/**
* This Datasource interface is used to process the connection to the database.
*
* @since 0.32.3
*/
@!APILevel[since: "22"]
public interface Datasource <: Resource {
    /**
    * setting database driver connection options, common keys are predefined in SqlOption.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    func setOption(key: String, value: String): Unit
    
    /**
    * Returns an available connection.
    *
    * @return a datasource connection instance.
    *
    * @since 0.32.3
    */
    @!APILevel[since: "22"]
    func connect(): Connection
}

/**
* The Driver interface is used to obtain datasource instance objects.
*
* @since 0.32.3
*/
@!APILevel[since: "22"]
public interface Driver {
    /**
    * driver name
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    prop name: String
    
    /**
    * driver version
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    prop version: String
    
    /**
    * Indicates whether the driver is preferred work with the connection pool.
    * If not, the connection pool is not recommended.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
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
    @!APILevel[since: "22"]
    func open(connectionString: String, opts: Array<(String, String)>): Datasource
}

/**
* Load an Cangjie database driver based on name.
*
* @since 0.40.1
*/
@!APILevel[since: "22"]
public class DriverManager {
    /**
    * makes a database driver available by the provided name. This method is thread safe.
    * SqlException - the driverName already registered.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    public static func register(driverName: String, driver: Driver): Unit
    
    /**
    * Unregister the database driver by name. This method is thread safe.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    public static func deregister(driverName: String): Unit
    
    /**
    * This command is used to obtain the registered database driver by name.
    * If the registered database driver does not exist, None is returned. This method is thread safe.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    public static func getDriver(driverName: String): Option<Driver>
    
    /**
    * Returns a list of registered database driver names (sorted). This method is thread safe.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    public static func drivers(): Array<String>
}

/**
* connection pooled datasource implementation
*/
@!APILevel[since: "22"]
public class PooledDatasource <: Datasource {
    /**
    * Initialize a PooledDatasource with specific datasource.
    *
    * @param datasource implement by driver
    *
    * @since 0.20.4
    */
    @!APILevel[since: "22"]
    public init(datasource: Datasource)
    
    /**
    * Maximum duration for which connections are allowed to remain idle in the pool. Idle connections that exceed the duration may be reclaimed.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    public mut prop idleTimeout: Duration
    
    /**
    * Duration since the connection was created, after which the connection is automatically closed.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    public mut prop maxLifeTime: Duration
    
    /**
    * Interval for checking the health of an idle connection to prevent it from being timed out by the database or network infrastructure.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    public mut prop keepaliveTime: Duration
    
    /**
    * Maximum number of connections in the connection pool. If the value is less than or equal to 0, the value is Int32.Max.
    * If the value is smaller than the current value, the setting does not take effect immediately. The setting takes effect only after idle connections are reclaimed and closed.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    public mut prop maxSize: Int32
    
    /**
    * Maximum number of idle connections. If the number of idle connections exceeds the value of this parameter, the idle connections will be closed. If the value is less than or equal to 0, the value is Int32.Max.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    public mut prop maxIdleSize: Int32
    
    /**
    * Timeout interval for obtaining a connection from the pool. If the timeout interval expires, the system throws SqlException.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    public mut prop connectionTimeout: Duration
    
    /**
    * setting database driver connection options, common keys are predefined in SqlOption.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    public func setOption(key: String, value: String): Unit
    
    /**
    * Returns an available connection.
    *
    * @return a datasource connection instance.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    public func connect(): Connection
    
    /**
    * Reports whether the connection is closed.
    *
    * @return true if closed, otherwise false.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    public func isClosed(): Bool
    
    /**
    * closes all connections in the pool and rejects future connect calls. Blocks until all connections are returned to pool and closed.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
    public func close(): Unit
}

/**
* The QueryResult interface is used to represent the result set of a query statement.
*
* @since 0.32.3
*/
@!APILevel[since: "22"]
public interface QueryResult <: Resource {
    /**
    * Retrieves the number, types, length and other properties of this {@code QueryResult} object's columns.
    *
    * @since 0.40.1
    */
    @!APILevel[since: "22"]
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
    @!APILevel[since: "22"]
    func next(values: Array<SqlDbType>): Bool
    
    @!APILevel[since: "22"]
    func next(): Bool
    
    @!APILevel[since: "22"]
    func get<T>(index: Int64): T
    
    @!APILevel[since: "22"]
    func getOrNull<T>(index: Int64): ?T
}

/**
* SqlDbType is the base class of all Sql data types. To extend user-defined types, inherit SqlDbType or SqlNullableDbType.
* All implementation types must have a public value property.
*
* @since 0.40.1
*/
@Deprecated
@!APILevel[since: "22"]
public interface SqlDbType {
    @!APILevel[since: "22"]
    prop name: String
}

/**
* Base class of the type that allows null values. If the value is null, the value field value is Option.None.
*
* @since 0.40.1
*/
@Deprecated
@!APILevel[since: "22"]
public interface SqlNullableDbType <: SqlDbType {
}

/**
* Fixed-length character string, corresponding to the Cangjie String type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `String` instead."]
@!APILevel[since: "22"]
public class SqlChar <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: String)
    
    @!APILevel[since: "22"]
    public mut prop value: String
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Fixed-length character string, corresponding to the Cangjie String type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?String` instead."]
@!APILevel[since: "22"]
public class SqlNullableChar <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?String)
    
    @!APILevel[since: "22"]
    public mut prop value: ?String
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Variable-length character string, corresponding to the Cangjie String type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `String` instead."]
@!APILevel[since: "22"]
public class SqlVarchar <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: String)
    
    @!APILevel[since: "22"]
    public mut prop value: String
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Variable-length character string, corresponding to the Cangjie String type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?String` instead."]
@!APILevel[since: "22"]
public class SqlNullableVarchar <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?String)
    
    @!APILevel[since: "22"]
    public mut prop value: ?String
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Fixed-length binary string, corresponding to the Cangjie Array<Byte> type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Array<Byte>` instead."]
@!APILevel[since: "22"]
public class SqlBinary <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: Array<Byte>)
    
    @!APILevel[since: "22"]
    public mut prop value: Array<Byte>
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Fixed-length binary character string corresponding to the Array<Byte> type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Array<Byte>` instead."]
@!APILevel[since: "22"]
public class SqlNullableBinary <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?Array<Byte>)
    
    @!APILevel[since: "22"]
    public mut prop value: ?Array<Byte>
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Variable-length binary character string, corresponding to the Cangjie Array<Byte> type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Array<Byte>` instead."]
@!APILevel[since: "22"]
public class SqlVarBinary <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: Array<Byte>)
    
    @!APILevel[since: "22"]
    public mut prop value: Array<Byte>
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Variable-length binary character string, corresponding to the Array<Byte> type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Array<Byte>` instead."]
@!APILevel[since: "22"]
public class SqlNullableVarBinary <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?Array<Byte>)
    
    @!APILevel[since: "22"]
    public mut prop value: ?Array<Byte>
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Variable-length character data (character large object), corresponding to the Cangjie InputStream type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `InputStream` instead."]
@!APILevel[since: "22"]
public class SqlClob <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: InputStream)
    
    @!APILevel[since: "22"]
    public mut prop value: InputStream
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Variable-length character data (character large object), corresponding to the Cangjie InputStream type, which can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?InputStream` instead."]
@!APILevel[since: "22"]
public class SqlNullableClob <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?InputStream)
    
    @!APILevel[since: "22"]
    public mut prop value: ?InputStream
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Variable-length binary character data (Binary Large Object), corresponding to the Cangjie InputStream type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `InputStream` instead."]
@!APILevel[since: "22"]
public class SqlBlob <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: InputStream)
    
    @!APILevel[since: "22"]
    public mut prop value: InputStream
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Variable-length binary character data (Binary Large Object), corresponding to the Cangjie InputStream type, which can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?InputStream` instead."]
@!APILevel[since: "22"]
public class SqlNullableBlob <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?InputStream)
    
    @!APILevel[since: "22"]
    public mut prop value: ?InputStream
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Boolean type, corresponding to the Cangjie Bool type
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Bool` instead."]
@!APILevel[since: "22"]
public class SqlBool <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: Bool)
    
    @!APILevel[since: "22"]
    public mut prop value: Bool
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Boolean type, corresponding to the warehouse Bool type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Bool` instead."]
@!APILevel[since: "22"]
public class SqlNullableBool <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?Bool)
    
    @!APILevel[since: "22"]
    public mut prop value: ?Bool
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Byte, corresponding to the Cangjie Int8 type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Int8` instead."]
@!APILevel[since: "22"]
public class SqlByte <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: Int8)
    
    @!APILevel[since: "22"]
    public mut prop value: Int8
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Byte, corresponding to the warehouse Int8 type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Int8` instead."]
@!APILevel[since: "22"]
public class SqlNullableByte <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?Int8)
    
    @!APILevel[since: "22"]
    public mut prop value: ?Int8
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Small integer, corresponding to the Cangjie Int16 type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Int16` instead."]
@!APILevel[since: "22"]
public class SqlSmallInt <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: Int16)
    
    @!APILevel[since: "22"]
    public mut prop value: Int16
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Small integer, corresponding to the Cangjie Int16 type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Int16` instead."]
@!APILevel[since: "22"]
public class SqlNullableSmallInt <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?Int16)
    
    @!APILevel[since: "22"]
    public mut prop value: ?Int16
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Medium integer, corresponding to Cangjie Int32 type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Int32` instead."]
@!APILevel[since: "22"]
public class SqlInteger <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: Int32)
    
    @!APILevel[since: "22"]
    public mut prop value: Int32
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Medium integer, corresponding to Cangjie Int32 type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Int32` instead."]
@!APILevel[since: "22"]
public class SqlNullableInteger <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?Int32)
    
    @!APILevel[since: "22"]
    public mut prop value: ?Int32
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Large integer, corresponding to the Cangjie Int64 type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Int64` instead."]
@!APILevel[since: "22"]
public class SqlBigInt <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: Int64)
    
    @!APILevel[since: "22"]
    public mut prop value: Int64
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Large integer, corresponding to the Cangjie Int64 type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Int64` instead."]
@!APILevel[since: "22"]
public class SqlNullableBigInt <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?Int64)
    
    @!APILevel[since: "22"]
    public mut prop value: ?Int64
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Floating point number, corresponding to the Cangjie Float32 type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Float32` instead."]
@!APILevel[since: "22"]
public class SqlReal <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: Float32)
    
    @!APILevel[since: "22"]
    public mut prop value: Float32
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Floating point number, corresponding to the Cangjie Float32 type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Float32` instead."]
@!APILevel[since: "22"]
public class SqlNullableReal <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?Float32)
    
    @!APILevel[since: "22"]
    public mut prop value: ?Float32
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Double-precision number, corresponding to the Cangjie Float64 type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Float64` instead."]
@!APILevel[since: "22"]
public class SqlDouble <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: Float64)
    
    @!APILevel[since: "22"]
    public mut prop value: Float64
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Double-precision number, corresponding to the Cangjie Float64 type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Float64` instead."]
@!APILevel[since: "22"]
public class SqlNullableDouble <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?Float64)
    
    @!APILevel[since: "22"]
    public mut prop value: ?Float64
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Date, which is valid only for the year, month, and day. It corresponds to the Cangjie DateTime type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `DateTime` instead."]
@!APILevel[since: "22"]
public class SqlDate <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: DateTime)
    
    @!APILevel[since: "22"]
    public mut prop value: DateTime
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Date, which is valid only for the year, month, and day. It corresponds to the Cangjie DateTime type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?DateTime` instead."]
@!APILevel[since: "22"]
public class SqlNullableDate <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?DateTime)
    
    @!APILevel[since: "22"]
    public mut prop value: ?DateTime
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Time, which is valid only for hour, minute, second, and millisecond. It corresponds to the Cangjie DateTime type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `DateTime` instead."]
@!APILevel[since: "22"]
public class SqlTime <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: DateTime)
    
    @!APILevel[since: "22"]
    public mut prop value: DateTime
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Time, which is valid only for hour, minute, second, and millisecond. It corresponds to the Cangjie DateTime type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?DateTime` instead."]
@!APILevel[since: "22"]
public class SqlNullableTime <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?DateTime)
    
    @!APILevel[since: "22"]
    public mut prop value: ?DateTime
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Time with a time zone, which is valid only for the hour, minute, second, and millisecond and timezone. It corresponds to the Cangjie DateTime type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `DateTime` instead."]
@!APILevel[since: "22"]
public class SqlTimeTz <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: DateTime)
    
    @!APILevel[since: "22"]
    public mut prop value: DateTime
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Time with a time zone, which is valid only for the hour, minute, second, and millisecond and timezone. It corresponds to the Cangjie DateTime type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?DateTime` instead."]
@!APILevel[since: "22"]
public class SqlNullableTimeTz <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?DateTime)
    
    @!APILevel[since: "22"]
    public mut prop value: ?DateTime
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Timestamp, corresponding to the Cangjie DateTime type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `DateTime` instead."]
@!APILevel[since: "22"]
public class SqlTimestamp <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: DateTime)
    
    @!APILevel[since: "22"]
    public mut prop value: DateTime
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Timestamp, corresponding to the Cangjie DateTime type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?DateTime` instead."]
@!APILevel[since: "22"]
public class SqlNullableTimestamp <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?DateTime)
    
    @!APILevel[since: "22"]
    public mut prop value: ?DateTime
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Interval, corresponding to the Cangjie Duration type.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `Duration` instead."]
@!APILevel[since: "22"]
public class SqlInterval <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: Duration)
    
    @!APILevel[since: "22"]
    public mut prop value: Duration
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* Interval, corresponding to the Cangjie Duration type. The value can be null.
*
* @since 0.40.1
*/
@Deprecated[message: "Use `?Duration` instead."]
@!APILevel[since: "22"]
public class SqlNullableInterval <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?Duration)
    
    @!APILevel[since: "22"]
    public mut prop value: ?Duration
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* SqlDecimal, corresponding to the Cangjie Decimal type.
*
* @since 0.50.2
*/
@Deprecated[message: "Use `Decimal` instead."]
@!APILevel[since: "22"]
public class SqlDecimal <: SqlDbType {
    @!APILevel[since: "22"]
    public init(v: Decimal)
    
    @!APILevel[since: "22"]
    public mut prop value: Decimal
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* SqlNullableDecimal, corresponding to the Cangjie Decimal type. The value can be null.
*
* @since 0.50.2
*/
@Deprecated[message: "Use `?Decimal` instead."]
@!APILevel[since: "22"]
public class SqlNullableDecimal <: SqlNullableDbType {
    @!APILevel[since: "22"]
    public init(v: ?Decimal)
    
    @!APILevel[since: "22"]
    public mut prop value: ?Decimal
    
    @!APILevel[since: "22"]
    public prop name: String
}

/**
* The SqlException class is used to handle SQL-related exceptions.
*
* @since 0.32.3
*/
@!APILevel[since: "22"]
public open class SqlException <: Exception {
    /**
    * a five-character string where IDMS returns the status of the last SQL statement executed.
    *
    * @since 0.43.2
    */
    @!APILevel[since: "22"]
    public prop sqlState: String
    
    /**
    * error code that is specific to each vendor.
    *
    * @since 0.43.2
    */
    @!APILevel[since: "22"]
    public prop errorCode: Int64
    
    @!APILevel[since: "22"]
    public override prop message: String
    
    /**
    * Parameterless constructor.
    *
    * @since 0.32.3
    */
    @!APILevel[since: "22"]
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
    @!APILevel[since: "22"]
    public init(message: String, sqlState: String, errorCode: Int64)
    
    /**
    * Parameter constructor.
    *
    * @param message : predefined message.
    *
    * @since 0.32.3
    */
    @!APILevel[since: "22"]
    public init(message: String)
}

/**
* Predefined SQL option name and value. If extension is required, do not conflict with these names and values.
*/
@!APILevel[since: "22"]
public class SqlOption {
    /**
    * URL, which is usually used for database connection strings in SQL api.
    */
    @!APILevel[since: "22"]
    public static const URL: String = "url"
    
    /**
    * Host, host name or IP address of the database server
    */
    @!APILevel[since: "22"]
    public static const Host: String = "host"
    
    /**
    * Username, user name for connecting to the database
    */
    @!APILevel[since: "22"]
    public static const Username: String = "username"
    
    /**
    * Password, password for connecting to the database
    */
    @!APILevel[since: "22"]
    public static const Password: String = "password"
    
    /**
    * Driver, database driver name, for example, postgres and opengauss.
    */
    @!APILevel[since: "22"]
    public static const Driver: String = "driver"
    
    /**
    * Database, database Name
    */
    @!APILevel[since: "22"]
    public static const Database: String = "database"
    
    /**
    * Encoding, encoding type of the database character set.
    */
    @!APILevel[since: "22"]
    public static const Encoding: String = "encoding"
    
    /**
    * ConnectionTimeout, timeout interval of the connect operation, in milliseconds.
    */
    @!APILevel[since: "22"]
    public static const ConnectionTimeout: String = "connection_timeout"
    
    /**
    * UpdateTimeout, timeout interval of the update operation, in milliseconds.
    */
    @!APILevel[since: "22"]
    public static const UpdateTimeout: String = "update_timeout"
    
    /**
    * QueryTimeout, Timeout interval of the query operation, in milliseconds.
    */
    @!APILevel[since: "22"]
    public static const QueryTimeout: String = "query_timeout"
    
    /**
    * FetchRows, Specifies the number of rows to fetch from the database when additional rows need to be fetched
    */
    @!APILevel[since: "22"]
    public static const FetchRows: String = "fetch_rows"
    
    /**
    * SSLMode, transport layer encryption mode
    */
    @!APILevel[since: "22"]
    public static const SSLMode: String = "ssl.mode"
    
    /**
    * SSLModePreferred, value for SSLMode, first try an SSL connection; if that fails, try a non-SSL connection.
    */
    @!APILevel[since: "22"]
    public static const SSLModePreferred: String = "ssl.mode.preferred"
    
    /**
    * SSLModeDisabled, value for SSLMode, Establish an unencrypted connection.
    */
    @!APILevel[since: "22"]
    public static const SSLModeDisabled: String = "ssl.mode.disabled"
    
    /**
    * SSLModeRequired, value for SSLMode, only try an SSL connection. If a root CA file is present, verify the certificate in the same way as if verify-ca was specified.
    */
    @!APILevel[since: "22"]
    public static const SSLModeRequired: String = "ssl.mode.required"
    
    /**
    * SSLModeVerifyCA, value for SSLMode, only try an SSL connection, and verify that the server certificate is issued by a trusted certificate authority (CA).
    */
    @!APILevel[since: "22"]
    public static const SSLModeVerifyCA: String = "ssl.mode.verify_ca"
    
    /**
    * SSLModeVerifyFull, value for SSLMode, only try an SSL connection, verify that the server certificate is issued by a trusted CA and that the requested server host name matches that in the certificate.
    */
    @!APILevel[since: "22"]
    public static const SSLModeVerifyFull: String = "ssl.mode.verify_full"
    
    /**
    * SSLCA, specifies the name of a file containing SSL certificate authority (CA) certificate(s).
    */
    @!APILevel[since: "22"]
    public static const SSLCA: String = "ssl.ca"
    
    /**
    * SSLCert, specifies the file name of the client SSL certificate.
    */
    @!APILevel[since: "22"]
    public static const SSLCert: String = "ssl.cert"
    
    /**
    * SSLKey, specifies the location for the secret key used for the client certificate.
    */
    @!APILevel[since: "22"]
    public static const SSLKey: String = "ssl.key"
    
    /**
    * SSLKeyPassword, the password for the secret key specified in SSLKey
    */
    @!APILevel[since: "22"]
    public static const SSLKeyPassword: String = "ssl.key.password"
    
    /**
    * SSLSni, setting the value "Server Name Indication" (SNI) on SSL-enabled connections, in Bool type
    */
    @!APILevel[since: "22"]
    public static const SSLSni: String = "ssl.sni"
    
    /**
    * Tls12Ciphersuites, The list of permissible encryption ciphers for connections that use TLS protocols up through TLSv1.2.
    * The value is a list of zero or more colon-separated ciphersuite names.
    * For example: "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:TLS_DHE_RSA_WITH_AES_128_CBC_SHA"
    */
    @!APILevel[since: "22"]
    public static const Tls12Ciphersuites: String = "tls1.2.ciphersuites"
    
    /**
    * Tls13Ciphersuites, specifies which ciphersuites the client permits for encrypted connections that use TLSv1.3.
    * The value is a list of zero or more colon-separated ciphersuite names.
    * For example: "TLS_AES_256_GCM_SHA384:TLS_CHACHA20_POLY1305_SHA256"
    */
    @!APILevel[since: "22"]
    public static const Tls13Ciphersuites: String = "tls1.3.ciphersuites"
    
    /**
    * TlsVersion, specifies the TLS protocols the client permits for encrypted connections.
    * The value is a list of one or more comma-separated protocol versions.
    * For example:"TLSv1.2,TLSv1.3"
    */
    @!APILevel[since: "22"]
    public static const TlsVersion: String = "tls.version"
}

/**
* The Statement interface is bound to a Connection, that is the pre-execution interface of SQL statements.
*
* @since 0.32.3
*/
@!APILevel[since: "22"]
public interface Statement <: Resource {
    /**
    * Retrieves the number, types, length and other properties of this prepared {@code Statement} object's parameters.
    *
    * @since 0.43.2
    */
    @!APILevel[since: "22"]
    prop parameterColumnInfos: Array<ColumnInfo>
    
    /**
    * setOption sets a string option on this statement
    *
    */
    @!APILevel[since: "22"]
    func setOption(key: String, value: String): Unit
    
    /**
    * executes a prepared statement with the given arguments and returns a UpdateResult summarizing the effect of the statement.
    *
    * @return a update result
    *
    * SqlException - An exception occurs during the execution, for example, the network is interrupted, the server times out, or the number of parameters is incorrect.
    */
    @Deprecated[message: "Use memeber funcation `func update(): UpdateResult` instead."]
    @!APILevel[since: "22"]
    func update(params: Array<SqlDbType>): UpdateResult
    
    /**
    * executes a prepared query statement with the given arguments and
    * @return the query results
    *
    * SqlException - An exception occurs during the execution, for example, the network is interrupted, the server times out, or the number of parameters is incorrect.
    */
    @Deprecated[message: "Use memeber funcation `func query(): QueryResult` instead."]
    @!APILevel[since: "22"]
    func query(params: Array<SqlDbType>): QueryResult
    
    @!APILevel[since: "22"]
    func set<T>(index: Int64, value: T): Unit
    
    @!APILevel[since: "22"]
    func setNull(index: Int64): Unit
    
    @!APILevel[since: "22"]
    func update(): UpdateResult
    
    @!APILevel[since: "22"]
    func query(): QueryResult
}

/**
* Transaction isolation defines when and how the results of an operation in a transaction are visible to other concurrent transaction operations in a database system.
*/
@!APILevel[since: "22"]
public enum TransactionIsoLevel <: ToString & Hashable & Equatable<TransactionIsoLevel> {
    @!APILevel[since: "22"]
    // unspecified transaction isolation level, the behavior depends on a specific database server.
    Unspecified |
    @!APILevel[since: "22"]
    // The transaction waits until rows write-locked by other transactions are unlocked; this prevents it from reading any "dirty" data.
    ReadCommitted |
    @!APILevel[since: "22"]
    // Transactions are not isolated from each other. 
    ReadUncommitted |
    @!APILevel[since: "22"]
    // The transaction waits until rows write-locked by other transactions are unlocked; this prevents it from reading any "dirty" data.
    RepeatableRead |
    @!APILevel[since: "22"]
    // Snapshot isolation avoids most locking and blocking by using row versioning. 
    Snapshot |
    @!APILevel[since: "22"]
    // The transaction waits until rows write-locked by other transactions are unlocked; this prevents it from reading any "dirty" data.
    Serializable |
    @!APILevel[since: "22"]
    // Linearizability is relevant when you are looking at a subset of operations on a single object (i.e. a db row or a nosql record).
    Linearizable |
    @!APILevel[since: "22"]
    // The pending changes from more highly isolated transactions cannot be overwritten.
    Chaos
    @!APILevel[since: "22"]
    public func toString(): String
    
    @!APILevel[since: "22"]
    public operator func ==(rhs: TransactionIsoLevel): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(rhs: TransactionIsoLevel): Bool
    
    @!APILevel[since: "22"]
    public func hashCode(): Int64
}

/**
* Transactional read/write mode.
*/
@!APILevel[since: "22"]
public enum TransactionAccessMode <: ToString & Hashable & Equatable<TransactionAccessMode> {
    @!APILevel[since: "22"]
    // unspecified transaction access mode, the behavior depends on a specific database server.
    Unspecified |
    @!APILevel[since: "22"]
    // read-write mode
    ReadWrite |
    @!APILevel[since: "22"]
    // readonly mode
    ReadOnly
    @!APILevel[since: "22"]
    public func toString(): String
    
    @!APILevel[since: "22"]
    public operator func ==(rhs: TransactionAccessMode): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(rhs: TransactionAccessMode): Bool
    
    @!APILevel[since: "22"]
    public func hashCode(): Int64
}

/**
* Deferred Mode for Transactions.
*/
@!APILevel[since: "22"]
public enum TransactionDeferrableMode <: ToString & Hashable & Equatable<TransactionDeferrableMode> {
    @!APILevel[since: "22"]
    // Unspecified transaction defer mode, the behavior depends on a specific database server.
    Unspecified |
    @!APILevel[since: "22"]
    // DEFERRABLE
    Deferrable |
    @!APILevel[since: "22"]
    // NOT_DEFERRABLE
    NotDeferrable
    @!APILevel[since: "22"]
    public func toString(): String
    
    @!APILevel[since: "22"]
    public operator func ==(rhs: TransactionDeferrableMode): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(rhs: TransactionDeferrableMode): Bool
    
    @!APILevel[since: "22"]
    public func hashCode(): Int64
}

/**
* Defines the core behavior of database transactions.
*/
@!APILevel[since: "22"]
public interface Transaction {
    /**
    * Transaction isolation.
    */
    @!APILevel[since: "22"]
    mut prop isoLevel: TransactionIsoLevel
    
    /**
    * Transactional read/write mode.
    */
    @!APILevel[since: "22"]
    mut prop accessMode: TransactionAccessMode
    
    /**
    * Deferred Mode for Transactions.
    */
    @!APILevel[since: "22"]
    mut prop deferrableMode: TransactionDeferrableMode
    
    /**
    * Starts a database transaction.
    * SqlException - Parallel transactions are not supported.
    */
    @!APILevel[since: "22"]
    func begin(): Unit
    
    /**
    * Commits the database transaction.
    * SqlException - An error occurred while trying to commit the transaction.
    */
    @!APILevel[since: "22"]
    func commit(): Unit
    
    /**
    * Rolls back a transaction from a pending state.
    * SqlException - An error occurred while trying to rollback the transaction.
    */
    @!APILevel[since: "22"]
    func rollback(): Unit
    
    /**
    * Rolls back a transaction from a pending state, and specifies the transaction or savepoint name.
    * SqlException - An error occurred while trying to rollback the transaction.
    */
    @!APILevel[since: "22"]
    func rollback(savePointName: String): Unit
    
    /**
    * Creates a savepoint in the transaction that can be used to roll back a part of the transaction, and specifies the savepoint name.
    * SqlException - An error occurred while trying to create the savepoint.
    */
    @!APILevel[since: "22"]
    func save(savePointName: String): Unit
    
    /**
    * Destroys a savepoint previously defined in the current transaction. This allows the system to reclaim some resources before the transaction ends.
    * SqlException - An error occurred while trying to release the savepoint.
    */
    @!APILevel[since: "22"]
    func release(savePointName: String): Unit
}

/**
* The UpdateResult interface indicates the result of executing the Insert, Update, and Delete statements.
*
* @since 0.32.3
*/
@!APILevel[since: "22"]
public interface UpdateResult {
    /**
    * Number of rows affected by the Insert, Update, and Delete statements.
    *
    * @since 0.32.3
    */
    @!APILevel[since: "22"]
    prop rowCount: Int64
    
    /**
    * This is the last ROW ID automatically generated after the Insert statement is executed. 0 if not supported.
    *
    * @since 0.32.3
    */
    @!APILevel[since: "22"]
    prop lastInsertId: Int64
}

