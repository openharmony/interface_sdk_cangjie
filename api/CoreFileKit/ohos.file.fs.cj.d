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

package ohos.file.fs
import ohos.business_exception.*
import ohos.ffi.*
import ohos.hilog.*
import ohos.labels.APILevel

import ohos.labels.*
import std.collection.*

/**
* Defines the options used in createRandomAccessFile().
*
* @relation export interface RandomAccessFileOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class RandomAccessFileOptions {
    /**
    * Start position to read the data, in bytes. This parameter is optional. By default, data is read from the current position.
    *
    * @relation start?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var start: Option<Int64>
    
    /**
    * End position to read the data, in bytes. This parameter is optional. The default value is the end of the file.
    *
    * @relation end?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var end: Option<Int64>
    
    /**
    * RandomAccessFileOptions constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public init(
        start!: Option<Int64> = None,
        end!: Option<Int64> = None
    )
}


/**
* Mode Indicates the open flags.
*
* @relation namespace OpenMode
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class OpenMode {
    /**
    * Read only Permission.
    *
    * @relation const READ_ONLY = 0o0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const READ_ONLY: Int64 = 0o0
    
    /**
    * Write only Permission.
    *
    * @relation const WRITE_ONLY = 0o1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const WRITE_ONLY: Int64 = 0o1
    
    /**
    * Write and Read Permission.
    *
    * @relation const READ_WRITE = 0o2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const READ_WRITE: Int64 = 0o2
    
    /**
    * If not exist, create file.
    *
    * @relation const CREATE = 0o100
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const CREATE: Int64 = 0o100
    
    /**
    * File truncate len 0.
    *
    * @relation const TRUNC = 0o1000
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const TRUNC: Int64 = 0o1000
    
    /**
    * File append write.
    *
    * @relation const APPEND = 0o2000
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const APPEND: Int64 = 0o2000
    
    /**
    * File open in nonblocking mode.
    *
    * @relation const NONBLOCK = 0o4000
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const NONBLOCK: Int64 = 0o4000
    
    /**
    * File is Dir.
    *
    * @relation const DIR = 0o200000
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const DIR: Int64 = 0o200000
    
    /**
    * File is not symbolic link.
    *
    * @relation const NOFOLLOW = 0o400000
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const NOFOLLOW: Int64 = 0o400000
    
    /**
    * SYNC IO.
    *
    * @relation const SYNC = 0o4010000
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static const SYNC: Int64 = 0o4010000
}


/**
* Defines the options used in readLines().
*
* @relation export interface Options
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public open class Options {
    /**
    * File encoding format.
    *
    * @relation encoding?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var encoding: String
    
    /**
    * Options constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public init(
        encoding!: String = "utf-8"
    )
}


/**
* Provides a ReaderIterator object.
*
* @relation declare interface ReaderIterator
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class ReaderIterator <: RemoteDataLite {
    /**
    * Obtains the ReaderIterator result.
    *
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900037 - No data available
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation next(): ReaderIteratorResult
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func next(): ReaderIteratorResult
}


/**
* Represents the information obtained by the ReaderIterator object.
*
* @relation export interface ReaderIteratorResult
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class ReaderIteratorResult {
    /**
    * Whether the iteration is complete.
    * The value true means the iteration is complete; the value false means the iteration is not complete.
    *
    * @relation done: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var done: Bool
    
    /**
    * File text content read line by line.
    *
    * @relation value: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var value: String
}


/**
* Defines the options use din write().
*
* @relation export interface WriteOptions extends Options
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class WriteOptions <: Options {
    /**
    * Length of the data to write, in bytes.
    *
    * @relation length?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var length: Option<UIntNative>
    
    /**
    * Start position of the file to write (current filePointer plus offset), in bytes.
    *
    * @relation offset?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var offset: Option<Int64>
    
    /**
    * WriteOptions constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public init(
        length!: Option<UIntNative> = None,
        offset!: Option<Int64> = None,
        encoding!: String = "utf-8"
    )
}


/**
* Defines the options used in read().
*
* @relation export interface ReadOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public open class ReadOptions {
    /**
    * Start position of the file to read (current filePointer plus offset), in bytes.
    *
    * @relation offset?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var offset: Option<Int64>
    
    /**
    * Length of the data to read, in bytes.
    *
    * @relation length?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var length: Option<UIntNative>
    
    /**
    * ReadOptions constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public init(
        offset!: Option<Int64> = None,
        length!: Option<UIntNative> = None
    )
}


/**
* Defines the options used in readText().
*
* @relation export interface ReadTextOptions extends ReadOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class ReadTextOptions <: ReadOptions {
    /**
    * File encoding format.
    *
    * @relation encoding?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var encoding: String
    
    /**
    * ReadTextOptions constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public init(
        offset!: Option<Int64> = None,
        length!: Option<UIntNative> = None,
        encoding!: String = "utf-8"
    )
}


/**
* Enumerates the access modes to verify. If this parameter is left blank, the system checks whether the file exists.
*
* @relation declare enum AccessModeType
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public enum AccessModeType {
    /**
    * Whether the file exists.
    *
    * @relation EXIST = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    Exist |
    /**
    * Verify the write permission on the file.
    *
    * @relation WRITE = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    Write |
    /**
    * Verify the read permission on the file.
    *
    * @relation READ = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    Read |
    /**
    * Verify the read/write permission on the file.
    *
    * @relation READ_WRITE = 6
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    ReadWrite |
    ...
}


/**
* Enumerates the locations of the file to verify.
*
* @relation declare enum AccessFlagType
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public enum AccessFlagType {
    /**
    * The file is stored locally.
    *
    * @relation LOCAL = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    Local |
    ...
}


/**
* Enumerates the types of the relative offset position used in lseek().
*
* @relation declare enum WhenceType
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public enum WhenceType {
    /**
    * Starting position of the file offset.
    *
    * @relation SEEK_SET = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    SeekSet |
    /**
    * Current position of the file offset.
    *
    * @relation SEEK_CUR = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    SeekCur |
    /**
    * Ending position of the file offset.
    *
    * @relation SEEK_END = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    SeekEnd |
    ...
}


/**
* EDefines conflicting file information used in copyDir() or moveDir().
*
* @relation export interface ConflictFiles
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class ConflictFiles {
    /**
    * The path of the source file.
    *
    * @relation srcFile: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var srcFile: String
    
    /**
    * The path of the destination file.
    *
    * @relation destFile: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var destFile: String
}


/**
* Defines the file filtering configuration used by listFile().
*
* @relation export interface Filter
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class Filter {
    /**
    * Locate files that fully match the specified file name extensions, which are of the OR relationship.
    *
    * @relation suffix?: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var suffix: Array<String>
    
    /**
    * Locate files that fuzzy match the specified file names, which are of the OR relationship.
    * Currently, only the wildcard * is supported.
    *
    * @relation displayName?: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var displayName: Array<String>
    
    /**
    * Locate files that fully match the specified MIME types, which are of the OR relationship.
    *
    * @relation mimeType?: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var mimeType: Array<String>
    
    /**
    * Locate files that are greater than or equal to the specified size.
    *
    * @relation fileSizeOver?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var fileSizeOver: ?Int64
    
    /**
    * Locate files whose last modification time is the same or later than the specified time.
    *
    * @relation lastModifiedAfter?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var lastModifiedAfter: ?Float64
    
    /**
    * Whether to exclude the files already in Media. The value true means to exclude the files already in Media;
    * the value false means not to exclude the files already in Media.
    *
    * @relation excludeMedia?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var excludeMedia: Bool
    
    /**
    * Filter constructor.
    *
    * @throws { BusinessException } 13900020 - Invalid argument
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public init(
        suffix!: Array<String> = Array<String>(),
        displayName!: Array<String> = Array<String>(),
        mimeType!: Array<String> = Array<String>(),
        fileSizeOver!: ?Int64 = None,
        lastModifiedAfter!: ?Float64 = None,
        excludeMedia!: Bool = false
    )
}


/**
* ListFileOptions type
*
* @relation export interface ListFileOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class ListFileOptions {
    /**
    * Whether to list all files in the subdirectories recursively. This parameter is optional.
    * The default value is false. If recursion is false, the names of files and directories that meet the filtering
    * requirements in the current directory are returned. If recursion is true, relative paths (starting with /)
    * of all files that meet the specified conditions in the current directory are returned.
    *
    * @relation recursion?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var recursion: Bool
    
    /**
    * Number of file names to list. This parameter is optional. The default value is 0, which means to list all files.
    *
    * @relation listNum?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var listNum: Int32
    
    /**
    * File filtering configuration. This parameter is optional. It specifies the file filtering conditions.
    *
    * @relation filter?: Filter
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public var filter: Filter
    
    /**
    * ListFileOptions constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public init(
        recursion!: Bool = false,
        listNum!: Int32 = 0,
        filter!: Filter = Filter()
    )
}


/**
* FileIo
*
* @relation declare namespace fileIo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class FileIo {
    /**
    *  Obtains detailed attribute information of a file or directory.
    *
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900031 - Function not implemented
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900038 - Value too large for defined data type
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function statSync(file: string | number): Stat
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func stat(file: Int32): Stat
    
    /**
    *  Obtains detailed attribute information of a file or directory.
    *
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900031 - Function not implemented
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900038 - Value too large for defined data type
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function statSync(file: string | number): Stat
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func stat(file: String): Stat
    
    /**
    *  Creates a stream based on a file path.
    *
    * @param { String } mode - r: Open a file for reading. The file must exist.
    * r+: Open a file for both reading and writing. The file must exist.
    * w: Open a file for writing. If the file exists, clear its content. If the file does not exist, create a file.
    * w+: Open a file for both reading and writing. If the file exists, clear its content. If the file does not exist, create a file.
    * a: Open a file in append mode for writing at the end of the file. If the file does not exist, create a file.
    * If the file exists, write data to the end of the file (the original content of the file is reserved).
    * a+: Open a file in append mode for reading or updating at the end of the file.
    * If the file does not exist, create a file.
    * If the file exists, write data to the end of the file (the original content of the file is reserved).
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900006 - No such device or address
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900014 - Device or resource busy
    * @throws { BusinessException } 13900015 - File exists
    * @throws { BusinessException } 13900017 - No such device
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900022 - Too many open files
    * @throws { BusinessException } 13900023 - Text file busy
    * @throws { BusinessException } 13900024 - File too large
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900027 - Read-only file system
    * @throws { BusinessException } 13900029 - Resource deadlock would occur
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900038 - Value too large for defined data type
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 13900042 - Network is unreachable
    * @relation declare function createStreamSync(path: string, mode: string): Stream
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func createStream(path: String, mode: String): Stream
    
    /**
    *  Opens a stream based on an FD.
    *
    * @param { String } mode - r: Open a file for reading. The file must exist.
    * r+: Open a file for both reading and writing. The file must exist.
    * w: Open a file for writing. If the file exists, clear its content. If the file does not exist, create a file.
    * w+: Open a file for both reading and writing. If the file exists, clear its content. If the file does not exist, create a file.
    * a: Open a file in append mode for writing at the end of the file. If the file does not exist, create a file.
    * If the file exists, write data to the end of the file (the original content of the file is reserved).
    * a+: Open a file in append mode for reading or updating at the end of the file. If the file does not exist,
    * create a file. If the file exists, write data to the end of the file (the original content of the file is reserved).
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900006 - No such device or address
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900014 - Device or resource busy
    * @throws { BusinessException } 13900015 - File exists
    * @throws { BusinessException } 13900017 - No such device
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900022 - Too many open files
    * @throws { BusinessException } 13900023 - Text file busy
    * @throws { BusinessException } 13900024 - File too large
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900027 - Read-only file system
    * @throws { BusinessException } 13900029 - Resource deadlock would occur
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900038 - Value too large for defined data type
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function fdopenStreamSync(fd: number, mode: string): Stream
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func fdopenStream(fd: Int32, mode: String): Stream
    
    /**
    *  Obtains information about a symbolic link that is used to refer to a file or directory.
    *
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900038 - Value too large for defined data type
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function lstatSync(path: string): Stat
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func lstat(path: String): Stat
    
    /**
    *  Checks whether a file or directory exists or has the operation permission.
    *
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900023 - Text file busy
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function accessSync(path: string, mode: AccessModeType, flag: AccessFlagType): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func access(path: String, mode!: AccessModeType = AccessModeType.Exist,
        flag!: AccessFlagType = AccessFlagType.Local): Bool
    
    /**
    *  Opens a file or directory.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900006 - No such device or address
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900014 - Device or resource busy
    * @throws { BusinessException } 13900015 - File exists
    * @throws { BusinessException } 13900017 - No such device
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900022 - Too many open files
    * @throws { BusinessException } 13900023 - Text file busy
    * @throws { BusinessException } 13900024 - File too large
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900027 - Read-only file system
    * @throws { BusinessException } 13900029 - Resource deadlock would occur
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900038 - Value too large for defined data type
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 13900044 - Network is unreachable
    * @relation declare function openSync(path: string, mode?: number): File
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func open(path: String, mode!: Int64 = OpenMode.READ_ONLY): File
    
    /**
    *  Opens a File object based on an FD.
    *
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900014 - Device or resource busy
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900022 - Too many open files
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function dup(fd: number): File
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func dup(fd: Int32): File
    
    /**
    *  Reads data from a file.
    *
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 13900044 - Network is unreachable
    * @relation declare function readSync(fd: number, buffer: ArrayBuffer, options?: ReadOptions): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func read(fd: Int32, buffer: Array<Byte>, options!: ReadOptions = ReadOptions()): Int64
    
    /**
    *  Writes data to a file.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900024 - File too large
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function writeSync(fd: number, buffer: ArrayBuffer | string, options?: WriteOptions): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func write(fd: Int32, buffer: Array<Byte>, options!: WriteOptions = WriteOptions()): Int64
    
    /**
    *  Writes data to a file.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900024 - File too large
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function writeSync(fd: number, buffer: ArrayBuffer | string, options?: WriteOptions): number;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func write(fd: Int32, buffer: String, options!: WriteOptions = WriteOptions()): Int64
    
    /**
    *  Creates a directory.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900015 - File exists
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900028 - Too many links
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function mkdirSync(path: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func mkdir(path: String): Unit
    
    /**
    *  Creates a directory.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900015 - File exists
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900028 - Too many links
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function mkdirSync(path: string, recursion: boolean): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func mkdir(path: String, recursion: Bool): Unit
    
    /**
    *  Removes a directory.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900014 - Device or resource busy
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900027 - Read-only file system1
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900032 - Directory not empty
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function rmdirSync(path: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func rmdir(path: String): Unit
    
    /**
    *  Moves the source directory to the destination directory.
    *
    * @param { Int32 } [mode!: Int32 = 0] - Move mode. The default value is 0.
    * 0: Throw an exception if a directory conflict occurs.
    * An exception will be thrown if the destination directory contains a non-empty directory with the same name as the source directory.
    * 1: Throw an exception if a file conflict occurs.
    * An exception will be thrown if the destination directory contains a directory with the same name as the source directory,
    * and a file with the same name exists in the conflict directory. All the non-conflicting files in the source directory
    * will be moved to the destination directory, and the non-conflicting files in the destination directory will be retained.
    * The data attribute in the error returned provides information about the conflicting files in the Array<ConflictFiles> format.
    * 2: Forcibly overwrite the conflicting files in the destination directory.
    * When the destination directory contains a directory with the same name as the source directory,
    * the files with the same names in the destination directory are overwritten forcibly;
    * the files without conflicts in the destination directory are retained.
    * 3: Forcibly overwrite the conflicting directory.
    * The source directory is moved to the destination directory, and the content of the moved directory is the
    * same as that of the source directory. If the destination directory contains a directory with the same name
    * as the source directory, all original files in the directory will be deleted.
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900014 - Device or resource busy
    * @throws { BusinessException } 13900015 - File exists
    * @throws { BusinessException } 13900016 - Cross-device link
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900027 - Read-only file system
    * @throws { BusinessException } 13900028 - Too many links
    * @throws { BusinessException } 13900032 - Directory not empty
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function moveDirSync(src: string, dest: string, mode?: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func moveDir(src: String, dest: String, mode!: Int32 = 0): Unit
    
    /**
    *  Renames a file or directory.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900014 - Device or resource busy
    * @throws { BusinessException } 13900015 - File exists
    * @throws { BusinessException } 13900016 - Cross-device link
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900027 - Read-only file system
    * @throws { BusinessException } 13900028 - Too many links
    * @throws { BusinessException } 13900032 - Directory not empty
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function renameSync(oldPath: string, newPath: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func rename(oldPath: String, newPath: String): Unit
    
    /**
    *  Deletes a file.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900014 - Device or resource busy
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900027 - Read-only file system
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function unlinkSync(path: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func unlink(path: String): Unit
    
    /**
    *  Creates a RandomAccessFile instance based on a file path or file object.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900006 - No such device or address
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900014 - Device or resource busy
    * @throws { BusinessException } 13900015 - File exists
    * @throws { BusinessException } 13900017 - No such device
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900022 - Too many open files
    * @throws { BusinessException } 13900023 - Text file busy
    * @throws { BusinessException } 13900024 - File too large
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900027 - Read-only file system
    * @throws { BusinessException } 13900029 - Resource deadlock would occur
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900038 - Value too large for defined data type
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 13900044 - Network is unreachable
    * @relation declare function createRandomAccessFileSync(file: string | File, mode?: number, options?: RandomAccessFileOptions): RandomAccessFile
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func createRandomAccessFile(file: String, mode!: Int64 = OpenMode.READ_ONLY,
        options!: RandomAccessFileOptions = RandomAccessFileOptions()): RandomAccessFile
    
    /**
    *  Creates a RandomAccessFile instance based on a file path or file object.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900006 - No such device or address
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900014 - Device or resource busy
    * @throws { BusinessException } 13900015 - File exists
    * @throws { BusinessException } 13900017 - No such device
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900022 - Too many open files
    * @throws { BusinessException } 13900023 - Text file busy
    * @throws { BusinessException } 13900024 - File too large
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900027 - Read-only file system
    * @throws { BusinessException } 13900029 - Resource deadlock would occur
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900038 - Value too large for defined data type
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 13900044 - Network is unreachable
    * @relation declare function createRandomAccessFileSync(file: string | File, mode?: number, options?: RandomAccessFileOptions): RandomAccessFile
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func createRandomAccessFile(file: File, mode!: Int64 = OpenMode.READ_ONLY,
        options!: RandomAccessFileOptions = RandomAccessFileOptions()): RandomAccessFile
    
    /**
    *  Copies the source directory to the destination directory.
    *
    * @param { Int32 } [mode!: Int32 = 0] - Copy mode. The default value is 0.
    * 0: Throw an exception if a file conflict occurs.
    * An exception will be thrown if the destination directory contains a directory with the same name as the source directory,
    * and a file with the same name exists in the conflict directory. All the non-conflicting files in the source directory will be moved
    * to the destination directory, and the non-conflicting files in the destination directory will be retained.
    * The data attribute in the error returned provides information about the conflicting files in the Array<ConflictFiles> format.
    * 1: Forcibly overwrite the files with the same name in the destination directory.
    * When the destination directory contains a directory with the same name as the source directory,
    * the files with the same names in the destination directory are overwritten forcibly;
    * the files without conflicts in the destination directory are retained.
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900015 - File exists
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900031 - Function not implemented
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900038 - Value too large for defined data type
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 13900044 - Network is unreachable
    * @relation declare function copyDirSync(src: string, dest: string, mode?: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func copyDir(src: String, dest: String, mode!: Int32 = 0): Unit
    
    /**
    *  Copies a file.
    *
    * @param { number } [mode = 0] - Whether to overwrite the file with the same name in the destination directory.
    * The default value is 0, which is the only value supported.
    * 0: overwrite the file with the same name and truncate the part that is not overwritten.
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900031 - Function not implemented
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900038 - Value too large for defined data type
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 13900044 - Network is unreachable
    * @relation declare function copyFileSync(src: string | number, dest: string | number, mode?: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func copyFile(src: String, dest: String, mode!: Int32 = 0): Unit
    
    /**
    *  Copies a file.
    *
    * @param { number } [mode = 0] - Whether to overwrite the file with the same name in the destination directory.
    * The default value is 0, which is the only value supported.
    * 0: overwrite the file with the same name and truncate the part that is not overwritten.
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900031 - Function not implemented
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900038 - Value too large for defined data type
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 13900044 - Network is unreachable
    * @relation declare function copyFileSync(src: string | number, dest: string | number, mode?: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func copyFile(src: String, dest: Int32, mode!: Int32 = 0): Unit
    
    /**
    *  Copies a file.
    *
    * @param { number } [mode = 0] - Whether to overwrite the file with the same name in the destination directory.
    * The default value is 0, which is the only value supported.
    * 0: overwrite the file with the same name and truncate the part that is not overwritten.
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900031 - Function not implemented
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900038 - Value too large for defined data type
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 13900044 - Network is unreachable
    * @relation declare function copyFileSync(src: string | number, dest: string | number, mode?: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func copyFile(src: Int32, dest: String, mode!: Int32 = 0): Unit
    
    /**
    *  Copies a file.
    *
    * @param { number } [mode = 0] - Whether to overwrite the file with the same name in the destination directory.
    * The default value is 0, which is the only value supported.
    * 0: overwrite the file with the same name and truncate the part that is not overwritten.
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900031 - Function not implemented
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900038 - Value too large for defined data type
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 13900044 - Network is unreachable
    * @relation declare function copyFileSync(src: string | number, dest: string | number, mode?: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func copyFile(src: Int32, dest: Int32, mode!: Int32 = 0): Unit
    
    /**
    *  Moves a file.
    *
    * @param { Int32 } [mode!: Int32 = 0] - Move mode.
    * The value 0 means to overwrite the file with the same name in the destination directory;
    * the value 1 means to throw an exception. The default value is 0.
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900014 - Device or resource busy
    * @throws { BusinessException } 13900015 - File exists
    * @throws { BusinessException } 13900016 - Cross-device link
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900027 - Read-only file system
    * @throws { BusinessException } 13900028 - Too many links
    * @throws { BusinessException } 13900032 - Directory not empty
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function moveFileSync(src: string, dest: string, mode?: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func moveFile(src: String, dest: String, mode!: Int32 = 0): Unit
    
    /**
    *  Creates a temporary directory.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900015 - File exists
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900028 - Too many links
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function mkdtempSync(prefix: string): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func mkdtemp(prefix: String): String
    
    /**
    *  Creates a stream based on a file path.
    *
    * @param { Int64 } [len!: Int64 = 0] - File length, in bytes, after truncation. The default value is 0.
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900023 - Text file busy
    * @throws { BusinessException } 13900024 - File too large
    * @throws { BusinessException } 13900027 - Read-only file system
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function truncateSync(file: string | number, len?: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func truncate(file: String, len!: Int64 = 0): Unit
    
    /**
    *  Creates a stream based on a file path.
    *
    * @param { Int64 } [len!: Int64 = 0] - File length, in bytes, after truncation. The default value is 0.
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900023 - Text file busy
    * @throws { BusinessException } 13900024 - File too large
    * @throws { BusinessException } 13900027 - Read-only file system
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function truncateSync(file: string | number, len?: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func truncate(file: Int32, len!: Int64 = 0): Unit
    
    /**
    *  Closes a file or directory.
    *
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function closeSync(file: number | File): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func close(file: Int32): Unit
    
    /**
    *  Closes a file or directory.
    *
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function closeSync(file: number | File): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func close(file: File): Unit
    
    /**
    *  Reads the text content of a file line by line.
    *
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900015 - File exists
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900022 - Too many open files
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900027 - Read-only file system
    * @throws { BusinessException } 13900030 - File name too long
    * @throws { BusinessException } 13900033 - Too many symbolic links encountered
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 13900044 - Network is unreachable
    * @relation declare function readLinesSync(filePath: string, options?: Options): ReaderIterator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func readLines(filePath: String, options!: Options = Options()): ReaderIterator
    
    /**
    *  Adjusts the position of the file offset pointer.
    *
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900026 - Illegal seek
    * @throws { BusinessException } 13900038 - Value too large for defined data type
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function lseek(fd: number, offset: number, whence?: WhenceType): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func lseek(fd: Int32, offset: Int64, whence!: WhenceType = SeekSet): Int64
    
    /**
    *  Synchronizes the data of a file.
    *
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900027 - Read-only file system
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function fdatasyncSync(fd: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func fdatasync(fd: Int32): Unit
    
    /**
    *  Synchronizes the cached data of a file to storage.
    *
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900027 - Read-only file system
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function fsyncSync(fd: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func fsync(fd: Int32): Unit
    
    /**
    *  Lists all file names in a directory.
    *
    * @param { String } path - Application sandbox path of the directory.
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900011 - Out of memory
    * @throws { BusinessException } 13900018 - Not a directory
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function listFileSync(path: string, options?: ListFileOptions): string[]
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func listFile(path: String, options!: ListFileOptions = ListFileOptions()): Array<String>
    
    /**
    *  Reads the text of a file.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900024 - File too large
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 13900044 - Network is unreachable
    * @relation function readTextSync(filePath: string, options?: ReadTextOptions): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func readText(filePath: String, options!: ReadTextOptions = ReadTextOptions()): String
    
    /**
    *  Updates the latest access timestamp of a file.
    *
    * @param { number } mtime - New timestamp. The value is the number of milliseconds elapsed since the Epoch time (00:00:00 UTC on January 1, 1970)
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900002 - No such file or directory
    * @throws { BusinessException } 13900012 - Permission denied
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900027 - Read-only file system
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation declare function utimes(path: string, mtime: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func utimes(path: String, mtime: Float64): Unit
}


/**
* File object.
*
* @relation declare interface File
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class File <: RemoteDataLite {
    /**
    * FD of the file.
    *
    * @relation readonly fd: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop fd: Int32
    
    /**
    * Path of the file.
    *
    * @relation readonly path: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop path: String
    
    /**
    * Name of the file.
    *
    * @relation readonly name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop name: String
    
    /**
    * Applies an exclusive lock or a shared lock on this file in non-blocking mode.
    *
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 13900043 - No record locks available
    * @relation tryLock(exclusive?: boolean): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func tryLock(exclusive!: Bool = false): Unit
    
    /**
    * Unlocks a file.
    *
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 13900043 - No record locks available
    * @relation unlock(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func unlock(): Unit
    
    /**
    * Obtains the parent directory of this file object.
    *
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 14300002 - Invalid URI
    * @relation getParent(): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func getParent(): String
}


/**
* Provides APIs for randomly reading and writing a stream. Before invoking any API of RandomAccessFile,
* you need to use createRandomAccessFile() to create a RandomAccessFile instance.
*
* @relation declare interface RandomAccessFile
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class RandomAccessFile <: RemoteDataLite {
    /**
    * FD of the file.
    *
    * @relation readonly fd: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop fd: Int32
    
    /**
    * Offset pointer to the RandomAccessFile instance.
    *
    * @relation readonly filePointer: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop filePointer: Int64
    
    /**
    * Sets the file offset pointer.
    *
    * @relation setFilePointer(filePointer: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func setFilePointer(filePointer: Int64): Unit
    
    /**
    * Closes this RandomAccessFile instance.
    *
    * @relation close(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func close(): Unit
    
    /**
    * Write randomAccessFile.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900024 - File too large
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation writeSync(buffer: ArrayBuffer | string, options?: WriteOptions): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func write(buffer: String, options!: WriteOptions = WriteOptions()): Int64
    
    /**
    * Write randomAccessFile.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900024 - File too large
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation writeSync(buffer: ArrayBuffer | string, options?: WriteOptions): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func write(buffer: Array<Byte>, options!: WriteOptions = WriteOptions()): Int64
    
    /**
    * Reads data from a file.
    *
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 13900044 - Network is unreachable
    * @relation readSync(buffer: ArrayBuffer, options?: ReadOptions): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func read(buffer: Array<Byte>, options!: ReadOptions = ReadOptions()): Int64
}


/**
* Represents detailed file information. Before calling any API of the Stat() class,
* use stat() to create a Stat instance.
*
* @relation declare interface Stat
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class Stat <: RemoteDataLite {
    /**
    * File identifier, which varies with files on the same device.
    *
    * @relation readonly ino: bigint
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop ino: Int64
    
    /**
    * File permissions. The meaning of each bit is as follows:
    * The following values are in octal format. The return values are in decimal format. You need to convert the values.
    * 0o400: The user has the read permission on a regular file or a directory entry.
    * 0o200: The user has the permission to write a regular file or create and delete a directory entry.
    * 0o100: The user has the permission to execute a regular file or search for the specified path in a directory.
    * 0o040: The user group has the read permission on a regular file or a directory entry.
    * 0o020: The user group has the permission to write a regular file or create and delete a directory entry.
    * 0o010: The user group has the permission to execute a regular file or search for the specified path in a directory.
    * 0o004: Other users have the permission to read a regular file or read a directory entry.
    * 0o002: Other users have the permission to write a regular file or create and delete a directory entry.
    * 0o001: Other users have the permission to execute a regular file or search for the specified path in a directory.
    *
    * @relation readonly mode: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop mode: Int64
    
    /**
    * ID of the file owner.
    *
    * @relation readonly uid: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop uid: Int64
    
    /**
    * ID of the user group of the file.
    *
    * @relation readonly gid: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop gid: Int64
    
    /**
    * File size, in bytes. This parameter is valid only for regular files.
    *
    * @relation readonly size: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop size: Int64
    
    /**
    * Time when the file was last accessed. The value is the number of seconds elapsed since 00:00:00 on January 1, 1970.
    * NOTE: Currently, user data partitions are mounted in noatime mode by default, and atime update is disabled.
    *
    * @relation readonly atime: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop atime: Int64
    
    /**
    * Time when the file content was last modified. The value is the number of seconds elapsed
    * since 00:00:00 on January 1, 1970.
    *
    * @relation readonly mtime: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop mtime: Int64
    
    /**
    * Time when the file metadata was last modified. The value is the number of seconds elapsed
    * since 00:00:00 on January 1, 1970.
    *
    * @relation readonly ctime: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop ctime: Int64
    
    /**
    * Checks whether this file is a block special file. A block special file supports access by block only, and it is cached when accessed.
    *
    * @relation isBlockDevice(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isBlockDevice(): Bool
    
    /**
    * Checks whether this file is a character special file. A character special device supports random access, and it is not cached when accessed.
    *
    * @relation isCharacterDevice(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isCharacterDevice(): Bool
    
    /**
    * Checks whether this file is a directory.
    *
    * @relation isDirectory(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isDirectory(): Bool
    
    /**
    * Checks whether this file is a named pipe (or FIFO). Named pipes are used for inter-process communication.
    *
    * @relation isFIFO(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isFIFO(): Bool
    
    /**
    * Checks whether this file is a regular file.
    *
    * @relation isFile(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isFile(): Bool
    
    /**
    * Checks whether this file is a socket.
    *
    * @relation isSocket(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isSocket(): Bool
    
    /**
    * Checks whether this file is a symbolic link.
    *
    * @relation isSymbolicLink(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isSymbolicLink(): Bool
}


/**
* Provides API for stream operations. Before calling any API of Stream,
* you need to create a Stream instance by using createStream or fdopenStream.
*
* @relation declare interface Stream
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class Stream <: RemoteDataLite {
    /**
    * Close stream.
    *
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation closeSync(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func close(): Unit
    
    /**
    * Flushes this stream.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900024 - File too large
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation flushSync(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func flush(): Unit
    
    /**
    * Writes data to this stream.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900024 - File too large
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation writeSync(buffer: ArrayBuffer | string, options?: WriteOptions): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func write(buffer: String, options!: WriteOptions = WriteOptions()): Int64
    
    /**
    * Writes data to this stream.
    *
    * @throws { BusinessException } 13900001 - Operation not permitted
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900024 - File too large
    * @throws { BusinessException } 13900025 - No space left on device
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900041 - Quota exceeded
    * @throws { BusinessException } 13900042 - Unknown error
    * @relation writeSync(buffer: ArrayBuffer | string, options?: WriteOptions): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func write(buffer: Array<Byte>, options!: WriteOptions = WriteOptions()): Int64
    
    /**
    * Reads data from this stream.
    *
    * @throws { BusinessException } 13900004 - Interrupted system call
    * @throws { BusinessException } 13900005 - I/O error
    * @throws { BusinessException } 13900008 - Bad file descriptor
    * @throws { BusinessException } 13900010 - Try again
    * @throws { BusinessException } 13900013 - Bad address
    * @throws { BusinessException } 13900019 - Is a directory
    * @throws { BusinessException } 13900020 - Invalid argument
    * @throws { BusinessException } 13900034 - Operation would block
    * @throws { BusinessException } 13900042 - Unknown error
    * @throws { BusinessException } 13900044 - Network is unreachable
    * @relation readSync(buffer: ArrayBuffer, options?: ReadOptions): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func read(buffer: Array<Byte>, options!: ReadOptions = ReadOptions()): Int64
}


