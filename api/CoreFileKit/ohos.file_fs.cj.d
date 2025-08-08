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

package ohos.file_fs
import ohos.ffi.*
import ohos.hilog.*
import ohos.base.*
import ohos.labels.*
import std.collection.*


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public enum OpenMode {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    READ_ONLY |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    WRITE_ONLY |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    READ_WRITE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    CREATE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    TRUNC |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    APPEND |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    NONBLOCK |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    DIR |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    NOFOLLOW |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    SYNC |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop mode: Int64
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public struct Options {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public Options(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public var encoding!: String = "utf-8"
    )
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class ReaderIterator <: RemoteDataLite {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func next(): ReaderIteratorResult
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public struct ReaderIteratorResult {
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public struct WriteOptions {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public WriteOptions(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public var length!: Option<UIntNative> = None,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public var offset!: Option<Int64> = None,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public var encoding!: String = "utf-8"
    )
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public struct ReadOptions {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public ReadOptions(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public var length!: Option<UIntNative> = None,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public var offset!: Option<Int64> = None
    )
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public struct ReadTextOptions {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public ReadTextOptions(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public var length!: Option<Int64> = None,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public var offset!: Int64 = 0,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public var encoding!: String = "utf-8"
    )
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public enum WhenceType {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    SEEK_SET |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    SEEK_CUR |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    SEEK_END |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop whenceType: Int32
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public struct ConflictFiles {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public ConflictFiles(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public let srcFile: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public let destFile: String
    )
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public struct Filter {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public Filter(
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public var suffix!: Array<String> = Array<String>(),
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public var displayName!: Array<String> = Array<String>(),
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public var mimeType!: Array<String> = Array<String>(),
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public var fileSizeOver!: ?Int64 = None,
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public var lastModifiedAfter!: ?Float64 = None,
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public var excludeMedia!: Bool = false
    )
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public struct ListFileOptions {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public ListFileOptions(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public let recursion!: Bool = false,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public let listNum!: Int32 = 0,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.FileManagement.File.FileIO"
        ]
        public let filter!: Filter = Filter()
    )
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class FileFs {
    /**
    *  @brief statSync(file: string | number): Stat
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func stat(file: Int32): Stat
    
    /**
    *  @brief statSync(file: string | number): Stat
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func stat(file: String): Stat
    
    /**
    *  @brief createStreamSync(path: string, mode: string): Stream
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func createStream(path: String, mode: String): Stream
    
    /**
    *  @brief fdopenStreamSync(fd: number, mode: string): Stream
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func fdopenStream(fd: Int32, mode: String): Stream
    
    /**
    *  @brief lstatSync(path: string): Stat
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func lstat(path: String): Stat
    
    /**
    *  @brief accessSync(path: string): boolean
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func access(path: String): Bool
    
    /**
    *  openSync(path: string, mode?: number): File
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func open(path: String, mode!: Int64 = READ_ONLY.mode): File
    
    /**
    *  dup(fd: number): File
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func dup(fd: Int32): File
    
    /**
    *  readSync(fd: number, buffer: ArrayBuffer, options?: ReadOptions): number
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func read(fd: Int32, buffer: Array<Byte>, options!: ReadOptions = ReadOptions()): Int64
    
    /**
    *  writeSync(fd: number, buffer: ArrayBuffer | string, options?: WriteOptions): number
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func write(fd: Int32, buffer: Array<Byte>, options!: WriteOptions = WriteOptions()): Int64
    
    /**
    *  writeSync(fd: number, buffer: ArrayBuffer | string, options?: WriteOptions): number
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func write(fd: Int32, buffer: String, options!: WriteOptions = WriteOptions()): Int64
    
    /**
    *  @brief mkdirSync(path: string): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func mkdir(path: String): Unit
    
    /**
    *  @brief mkdirSync(path: string, recursion: boolean): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func mkdir(path: String, recursion: Bool): Unit
    
    /**
    *  @brief rmdirSync(path: string): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func rmdir(path: String): Unit
    
    /**
    *  @brief moveDirSync(src: string, dest: string, mode?: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func moveDir(src: String, dest: String, mode!: Int32 = 0): Unit
    
    /**
    *  @brief renameSync(oldPath: string, newPath: string): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func rename(oldPath: String, newPath: String): Unit
    
    /**
    *  @brief unlinkSync(path: string): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func unlink(path: String): Unit
    
    /**
    *  @brief createRandomAccessFileSync(file: string | File, mode?: number): RandomAccessFile
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func createRandomAccessFile(file: String, mode!: Int64 = 0): RandomAccessFile
    
    /**
    *  @brief createRandomAccessFileSync(file: string | File, mode?: number): RandomAccessFile
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func createRandomAccessFile(file: File, mode!: Int64 = 0): RandomAccessFile
    
    /**
    *  @brief copyDirSync(src: string, dest: string, mode?: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func copyDir(src: String, dest: String, mode!: Int32 = 0): Unit
    
    /**
    *  @brief copyFileSync(src: string | number, dest: string | number, mode?: number): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func copyFile(src: String, dest: String, mode!: Int32 = 0): Unit
    
    /**
    *  @brief copyFileSync(src: string | number, dest: string | number, mode?: number): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func copyFile(src: String, dest: Int32, mode!: Int32 = 0): Unit
    
    /**
    *  @brief copyFileSync(src: string | number, dest: string | number, mode?: number): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func copyFile(src: Int32, dest: String, mode!: Int32 = 0): Unit
    
    /**
    *  @brief copyFileSync(src: string | number, dest: string | number, mode?: number): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func copyFile(src: Int32, dest: Int32, mode!: Int32 = 0): Unit
    
    /**
    *  @brief moveFileSync(src: string, dest: string, mode?: number): void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func moveFile(src: String, dest: String, mode!: Int32 = 0): Unit
    
    /**
    *  @brief mkdtempSync(prefix: string): string
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func mkdtemp(prefix: String): String
    
    /**
    *  @brief truncateSync(file: string | number, len?: number): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func truncate(file: String, len!: Int64 = 0): Unit
    
    /**
    *  @brief truncateSync(file: string | number, len?: number): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func truncate(file: Int32, len!: Int64 = 0): Unit
    
    /**
    *  @brief closeSync(file: number | File): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func close(file: Int32): Unit
    
    /**
    *  @brief closeSync(file: number | File): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func close(file: File): Unit
    
    /**
    *  @brief readLinesSync(filePath: string, options?: Options): ReaderIterator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func readLines(filePath: String, options!: Options = Options()): ReaderIterator
    
    /**
    *  @brief lseek(fd: number, offset: number, whence?: WhenceType): number
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func lseek(fd: Int32, offset: Int64, whence!: WhenceType = SEEK_SET): Int64
    
    /**
    *  @brief fdatasyncSync(fd: number): void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func fdatasync(fd: Int32): Unit
    
    /**
    *  @brief fsyncSync(fd: number): void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func fsync(fd: Int32): Unit
    
    /**
    *  @brief function listFileSync(path: string,
    *                               options?: {recursion?: boolean; listNum?: number; filter?: Filter;}): string[]
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func listFile(path: String, options!: ListFileOptions = ListFileOptions()): Array<String>
    
    /**
    *  @brief readTextSync(filePath: string, options?: ReadTextOptions): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func readText(filePath: String, option!: ReadTextOptions = ReadTextOptions()): String
    
    /**
    *  @brief utimes(path: string, mtime: number): void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public static func utimes(path: String, mtime: Float64): Unit
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class ConflictFileException <: BusinessException {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public let data: Array<ConflictFiles>
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class File <: RemoteDataLite {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop fd: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop path: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop name: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func tryLock(exclusive!: Bool = false): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func unLock(): Unit
    
    /**
    *  @brief getParent(): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func getParent(): String
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class RandomAccessFile <: RemoteDataLite {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop fd: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop filePointer: Int64
    
    /**
    *  @brief setFilePointer(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func setFilePointer(fp: Int64): Unit
    
    /**
    *  @brief close(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func close(): Unit
    
    /**
    *  @brief writeSync(buffer: ArrayBuffer | string,
    *                   options?: { offset?: number; length?: number; encoding?: string; }): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func write(buffer: String, writeOptions!: WriteOptions = WriteOptions()): Int64
    
    /**
    *  @brief writeSync(buffer: ArrayBuffer | string,
    *                   options?: { offset?: number; length?: number; encoding?: string; }): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func write(buffer: Array<Byte>, writeOptions!: WriteOptions = WriteOptions()): Int64
    
    /**
    *  @brief readSync(buffer: ArrayBuffer, options?: { offset?: number; length?: number; }): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func read(buffer: Array<Byte>, readOptions!: ReadOptions = ReadOptions()): Int64
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class Stat <: RemoteDataLite {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop ino: Int64
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop mode: Int64
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop uid: Int64
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop gid: Int64
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop size: Int64
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop atime: Int64
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop mtime: Int64
    
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public prop ctime: Int64
    
    /**
    *  @brief isBlockDevice(): boolean
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isBlockDevice(): Bool
    
    /**
    *  @brief isCharacterDevice(): boolean
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isCharacterDevice(): Bool
    
    /**
    *  @brief isDirectory(): boolean
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isDirectory(): Bool
    
    /**
    *  @brief isFIFO(): boolean
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isFIFO(): Bool
    
    /**
    *  @brief isFile(): boolean
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isFile(): Bool
    
    /**
    *  @brief isSocket(): boolean
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isSocket(): Bool
    
    /**
    *  @brief isSymbolicLink(): boolean
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func isSymbolicLink(): Bool
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.FileManagement.File.FileIO"
]
public class Stream <: RemoteDataLite {
    /**
    *  @brief closeSync(file: number | File): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func close(): Unit
    
    /**
    *  @brief flushSync(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func flush(): Unit
    
    /**
    *  @brief writeSync(fd: number, buffer: ArrayBuffer | string,
    *                   options?: { offset?: number; length?: number; encoding?: string; }): number
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func write(buffer: String, options!: WriteOptions = WriteOptions()): Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func write(buffer: Array<Byte>, options!: WriteOptions = WriteOptions()): Int64
    
    /**
    *  @brief readSync(buffer: ArrayBuffer, options?: { offset?: number; length?: number; }): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.FileManagement.File.FileIO"
    ]
    public func read(arrayBuffer: Array<Byte>, options!: ReadOptions = ReadOptions()): Int64
}


