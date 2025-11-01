
package std.console

import std.io.InputStream
import std.sync.*
import std.io.OutputStream

/**
 * @description Provides access to the standard console input, output and error streams.
 */
@!APILevel[
    since: "22"
]
public class Console {
    /**
     * @description Provides access to the standard console input stream.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop stdIn: ConsoleReader
    
    /**
     * @description Provides access to the standard console output stream.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop stdOut: ConsoleWriter
    
    /**
     * @description Provides access to the standard console error stream.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop stdErr: ConsoleWriter
}

/**
 * @description Provides the ability to read data from console.
 */
@!APILevel[
    since: "22"
]
public class ConsoleReader <: InputStream {
    /**
     * @description Read one char from console input.
     * @returns A Rune representing the character read from console, or null if no character can be read.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func read(): ?Rune
    
    /**
     * @description Read one line from console input.
     * @returns A String containing the line read from console, or null if no line can be read.
     */
    @!APILevel[
        since: "22"
    ]
    public func readln(): ?String
    
    /**
     * @description Read all content from console input until the end of the stream is reached.
     * @returns A String containing all content read from console, or null if no content can be read.
     */
    @!APILevel[
        since: "22"
    ]
    public func readToEnd(): ?String
    
    /**
     * @description Reads from console input until the specified character is encountered, or the end of the stream is reached.
     * @param ch The Rune character to read until.
     * @returns A String containing the content read from console including the specified character, or null if no content can be read.
     */
    @!APILevel[
        since: "22"
    ]
    public func readUntil(ch: Rune): ?String
    
    /**
     * @description Reads from console input until the predicate function returns true, or the end of the stream is reached.
     * @param predicate A function that takes a Rune and returns a Boolean indicating whether to stop reading.
     * @returns A String containing the content read from console including the character that satisfied the predicate, or null if no content can be read.
     */
    @!APILevel[
        since: "22"
    ]
    public func readUntil(predicate: (Rune) -> Bool): ?String
    
    /**
     * @description Reads data from console input into the specified byte array.
     * @param arr The Array of Bytes to read data into.
     * @returns The number of bytes actually read into the array.
     */
    @!APILevel[
        since: "22"
    ]
    public func read(arr: Array<Byte>): Int64
}

/**
 * @description Provides the ability to write data to console.
 */
@!APILevel[
    since: "22"
]
public class ConsoleWriter <: OutputStream {
    /**
     * @description Flushes the console output stream.
     */
    @!APILevel[
        since: "22"
    ]
    public func flush(): Unit
    
    /**
     * @description Writes an array of bytes to the console output stream.
     * @param buffer The Array of Bytes to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(buffer: Array<Byte>): Unit
    
    /**
     * @description Writes an array of bytes to the console output stream followed by a line terminator.
     * @param buffer The Array of Bytes to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(buffer: Array<Byte>): Unit
    
    /**
     * @description Writes a string to the console output stream.
     * @param v The String to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: String): Unit
    
    /**
     * @description Writes the string representation of a value to the console output stream.
     * @param v The value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func write<T>(v: T): Unit where T <: ToString
    
    /**
     * @description Writes a boolean value to the console output stream.
     * @param v The Bool value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Bool): Unit
    
    /**
     * @description Writes an Int8 value to the console output stream.
     * @param v The Int8 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Int8): Unit
    
    /**
     * @description Writes an Int16 value to the console output stream.
     * @param v The Int16 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Int16): Unit
    
    /**
     * @description Writes an Int32 value to the console output stream.
     * @param v The Int32 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Int32): Unit
    
    /**
     * @description Writes an Int64 value to the console output stream.
     * @param v The Int64 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Int64): Unit
    
    /**
     * @description Writes a UInt8 value to the console output stream.
     * @param v The UInt8 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: UInt8): Unit
    
    /**
     * @description Writes a UInt16 value to the console output stream.
     * @param v The UInt16 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: UInt16): Unit
    
    /**
     * @description Writes a UInt32 value to the console output stream.
     * @param v The UInt32 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: UInt32): Unit
    
    /**
     * @description Writes a UInt64 value to the console output stream.
     * @param v The UInt64 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: UInt64): Unit
    
    /**
     * @description Writes a Float16 value to the console output stream.
     * @param v The Float16 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Float16): Unit
    
    /**
     * @description Writes a Float32 value to the console output stream.
     * @param v The Float32 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Float32): Unit
    
    /**
     * @description Writes a Float64 value to the console output stream.
     * @param v The Float64 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Float64): Unit
    
    /**
     * @description Writes a Rune character to the console output stream.
     * @param v The Rune character to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func write(v: Rune): Unit
    
    /**
     * @description Writes a string to the console output stream followed by a line terminator.
     * @param v The String to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: String): Unit
    
    /**
     * @description Writes the string representation of a value to the console output stream followed by a line terminator.
     * @param v The value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln<T>(v: T): Unit where T <: ToString
    
    /**
     * @description Writes a boolean value to the console output stream followed by a line terminator.
     * @param v The Bool value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Bool): Unit
    
    /**
     * @description Writes an Int8 value to the console output stream followed by a line terminator.
     * @param v The Int8 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Int8): Unit
    
    /**
     * @description Writes an Int16 value to the console output stream followed by a line terminator.
     * @param v The Int16 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Int16): Unit
    
    /**
     * @description Writes an Int32 value to the console output stream followed by a line terminator.
     * @param v The Int32 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Int32): Unit
    
    /**
     * @description Writes an Int64 value to the console output stream followed by a line terminator.
     * @param v The Int64 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Int64): Unit
    
    /**
     * @description Writes a UInt8 value to the console output stream followed by a line terminator.
     * @param v The UInt8 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: UInt8): Unit
    
    /**
     * @description Writes a UInt16 value to the console output stream followed by a line terminator.
     * @param v The UInt16 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: UInt16): Unit
    
    /**
     * @description Writes a UInt32 value to the console output stream followed by a line terminator.
     * @param v The UInt32 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: UInt32): Unit
    
    /**
     * @description Writes a UInt64 value to the console output stream followed by a line terminator.
     * @param v The UInt64 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: UInt64): Unit
    
    /**
     * @description Writes a Float16 value to the console output stream followed by a line terminator.
     * @param v The Float16 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Float16): Unit
    
    /**
     * @description Writes a Float32 value to the console output stream followed by a line terminator.
     * @param v The Float32 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Float32): Unit
    
    /**
     * @description Writes a Float64 value to the console output stream followed by a line terminator.
     * @param v The Float64 value to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Float64): Unit
    
    /**
     * @description Writes a Rune character to the console output stream followed by a line terminator.
     * @param v The Rune character to write to the console.
     */
    @!APILevel[
        since: "22"
    ]
    public func writeln(v: Rune): Unit
}

