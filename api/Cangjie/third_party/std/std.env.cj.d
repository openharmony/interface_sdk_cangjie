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
@!APILevel[since: "22"]
public class ConsoleReader <: InputStream {
    /**
    * Read one char
    * @throws IllegalMemoryException if there are some system errors.
    */
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func read(): ?Rune
    
    /** Read one line */
    @!APILevel[since: "22"]
    public func readln(): ?String
    
    /** Read all line */
    @!APILevel[since: "22"]
    public func readToEnd(): ?String
    
    /**
    * Reads until some contents is encountered, or the end of the stream is reached.
    * ch is included in the result
    */
    @!APILevel[since: "22"]
    public func readUntil(ch: Rune): ?String
    
    /**
    * Reads until predicate is encountered, or the end of the stream is reached.
    * ch is included in the result
    */
    @!APILevel[since: "22"]
    public func readUntil(predicate: (Rune) -> Bool): ?String
    
    /*
    * write Array<Byte> from stdIn to arr and return the length
    */
    @!APILevel[since: "22"]
    public func read(arr: Array<Byte>): Int64
}

@!APILevel[since: "22"]
public class ConsoleWriter <: OutputStream {
    @!APILevel[since: "22"]
    public func flush(): Unit
    
    @!APILevel[since: "22"]
    public func write(buffer: Array<Byte>): Unit
    
    @!APILevel[since: "22"]
    public func writeln(buffer: Array<Byte>): Unit
    
    @!APILevel[since: "22"]
    public func write(v: String): Unit
    
    @!APILevel[since: "22"]
    public func write<T>(v: T): Unit where T <: ToString
    
    @!APILevel[since: "22"]
    public func write(v: Bool): Unit
    
    @!APILevel[since: "22"]
    public func write(v: Int8): Unit
    
    @!APILevel[since: "22"]
    public func write(v: Int16): Unit
    
    @!APILevel[since: "22"]
    public func write(v: Int32): Unit
    
    @!APILevel[since: "22"]
    public func write(v: Int64): Unit
    
    @!APILevel[since: "22"]
    public func write(v: UInt8): Unit
    
    @!APILevel[since: "22"]
    public func write(v: UInt16): Unit
    
    @!APILevel[since: "22"]
    public func write(v: UInt32): Unit
    
    @!APILevel[since: "22"]
    public func write(v: UInt64): Unit
    
    @!APILevel[since: "22"]
    public func write(v: Float16): Unit
    
    @!APILevel[since: "22"]
    public func write(v: Float32): Unit
    
    @!APILevel[since: "22"]
    public func write(v: Float64): Unit
    
    @!APILevel[since: "22"]
    public func write(v: Rune): Unit
    
    @!APILevel[since: "22"]
    public func writeln(v: String): Unit
    
    @!APILevel[since: "22"]
    public func writeln<T>(v: T): Unit where T <: ToString
    
    @!APILevel[since: "22"]
    public func writeln(v: Bool): Unit
    
    @!APILevel[since: "22"]
    public func writeln(v: Int8): Unit
    
    @!APILevel[since: "22"]
    public func writeln(v: Int16): Unit
    
    @!APILevel[since: "22"]
    public func writeln(v: Int32): Unit
    
    @!APILevel[since: "22"]
    public func writeln(v: Int64): Unit
    
    @!APILevel[since: "22"]
    public func writeln(v: UInt8): Unit
    
    @!APILevel[since: "22"]
    public func writeln(v: UInt16): Unit
    
    @!APILevel[since: "22"]
    public func writeln(v: UInt32): Unit
    
    @!APILevel[since: "22"]
    public func writeln(v: UInt64): Unit
    
    @!APILevel[since: "22"]
    public func writeln(v: Float16): Unit
    
    @!APILevel[since: "22"]
    public func writeln(v: Float32): Unit
    
    @!APILevel[since: "22"]
    public func writeln(v: Float64): Unit
    
    @!APILevel[since: "22"]
    public func writeln(v: Rune): Unit
}

@!APILevel[since: "22"]
public func getProcessId(): Int64

@!APILevel[since: "22"]
public func getCommand(): String

@!APILevel[since: "22"]
public func getCommandLine(): Array<String>

@!APILevel[since: "22"]
public func getWorkingDirectory(): Path

@!APILevel[since: "22"]
public func getHomeDirectory(): Path

@!APILevel[since: "22"]
public func getTempDirectory(): Path

@!APILevel[since: "22"]
public func getVariable(key: String): ?String

@!APILevel[since: "22"]
public func getVariables(): Array<(String, String)>

@!APILevel[since: "22"]
public func setVariable(key: String, value: String): Unit

@!APILevel[since: "22"]
public func removeVariable(key: String): Unit

@!APILevel[since: "22"]
public func getStdErr(): ConsoleWriter

@!APILevel[since: "22"]
public func getStdIn(): ConsoleReader

@!APILevel[since: "22"]
public func getStdOut(): ConsoleWriter

@!APILevel[since: "22"]
public func atExit(callback: () -> Unit): Unit

@!APILevel[since: "22"]
public func exit(code: Int64): Nothing

/**
* ProcessException
*
*/
@!APILevel[since: "22"]
public class EnvException <: Exception {
    @!APILevel[since: "22"]
    public init(message: String)
}

