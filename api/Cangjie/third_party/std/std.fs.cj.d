/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package std.fs

import std.collection.*
import std.io.*
import std.time.*
import std.io.IOException

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func copy(sourcePath: Path, to!: Path, overwrite!: Bool = false): Unit

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func copy(sourcePath: String, to!: String, overwrite!: Bool = false): Unit

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func remove(path: Path, recursive!: Bool = false): Unit

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func remove(path: String, recursive!: Bool = false): Unit

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func exists(path: Path): Bool

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func exists(path: String): Bool

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func rename(sourcePath: String, to!: String, overwrite!: Bool = false): Unit

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func rename(sourcePath: Path, to!: Path, overwrite!: Bool = false): Unit

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func removeIfExists(path: Path, recursive!: Bool = false): Bool

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func removeIfExists(path: String, recursive!: Bool = false): Bool

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class Directory {
    /*
    * @throws IllegalArgumentException while path is empty, or path is current directory,
    * or path is root directory, or path contains null character.
    * @throws FSException while path is exist, or while recursive is false
    * and the middle path is not exist.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func create(path: String, recursive!: Bool = false): Unit
    
    /*
    * @throws IllegalArgumentException while path is empty, or path is current directory,
    * or path is root directory, or path contains null character.
    * @throws FSException while path is exist, or while recursive is false
    * and the middle path is not exist.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func create(path: Path, recursive!: Bool = false): Unit
    
    /*
    * @throws FSException while path is not exist or failed to create temporary directory
    * @throws IllegalArgumentException while path is empty or path contains null character
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func createTemp(directoryPath: String): Path
    
    /*
    * @throws FSException while path is not exist or failed to create temporary directory.
    * @throws IllegalArgumentException while path is empty or path contains null character
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func createTemp(directoryPath: Path): Path
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func isEmpty(path: Path): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func isEmpty(path: String): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func readFrom(path: Path): Array<FileInfo>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func readFrom(path: String): Array<FileInfo>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func walk(path: Path, f: (FileInfo) -> Bool): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func walk(path: String, f: (FileInfo) -> Bool): Unit
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public enum OpenMode <: ToString & Equatable<OpenMode> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Read |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Write |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Append |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    ReadWrite
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: OpenMode): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(that: OpenMode): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

// FD numbers are indexes into the FD table.// Unix/Linux use the Int type for handle, while Windows use HANDLE type.// HANDLE is typedef'd void *, which is really just a 32-bit index, only for more opaque.
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct FileDescriptor {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop fileHandle: IntNative
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class File <: Resource & IOStream & Seekable {
    /**
    * Constructors
    *
    * @param path - The file path.
    * @param mode - The open mode.
    *
    * @throws IllegalArgumentException - If path is empty or path contains null character.
    * @throws FSException - If the file does not exist while operation is open,
    * the file already exists while operation is create,
    * the parent directory of the file does not exist,
    * or other reasons caused fail to open file.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(path: String, mode: OpenMode)
    
    /**
    * Constructors
    *
    * @param path - The file path.
    * @param mode - The open mode.
    *
    * @throws IllegalArgumentException - If path is empty or contains null character.
    * @throws FSException - If the file does not exist while operation is open,
    * the file already exists while operation is create,
    * the parent directory of the file does not exist,
    * or other reasons caused fail to open file.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(path: Path, mode: OpenMode)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop info: FileInfo
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop fileDescriptor: FileDescriptor
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop length: Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func setLength(length: Int64): Unit
    
    /**
    * Read data from file.
    *
    * @param buffer - Read data from file to the byte array.
    *
    * @return Int64 - Size of the data be read.
    *
    * @throws IllegalArgumentException - If buffer is empty.
    * @throws FSException - If the file to read is not opened,
    *      or the file does not have the read permission
    *      or failed to read file
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func read(buffer: Array<Byte>): Int64
    
    /**
    * @throws FSException if system failed to write the file
    * @throws FSException if file is not opened
    * @throws FSException if the file is not allowed to write
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func write(buffer: Array<Byte>): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func flush(): Unit
    
    /**
    * @throws FSException if file can not seek
    * @throws FSException if there is error in parameter
    * @throws FSException if unknown errors occurred
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func seek(sp: SeekPosition): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func canRead(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func canWrite(): Bool
    
    /**
    * @throws FSException if system failed to close file
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func close(): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isClosed(): Bool
    
    /**
    * @throws FSException while path is empty.
    * @throws IllegalArgumentException while path contains null character.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func create(path: Path): File
    
    /**
    * @throws FSException while path is empty.
    * @throws IllegalArgumentException while path contains null character.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func create(path: String): File
    
    /**
    * @throws FSException if failed to create the temporary file or directoryPath is invalid.
    * @throws IllegalArgumentException while path contains null character or path is empty.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func createTemp(directoryPath: String): File
    
    /**
    * @throws FSException if failed to create the temporary file or directoryPath is invalid.
    * @throws IllegalArgumentException while path contains null character or path is empty.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func createTemp(directoryPath: Path): File
    
    /**
    * @throws FSException while path is empty.
    * @throws IllegalArgumentException while path contains null character.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func readFrom(path: Path): Array<Byte>
    
    /**
    * @throws FSException while path is empty.
    * @throws IllegalArgumentException while path contains null character.
    * @throws FSException if file read failed
    * @throws FSException if system failed to close file
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func readFrom(path: String): Array<Byte>
    
    /**
    * @throws FSException while path is empty.
    * @throws IllegalArgumentException while path contains null character.
    * @throws FSException if system failed to close file.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func writeTo(path: Path, buffer: Array<Byte>): Unit
    
    /**
    * @throws FSException while path is empty.
    * @throws IllegalArgumentException while path contains null character.
    * @throws FSException if system failed to close file.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func writeTo(path: String, buffer: Array<Byte>): Unit
    
    /**
    * @throws FSException while path is empty.
    * @throws IllegalArgumentException while path contains null character.
    * @throws FSException if system failed to close file
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func appendTo(path: Path, buffer: Array<Byte>): Unit
    
    /**
    * @throws FSException while path is empty.
    * @throws IllegalArgumentException while path contains null character.
    * @throws FSException if system failed to close file
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func appendTo(path: String, buffer: Array<Byte>): Unit
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct FileInfo <: Equatable<FileInfo> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(path: Path)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(path: String)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop parentDirectory: Option<FileInfo>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop path: Path
    
    /**
    * @throws FSException if system failed to get creation time
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop creationTime: DateTime
    
    /**
    * @throws FSException if system failed to get last access time
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop lastAccessTime: DateTime
    
    /**
    * @throws FSException if system failed to get last modification time
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop lastModificationTime: DateTime
    
    /**
    * @throws FSException if memory copy failed or get directory/file size failed
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop size: Int64
    
    /**
    * @throws FSException if cPath is invalid or symbol not linked
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isSymbolicLink(): Bool
    
    /**
    * @throws FSException if cPath is invalid
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isRegular(): Bool
    
    /**
    * @throws FSException if cPath is invalid
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isDirectory(): Bool
    
    /**
    * @throws FSException if cPath is invalid
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isReadOnly(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isHidden(): Bool
    
    /**
    * @throws FSException if cPath is invalid
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func canExecute(): Bool
    
    /**
    * @throws FSException if cPath is invalid
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func canRead(): Bool
    
    /**
    * @throws FSException if cPath is invalid
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func canWrite(): Bool
    
    /**
    * @throws FSException if cPath is invalid
    * @throws FSException if operation not permitted on Windows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func setExecutable(executable: Bool): Bool
    
    /**
    * @throws FSException if cPath is invalid
    * @throws FSException if operation not permitted on Windows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func setReadable(readable: Bool): Bool
    
    /**
    * @throws FSException if cPath is invalid
    * @throws FSException if operation not permitted on Windows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func setWritable(writable: Bool): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: FileInfo): Bool
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class FSException <: IOException {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class HardLink {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func create(link: Path, to!: Path): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func create(link: String, to!: String): Unit
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func canonicalize(path: String): Path

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func canonicalize(path: Path): Path

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct Path <: Equatable<Path> & Hashable & ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const Separator: String = PATH_SEPARATOR
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const ListSeparator: String = PATH_LISTSEPARATOR
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(rawPath: String)
    
    /**
    * @throws IllegalArgumentException while path contains null character,
    * or path is empty.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop parent: Path
    
    /**
    * @throws IllegalArgumentException while path contains null character,
    * or path is empty.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop fileName: String
    
    /**
    * @throws IllegalArgumentException while path contains null character,
    * or path is empty.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop extensionName: String
    
    /**
    * @throws IllegalArgumentException while path contains null character,
    * or path is empty.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop fileNameWithoutExtension: String
    
    /**
    * @throws IllegalArgumentException while path contains null character,
    * or path is empty.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAbsolute(): Bool
    
    /**
    * @throws IllegalArgumentException while path contains null character,
    * or path is empty.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isRelative(): Bool
    
    /**
    * @throws IllegalArgumentException while rawpath or path contains null character, or rawpath is empty.
    * @throws FSException if path is an absolute path.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func join(path: String): Path
    
    /**
    * @throws IllegalArgumentException while path contains null character,
    * or path is empty.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func join(path: Path): Path
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isEmpty(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func normalize(): Path
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: Path): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SymbolicLink {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func create(link: Path, to!: Path): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func create(link: String, to!: String): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func readFrom(path: String, recursive!: Bool = false): Path
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func readFrom(path: Path, recursive!: Bool = false): Path
}


