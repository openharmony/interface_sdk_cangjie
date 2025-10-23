/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package std.binary


/**
* big-endian order interface
*
*/
@!APILevel[since: "22"]
public interface BigEndianOrder<T> {
    /**
    * @brief write a value of type T in big-endian order to the buffer byte array
    * @param buffer, the target byte array
    * @return the number of bytes written if the buffer length is sufficient, otherwise throws an exception
    * @exception throws IndexOutOfBoundsException when the target length is insufficient
    */
    @!APILevel[since: "22"]
    func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
    * @brief raead the value of type T in big-endian order from the buffer byte array
    * @param buffer, the source byte array
    * @return the value of type T
    * @exception throws IndexOutOfBoundsException when the target length is insufficient
    */
    @!APILevel[since: "22"]
    static func readBigEndian(buffer: Array<Byte>): T
}

/**
* little-endian order interface
*
*/
@!APILevel[since: "22"]
public interface LittleEndianOrder<T> {
    /**
    * @brief write a value of type T in little-endian order to the buffer byte array
    * @param buffer, the target byte array
    * @return the number of bytes written if the buffer length is sufficient, otherwise throws an exception
    * @exception throws IndexOutOfBoundsException when the target length is insufficient
    */
    @!APILevel[since: "22"]
    func writeLittleEndian(buffer: Array<Byte>): Int64
    
    /**
    * @brief raead the value of type T in little-endian order from the buffer byte array
    * @param buffer, the source byte array
    * @return the value of type T
    * @exception throws IndexOutOfBoundsException when the target length is insufficient
    */
    @!APILevel[since: "22"]
    static func readLittleEndian(buffer: Array<Byte>): T
}

/**
* @brief swap endian order interface
*
*/
@!APILevel[since: "22"]
public interface SwapEndianOrder<T> {
    /**
    * @brief reverse the byte order of T
    * @return the value of type T
    */
    @!APILevel[since: "22"]
    func swapBytes(): T
}

extend UInt64 <: BigEndianOrder<UInt64> & LittleEndianOrder<UInt64> & SwapEndianOrder<UInt64> {
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func writeLittleEndian(buffer: Array<UInt8>): Int64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func writeBigEndian(buffer: Array<UInt8>): Int64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public static func readBigEndian(buffer: Array<UInt8>): UInt64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public static func readLittleEndian(buffer: Array<UInt8>): UInt64
    
    @!APILevel[since: "22"]
    public func swapBytes(): UInt64
}

extend Int64 <: BigEndianOrder<Int64> & LittleEndianOrder<Int64> & SwapEndianOrder<Int64> {
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public static func readBigEndian(buffer: Array<UInt8>): Int64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public static func readLittleEndian(buffer: Array<UInt8>): Int64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func swapBytes(): Int64
}

extend UInt32 <: BigEndianOrder<UInt32> & LittleEndianOrder<UInt32> & SwapEndianOrder<UInt32> {
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public static func readBigEndian(buffer: Array<UInt8>): UInt32
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public static func readLittleEndian(buffer: Array<UInt8>): UInt32
    
    @!APILevel[since: "22"]
    public func swapBytes(): UInt32
}

extend Int32 <: BigEndianOrder<Int32> & LittleEndianOrder<Int32> & SwapEndianOrder<Int32> {
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public static func readBigEndian(buffer: Array<UInt8>): Int32
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public static func readLittleEndian(buffer: Array<UInt8>): Int32
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func swapBytes(): Int32
}

extend UInt16 <: BigEndianOrder<UInt16> & LittleEndianOrder<UInt16> & SwapEndianOrder<UInt16> {
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public static func readBigEndian(buffer: Array<UInt8>): UInt16
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public static func readLittleEndian(buffer: Array<UInt8>): UInt16
    
    @!APILevel[since: "22"]
    public func swapBytes(): UInt16
}

extend Int16 <: BigEndianOrder<Int16> & LittleEndianOrder<Int16> & SwapEndianOrder<Int16> {
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public static func readBigEndian(buffer: Array<UInt8>): Int16
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public static func readLittleEndian(buffer: Array<UInt8>): Int16
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func swapBytes(): Int16
}

extend UInt8 <: BigEndianOrder<UInt8> & LittleEndianOrder<UInt8> & SwapEndianOrder<UInt8> {
    @!APILevel[since: "22"]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    @!APILevel[since: "22"]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    @!APILevel[since: "22"]
    public static func readBigEndian(buffer: Array<UInt8>): UInt8
    
    @!APILevel[since: "22"]
    public static func readLittleEndian(buffer: Array<UInt8>): UInt8
    
    @!APILevel[since: "22"]
    public func swapBytes(): UInt8
}

extend Int8 <: BigEndianOrder<Int8> & LittleEndianOrder<Int8> & SwapEndianOrder<Int8> {
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public static func readBigEndian(buffer: Array<UInt8>): Int8
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public static func readLittleEndian(buffer: Array<UInt8>): Int8
    
    @!APILevel[since: "22"]
    public func swapBytes(): Int8
}

extend Float64 <: BigEndianOrder<Float64> & LittleEndianOrder<Float64> {
    @!APILevel[since: "22"]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    @!APILevel[since: "22"]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    @!APILevel[since: "22"]
    public static func readBigEndian(buffer: Array<UInt8>): Float64
    
    @!APILevel[since: "22"]
    public static func readLittleEndian(buffer: Array<UInt8>): Float64
}

extend Float32 <: BigEndianOrder<Float32> & LittleEndianOrder<Float32> {
    @!APILevel[since: "22"]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    @!APILevel[since: "22"]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    @!APILevel[since: "22"]
    public static func readBigEndian(buffer: Array<UInt8>): Float32
    
    @!APILevel[since: "22"]
    public static func readLittleEndian(buffer: Array<UInt8>): Float32
}

extend Float16 <: BigEndianOrder<Float16> & LittleEndianOrder<Float16> {
    @!APILevel[since: "22"]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    @!APILevel[since: "22"]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    @!APILevel[since: "22"]
    public static func readBigEndian(buffer: Array<UInt8>): Float16
    
    @!APILevel[since: "22"]
    public static func readLittleEndian(buffer: Array<UInt8>): Float16
}

extend Bool <: BigEndianOrder<Bool> & LittleEndianOrder<Bool> {
    @!APILevel[since: "22"]
    public func writeLittleEndian(buffer: Array<Byte>): Int64
    
    @!APILevel[since: "22"]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    @!APILevel[since: "22"]
    public static func readBigEndian(buffer: Array<UInt8>): Bool
    
    @!APILevel[since: "22"]
    public static func readLittleEndian(buffer: Array<UInt8>): Bool
}

