/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package std.console

import std.io.InputStream
import std.sync.*
import std.io.OutputStream

@Deprecated[message: "Use related global functions in the std.env instead."]
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class Console {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop stdIn: ConsoleReader
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop stdOut: ConsoleWriter
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop stdErr: ConsoleWriter
}

/**
* This class Provides the ability to read data from console
*/
@Deprecated[message: "This class migrate to the std.env."]
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ConsoleReader <: InputStream {
    /**
    * Read one char
    * @throws IllegalMemoryException if there are some system errors.
    */
    @OverflowWrapping
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func read(): ?Rune
    
    /** Read one line */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func readln(): ?String
    
    /** Read all line */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func readToEnd(): ?String
    
    /**
    * Reads until some contents is encountered, or the end of the stream is reached.
    * ch is included in the result
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func readUntil(ch: Rune): ?String
    
    /**
    * Reads until predicate is encountered, or the end of the stream is reached.
    * ch is included in the result
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func readUntil(predicate: (Rune) -> Bool): ?String
    
    /*
    * write Array<Byte> from stdIn to arr and return the length
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func read(arr: Array<Byte>): Int64
}

@Deprecated[message: "This class migrate to the std.env."]
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ConsoleWriter <: OutputStream {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func flush(): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(buffer: Array<Byte>): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(buffer: Array<Byte>): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: String): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func write<T>(v: T): Unit where T <: ToString
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Bool): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Int8): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Int16): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Int32): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Int64): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: UInt8): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: UInt16): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: UInt32): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: UInt64): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Float16): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Float32): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Float64): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(v: Rune): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: String): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln<T>(v: T): Unit where T <: ToString
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Bool): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Int8): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Int16): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Int32): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Int64): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: UInt8): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: UInt16): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: UInt32): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: UInt64): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Float16): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Float32): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Float64): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeln(v: Rune): Unit
}

