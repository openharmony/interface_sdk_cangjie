/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package std.io


/**
* A BufferedInputStream has a built-in buffer to cache the content of the InputStream.
* BufferedInputStream is meant for cache the InputStream.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class BufferedInputStream<T> <: InputStream where T <: InputStream {
    /**
    * Constructor
    *
    * @params input - The InputStream
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(input: T)
    
    /**
    * Constructor
    *
    * @params input - The InputStream
    * @params capacity - Capacity of the buit-in buffer
    *
    * @throws IllegalArgumentException - If `capacity` less than 0.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(input: T, capacity: Int64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(input: T, buffer: Array<Byte>)
    
    /**
    * Read the current InputSteam into the buffer.
    *
    * @params buffer - Will read from InputStream to the buffer.
    *
    * @return Size read into the buffer.
    * @throws IllegalArgumentException - If the `buffer` is empty.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func read(buffer: Array<Byte>): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func readByte(): ?Byte
    
    /**
    * Bind this.inputStream to the new InputStream.
    * Will not change the capacity.
    *
    * @params input - The new InputStream
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func reset(input: T): Unit
}

extend<T> BufferedInputStream<T> <: Resource where T <: Resource {
    /**
    * Close the current stream.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func close(): Unit
    
    /**
    * Returns whether the current flow is closed.
    *
    * @return true if the current stream has been closed, otherwise returns false.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isClosed(): Bool
}

extend<T> BufferedInputStream<T> <: Seekable where T <: Seekable {
    /**
    * Seek to an offset, in bytes, in a stream.
    *
    * @params sp - Start position of the offset and size of the offset.
    *
    * @return the number of bytes in the stream from the beginning of the data to the cursor position.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func seek(sp: SeekPosition): Int64
    
    /**
    * @return the position of the current cursor in the stream.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop position: Int64
    
    /**
    * @return the number of data bytes from the current cursor position to the end of the file.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop remainLength: Int64
    
    /**
    * @return the number of bytes from the file header to the file trailer.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop length: Int64
}

/**
* A BufferedOutputStream has a built-in buffer to cache the content of the OutputStream.
* BufferedOutputStream is meant for cache the OutputStream.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class BufferedOutputStream<T> <: OutputStream where T <: OutputStream {
    /**
    * Constructor
    *
    *
    * @params output - The OutputStream
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(output: T)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(output: T, buffer: Array<Byte>)
    
    /**
    * Constructor
    *
    * @params output - The OutputStream
    * @params capacity - Capacity of the buit-in buffer
    *
    * @throws IllegalArgumentException - If `capacity` less than 0.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(output: T, capacity: Int64)
    
    /**
    * Write from buffer to the OutputStream.
    *
    * @params buffer - Will write to the OutputStream from the buffer.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(buffer: Array<Byte>): Unit
    
    /**
    * Write a Byte to the OutputStream.
    *
    * @params v - The byte write to the OutputStream.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeByte(v: Byte): Unit
    
    /**
    * Flush the OutputStream.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func flush(): Unit
    
    /**
    * Flush and bind this.outputSteam to the new OutputStream.
    * Will not change the capacity.
    *
    * @params output - The OutputStream
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func reset(output: T): Unit
}

extend<T> BufferedOutputStream<T> <: Resource where T <: Resource {
    /**
    * Close the current stream.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func close(): Unit
    
    /**
    * Returns whether the current flow is closed.
    *
    * @return true if the current stream has been closed, otherwise returns false.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isClosed(): Bool
}

extend<T> BufferedOutputStream<T> <: Seekable where T <: Seekable {
    /**
    * Seek to an offset, in bytes, in a stream.
    *
    * @params sp - Start position of the offset and size of the offset.
    *
    * @return the number of bytes in the stream from the beginning of the data to the cursor position.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func seek(sp: SeekPosition): Int64
    
    /**
    * @return the position of the current cursor in the stream.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop position: Int64
    
    /**
    * @return the number of data bytes from the current cursor position to the end of the file.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop remainLength: Int64
    
    /**
    * @return the number of bytes from the file header to the file trailer.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop length: Int64
}

/**
* A ByteBuffer obtains a Byte Array to operate the Byte as Stream.
* ByteBuffer is meant for writing and reading byte streams.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class ByteBuffer <: IOStream & Seekable {
    /**
    * Creates a byte stream of the default capacity.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    /**
    * Constructors
    *
    * @params capacity - Capacity of the ByteBuffer.
    *
    * @throws IllegalArgumentException - If `capcacity` less than 0.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(capacity: Int64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(source: Array<Byte>)
    
    /**
    * Returns the capacity of the ByteBuffer.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop capacity: Int64
    
    /**
    * Returns a copy of the ByteBuffer.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func clone(): ByteBuffer
    
    /**
    * Clears data from the ByteBuffer.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func clear(): Unit
    
    /**
    * Returns a reference to the original Array, any modification changes the original Array.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func bytes(): Array<Byte>
    
    /**
    * Read the data to the buffer.
    *
    * @params buffer - Will read the data to the buffer.
    *
    * @returns Length of read data.
    * @throws IllegalArgumentException - If the buffer is empty.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func read(buffer: Array<Byte>): Int64
    
    /**
    * Read a byte from the buffer.
    *
    *
    * @returns read byte.
    * @throws IllegalArgumentException - If the buffer is empty.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func readByte(): ?Byte
    
    /**
    * Write data from the `buffer` to the ByteBuffer.
    *
    * @params buffer - The data buffer.
    */
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(buffer: Array<Byte>): Unit
    
    /**
    * Write a byte to the ByteBuffer.
    *
    * @params v - The byte to write.
    */
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func writeByte(v: Byte): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func setLength(length: Int64): Unit
    
    /**
    * Increases the capacity to ensure that it can hold at least the number of elements specified by the
    * `additional` argument.
    *
    * @params additional - The desired additional capacity.
    *
    * @throws IllegalArgumentException - If `additional` is less than 0.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func reserve(addition: Int64): Unit
    
    /**
    * Seek to an offset, in bytes, in a stream.
    * The specified location cannot be before the data header in the stream.
    * The specified location can be beyond the end of the file.
    *
    * @params sp - Start position of the offset and size of the offset.
    *
    * @return the number of bytes in the stream from the beginning of the data to the cursor position.
    *
    * @throws IOException - The specified position is before the data header in the stream.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func seek(sp: SeekPosition): Int64
}

/**
* A ChainedInputStream obtains a list of InputSteam.
* ChainedInputStream is meant for reading InputSteams one by one.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class ChainedInputStream<T> <: InputStream where T <: InputStream {
    /**
    * Constructor
    *
    * @throws IllegalArgumentException -If 'input' is empty.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(input: Array<T>)
    
    /**
    * Read the current InputSteam into the buffer.
    *
    * @return Size read into the buffer.
    * @throws IllegalArgumentException -If the buffer is empty.
    * @throws IOException -If failed to read InputSteam.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func read(buffer: Array<Byte>): Int64
}

/**
* The general class of exceptions produced by format conversion errors.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class ContentFormatException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

/**
* The general class of exceptions produced by failed or interrupted I/O operations.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public open class IOException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

/**
* SeekPosition  is the position of the cursor in the file.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public enum SeekPosition {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Current(Int64) |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Begin(Int64) |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    End(Int64)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func readString<T>(from: T): String where T <: InputStream & Seekable

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public unsafe func readStringUnchecked<T>(from: T): String where T <: InputStream & Seekable

@OverflowWrapping
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func readToEnd<T>(from: T): Array<Byte> where T <: InputStream & Seekable

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func copy(from: InputStream, to!: OutputStream): Int64

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class MultiOutputStream<T> <: OutputStream where T <: OutputStream {
    /**
    * @throws IllegalArgumentException if output is empty
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(output: Array<T>)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(buffer: Array<Byte>): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func flush(): Unit
}

/**
* Represents an input stream of bytes from some source and provides a way to read and consume them.
*
* A stream could be created for a file, a network socket or a bytes blob in memory.
* It could also generate bytes on demand, for example a random bytes stream.
*
* Some streams read couldn't be undone: once you read bytes, you can get them back.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface InputStream {
    /**
    * Read bytes to the buffer waiting for the incoming data if necessary, at least one byte or report the end.
    *
    * Depending on the underlying implementation it may read as much bytes as possible to fit the buffer size
    * or may only read bytes that are already available.
    * It is not guaranteed that this function reads exact buffer size bytes but it may do.
    *
    * @params buffer where write bytes to
    *
    * @return number of bytes read and copied to the buffer (never zero) or 0 when end of stream reached
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func read(buffer: Array<Byte>): Int64
}

/**
* This interface is used to construct an output stream.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface OutputStream {
    /**
    * Write from buffer to the OutputStream.
    *
    * @params buffer - Will write to the OutputStream from the buffer.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func write(buffer: Array<Byte>): Unit
    
    /**
    * Flush the OutputStream.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func flush(): Unit
}

/**
* Represents a duplex stream that is both InputStream and OutputStream.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface IOStream <: InputStream & OutputStream {
}

/**
* This interface provides a cursor that can be moved through the stream.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Seekable {
    /**
    * Seek to an offset, in bytes, in a stream.
    *
    * @params sp - Start position of the offset and size of the offset.
    *
    * @return the number of bytes in the stream from the beginning of the data to the cursor position.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func seek(sp: SeekPosition): Int64
    
    /**
    * @return the position of the current cursor in the stream.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop position: Int64
    
    /**
    * @return the number of data bytes from the current cursor position to the end of the file.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop remainLength: Int64
    
    /**
    * @return the number of bytes from the file header to the file trailer.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop length: Int64
}

/**
* This class Provides the ability to read data from an input stream and convert it to characters or strings.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class StringReader<T> where T <: InputStream {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(input: T)
    
    /**
    * @throws ContentFormatException if the format of the read data is incorrect.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func read(): ?Rune
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func runes(): Iterator<Rune>
    
    /**
    * @throws ContentFormatException if the format of the read data is incorrect.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func readln(): Option<String>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func lines(): Iterator<String>
    
    /**
    * @throws ContentFormatException if the format of the read data is incorrect.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func readToEnd(): String
    
    /**
    * @throws ContentFormatException if the format of the read data is incorrect.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func readUntil(v: Rune): Option<String>
    
    /**
    * @throws ContentFormatException if the format of the read data is incorrect.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func readUntil(predicate: (Rune) -> Bool): Option<String>
}

extend<T> StringReader<T> <: Resource where T <: Resource {
    /**
    * Close the current stream.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func close(): Unit
    
    /**
    * Returns whether the current flow is closed.
    *
    * @return true if the current stream has been closed, otherwise returns false.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isClosed(): Bool
}

extend<T> StringReader<T> <: Seekable where T <: Seekable {
    /**
    * Seek to an offset, in bytes, in a stream.
    *
    * @params sp - Start position of the offset and size of the offset.
    *
    * @return the number of bytes in the stream from the beginning of the data to the cursor position.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func seek(sp: SeekPosition): Int64
    
    /**
    * Gets the current read position of StringReader .
    *
    * This property calls the `seek()` function each time it is accessed, moving the cursor to a specific location.
    * The position is adjusted by setting the offset to the negative value of the current available bytes (`inputBIS.availLen` which not be read yet),
    * ensuring that read operations continue from the appropriate position.
    *
    * Note: This property only performs operations when accessed, adjusting the cursor and returning the current position.
    *
    * @return The current read position of the input stream (of type `Int64`), representing the offset of the cursor
    *         from the beginning of the stream.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop position: Int64
}

/**
* This class provides the ability to convert some types to strings with specified string encoding format
*  and endian configuration and write them to the output stream.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class StringWriter<T> where T <: OutputStream {
    /**
    * @throws IllegalArgumentException if encoding is UTF16 or UTF32
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(output: T)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func flush(): Unit
    
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
    public func writeln(): Unit
    
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

extend<T> StringWriter<T> <: Resource where T <: Resource {
    /**
    * Close the current stream.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func close(): Unit
    
    /**
    * Returns whether the current flow is closed.
    *
    * @return true if the current stream has been closed, otherwise returns false.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isClosed(): Bool
}

extend<T> StringWriter<T> <: Seekable where T <: Seekable {
    /**
    * Seek to an offset, in bytes, in a stream.
    *
    * @params sp - Start position of the offset and size of the offset.
    *
    * @return the number of bytes in the stream from the beginning of the data to the cursor position.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func seek(sp: SeekPosition): Int64
}

