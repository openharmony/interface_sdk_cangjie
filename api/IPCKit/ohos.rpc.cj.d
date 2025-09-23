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
import ohos.business_exception.BusinessException

import std.collection.HashMap
import std.collection.ArrayList

/**
* Provides methods related to anonymous shared memory objects,
* including creating, closing, mapping, and unmapping an Ashmem object,
* reading data from and writing data to an Ashmem object,
* obtaining the Ashmem size, and setting Ashmem protection.
*
* @relation class Ashmem
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.IPC.Core"
]
public class Ashmem <: RemoteDataLite {
    /**
    * The mapped memory is executable. Default value is 4.
    *
    * @relation static PROT_EXEC: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const PROT_EXEC: UInt32 = 4
    
    /**
    * The mapped memory is inaccessible. Default value is 0.
    *
    * @relation static PROT_NONE: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const PROT_NONE: UInt32 = 0
    
    /**
    * The mapped memory is readable. Default value is 1.
    *
    * @relation static PROT_READ: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const PROT_READ: UInt32 = 1
    
    /**
    * The mapped memory is writable. Default value is 2.
    *
    * @relation static PROT_WRITE: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const PROT_WRITE: UInt32 = 2
    
    /**
    * Creates an Ashmem object with the specified name and size.
    *
    * @param { String } name - Name of the Ashmem object to create.
    * @param { Int32 } size - Size (in bytes) of the Ashmem object to create.
    * @returns { Ashmem } Return the Ashmem object if it is created successfully; return null otherwise.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The Ashmem name passed is empty;
    *     4.The Ashmem size passed is less than or equal to 0.
    * @relation static create(name: string, size: number): Ashmem
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func create(name: String, size: Int32): Ashmem
    
    /**
    * Creates an Ashmem object by copying the file descriptor (FD) of an existing Ashmem object.
    * The two Ashmem objects point to the same shared memory region.
    *
    * @param { Ashmem } ashmem - Existing Ashmem object.
    * @returns { Ashmem } Ashmem object created.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The passed parameter is not an Ahmem object;
    *     3.The ashmem instance for obtaining packaging is empty.
    * @relation static create(ashmem: Ashmem): Ashmem
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func create(ashmem: Ashmem): Ashmem
    
    /**
    * Closes this Ashmem object.
    *
    * @relation closeAshmem(): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func closeAshmem(): Unit
    
    /**
    * Deletes the mappings for the specified address range of this Ashmem object.
    *
    * @relation unmapAshmem(): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func unmapAshmem(): Unit
    
    /**
    * Obtains the mapped memory size of this Ashmem object.
    *
    * @returns { Int32 } Memory size mapped.
    * @relation getAshmemSize(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getAshmemSize(): Int32
    
    /**
    * Creates the shared file mapping on the virtual address space of this process.
    * The size of the mapping region is specified by this Ashmem object.
    *
    * @param { UInt32 } mapType - Protection level of the memory region to which the shared file is mapped.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The passed mapType exceeds the maximum protection level.
    * @throws { BusinessException } 1900001 - Failed to call mmap.
    * @relation mapTypedAshmem(mapType: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func mapTypedAshmem(mapType: UInt32): Unit
    
    /**
    * Maps the shared file to the readable and writable virtual address space of the process.
    *
    * @throws { BusinessException } 1900001 - Failed to call mmap.
    * @relation mapReadWriteAshmem(): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func mapReadWriteAshmem(): Unit
    
    /**
    * Maps the shared file to the read-only virtual address space of the process.
    *
    * @throws { BusinessException } 1900001 - Failed to call mmap.
    * @relation mapReadonlyAshmem(): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func mapReadonlyAshmem(): Unit
    
    /**
    * Sets the protection level of the memory region to which the shared file is mapped.
    *
    * @param { UInt32 } protectionType - Protection type to set.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900002 - Failed to call ioctl.
    * @relation setProtectionType(protectionType: number): void
    */
    @!APILevel[
        22,
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
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.Failed to obtain arrayBuffer information.
    * @throws { BusinessException } 1900003 - Failed to write data to the shared memory.
    * @relation writeDataToAshmem(buf: ArrayBuffer, size: number, offset: number): void
    */
    @!APILevel[
        22,
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
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900004 - Failed to read data from the shared memory.
    * @relation readDataFromAshmem(size: number, offset: number): ArrayBuffer
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readDataFromAshmem(size: Int64, offset: Int64): Array<Byte>
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
* @relation class MessageSequence
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.IPC.Core"
]
public class MessageSequence <: RemoteDataLite {
    /**
    * Creates an empty {@link MessageSequence} object.
    *
    * @returns { MessageSequence } Return the object created.
    * @throws { BusinessException } 0 - Inner error.
    * @relation static create(): MessageSequence
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func create(): MessageSequence
    
    /**
    * Reclaim the {@link MessageSequence} object.
    *
    * @relation reclaim(): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func reclaim(): Unit
    
    /**
    * Writes an interface token into the {@link MessageSequence} object.
    *
    * @param { String } token - Interface descriptor to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The String length exceeds 40960 bytes;
    *     4.The number of bytes copied to the buffer is different from the length of the obtained String.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeInterfaceToken(token: string): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeInterfaceToken(token: String): Unit
    
    /**
    * Reads an interface token from the {@link MessageSequence} object.
    *
    * @returns { String } Return a String value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readInterfaceToken(): string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readInterfaceToken(): String
    
    /**
    * Obtains the size of data (in bytes) contained in the {@link MessageSequence} object.
    *
    * @returns { UInt32 } Return the size of data contained in the {@link MessageSequence} object.
    * @relation getSize(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getSize(): UInt32
    
    /**
    * Obtains the storage capacity (in bytes) of the {@link MessageSequence} object.
    *
    * @returns { UInt32 } Return the storage capacity of the {@link MessageSequence} object.
    * @relation getCapacity(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getCapacity(): UInt32
    
    /**
    * Sets the size of data (in bytes) contained in the {@link MessageSequence} object.
    * <p>{@code false} is returned if the data size set in this method is greater
    * than the storage capacity of the {@link MessageSequence}.
    *
    * @param { UInt32 } size - Indicates the data size of the {@link MessageSequence} object.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @relation setSize(size: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func setSize(size: UInt32): Unit
    
    /**
    * Sets the storage capacity (in bytes) of the {@link MessageSequence} object.
    * <p>{@code false} is returned if the capacity set in this method is less than
    * the size of data contained in the {@link MessageSequence}.
    *
    * @param { UInt32 } size - Indicates the storage capacity of the {@link MessageSequence} object.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900011 - Memory allocation failed.
    * @relation setCapacity(size: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func setCapacity(size: UInt32): Unit
    
    /**
    * Obtains the writable data space (in bytes) in the {@link MessageSequence} object.
    * <p>Writable data space = Storage capacity of the {@link MessageSequence} – Size of data contained in
    * the {@link MessageSequence}.
    *
    * @returns { UInt32 } Return the writable data space of the {@link MessageSequence} object.
    * @relation getWritableBytes(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getWritableBytes(): UInt32
    
    /**
    * Obtains the readable data space (in bytes) in the {@link MessageSequence} object.
    * <p>Readable data space = Size of data contained in the {@link MessageSequence} – Size of data that has been read.
    *
    * @returns { UInt32 } Return the readable data space of the {@link MessageSequence} object.
    * @relation getReadableBytes(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getReadableBytes(): UInt32
    
    /**
    * Obtains the current read position in the {@link MessageSequence} object.
    *
    * @returns { UInt32 } Return the current read position in the {@link MessageSequence} object.
    * @relation getReadPosition(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getReadPosition(): UInt32
    
    /**
    * Obtains the current write position in the {@link MessageSequence} object.
    *
    * @returns { UInt32 } Return the current write position in the {@link MessageSequence} object.
    * @relation getWritePosition(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getWritePosition(): UInt32
    
    /**
    * Changes the current read position in the {@link MessageSequence} object.
    * <p>Generally, you are advised not to change the current read position. If you must
    * change it, change it to an accurate position. Otherwise, the read data may be incorrect.
    *
    * @param { UInt32 } pos - Indicates the target position to start data reading.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @relation rewindWrite(pos: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func rewindWrite(pos: UInt32): Unit
    
    /**
    * Changes the current write position in the {@link MessageSequence} object.
    * <p>Generally, you are advised not to change the current write position. If you must
    * change it, change it to an accurate position. Otherwise, the data to be read may be incorrect.
    *
    * @param { UInt32 } pos - Indicates the target position to start data writing.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @relation rewindRead(pos: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func rewindRead(pos: UInt32): Unit
    
    /**
    * Writes information to this MessageSequence object indicating that no exception occurred.
    * <p>After handling requests, you should call this method before writing any data to reply
    * {@link MessageSequence}.
    *
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeNoException(): void
    */
    @!APILevel[
        22,
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
    * @relation readException(): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readException(): Unit
    
    /**
    * Writes a Int8 value into the {@link MessageSequence} object.
    *
    * @param { Int8 } val - Indicates the Int8 value to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeByte(val: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeByte(val: Int8): Unit
    
    /**
    * Writes a Int16 value into the {@link MessageSequence} object.
    *
    * @param { Int16 } val - Indicates the Int16 value to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeShort(val: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeShort(val: Int16): Unit
    
    /**
    * Writes an Int32 into the {@link MessageSequence} object.
    *
    * @param { Int32 } val - Indicates the Int32 value to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeInt(val: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeInt(val: Int32): Unit
    
    /**
    * Writes a Int64 value into the {@link MessageSequence} object.
    *
    * @param { Int64 } val - Indicates the Int64 value to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeLong(val: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeLong(val: Int64): Unit
    
    /**
    * Writes a Float32 value into the {@link MessageSequence} object.
    *
    * @param { Float32 } val - Indicates the Float32 value to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeFloat(val: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeFloat(val: Float32): Unit
    
    /**
    * Writes a Float64 value into the {@link MessageSequence} object.
    *
    * @param { Float64 } val - Indicates the Float64 value to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeDouble(val: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeDouble(val: Float64): Unit
    
    /**
    * Writes a Bool value into the {@link MessageSequence} object.
    *
    * @param { Bool } val - Indicates the Bool value to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeBoolean(val: boolean): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeBoolean(val: Bool): Unit
    
    /**
    * Writes a UInt8 value into the {@link MessageSequence} object.
    *
    * @param { UInt8 } val - Indicates the UInt8 value to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeChar(val: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeChar(val: UInt8): Unit
    
    /**
    * Writes a String value into the {@link MessageSequence} object.
    *
    * @param { String } val - Indicates the String value to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The String length exceeds 40960 bytes;
    *     4.The number of bytes copied to the buffer is different from the length of the obtained String.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeString(val: string): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeString(val: String): Unit
    
    /**
    * Writes a Int8 array into the {@link MessageSequence} object.
    *
    * @param { Array<Int8> } byteArray - Indicates the Int8 array to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array.
    *     5.The type of the element in the array is incorrect.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeByteArray(byteArray: number[]): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeByteArray(byteArray: Array<Int8>): Unit
    
    /**
    * Writes a Int16 array into the {@link MessageSequence} object.
    * Ensure that the data type and size comply with the interface definition.
    * Otherwise,data may be truncated.
    *
    * @param { Array<Int16> } shortArray - Indicates the Int16 array to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array;
    *     5.The type of the element in the array is incorrect.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeShortArray(shortArray: number[]): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeShortArray(shortArray: Array<Int16>): Unit
    
    /**
    * Writes a Int32 array into the {@link MessageSequence} object.
    * Ensure that the data type and size comply with the interface definition.
    * Otherwise,data may be truncated.
    *
    * @param { Array<Int32> } intArray - Indicates the Int32 array to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array;
    *     5.The type of the element in the array is incorrect.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeIntArray(intArray: number[]): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeIntArray(intArray: Array<Int32>): Unit
    
    /**
    * Writes a Int64 array into the {@link MessageSequence} object.
    * Ensure that the data type and size comply with the interface definition.
    * Otherwise,data may be truncated.
    *
    * @param { Array<Int64> } longArray - Indicates the Int64 array to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array;
    *     5.The type of the element in the array is incorrect.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeLongArray(longArray: number[]): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeLongArray(longArray: Array<Int64>): Unit
    
    /**
    * Writes a Float32 array into the {@link MessageSequence} object.
    * Ensure that the data type and size comply with the interface definition.
    * Otherwise,data may be truncated.
    *
    * @param { Array<Float32> } floatArray - Indicates the Float32 array to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array;
    *     5.The type of the element in the array is incorrect.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeFloatArray(floatArray: number[]): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeFloatArray(floatArray: Array<Float32>): Unit
    
    /**
    * Writes a Float64 array into the {@link MessageSequence} object.
    * Ensure that the data type and size comply with the interface definition.
    * Otherwise,data may be truncated.
    *
    * @param { Array<Float64> } doubleArray - Indicates the Float64 array to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array;
    *     5.The type of the element in the array is incorrect.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeDoubleArray(doubleArray: number[]): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeDoubleArray(doubleArray: Array<Float64>): Unit
    
    /**
    * Writes a Bool array into the {@link MessageSequence} object.
    * Ensure that the data type and size comply with the interface definition.
    * Otherwise,data may be truncated.
    *
    * @param { Array<Bool> } booleanArray - Indicates the Bool array to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeBooleanArray(booleanArray: boolean[]): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeBooleanArray(booleanArray: Array<Bool>): Unit
    
    /**
    * Writes a UInt8 array into the {@link MessageSequence} object.
    * Ensure that the data type and size comply with the interface definition.
    * Otherwise,data may be truncated.
    *
    * @param { Array<UInt8> } charArray - Indicates the UInt8 array to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeCharArray(charArray: number[]): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeCharArray(charArray: Array<UInt8>): Unit
    
    /**
    * Writes a String array into the {@link MessageSequence} object.
    * Ensure that the data type and size comply with the interface definition.
    * Otherwise,data may be truncated.
    *
    * @param { Array<String> } StringArray - Indicates the String array to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The String length exceeds 40960 bytes;
    *     5.The number of bytes copied to the buffer is different from the length of the obtained String.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeStringArray(stringArray: string[]): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeStringArray(stringArray: Array<String>): Unit
    
    /**
    * Reads a Int8 value from the {@link MessageParcel} object.
    *
    * @returns { Int8 } Return a Int8 value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readByte(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readByte(): Int8
    
    /**
    * Reads a Int16 value from the {@link MessageSequence} object.
    *
    * @returns { Int16 } Return a Int16 value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readShort(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readShort(): Int16
    
    /**
    * Reads an Int32 value from the {@link MessageSequence} object.
    *
    * @returns { Int32 } Return an Int32 value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readInt(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readInt(): Int32
    
    /**
    * Reads a Int64 value from the {@link MessageSequence} object.
    *
    * @returns { Int64 } Return a Int64 value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readLong(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readLong(): Int64
    
    /**
    * Reads a Float32 value from the {@link MessageSequence} object.
    *
    * @returns { Float32 } Return a Float32 value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readFloat(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readFloat(): Float32
    
    /**
    * Reads a Float64 value from the {@link MessageSequence} object.
    *
    * @returns { Float64 } Return a Float64 value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readDouble(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readDouble(): Float64
    
    /**
    * Reads a Bool value from the {@link MessageSequence} object.
    *
    * @returns { Bool } Return a Bool value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readBoolean(): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readBoolean(): Bool
    
    /**
    * Reads a UInt8 value from the {@link MessageSequence} object.
    *
    * @returns { UInt8 } Return a UInt8 value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readChar(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readChar(): UInt8
    
    /**
    * Reads a String value from the {@link MessageSequence} object.
    *
    * @returns { String } Return a String value.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readString(): string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readString(): String
    
    /**
    * Reads a Int8 array from the {@link MessageSequence} object.
    *
    * @returns { Array<Int8> } Return a Int8 array.
    * @throws IllegalArgumentException - check param failed
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readByteArray(): number[]
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readByteArray(): Array<Int8>
    
    /**
    * Reads a Int16 array from the {@link MessageSequence} object.
    *
    * @returns { Array<Int16> } Return a Int16 array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readShortArray(): number[]
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readShortArray(): Array<Int16>
    
    /**
    * Reads an Int32 array from the {@link MessageSequence} object.
    *
    * @returns { Array<Int32> } Return an Int32 array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readIntArray(): number[]
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readIntArray(): Array<Int32>
    
    /**
    * Reads a Int64 array from the {@link MessageSequence} object.
    *
    * @returns { Array<Int64> } Return a Int64 array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readLongArray(): number[]
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readLongArray(): Array<Int64>
    
    /**
    * Reads a Float32 array from the {@link MessageSequence} object.
    *
    * @returns { Array<Float32> } Return a Float32 array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readFloatArray(): number[]
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readFloatArray(): Array<Float32>
    
    /**
    * Reads a Float64 array from the {@link MessageSequence} object.
    *
    * @returns { Array<Float64> } Return a Float64 array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readDoubleArray(): number[]
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readDoubleArray(): Array<Float64>
    
    /**
    * Reads a Bool array from the {@link MessageSequence} object.
    *
    * @returns { Array<Bool> } Return a Bool array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readBooleanArray(): boolean[]
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readBooleanArray(): Array<Bool>
    
    /**
    * Reads a UInt8 array from the {@link MessageSequence} object.
    *
    * @returns { Array<UInt8> } Return a UInt8 array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readCharArray(): number[]
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readCharArray(): Array<UInt8>
    
    /**
    * Reads a String array from the {@link MessageSequence} object.
    *
    * @returns { Array<String> } Return a String array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readStringArray(): string[]
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readStringArray(): Array<String>
    
    /**
    * Closes the specified file descriptor.
    *
    * @param { Int32 } fd - File descriptor to be closed.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @relation static closeFileDescriptor(fd: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func closeFileDescriptor(fd: Int32): Unit
    
    /**
    * Duplicates the specified file descriptor.
    *
    * @param { Int32 } fd - File descriptor to be duplicated.
    * @returns { Int32 } Return a duplicated file descriptor.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900013 - Failed to call dup.
    * @relation static dupFileDescriptor(fd: number): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func dupFileDescriptor(fd: Int32): Int32
    
    /**
    * Checks whether this {@link MessageSequence} object contains a file descriptor.
    *
    * @returns { Bool } Return {@code true} if the {@link MessageSequence} object contains a file descriptor;
    *                      return {@code false} otherwise.
    * @relation containFileDescriptors(): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func containFileDescriptors(): Bool
    
    /**
    * Writes a file descriptor to this {@link MessageSequence} object.
    *
    * @param { Int32 } fd - File descriptor to wrote.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeFileDescriptor(fd: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeFileDescriptor(fd: Int32): Unit
    
    /**
    * Reads a file descriptor from this {@link MessageSequence} object.
    *
    * @returns { Int32 } Return a file descriptor obtained.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readFileDescriptor(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readFileDescriptor(): Int32
    
    /**
    * Writes an anonymous shared memory object to this {@link MessageSequence} object.
    *
    * @param { Ashmem } ashmem - Anonymous shared memory object to wrote.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter is not an instance of the Ashmem object.
    * @throws { BusinessException } 1900003 - Failed to write data to the shared memory.
    * @relation writeAshmem(ashmem: Ashmem): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeAshmem(ashmem: Ashmem): Unit
    
    /**
    * Reads the anonymous shared memory object from this {@link MessageSequence} object.
    *
    * @returns { Ashmem } Return the anonymous share object obtained.
    * @throws IllegalArgumentException - check param failed
    * @throws { BusinessException } 1900004 - Failed to read data from the shared memory.
    * @relation readAshmem(): Ashmem
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readAshmem(): Ashmem
    
    /**
    * Obtains the maximum amount of raw data that can be sent in a time.
    *
    * @returns { UInt32 } 128 MB.
    * @relation getRawDataCapacity(): number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getRawDataCapacity(): UInt32
    
    /**
    * Writes the data in an Array<UInt8> object into this {@Link MessageSequence} object.
    *
    * @param { Array<UInt8> } buf - Data to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The obtained value of typeCode is incorrect;
    *     5.Failed to obtain array information.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeArrayBuffer(buf: ArrayBuffer, typeCode: TypeCode): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeUInt8Array(buf: Array<UInt8>): Unit
    
    /**
    * Writes the data in an Array<UInt16> object into this {@Link MessageSequence} object.
    *
    * @param { Array<UInt16> } buf - Data to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The obtained value of typeCode is incorrect;
    *     5.Failed to obtain array information.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeArrayBuffer(buf: ArrayBuffer, typeCode: TypeCode): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeUInt16Array(buf: Array<UInt16>): Unit
    
    /**
    * Writes the data in an Array<UInt32> object into this {@Link MessageSequence} object.
    *
    * @param { Array<UInt32> } buf - Data to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The obtained value of typeCode is incorrect;
    *     5.Failed to obtain array information.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeArrayBuffer(buf: ArrayBuffer, typeCode: TypeCode): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeUInt32Array(buf: Array<UInt32>): Unit
    
    /**
    * Writes the data in an Array<UInt64> object into this {@Link MessageSequence} object.
    *
    * @param { Array<UInt64> } buf - Data to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The obtained value of typeCode is incorrect;
    *     5.Failed to obtain array information.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeArrayBuffer(buf: ArrayBuffer, typeCode: TypeCode): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeUInt64Array(buf: Array<UInt64>): Unit
    
    /**
    * Reads raw data from this {@link MessageSequence} object.
    *
    * @returns { Array<UInt8> } Returns the Array<UInt8> obtained.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The obtained value of typeCode is incorrect;
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readArrayBuffer(typeCode: TypeCode): ArrayBuffer
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readUInt8Array(): Array<UInt8>
    
    /**
    * Reads raw data from this {@link MessageSequence} object.
    *
    * @returns { Array<UInt16> } Returns the Array<UInt16> obtained.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The obtained value of typeCode is incorrect;
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readArrayBuffer(typeCode: TypeCode): ArrayBuffer
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readUInt16Array(): Array<UInt16>
    
    /**
    * Reads raw data from this {@link MessageSequence} object.
    *
    * @returns { Array<UInt32> } Returns the Array<UInt32> obtained.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The obtained value of typeCode is incorrect;
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readArrayBuffer(typeCode: TypeCode): ArrayBuffer
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readUInt32Array(): Array<UInt32>
    
    /**
    * Reads raw data from this {@link MessageSequence} object.
    *
    * @returns { Array<UInt64> } Returns the Array<UInt64> obtained.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.The obtained value of typeCode is incorrect;
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readArrayBuffer(typeCode: TypeCode): ArrayBuffer
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readUInt64Array(): Array<UInt64>
    
    /**
    * Writes a {@link Parcelable} object into the {@link MessageSequence} object.
    *
    * @param { Parcelable } val - Indicates the {@link Parcelable} object to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeParcelable(val: Parcelable): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeParcelable<T>(val: T): Unit where T <: Parcelable
    
    /**
    * Reads a {@link Parcelable} object from the {@link MessageSequence} instance.
    *
    * @param { Parcelable } dataIn - Indicates the {@link Parcelable} object that needs to perform
    *                       the {@code unmarshalling} operation using the {@link MessageSequence}.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @throws { BusinessException } 1900012 - Failed to call the JS callback function.
    * @relation readParcelable(dataIn: Parcelable): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readParcelable<T>(dataIn: T): Unit where T <: Parcelable
    
    /**
    * Writes a {@link Parcelable} object array into the {@link MessageSequence} object.
    *
    * @param { Array<Parcelable> } parcelableArray - Indicates the {@link Parcelable} object array to write.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The element does not exist in the array.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeParcelableArray(parcelableArray: Parcelable[]): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeParcelableArray<T>(parcelableArray: Array<T>): Unit where T <: Parcelable
    
    /**
    * Reads the specified {@link Parcelable} array from this {@link MessageSequence} object.
    *
    * @param { Array<Parcelable> } parcelableArray - Parcelable array to read.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The parameter is an empty array;
    *     2.The number of parameters is incorrect;
    *     3.The parameter type does not match;
    *     4.The length of the array passed when reading is not equal to the length passed when writing to the array;
    *     5.The element does not exist in the array.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @throws { BusinessException } 1900012 - Failed to call the JS callback function.
    * @relation readParcelableArray(parcelableArray: Parcelable[]): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readParcelableArray<T>(parcelableArray: Array<T>): Unit where T <: Parcelable
    
    /**
    * Writes raw data to this {@link MessageSequence} object.
    *
    * @param { Array<Byte> } rawData - Raw data to wrote.
    * @param { Int64 } size - Size of the raw data, in bytes.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match;
    *     3.Failed to obtain array information;
    *     4.The transferred size cannot be obtained;
    *     5.The transferred size is less than or equal to 0;
    *     6.The transferred size is greater than the byte length of rawData.
    * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
    * @relation writeRawDataBuffer(rawData: ArrayBuffer, size: number): void
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func writeRawDataBuffer(rawData: Array<Byte>, size: Int64): Unit
    
    /**
    * Reads raw data from this {@link MessageSequence} object.
    *
    * @param { Int64 } size - Size of the raw data to read.
    * @returns { Array<Byte> } Return the raw data obtained, in bytes.
    * @throws IllegalArgumentException - Parameter error. Possible causes:
    *     1.The number of parameters is incorrect;
    *     2.The parameter type does not match.
    * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
    * @relation readRawDataBuffer(size: number): ArrayBuffer
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func readRawDataBuffer(size: Int64): Array<Byte>
}


/**
* During inter-process communication, objects of the class are written to the {@link MessageSequence} and
* they are recovered from the {@link MessageSequence}.
*
* @relation interface Parcelable
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Communication.IPC.Core"
]
public interface Parcelable {
    /**
    * Marshal this {@code Parcelable} object into a {@link MessageSequence}.
    *
    * @relation marshalling(dataOut: MessageSequence): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    func marshalling(dataOut: MessageSequence): Bool
    
    /**
    * Unmarshal this {@code Parcelable} object from a {@link MessageSequence}.
    *
    * @relation unmarshalling(dataIn: MessageSequence): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    func unmarshalling(dataIn: MessageSequence): Bool
}


