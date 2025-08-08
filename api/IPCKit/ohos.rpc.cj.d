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

package ohos.rpc
import ohos.labels.*
import ohos.ffi.*
import ohos.base.BusinessException

import std.collection.HashMap
import std.deriving.*
import ohos.base.Callback1Argument
import std.collection.ArrayList
import std.sync.*
import std.sync.Mutex
import std.collection.*

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.IPC.Core"
]
public class Ashmem <: RemoteDataLite {
    /**
    * The mapped memory is executable.
    *
    * @type { UInt32 }
    * @default 4
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const PROT_EXEC: UInt32 = 4
    
    /**
    * The mapped memory is inaccessible.
    *
    * @type { UInt32 }
    * @default 0
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const PROT_NONE: UInt32 = 0
    
    /**
    * The mapped memory is readable.
    *
    * @type { UInt32 }
    * @default 1
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const PROT_READ: UInt32 = 1
    
    /**
    * The mapped memory is writable.
    *
    * @type { UInt32 }
    * @default 2
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const PROT_WRITE: UInt32 = 2
    
    /**
    * Creates an Ashmem object with the specified name and size.
    *
    * @param { String } name - Name of the Ashmem object to create.
    * @param { Int32 } size - Size (in bytes) of the Ashmem object to create.
    * @returns { Ashmem } Return the Ashmem object if it is created successfully; return null otherwise.
    * @throws { BusinessError } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The Ashmem name passed is empty;
    *     4.The Ashmem size passed is less than or equal to 0.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func create(name: String, size: Int32): Ashmem
    
    /**
    * Creates an Ashmem object by copying the file descriptor (FD) of an existing Ashmem object.
    * The two Ashmem objects point to the same shared memory region.
    *
    * @param { Ashmem } ashmem - Existing Ashmem object.
    * @returns { Ashmem } Ashmem object created.
    * @throws { BusinessError } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The passed parameter is not an Ahmem object;
    *     3.The ashmem instance for obtaining packaging is empty.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func create(ashmem: Ashmem): Ashmem
    
    /**
    * Closes this Ashmem object.
    *
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func closeAshmem(): Unit
    
    /**
    * Deletes the mappings for the specified address range of this Ashmem object.
    *
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func unmapAshmem(): Unit
    
    /**
    * Obtains the mapped memory size of this Ashmem object.
    *
    * @returns { number } Memory size mapped.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getAshmemSize(): Int32
    
    /**
    * Creates the shared file mapping on the virtual address space of this process.
    * The size of the mapping region is specified by this Ashmem object.
    *
    * @param { UInt32 } mapType - Protection level of the memory region to which the shared file is mapped.
    * @throws { BusinessError } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The passed mapType exceeds the maximum protection level.
    * @throws { BusinessError } 1900001 - Failed to call mmap.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func mapTypedAshmem(mapType: UInt32): Unit
    
    /**
    * Maps the shared file to the readable and writable virtual address space of the process.
    *
    * @throws { BusinessError } 1900001 - Failed to call mmap.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func mapReadWriteAshmem(): Unit
    
    /**
    * Maps the shared file to the read-only virtual address space of the process.
    *
    * @throws { BusinessError } 1900001 - Failed to call mmap.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func mapReadonlyAshmem(): Unit
    
    /**
    * Sets the protection level of the memory region to which the shared file is mapped.
    *
    * @param { number } protectionType - Protection type to set.
    * @throws { BusinessError } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessError } 1900002 - Failed to call ioctl.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func setProtectionType(protectionType: UInt32): Unit
    
    /**
    * Writes data to the shared file associated with this Ashmem object.
    *
    * @param { Array<Byte> } buf - Data to write
    * @param { Int64 } size - Size of the data to write
    * @param { Int64 } offset - Start position of the data to write in the memory region associated
    *                   with this Ashmem object.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.Failed to obtain arrayBuffer information.
    * @throws { BusinessException } 1900003 - Failed to write data to the shared memory.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeDataToAshmem(buf: Array<Byte>, size: Int64, offset: Int64): Unit
    
    /**
    * Reads data from the shared file associated with this Ashmem object.
    *
    * @param { Int64 } size - Size of the data to read.
    * @param { Int64 } offset - Start position of the data to read in the memory region associated
    *                   with this Ashmem object.
    * @returns { Array<Byte> } Data read.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900004 - Failed to read data from the shared memory.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readDataFromAshmem(size: Int64, offset: Int64): Array<Byte>
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.IPC.Core"
]
public interface Parcelable {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    func marshalling(dataOut: MessageSequence): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    func unmarshalling(dataIn: MessageSequence): Bool
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.IPC.Core"
]
public interface IRemoteBroker {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    func asObject(): IRemoteObject
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.IPC.Core"
]
public abstract class DeathRecipient {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public open func onRemoteDied(): Unit
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.IPC.Core"
]
public class ErrorCode {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const CHECK_PARAM_ERROR: Int32 = 401
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const OS_MMAP_ERROR: Int32 = 1900001
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const OS_IOCTL_ERROR: Int32 = 1900002
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const WRITE_TO_ASHMEM_ERROR: Int32 = 1900003
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const READ_FROM_ASHMEM_ERROR: Int32 = 1900004
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const ONLY_PROXY_OBJECT_PERMITTED_ERROR: Int32 = 1900005
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const ONLY_REMOTE_OBJECT_PERMITTED_ERROR: Int32 = 1900006
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const COMMUNICATION_ERROR: Int32 = 1900007
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const PROXY_OR_REMOTE_OBJECT_INVALID_ERROR: Int32 = 1900008
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const WRITE_DATA_TO_MESSAGE_SEQUENCE_ERROR: Int32 = 1900009
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const READ_DATA_FROM_MESSAGE_SEQUENCE_ERROR: Int32 = 1900010
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const PARCEL_MEMORY_ALLOC_ERROR: Int32 = 1900011
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const CALL_JS_METHOD_ERROR: Int32 = 1900012
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const OS_DUP_ERROR: Int32 = 1900013
}


@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.IPC.Core"
]
public enum TypeCode {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    INT8_ARRAY |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    UINT8_ARRAY |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    INT16_ARRAY |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    UINT16_ARRAY |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    INT32_ARRAY |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    UINT32_ARRAY |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    FLOAT32_ARRAY |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    FLOAT64_ARRAY |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    BIGINT64_ARRAY |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    BIGUINT64_ARRAY |
    ...
}



@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.IPC.Core"
]
public class IPCSkeleton {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func getContextObject(): IRemoteObject
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func getCallingPid(): Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func getCallingUid(): Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func getCallingTokenId(): UInt32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func getCallingDeviceID(): String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func getLocalDeviceID(): String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func isLocalCalling(): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func flushCmdBuffer(object: IRemoteObject): Unit
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.IPC.Core"
]
public interface IRemoteObject {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    func getLocalInterface(descriptor: String): IRemoteBroker
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    func sendMessageRequest(code: UInt32, data: MessageSequence, reply: MessageSequence, options: MessageOption,
        callback: Callback1Argument<RequestResult>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    func registerDeathRecipient(recipient: DeathRecipient, flags: Int32): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    func unregisterDeathRecipient(recipient: DeathRecipient, flags: Int32): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    func getDescriptor(): String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    func isObjectDead(): Bool
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.IPC.Core"
]
public class MessageOption {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const TF_SYNC: Int32 = 0x00
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const TF_ASYNC: Int32 = 0x01
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const TF_ACCEPT_FDS: Int32 = 0x10
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const TF_WAIT_TIME: Int32 = 0x8
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public init(async!: Bool = false, waitTime!: Int32 = MessageOption.TF_WAIT_TIME)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func isAsync(): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func setAsync(async: Bool): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getFlags(): Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func setFlags(flags: Int32): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getWaitTime(): Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func setWaitTime(waitTime: Int32): Unit
}


/**
* A data object used for remote procedure call (RPC).
* <p>
* During RPC, the sender can use the write methods provided by {@link MessageSequence} to
* write the to-be-sent data into a {@link MessageSequence} object in a specific format, and the receiver can use the
* read methods provided by {@link MessageSequence} to read data of the specific format from
* the {@link MessageSequence} object.
* <p>
* <p>
* The default capacity of a {@link MessageSequence} instance is 200KB. If you want more or less,
* use {@link #setCapacity(int)} to change it.
* </p>
* <b>Note</b>: Only data of the following data types can be written into or read from a {@link MessageSequence}:
* Int8, Int8Array, Int16, Int16Array, Int32, Int32Array, Int64, Int64Array, Float32, Float32Array, Float64, Float64Array,
* Bool, BoolArray, UInt8, UInt8Array, String, StringArray,
* {@link Parcelable}, and ParcelableArray.
*
* @syscap SystemCapability.Communication.IPC.Core
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.IPC.Core"
]
public class MessageSequence <: RemoteDataLite {
    /**
    * Creates an empty {@link MessageSequence} object.
    *
    * @returns { MessageSequence } Return the object created.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func create(): MessageSequence
    
    /**
    * Reclaim the {@link MessageSequence} object.
    *
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func reclaim(): Unit
    
    /**
    * Writes an interface token into the {@link MessageSequence} object.
    *
    * @param { String } token - Interface descriptor to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The String length exceeds 40960 bytes;
    *     4.The number of bytes copied to the buffer is different from the length of the obtained String.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeInterfaceToken(token: String): Unit
    
    /**
    * Reads an interface token from the {@link MessageSequence} object.
    *
    * @returns { String } Return a String value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readInterfaceToken(): String
    
    /**
    * Obtains the size of data (in bytes) contained in the {@link MessageSequence} object.
    *
    * @returns { UInt32 } Return the size of data contained in the {@link MessageSequence} object.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getSize(): UInt32
    
    /**
    * Obtains the storage capacity (in bytes) of the {@link MessageSequence} object.
    *
    * @returns { UInt32 } Return the storage capacity of the {@link MessageSequence} object.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getCapacity(): UInt32
    
    /**
    * Sets the size of data (in bytes) contained in the {@link MessageSequence} object.
    * <p>{@code false} is returned if the data size set in this method is greater
    * than the storage capacity of the {@link MessageSequence}.
    *
    * @param { UInt32 } size - Indicates the data size of the {@link MessageSequence} object.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func setSize(size: UInt32): Unit
    
    /**
    * Sets the storage capacity (in bytes) of the {@link MessageSequence} object.
    * <p>{@code false} is returned if the capacity set in this method is less than
    * the size of data contained in the {@link MessageSequence}.
    *
    * @param { UInt32 } size - Indicates the storage capacity of the {@link MessageSequence} object.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900011 - Memory allocation failed.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func setCapacity(size: UInt32): Unit
    
    /**
    * Obtains the writable data space (in bytes) in the {@link MessageSequence} object.
    * <p>Writable data space = Storage capacity of the {@link MessageSequence} – Size of data contained in
    * the {@link MessageSequence}.
    *
    * @returns { UInt32 } Return the writable data space of the {@link MessageSequence} object.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getWritableBytes(): UInt32
    
    /**
    * Obtains the readable data space (in bytes) in the {@link MessageSequence} object.
    * <p>Readable data space = Size of data contained in the {@link MessageSequence} – Size of data that has been read.
    *
    * @returns { UInt32 } Return the readable data space of the {@link MessageSequence} object.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getReadableBytes(): UInt32
    
    /**
    * Obtains the current read position in the {@link MessageSequence} object.
    *
    * @returns { UInt32 } Return the current read position in the {@link MessageSequence} object.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getReadPosition(): UInt32
    
    /**
    * Obtains the current write position in the {@link MessageSequence} object.
    *
    * @returns { UInt32 } Return the current write position in the {@link MessageSequence} object.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getWritePosition(): UInt32
    
    /**
    * Changes the current read position in the {@link MessageSequence} object.
    * <p>Generally, you are advised not to change the current read position. If you must
    * change it, change it to an accurate position. Otherwise, the read data may be incorrect.
    *
    * @param { UInt32 } pos - Indicates the target position to start data reading.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func rewindWrite(pos: UInt32): Unit
    
    /**
    * Changes the current write position in the {@link MessageSequence} object.
    * <p>Generally, you are advised not to change the current write position. If you must
    * change it, change it to an accurate position. Otherwise, the data to be read may be incorrect.
    *
    * @param { UInt32 } pos - Indicates the target position to start data writing.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func rewindRead(pos: UInt32): Unit
    
    /**
    * Writes information to this MessageSequence object indicating that no exception occurred.
    * <p>After handling requests, you should call this method before writing any data to reply
    * {@link MessageSequence}.
    *
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeNoException(): Unit
    
    /**
    * Reads the exception information from this MessageSequence object.
    * <p>If exception was thrown in server side, it will be thrown here.
    * This method should be called before reading any data from reply {@link MessageSequence}
    * if {@link writeNoException} was invoked in server side.
    *
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readException(): Unit
    
    /**
    * Writes a Int8 value into the {@link MessageSequence} object.
    *
    * @param { Int8 } val - Indicates the Int8 value to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeByte(val: Int8): Unit
    
    /**
    * Writes a Int16 value into the {@link MessageSequence} object.
    *
    * @param { Int16 } val - Indicates the Int16 value to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeShort(val: Int16): Unit
    
    /**
    * Writes an Int32 into the {@link MessageSequence} object.
    *
    * @param { Int32 } val - Indicates the Int32 value to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeInt(val: Int32): Unit
    
    /**
    * Writes a Int64 value into the {@link MessageSequence} object.
    *
    * @param { Int64 } val - Indicates the Int64 value to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeLong(val: Int64): Unit
    
    /**
    * Writes a Float32 value into the {@link MessageSequence} object.
    *
    * @param { Float32 } val - Indicates the Float32 value to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeFloat(val: Float32): Unit
    
    /**
    * Writes a Float64 value into the {@link MessageSequence} object.
    *
    * @param { Float64 } val - Indicates the Float64 value to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeDouble(val: Float64): Unit
    
    /**
    * Writes a Bool value into the {@link MessageSequence} object.
    *
    * @param { Bool } val - Indicates the Bool value to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeBoolean(val: Bool): Unit
    
    /**
    * Writes a UInt8 value into the {@link MessageSequence} object.
    *
    * @param { UInt8 } val - Indicates the UInt8 value to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeChar(val: UInt8): Unit
    
    /**
    * Writes a String value into the {@link MessageSequence} object.
    *
    * @param { String } val - Indicates the String value to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The String length exceeds 40960 bytes;
    *     4.The number of bytes copied to the buffer is different from the length of the obtained String.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeString(val: String): Unit
    
    /**
    * Writes a Int8 array into the {@link MessageSequence} object.
    *
    * @param { Array<Int8> } byteArray - Indicates the Int8 array to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array.
    *     5.The type of the element in the array is incorrect.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeByteArray(byteArray: Array<Int8>): Unit
    
    /**
    * Writes a Int16 array into the {@link MessageSequence} object.
    * Ensure that the data type and size comply with the interface definition.
    * Otherwise,data may be truncated.
    *
    * @param { Array<Int16> } shortArray - Indicates the Int16 array to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array;
    *     5.The type of the element in the array is incorrect.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeShortArray(shortArray: Array<Int16>): Unit
    
    /**
    * Writes a Int32 array into the {@link MessageSequence} object.
    * Ensure that the data type and size comply with the interface definition.
    * Otherwise,data may be truncated.
    *
    * @param { Array<Int32> } intArray - Indicates the Int32 array to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array;
    *     5.The type of the element in the array is incorrect.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeIntArray(intArray: Array<Int32>): Unit
    
    /**
    * Writes a Int64 array into the {@link MessageSequence} object.
    * Ensure that the data type and size comply with the interface definition.
    * Otherwise,data may be truncated.
    *
    * @param { Array<Int64> } longArray - Indicates the Int64 array to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array;
    *     5.The type of the element in the array is incorrect.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeLongArray(longArray: Array<Int64>): Unit
    
    /**
    * Writes a Float32 array into the {@link MessageSequence} object.
    * Ensure that the data type and size comply with the interface definition.
    * Otherwise,data may be truncated.
    *
    * @param { Array<Float32> } floatArray - Indicates the Float32 array to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array;
    *     5.The type of the element in the array is incorrect.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeFloatArray(floatArray: Array<Float32>): Unit
    
    /**
    * Writes a Float64 array into the {@link MessageSequence} object.
    * Ensure that the data type and size comply with the interface definition.
    * Otherwise,data may be truncated.
    *
    * @param { Array<Float64> } doubleArray - Indicates the Float64 array to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array;
    *     5.The type of the element in the array is incorrect.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeDoubleArray(doubleArray: Array<Float64>): Unit
    
    /**
    * Writes a Bool array into the {@link MessageSequence} object.
    * Ensure that the data type and size comply with the interface definition.
    * Otherwise,data may be truncated.
    *
    * @param { Array<Bool> } booleanArray - Indicates the Bool array to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeBooleanArray(booleanArray: Array<Bool>): Unit
    
    /**
    * Writes a UInt8 array into the {@link MessageSequence} object.
    * Ensure that the data type and size comply with the interface definition.
    * Otherwise,data may be truncated.
    *
    * @param { Array<UInt8> } charArray - Indicates the UInt8 array to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeCharArray(charArray: Array<UInt8>): Unit
    
    /**
    * Writes a String array into the {@link MessageSequence} object.
    * Ensure that the data type and size comply with the interface definition.
    * Otherwise,data may be truncated.
    *
    * @param { Array<String> } StringArray - Indicates the String array to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The String length exceeds 40960 bytes;
    *     5.The number of bytes copied to the buffer is different from the length of the obtained String.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeStringArray(stringArray: Array<String>): Unit
    
    /**
    * Reads a Int8 value from the {@link MessageParcel} object.
    *
    * @returns { Int8 } Return a Int8 value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readByte(): Int8
    
    /**
    * Reads a Int16 value from the {@link MessageSequence} object.
    *
    * @returns { Int16 } Return a Int16 value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readShort(): Int16
    
    /**
    * Reads an Int32 value from the {@link MessageSequence} object.
    *
    * @returns { Int32 } Return an Int32 value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readInt(): Int32
    
    /**
    * Reads a Int64 value from the {@link MessageSequence} object.
    *
    * @returns { Int64 } Return a Int64 value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readLong(): Int64
    
    /**
    * Reads a Float32 value from the {@link MessageSequence} object.
    *
    * @returns { Float32 } Return a Float32 value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readFloat(): Float32
    
    /**
    * Reads a Float64 value from the {@link MessageSequence} object.
    *
    * @returns { Float64 } Return a Float64 value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readDouble(): Float64
    
    /**
    * Reads a Bool value from the {@link MessageSequence} object.
    *
    * @returns { Bool } Return a Bool value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readBoolean(): Bool
    
    /**
    * Reads a UInt8 value from the {@link MessageSequence} object.
    *
    * @returns { UInt8 } Return a UInt8 value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readChar(): UInt8
    
    /**
    * Reads a String value from the {@link MessageSequence} object.
    *
    * @returns { String } Return a String value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readString(): String
    
    /**
    * Writes a Int8 array into the {@link MessageSequence} object.
    *
    * @param { ArrayList<Int8> } dataIn - Indicates the Int8 array read from MessageSequence.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readByteArray(dataIn: ArrayList<Int8>): Unit
    
    /**
    * Reads a Int8 array from the {@link MessageSequence} object.
    *
    * @returns { Array<Int8> } Return a Int8 array.
    * @throws { BusinessException } 401 - check param failed
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readByteArray(): Array<Int8>
    
    /**
    * Reads a Int16 array from the {@link MessageSequence} object.
    *
    * @param { ArrayList<Int16> } dataIn - Indicates the Int16 array read from MessageSequence.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readShortArray(dataIn: ArrayList<Int16>): Unit
    
    /**
    * Reads a Int16 array from the {@link MessageSequence} object.
    *
    * @returns { Array<Int16> } Return a Int16 array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readShortArray(): Array<Int16>
    
    /**
    * Reads an Int32 array from the {@link MessageSequence} object.
    *
    * @param { ArrayList<Int32> } dataIn - Indicates the Int32 array to read.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readIntArray(dataIn: ArrayList<Int32>): Unit
    
    /**
    * Reads an Int32 array from the {@link MessageSequence} object.
    *
    * @returns { Array<Int32> } Return an Int32 array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readIntArray(): Array<Int32>
    
    /**
    * Reads a Int64 array from the {@link MessageSequence} object.
    *
    * @param { ArrayList<Int64> } dataIn - Indicates the Int64 array to read.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readLongArray(dataIn: ArrayList<Int64>): Unit
    
    /**
    * Reads a Int64 array from the {@link MessageSequence} object.
    *
    * @returns { Array<Int64> } Return a Int64 array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readLongArray(): Array<Int64>
    
    /**
    * Reads a Float32 array from the {@link MessageSequence} object.
    *
    * @param { ArrayList<Float32> } dataIn - Indicates the Float32 array to read.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readFloatArray(dataIn: ArrayList<Float32>): Unit
    
    /**
    * Reads a Float32 array from the {@link MessageSequence} object.
    *
    * @returns { Array<Float32> } Return a Float32 array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readFloatArray(): Array<Float32>
    
    /**
    * Reads a Float64 array from the {@link MessageSequence} object.
    *
    * @param { ArrayList<Float64> } dataIn - Indicates the Float64 array to read.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readDoubleArray(dataIn: ArrayList<Float64>): Unit
    
    /**
    * Reads a Float64 array from the {@link MessageSequence} object.
    *
    * @returns { Array<Float64> } Return a Float64 array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readDoubleArray(): Array<Float64>
    
    /**
    * Reads a Bool array from the {@link MessageSequence} object.
    *
    * @param { ArrayList<Bool> } dataIn - Indicates the Bool array to read.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readBooleanArray(dataIn: ArrayList<Bool>): Unit
    
    /**
    * Reads a Bool array from the {@link MessageSequence} object.
    *
    * @returns { Array<Bool> } Return a Bool array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readBooleanArray(): Array<Bool>
    
    /**
    * Reads a UInt8 array from the {@link MessageSequence} object.
    *
    * @param { ArrayList<UInt8> } dataIn - Indicates the UInt8 array to read.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readCharArray(dataIn: ArrayList<UInt8>): Unit
    
    /**
    * Reads a UInt8 array from the {@link MessageSequence} object.
    *
    * @returns { Array<UInt8> } Return a UInt8 array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readCharArray(): Array<UInt8>
    
    /**
    * Reads a String array from the {@link MessageSequence} object.
    *
    * @param { ArrayList<String> } dataIn - Indicates the String array to read.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readStringArray(dataIn: ArrayList<String>): Unit
    
    /**
    * Reads a String array from the {@link MessageSequence} object.
    *
    * @returns { Array<String> } Return a String array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readStringArray(): Array<String>
    
    /**
    * Closes the specified file descriptor.
    *
    * @param { Int32 } fd - File descriptor to be closed.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func closeFileDescriptor(fd: Int32): Unit
    
    /**
    * Duplicates the specified file descriptor.
    *
    * @param { Int32 } fd - File descriptor to be duplicated.
    * @returns { Int32 } Return a duplicated file descriptor.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900013 - Failed to call dup.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func dupFileDescriptor(fd: Int32): Int32
    
    /**
    * Checks whether this {@link MessageSequence} object contains a file descriptor.
    *
    * @returns { Bool } Return {@code true} if the {@link MessageSequence} object contains a file descriptor;
    *                      return {@code false} otherwise.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func containFileDescriptors(): Bool
    
    /**
    * Writes a file descriptor to this {@link MessageSequence} object.
    *
    * @param { Int32 } fd - File descriptor to wrote.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeFileDescriptor(fd: Int32): Unit
    
    /**
    * Reads a file descriptor from this {@link MessageSequence} object.
    *
    * @returns { Int32 } Return a file descriptor obtained.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readFileDescriptor(): Int32
    
    /**
    * Writes an anonymous shared memory object to this {@link MessageSequence} object.
    *
    * @param { Ashmem } ashmem - Anonymous shared memory object to wrote.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter is not an instance of the Ashmem object.
    * @throws { BusinessException } 1900003 - Failed to write data to the shared memory.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeAshmem(ashmem: Ashmem): Unit
    
    /**
    * Reads the anonymous shared memory object from this {@link MessageSequence} object.
    *
    * @returns { Ashmem } Return the anonymous share object obtained.
    * @throws { BusinessException } 401 - check param failed
    * @throws { BusinessException } 1900004 - Failed to read data from the shared memory.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readAshmem(): Ashmem
    
    /**
    * Obtains the maximum amount of raw data that can be sent in a time.
    *
    * @returns { number } 128 MB.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getRawDataCapacity(): UInt32
    
    /**
    * Writes the data in an ArrayBuffer object into this {@Link MessageSequence} object.
    *
    * @param { Array<Int8> } buf - Data to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The obtained value of typeCode is incorrect;
    *     5.Failed to obtain arrayBuffer information.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeInt8Array(buf: Array<Int8>): Unit
    
    /**
    * Writes the data in an ArrayBuffer object into this {@Link MessageSequence} object.
    *
    * @param { Array<UInt8> } buf - Data to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The obtained value of typeCode is incorrect;
    *     5.Failed to obtain arrayBuffer information.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeUInt8Array(buf: Array<UInt8>): Unit
    
    /**
    * Writes the data in an ArrayBuffer object into this {@Link MessageSequence} object.
    *
    * @param { Array<Int16> } buf - Data to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The obtained value of typeCode is incorrect;
    *     5.Failed to obtain arrayBuffer information.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeInt16Array(buf: Array<Int16>): Unit
    
    /**
    * Writes the data in an ArrayBuffer object into this {@Link MessageSequence} object.
    *
    * @param { Array<UInt16> } buf - Data to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The obtained value of typeCode is incorrect;
    *     5.Failed to obtain arrayBuffer information.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeUInt16Array(buf: Array<UInt16>): Unit
    
    /**
    * Writes the data in an ArrayBuffer object into this {@Link MessageSequence} object.
    *
    * @param { Array<Int32> } buf - Data to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The obtained value of typeCode is incorrect;
    *     5.Failed to obtain arrayBuffer information.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeInt32Array(buf: Array<Int32>): Unit
    
    /**
    * Writes the data in an ArrayBuffer object into this {@Link MessageSequence} object.
    *
    * @param { Array<UInt32> } buf - Data to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The obtained value of typeCode is incorrect;
    *     5.Failed to obtain arrayBuffer information.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeUInt32Array(buf: Array<UInt32>): Unit
    
    /**
    * Writes the data in an ArrayBuffer object into this {@Link MessageSequence} object.
    *
    * @param { Array<Int64> } buf - Data to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The obtained value of typeCode is incorrect;
    *     5.Failed to obtain arrayBuffer information.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeInt64Array(buf: Array<Int64>): Unit
    
    /**
    * Writes the data in an ArrayBuffer object into this {@Link MessageSequence} object.
    *
    * @param { Array<UInt64> } buf - Data to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The obtained value of typeCode is incorrect;
    *     5.Failed to obtain arrayBuffer information.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeUInt64Array(buf: Array<UInt64>): Unit
    
    /**
    * Writes the data in an ArrayBuffer object into this {@Link MessageSequence} object.
    *
    * @param { Array<Float32> } buf - Data to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The obtained value of typeCode is incorrect;
    *     5.Failed to obtain arrayBuffer information.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeFloat32Array(buf: Array<Float32>): Unit
    
    /**
    * Writes the data in an ArrayBuffer object into this {@Link MessageSequence} object.
    *
    * @param { Array<Float64> } buf - Data to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The obtained value of typeCode is incorrect;
    *     5.Failed to obtain arrayBuffer information.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeFloat64Array(buf: Array<Float64>): Unit
    
    /**
    * Reads raw data from this {@link MessageSequence} object.
    *
    * @returns { Array<Int8> } Returns the Arraybuffer obtained.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The obtained value of typeCode is incorrect;
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readInt8Array(): Array<Int8>
    
    /**
    * Reads raw data from this {@link MessageSequence} object.
    *
    * @returns { Array<UInt8> } Returns the Arraybuffer obtained.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The obtained value of typeCode is incorrect;
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readUInt8Array(): Array<UInt8>
    
    /**
    * Reads raw data from this {@link MessageSequence} object.
    *
    * @returns { Array<Int16> } Returns the Arraybuffer obtained.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The obtained value of typeCode is incorrect;
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readInt16Array(): Array<Int16>
    
    /**
    * Reads raw data from this {@link MessageSequence} object.
    *
    * @returns { Array<UInt16> } Returns the Arraybuffer obtained.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The obtained value of typeCode is incorrect;
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readUInt16Array(): Array<UInt16>
    
    /**
    * Reads raw data from this {@link MessageSequence} object.
    *
    * @returns { Array<Int32> } Returns the Arraybuffer obtained.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The obtained value of typeCode is incorrect;
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readInt32Array(): Array<Int32>
    
    /**
    * Reads raw data from this {@link MessageSequence} object.
    *
    * @returns { Array<UInt32> } Returns the Arraybuffer obtained.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The obtained value of typeCode is incorrect;
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readUInt32Array(): Array<UInt32>
    
    /**
    * Reads raw data from this {@link MessageSequence} object.
    *
    * @returns { Array<Int64> } Returns the Arraybuffer obtained.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The obtained value of typeCode is incorrect;
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readInt64Array(): Array<Int64>
    
    /**
    * Reads raw data from this {@link MessageSequence} object.
    *
    * @returns { Array<UInt64> } Returns the Arraybuffer obtained.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The obtained value of typeCode is incorrect;
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readUInt64Array(): Array<UInt64>
    
    /**
    * Reads raw data from this {@link MessageSequence} object.
    *
    * @returns { Array<Float32> } Returns the Arraybuffer obtained.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The obtained value of typeCode is incorrect;
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readFloat32Array(): Array<Float32>
    
    /**
    * Reads raw data from this {@link MessageSequence} object.
    *
    * @returns { Array<Float64> } Returns the Arraybuffer obtained.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The obtained value of typeCode is incorrect;
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readFloat64Array(): Array<Float64>
    
    /**
    * Writes a {@link Parcelable} object into the {@link MessageSequence} object.
    *
    * @param { Parcelable } val - Indicates the {@link Parcelable} object to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeParcelable(val: Parcelable): Unit
    
    /**
    * Reads a {@link Parcelable} object from the {@link MessageSequence} instance.
    *
    * @param { Parcelable } dataIn - Indicates the {@link Parcelable} object that needs to perform
    *                       the {@code unmarshalling} operation using the {@link MessageSequence}.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @throws { BusinessException } 1900012 - Failed to call the JS callback function.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readParcelable(dataIn: Parcelable): Unit
    
    /**
    * Writes a {@link Parcelable} object array into the {@link MessageSequence} object.
    *
    * @param { Array<Parcelable> } parcelableArray - Indicates the {@link Parcelable} object array to write.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeParcelableArray(parcelableArray: Array<Parcelable>): Unit
    
    /**
    * Reads the specified {@link Parcelable} array from this {@link MessageSequence} object.
    *
    * @param { Array<Parcelable> } parcelableArray - Parcelable array to read.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The length of the array passed when reading is not equal to the length passed when writing to the array;
    *     5.The element does not exist in the array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @throws { BusinessException } 1900012 - Failed to call the JS callback function.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readParcelableArray(parcelableArray: Array<Parcelable>): Unit
    
    /**
    * Writes raw data to this {@link MessageSequence} object.
    *
    * @param { Array<Byte> } rawData - Raw data to wrote.
    * @param { Int64 } size - Size of the raw data, in bytes.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.Failed to obtain arrayBuffer information;
    *     4.The transferred size cannot be obtained;
    *     5.The transferred size is less than or equal to 0;
    *     6.The transferred size is greater than the byte length of ArrayBuffer.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeRawDataBuffer(rawData: Array<Byte>, size: Int64): Unit
    
    /**
    * Reads raw data from this {@link MessageSequence} object.
    *
    * @param { Int64 } size - Size of the raw data to read.
    * @returns { Array<Byte> } Return the raw data obtained, in bytes.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readRawDataBuffer(size: Int64): Array<Byte>
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.IPC.Core"
]
public open class RemoteObject <: IRemoteObject {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public init(descriptor: String)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func sendMessageRequest(code: UInt32, data: MessageSequence, reply: MessageSequence, options: MessageOption,
        callback: Callback1Argument<RequestResult>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func modifyLocalInterface(localInterface: IRemoteBroker, descriptor: String): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getDescriptor(): String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getCallingUid(): Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getCallingPid(): Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getLocalInterface(descriptor: String): IRemoteBroker
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func registerDeathRecipient(recipient: DeathRecipient, flags: Int32): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func unregisterDeathRecipient(recipient: DeathRecipient, flags: Int32): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func isObjectDead(): Bool
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.IPC.Core"
]
public class RemoteProxy <: RemoteDataLite & IRemoteObject {
    /**
    * Indicates the message code for a Ping operation.
    *
    * @type { Int32 }
    * @default 1599098439
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const PING_TRANSACTION: Int32 = 0x5f504e47
    
    /**
    * Indicates the message code for a dump operation.
    *
    * @type { Int32 }
    * @default 1598311760
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const DUMP_TRANSACTION: Int32 = 0x5f444d50
    
    /**
    * Indicates the message code for a transmission.
    *
    * @type { Int32 }
    * @default 1598968902
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const INTERFACE_TRANSACTION: Int32 = 0x5f4e5446
    
    /**
    * Indicates the minimum value of a valid message code.
    * <p>This constant is used to check the validity of an operation.
    *
    * @type { Int32 }
    * @default 0x1
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const MIN_TRANSACTION_ID: Int32 = 0x00000001
    
    /**
    * Indicates the maximum value of a valid message code.
    * <p>This constant is used to check the validity of an operation.
    *
    * @type { Int32 }
    * @default 0x00FFFFFF
    * @syscap SystemCapability.Communication.IPC.Core
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const MAX_TRANSACTION_ID: Int32 = 0x00FFFFFF
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func sendMessageRequest(code: UInt32, data: MessageSequence, reply: MessageSequence, options: MessageOption,
        callback: Callback1Argument<RequestResult>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getDescriptor(): String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func registerDeathRecipient(recipient: DeathRecipient, flags: Int32): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func unregisterDeathRecipient(recipient: DeathRecipient, flags: Int32): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func isObjectDead(): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getLocalInterface(descriptor: String): IRemoteBroker
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.IPC.Core"
]
public struct RequestResult {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public RequestResult(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.IPC.Core"
        ]
        public let errCode: Int32,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.IPC.Core"
        ]
        public let code: UInt32,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.IPC.Core"
        ]
        public let data: MessageSequence,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.IPC.Core"
        ]
        public let reply: MessageSequence
    )
}


