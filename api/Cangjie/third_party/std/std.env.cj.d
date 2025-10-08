/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package std.env
import std.io.InputStream
import std.sync.*

import std.io.OutputStream
import std.collection.*
import std.fs.*
import std.io.*

/**
* This class Provides the ability to read data from console
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class ConsoleReader <: InputStream {
    /**
    * Read one char
    * @throws IllegalMemoryException if there are some system errors.
    */
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func read(): ?Rune
    
    /** Read one line */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func readln(): ?String
    
    /** Read all line */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func readToEnd(): ?String
    
    /**
    * Reads until some contents is encountered, or the end of the stream is reached.
    * ch is included in the result
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func readUntil(ch: Rune): ?String
    
    /**
    * Reads until predicate is encountered, or the end of the stream is reached.
    * ch is included in the result
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func readUntil(predicate: (Rune) -> Bool): ?String
    
    /*
    * write Array<Byte> from stdIn to arr and return the length
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func read(arr: Array<Byte>): Int64
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class ConsoleWriter <: OutputStream {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func flush(): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(buffer: Array<Byte>): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(buffer: Array<Byte>): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: String): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write<T>(v: T): Unit where T <: ToString
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Bool): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Int8): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Int16): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Int32): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Int64): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: UInt8): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: UInt16): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: UInt32): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: UInt64): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Float16): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Float32): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Float64): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Rune): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: String): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln<T>(v: T): Unit where T <: ToString
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Bool): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Int8): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Int16): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Int32): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Int64): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: UInt8): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: UInt16): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: UInt32): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: UInt64): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Float16): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Float32): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Float64): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Rune): Unit
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func getProcessId(): Int64

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func getCommand(): String

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func getCommandLine(): Array<String>

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func getWorkingDirectory(): Path

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func getHomeDirectory(): Path

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func getTempDirectory(): Path

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func getVariable(key: String): ?String

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func getVariables(): Array<(String, String)>

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func setVariable(key: String, value: String): Unit

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func removeVariable(key: String): Unit

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func getStdErr(): ConsoleWriter

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func getStdIn(): ConsoleReader

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func getStdOut(): ConsoleWriter

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func atExit(callback: () -> Unit): Unit

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func exit(code: Int64): Nothing

/**
* ProcessException
*
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class EnvException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

