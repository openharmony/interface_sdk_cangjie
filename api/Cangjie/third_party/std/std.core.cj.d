/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

package std.core


@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public enum AnnotationKind {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Type |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Parameter |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Init |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    MemberProperty |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    MemberFunction |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    MemberVariable |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    EnumConstructor |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    GlobalFunction |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    GlobalVariable |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Extension |
    ...
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public open class ArithmeticException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@ConstSafe
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct Array<T> {
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public const init()
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(size: Int64, repeat!: T)
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(size: Int64, initElement: (Int64) -> T)
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop first: Option<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop last: Option<T>
    
    /**
    * @return slice of this Array
    * @throws IndexOutOfBoundsException if `start` is negative, or `len` is negative,
    *         or `start + len` is greater than the size of array.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func slice(start: Int64, len: Int64): Array<T>
    
    @OverflowWrapping
@Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func get(index: Int64): Option<T>
    
    /**
    * @throws IndexOutOfBoundsException if `index` is negative or
    *         greater than or equal to the size of array.
    */
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func [](index: Int64): T
    
    /**
    * @throws IndexOutOfBoundsException if `index` is negative or
    *         greater than or equal to the size of array.
    */
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func [](index: Int64, value!: T): Unit
    
    /**
    * @throws IllegalArgumentException if the `step` of `range` is not equal to 1.
    * @throws IndexOutOfBoundsException if the `range` is invalid for this array.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func [](range: Range<Int64>): Array<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func fill(value: T): Unit
    
    /**
    * @throws IllegalArgumentException if the `step` of `range` is not equal to 1,
    *         or the size of `value` is not equal to the length of `range`.
    * @throws IndexOutOfBoundsException if `range` is invalid for this array.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func [](range: Range<Int64>, value!: Array<T>): Unit
    
    /** Reverse array elements in place. */
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func reverse(): Unit
    
    /** Dummy function, used for function overloading check. */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func clone(): Array<T>
    
    /*
    * @throws IndexOutOfBoundsException if the `range` is invalid for this array.
    */
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func clone(range: Range<Int64>): Array<T>
    
    /*
    * @throws IllegalArgumentException if `copyLen` is negative.
    * @throws IndexOutOfBoundsException if `srcStart` or `dstStart` is negative, or `srcStart` is
    *         greater or equal to the size of this array, or `dstStart` is greater or equal to
    *         the size of `dst`, or `copyLen` is out of bounds.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func copyTo(dst: Array<T>, srcStart: Int64, dstStart: Int64, copyLen: Int64): Unit
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func copyTo(dst: Array<T>): Unit
    
    /*
    * Returns a new Array concat this and that
    *
    * `other` will be copied to the new array
    *
    * returns a new array, size is `this.size + that.size`
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func concat(other: Array<T>): Array<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func swap(index1: Int64, index2: Int64): Unit
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func splitAt(mid: Int64): (Array<T>, Array<T>)
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func repeat(n: Int64): Array<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func map<R>(transform: (T) -> R): Array<R>
}

extend<T> Array<Array<T>> {
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func flatten(): Array<T>
}

extend<T> Array<T> <: Collection<T> {
    /** Returns an iterator over the elements in this Array in proper sequence. */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func iterator(): Iterator<T>
    
    /**
    * Call 'size' on array type variable will be processed by compiler.
    * Only call based on 'Collection' type will use this function.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop size: Int64
    
    /** Returns true if this Array contains no elements. */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isEmpty(): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toArray(): Array<T>
}

extend<T> Array<T> <: ToString where T <: ToString {
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

@ConstSafe
extend<T> Array<T> <: Equatable<Array<T>> where T <: Equatable<T> {
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator const func ==(that: Array<T>): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator const func !=(that: Array<T>): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func contains(element: T): Bool
    
    /**
    * Returns the index of the first occurrence of the element in the src Array.
    *
    * @params element - The target element.
    *
    * @return Index of the first occurrence of the element in the Array, or None if the the element does not occur.
    * @throws IllegalArgumentException - If the start less than 0.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func indexOf(element: T): Option<Int64>
    
    /**
    * Returns the index of the first occurrence of the element after fromIndex in the src Array.
    *
    * @params element - The target element.
    * @params fromIndex - The start index, default 0.
    *
    * @return Index of the first occurrence of the element in the Array, or None if the the element does not occur.
    * @throws IllegalArgumentException - If the start less than 0.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func indexOf(element: T, fromIndex: Int64): Option<Int64>
    
    /**
    * Returns the index of the first occurrence of the elements in the src Array.
    *
    * @params element - The target element.
    *
    * @return Index of the first occurrence of the element in the Array, or None if the the element does not occur.
    * @throws IllegalArgumentException - If the start less than 0.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func indexOf(elements: Array<T>): Option<Int64>
    
    /**
    * Returns the index of the first occurrence of the elements in the src Array.
    *
    * @params element - The target element.
    *
    * @return Index of the first occurrence of the element in the Array, or None if the the element does not occur.
    * @throws IllegalArgumentException - If the start less than 0.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func indexOf(elements: Array<T>, fromIndex: Int64): Option<Int64>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func lastIndexOf(element: T): Option<Int64>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func lastIndexOf(element: T, fromIndex: Int64): Option<Int64>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func lastIndexOf(elements: Array<T>): Option<Int64>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func lastIndexOf(elements: Array<T>, fromIndex: Int64): Option<Int64>
    
    /**
    * Returns a slice that dones not contain elements from the start.
    *
    * @param set - The target elements to trim.
    *
    * @return The slice of the src.
    */
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimStart(set: Array<T>): Array<T>
    
    /**
    * Returns a slice that dones not contain elements from the end.
    *
    * @param set - The target elements to trim.
    *
    * @return The slice of the src.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimEnd(set: Array<T>): Array<T>
    
    /**
    * Returns a slice that dones not contain elements from the start.
    *
    * @param predicate - the elements satisfy the predicate should be trimmed.
    *
    * @return The slice of the src.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimStart(predicate: (T) -> Bool): Array<T>
    
    /**
    * Returns a slice that dones not contain elements from the end.
    *
    * @param predicate - the elements satisfy the predicate should be trimmed.
    *
    * @return The slice of the src.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimEnd(predicate: (T) -> Bool): Array<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func removePrefix(prefix: Array<T>): Array<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func removeSuffix(suffix: Array<T>): Array<T>
}

/**
* Array-based Iterator.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class ArrayIterator<T> <: Iterator<T> {
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(data: Array<T>)
    
    /** Returns the next element in the iteration. */
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func next(): Option<T>
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct CPointerHandle<T> where T <: CType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public let pointer: CPointer<T>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public let array: Array<T>
    
    @Deprecated[message: "Use global function `public unsafe func acquireArrayRawData<T>(arr: Array<T>): CPointerHandle<T> where T <: CType` instead."]
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @Deprecated[message: "Use global function `public unsafe func acquireArrayRawData<T>(arr: Array<T>): CPointerHandle<T> where T <: CType` instead."]
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(ptr: CPointer<T>, arr: Array<T>)
}

/**
* Caution: any behavior that may allocate memory in cangjie heap or
* trigger garbage collection between func acquireArrayRawData<T>(arr: Array<T>)
* and func releaseArrayRawData<T>(handle: CPointerHandle<T>)
* is permitted in case of dead lock
*/
@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public unsafe func acquireArrayRawData<T>(arr: Array<T>): CPointerHandle<T> where T <: CType

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public unsafe func releaseArrayRawData<T>(handle: CPointerHandle<T>): Unit where T <: CType

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class Box<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public var value: T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(v: T)
}

extend<T> Box<T> <: Hashable where T <: Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
}

extend<T> Box<T> <: Comparable<Box<T>> where T <: Comparable<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: Box<T>): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(that: Box<T>): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >(that: Box<T>): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <(that: Box<T>): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >=(that: Box<T>): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <=(that: Box<T>): Bool
    
    /**
    * Compare the relationship between two instance of Box<T>.
    *
    * @param that Instance of Box<T> compared with this.
    * @return Value indicating the relationship between two instance of Box<T>.
    *
    * @since 0.27.3
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(that: Box<T>): Ordering
}

extend<T> Box<T> <: ToString where T <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend Byte {
    /**
    * Returns true if this Byte is in Ascii letter range.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiLetter(): Bool
    
    /**
    * Returns true if this this Byte is in Ascii number range.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiNumber(): Bool
    
    /**
    * Returns true if this this Byte is in Ascii hexadecimal range.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiHex(): Bool
    
    /**
    * Returns true if this Byte is in ASCII octal digit range.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiOct(): Bool
    
    /**
    * Return true if this Byte is in ASCII punctuation range.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiPunctuation(): Bool
    
    /**
    * Return true if this Byte is in ASCII graphic character range.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiGraphic(): Bool
    
    /**
    * Return true if this Byte is in ASCII control character range.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiControl(): Bool
    
    /**
    * Return true if this Byte is in ASCII number or letter range.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiNumberOrLetter(): Bool
    
    /** Returns true if this Byte is in Lowercase Ascii letter range. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiLowerCase(): Bool
    
    /** Returns true if this Byte is in Uppercase Ascii letter range. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiUpperCase(): Bool
    
    /** Returns true if this Byte is in Ascii range. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAscii(): Bool
    
    /** 
    * Returns true if this Byte is whitespace.
    * whitespace include HT, LF, VT, FF, CR, SP
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiWhiteSpace(): Bool
    
    /** Returns the uppercase of this Byte. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAsciiUpperCase(): Byte
    
    /** Returns the lowercase of this Byte. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAsciiLowerCase(): Byte
}

extend<T> CPointer<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isNull(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isNotNull(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toUIntNative(): UIntNative
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public unsafe func read(): T
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public unsafe func write(value: T): Unit
    
    /**
    * This interface does not check the correctness of the pointer.
    * If the pointer is invalid, an undefined error occurs.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public unsafe func read(idx: Int64): T
    
    /**
    * This interface does not check the correctness of the pointer.
    * If the pointer is invalid, an undefined error occurs.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public unsafe func write(idx: Int64, value: T): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public unsafe operator func +(offset: Int64): CPointer<T>
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public unsafe operator func -(offset: Int64): CPointer<T>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func asResource(): CPointerResource<T>
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct CPointerResource<T> <: Resource where T <: CType {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public let value: CPointer<T>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isClosed(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func close(): Unit
}

extend CString <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func getChars(): CPointer<UInt8>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isNull(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func size(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isEmpty(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isNotEmpty(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func startsWith(prefix: CString): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func endsWith(suffix: CString): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func equals(rhs: CString): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func equalsLower(rhs: CString): Bool
    
    /**
    * @throws IndexOutOfBoundsException if beginIndex is greater than the size of string.
    * @throws IllegalMemoryException if memory malloc or memcpy_s fails.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func subCString(beginIndex: UIntNative): CString
    
    /*
    * @throws IndexOutOfBoundsException if beginIndex is greater than the size of string.
    * @throws IllegalMemoryException if memory malloc or memcpy_s fails.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func subCString(beginIndex: UIntNative, subLen: UIntNative): CString
    
    /*
    * @throws Exception if self is null or str is null
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(str: CString): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func asResource(): CStringResource
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct CStringResource <: Resource {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public let value: CString
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isClosed(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func close(): Unit
}

// All types which can be used in C FFI implicitly implement the interface,// including Int8, UInt8, Int16, UInt16, Int32, UInt32, Int64, UInt64, IntNative, UIntNative,// Float32, Float64, Bool, Unit, and all @C-modified structs.
sealed interface CType {
}

extend Rune {
    /**
    * Returns true if this Unicode character is an Ascii letter.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiLetter(): Bool
    
    /**
    * Returns true if this Unicode character is an Ascii number.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiNumber(): Bool
    
    /**
    * Returns true if this this Rune is an Ascii hexadecimal number.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiHex(): Bool
    
    /**
    * Returns true if this Rune is an ASCII octal number.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiOct(): Bool
    
    /**
    * Return true if this Rune is an ASCII punctuation.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiPunctuation(): Bool
    
    /**
    * Return true if this Rune is an ASCII graphic character.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiGraphic(): Bool
    
    /**
    * Return true if this Rune is an ASCII control character.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiControl(): Bool
    
    /**
    * Return true if this Rune is an ASCII number or ASCII letter.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiNumberOrLetter(): Bool
    
    /** Returns true if this Unicode character is Lowercase. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiLowerCase(): Bool
    
    /** Returns true if this Unicode character is Uppercase. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiUpperCase(): Bool
    
    /** Returns true if this Unicode character is an Ascii code. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAscii(): Bool
    
    /** Returns true if this Unicode character is whitespace. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiWhiteSpace(): Bool
    
    /** Returns the uppercase of this Unicode character. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAsciiUpperCase(): Rune
    
    /** Returns the lowercase of this Unicode character. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAsciiLowerCase(): Rune
    
    /*
    * @throws IllegalArgumentException if `arr[index]` is an invalid utf8 leading code or
    *         there is no valid utf8 code among `arr[0] ~ arr[index - 1]`.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func utf8Size(arr: Array<UInt8>, index: Int64): Int64
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func utf8Size(c: Rune): Int64
    
    /*
    * @throws IllegalArgumentException if arr[index] is an invalid utf8 code or
    * there is no valid utf8 code among arr[0] ~ arr[index - 1].
    */
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func fromUtf8(arr: Array<UInt8>, index: Int64): (Rune, Int64)
    
    /*
    * @throws IllegalArgumentException if there is no valid utf8 code
    *         among `arr[0] ~ arr[index - 1]`.
    */
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func getPreviousFromUtf8(arr: Array<UInt8>, index: Int64): (Rune, Int64)
    
    /*
    * @throws IllegalArgumentException if the character occupies a position beyond the array range
    */
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func intoUtf8Array(c: Rune, arr: Array<UInt8>, index: Int64): Int64
}

extend Rune <: Comparable<Rune> {
    /**
    * Compare the relationship between two instance of Rune.
    *
    * @param rhs Instance of Rune compared with this.
    * @return Value indicating the relationship between two instance of Rune.
    *
    * @since 0.27.3
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(rhs: Rune): Ordering
}

/**
The root interface in the collection hierarchy.
A collection represents a group of objects, known as its elements.
Some collections allow duplicate elements and others do not.
Some are ordered and others unordered.
This interface is typically used to pass collections around and manipulate them where maximum generality is desired.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Collection<T> <: Iterable<T> {
    // Returns the number of elements in this collection.
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop size: Int64
    
    // Returns true if this collection contains no elements.
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func isEmpty(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func toArray(): Array<T>
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public enum Ordering {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    LT |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    GT |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    EQ
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Less<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    operator func <(rhs: T): Bool
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Greater<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    operator func >(rhs: T): Bool
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface LessOrEqual<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    operator func <=(rhs: T): Bool
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface GreaterOrEqual<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    operator func >=(rhs: T): Bool
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Comparable<T> <: Equatable<T> & Less<T> & Greater<T> & LessOrEqual<T> & GreaterOrEqual<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func compare(that: T): Ordering
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    operator func ==(rhs: T): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    operator func <(rhs: T): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    operator func >(rhs: T): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    operator func <=(rhs: T): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    operator func >=(rhs: T): Bool
}

extend Ordering <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

/**
* The relationship between Orderings is: Ordering.LT < Ordering.EQ < Ordering.GT
*/
extend Ordering <: Comparable<Ordering> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(that: Ordering): Ordering
}

extend IntNative <: Comparable<IntNative> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(rhs: IntNative): Ordering
}

extend Int64 <: Comparable<Int64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(rhs: Int64): Ordering
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <(rhs: Int64): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >(rhs: Int64): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <=(rhs: Int64): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >=(rhs: Int64): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(rhs: Int64): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(rhs: Int64): Bool
}

extend Int32 <: Comparable<Int32> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(rhs: Int32): Ordering
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <(rhs: Int32): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >(rhs: Int32): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <=(rhs: Int32): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >=(rhs: Int32): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(rhs: Int32): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(rhs: Int32): Bool
}

extend Int16 <: Comparable<Int16> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(rhs: Int16): Ordering
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <(rhs: Int16): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >(rhs: Int16): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <=(rhs: Int16): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >=(rhs: Int16): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(rhs: Int16): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(rhs: Int16): Bool
}

extend Int8 <: Comparable<Int8> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(rhs: Int8): Ordering
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <(rhs: Int8): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >(rhs: Int8): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <=(rhs: Int8): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >=(rhs: Int8): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(rhs: Int8): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(rhs: Int8): Bool
}

extend UIntNative <: Comparable<UIntNative> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(rhs: UIntNative): Ordering
}

extend UInt64 <: Comparable<UInt64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(rhs: UInt64): Ordering
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <(rhs: UInt64): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >(rhs: UInt64): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <=(rhs: UInt64): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >=(rhs: UInt64): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(rhs: UInt64): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(rhs: UInt64): Bool
}

extend UInt32 <: Comparable<UInt32> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(rhs: UInt32): Ordering
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <(rhs: UInt32): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >(rhs: UInt32): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <=(rhs: UInt32): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >=(rhs: UInt32): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(rhs: UInt32): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(rhs: UInt32): Bool
}

extend UInt16 <: Comparable<UInt16> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(rhs: UInt16): Ordering
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <(rhs: UInt16): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >(rhs: UInt16): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <=(rhs: UInt16): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >=(rhs: UInt16): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(rhs: UInt16): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(rhs: UInt16): Bool
}

extend UInt8 <: Comparable<UInt8> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(rhs: UInt8): Ordering
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <(rhs: UInt8): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >(rhs: UInt8): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <=(rhs: UInt8): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >=(rhs: UInt8): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(rhs: UInt8): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(rhs: UInt8): Bool
}

extend Float16 <: Comparable<Float16> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(rhs: Float16): Ordering
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <(rhs: Float16): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >(rhs: Float16): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <=(rhs: Float16): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >=(rhs: Float16): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(rhs: Float16): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(rhs: Float16): Bool
}

extend Float32 <: Comparable<Float32> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(rhs: Float32): Ordering
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <(rhs: Float32): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >(rhs: Float32): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <=(rhs: Float32): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >=(rhs: Float32): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(rhs: Float32): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(rhs: Float32): Bool
}

extend Float64 <: Comparable<Float64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(rhs: Float64): Ordering
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <(rhs: Float64): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >(rhs: Float64): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <=(rhs: Float64): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >=(rhs: Float64): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(rhs: Float64): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(rhs: Float64): Bool
}

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func max<T>(a: T, b: T, others: Array<T>): T where T <: Comparable<T>

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func min<T>(a: T, b: T, others: Array<T>): T where T <: Comparable<T>

/**
* Countable interface
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Countable<T> {
    /** Returns the sum of two instances of type T. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func next(right: Int64): T
    
    /** Returns the Int64 type of the instance. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func position(): Int64
}

extend IntNative <: Countable<IntNative> {
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func position(): Int64
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func next(right: Int64): IntNative
}

extend Int64 <: Countable<Int64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func position(): Int64
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func next(right: Int64): Int64
}

extend Int32 <: Countable<Int32> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func position(): Int64
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func next(right: Int64): Int32
}

extend Int16 <: Countable<Int16> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func position(): Int64
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func next(right: Int64): Int16
}

extend Int8 <: Countable<Int8> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func position(): Int64
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func next(right: Int64): Int8
}

extend UIntNative <: Countable<UIntNative> {
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func position(): Int64
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func next(right: Int64): UIntNative
}

extend UInt64 <: Countable<UInt64> {
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func position(): Int64
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func next(right: Int64): UInt64
}

extend UInt32 <: Countable<UInt32> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func position(): Int64
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func next(right: Int64): UInt32
}

extend UInt16 <: Countable<UInt16> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func position(): Int64
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func next(right: Int64): UInt16
}

extend UInt8 <: Countable<UInt8> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func position(): Int64
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func next(right: Int64): UInt8
}

extend Rune <: Countable<Rune> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func position(): Int64
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func next(right: Int64): Rune
}

/**
* Duration is used to represent a time interval with a minimum precision of nanoseconds.
* Duration can be expressed in the range of Duration.Min to Duration.Max.( [-2^63, 2^63-1) in seconds)
* Duration provides some common related methods, including static member instances of some common time intervals,
* calculation and comparison methods of time intervals, and the like.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct Duration <: ToString & Hashable & Comparable<Duration> {
    /*
    * Duration for 1 nanosecond.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const nanosecond: Duration = Duration(0, 1)
    
    /*
    * Duration for 1 microsecond.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const microsecond: Duration = Duration(0, 1000u32)
    
    /*
    * Duration for 1 millisecond.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const millisecond: Duration = Duration(0, 1000000u32)
    
    /*
    * Duration for 1 second.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const second: Duration = Duration(1, 0)
    
    /*
    * Duration for 1 minute.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const minute: Duration = Duration(SECS_PER_MINUTE, 0)
    
    /*
    * Duration for 1 hour.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const hour: Duration = Duration(SECS_PER_HOUR, 0)
    
    /*
    * Duration for 1 day.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const day: Duration = Duration(SECS_PER_DAY, 0)
    
    /*
    * Duration for 0 nanosecond.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const Zero: Duration = Duration(0, 0)
    
    /*
    * Duration for 2^63-1 seconds with 999,999,999 nanoseconds.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const Max: Duration = Duration(MAX_INT64, MAX_NANOSECOND)
    
    /*
    * Duration for -2^63 seconds.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const Min: Duration = Duration(MIN_INT64, 0)
    
    /**
    * Obtain the integer size of the current Duration instance in nanoseconds.
    *
    * @return Int64 - Integer size in nanoseconds, rounded up to the smaller absolute value.
    *
    * @throws ArithmeticException - if the duration in nanosecond exceeds the range of 'Int64'.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toNanoseconds(): Int64
    
    /**
    * Obtain the integer size of the current Duration instance in microseconds.
    *
    * @return Int64 - Integer size in microseconds, rounded up to the smaller absolute value.
    *
    * @throws ArithmeticException - if the duration in microsecond exceeds the range of 'Int64'.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toMicroseconds(): Int64
    
    /**
    * Obtain the integer size of the current Duration instance in milliseconds.
    *
    * @return Int64 - Integer size in milliseconds, rounded up to the smaller absolute value.
    *
    * @throws ArithmeticException - if the duration in millisecond exceeds the range of 'Int64'.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toMilliseconds(): Int64
    
    /**
    * Obtain the integer size of the current Duration instance in seconds.
    *
    * @return Int64 - Integer size in seconds, rounded up to the smaller absolute value.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toSeconds(): Int64
    
    /**
    * Obtain the integer size of the current Duration instance in minutes.
    *
    * @return Int64 - Integer size in minutes, rounded up to the smaller absolute value.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toMinutes(): Int64
    
    /**
    * Obtain the integer size of the current Duration instance in hours.
    *
    * @return Int64 - Integer size in hours, rounded up to the smaller absolute value.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toHours(): Int64
    
    /**
    * Obtain the integer size of the current Duration instance in days.
    *
    * @return Int64 - Integer size in days, rounded up to the smaller absolute value.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toDays(): Int64
    
    /**
    * Obtain the string representation of the current Duration instance.
    *
    * @return String - The string representation of Duration
    *
    * The format is as follows: "1d2h3m4s5ms6us7ns".
    * If the value of a unit is 0, this item is omitted.
    * when the value of all units is 0, "0s" is returned.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
    
    /**
    * Obtain the hash value of the current Duration instance.
    *
    * @return Int64 - Hash value of the current Duration instance.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    /**
    * Obtain the duration instance for the absolute value of the interval of the current duration instance.
    *
    * @return Duration - The duration instance for the absolute value of the interval of the current instance.
    *
    * @throws ArithmeticException - If the absolute value is out of range for 'Duration'.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func abs(): Duration
    
    /**
    * Add with another duration.
    *
    * @param r - Another duration.
    * @return Duration - New duration instance after addition.
    *
    * @throws ArithmeticException - If the sum in nanoseconds is out of range for 'Duration'.
    *
    * @since 0.18.2
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func +(r: Duration): Duration
    
    /**
    * Subtract another duration.
    *
    * @param r - Another duration.
    * @return Duration - New duration instance after subtraction.
    *
    * @throws ArithmeticException - If the subtracted Value in nanoseconds is out of range for 'Duration'.
    *
    * @since 0.18.2
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func -(r: Duration): Duration
    
    /**
    * Multiply by the specified 'Int64' value.
    *
    * @param r - The specified 'Int64' value to multiply.
    * @return Duration - New duration instance after multiplication.
    *
    * @throws ArithmeticException If the multiplied value in nanoseconds is out of range for 'Duration'.
    *
    * @since 0.18.2
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func *(r: Int64): Duration
    
    /**
    * Multiply by the specified 'Float64' value.
    *
    * @param r - The specified 'Float64' value to multiply.
    * @return Duration - New duration instance after multiplication.
    *
    * @throws IllegalArgumentException - If the value of @p r is NaN(not a number).
    * @throws ArithmeticException - If the multiplied value in nanoseconds is out of range for 'Duration'.
    *
    * @since 0.18.2
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func *(r: Float64): Duration
    
    /**
    * Divide by the specified 'Int64' value.
    *
    * @param r - the specified 'Int64' value.
    * @return Duration - New instance after division.
    *
    * @throws IllegalArgumentException - If the value of @p r is 0.
    * @throws ArithmeticException - If the divided value in nanoseconds is out of range for 'Duration'.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func /(r: Int64): Duration
    
    /**
    * Divide by the specified 'Float64' value.
    *
    * @param r - the specified 'Float64' value.
    * @return Duration - New instance after division.
    *
    * @throws IllegalArgumentException - If the value of @p r is 0 or NaN(not a number).
    * @throws ArithmeticException - If the divided value in nanoseconds is out of the range for 'Duration'.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func /(r: Float64): Duration
    
    /**
    * Divide by another duration.
    *
    * @param r - Another duration.
    * @return Float64 - The divided 'Float64' value.
    *
    * @throws IllegalArgumentException - If @p r is Duration.Zero.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func /(r: Duration): Float64
    
    /**
    * Report whether it is equal to another Duration.
    *
    * @param r another duration.
    * @return true if equal @p r, otherwise false.
    *
    * @since 0.18.2
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(r: Duration): Bool
    
    /**
    * Report whether it is not equal to another Duration.
    *
    * @param r another duration.
    * @return true if not equal @p r, otherwise false.
    *
    * @since 0.18.2
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(r: Duration): Bool
    
    /**
    * Report whether it is greater than or equal to another Duration.
    *
    * @param r another duration.
    * @return true if greater than or equal to @p r, otherwise false.
    *
    * @since 0.18.2
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >=(r: Duration): Bool
    
    /**
    * Report whether it is greater than another Duration.
    *
    * @param r another duration.
    * @return true if greater than @p r, otherwise false.
    *
    * @since 0.18.2
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func >(r: Duration): Bool
    
    /**
    * Report whether it is less than or equal to another Duration.
    *
    * @param r another duration.
    * @return true if less than or equal to @p r, otherwise false.
    *
    * @since 0.18.2
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <=(r: Duration): Bool
    
    /**
    * Report whether it is less than another Duration.
    *
    * @param r another duration.
    * @return true if less than @p r, otherwise false.
    *
    * @since 0.18.2
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func <(r: Duration): Bool
    
    /**
    * Compare the relationship between the current duration instance and another duration instance.
    *
    * @param rhs - Another duration instance for comparison
    * @return Ordering - Indicating the relationship between two duration instances.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(rhs: Duration): Ordering
}

extend Int64 {
    /**
    * Multiply by a duration Instance.
    *
    * @param r - a duration Instance.
    * @return Duration - New duration instance after multiplication.
    *
    * @throws ArithmeticException - If the multiplied value in nanoseconds is out of range for 'Duration'.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func *(r: Duration): Duration
}

extend Float64 {
    /**
    * Multiply by a duration Instance.
    *
    * @param r - a duration Instance.
    * @return Duration - New duration instance after multiplication.
    *
    * @throws ArithmeticException - If the multiplied value in nanoseconds is out of range for 'Duration'.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func *(r: Duration): Duration
}



/**
* Endianness, also known as byte order.
*
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public enum Endian {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Big |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Little
    /**
    * Get the endianness of the current running platform.
    *
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Platform: Endian
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Equal<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    operator func ==(rhs: T): Bool
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface NotEqual<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    operator func !=(rhs: T): Bool
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Equatable<T> <: Equal<T> & NotEqual<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    operator func !=(rhs: T): Bool
}


extend<T> Range<T> <: Equatable<Range<T>> where T <: Countable<T> & Comparable<T> & Equatable<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: Range<T>): Bool
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public open class Error <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public open prop message: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public open func toString(): String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public open func printStackTrace(): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public open func getStackTraceMessage(): String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func getStackTrace(): Array<StackTraceElement>
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public open class Exception <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public open prop message: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public open func toString(): String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func printStackTrace(): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func getStackTrace(): Array<StackTraceElement>
}

extend Float64 {
    /**
    * @brief Convert from IEEE 754 binary value to Float64 value
    * @param bits, IEEE 754 binary representation of value
    * @return Float64 value
    *
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func fromBits(bits: UInt64): Float64
    
    /**
    * @brief Convert a Float64 value to an IEEE 754 binary representation
    *
    * @return UInt64 The value represented by the IEEE 754 binary bit representation
    *
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toBits(): UInt64
}

extend Float32 {
    /**
    * @brief Convert from IEEE 754 binary value to Float32 value
    * @param bits, IEEE 754 binary representation of value
    * @return Float32 value
    *
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func fromBits(bits: UInt32): Float32
    
    /**
    * @brief Convert a Float32 value to an IEEE 754 binary representation
    *
    * @return UInt64 The value represented by the IEEE 754 binary bit representation
    *
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toBits(): UInt32
}

extend Float16 {
    /**
    * @brief Convert from IEEE 754 binary value to Float16 value
    * @param bits, IEEE 754 binary representation of value
    * @return Float16 value
    *
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func fromBits(bits: UInt16): Float16
    
    /**
    * @brief Convert a Float16 value to an IEEE 754 binary representation
    *
    * @return UInt64 The value represented by the IEEE 754 binary bit representation
    *
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toBits(): UInt16
}




@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class Future<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop thread: Thread
    
    /**
    * Blocking the current thread,
    * waiting for the result of the thread corresponding to this Future<T> object.
    * @throws Exception or Error if an exception occurs in the corresponding thread.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func get(): T
    
    /**
    * Non-blocking method that immediately returns None if thread has not finished execution.
    * Returns the computed result otherwise.
    * @throws Exception or Error if an exception occurs in the corresponding thread.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func tryGet(): Option<T>
    
    /**
    * Blocking the current thread,
    * waiting for the result of the thread corresponding to this Future<T> object.
    * If the corresponding thread has not completed execution within `ns` nanoseconds,
    * the method will return `Option<T>.None`.
    * If `ns <= 0`, same as `get()`.
    * @throws Exception or Error if an exception occurs in the corresponding thread.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func get(timeout: Duration): T
    
    /**
    * Mark the current future as cancelled.
    * Send a termination request to its executing thread.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func cancel(): Unit
}

/**
* The optional argument type of the `spawn` expression.
* Specific derived types of `ThreadContext` could affect the behavior of the thread at runtime.
* Only for `MainThreadContext` by now.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface ThreadContext {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func end(): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func hasEnded(): Bool
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func hashCode(): Int64
}

/**
* The hashcode is defined as: 3 for Ordering.GT, 2 for Ordering.EQ, 1 for Ordering.LT
*/
extend Ordering <: Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
}

extend Unit <: Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
}

extend Bool <: Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
}

extend Rune <: Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
}

extend IntNative <: Hashable {
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Max: IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Min: IntNative
}

extend Int64 <: Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Max: Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Min: Int64
}

extend Int32 <: Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Max: Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Min: Int32
}

extend Int16 <: Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Max: Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Min: Int16
}

extend Int8 <: Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Max: Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Min: Int8
}

extend UIntNative <: Hashable {
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Max: UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Min: UIntNative
}

extend UInt64 <: Hashable {
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Max: UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Min: UInt64
}

extend UInt32 <: Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Max: UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Min: UInt32
}

extend UInt16 <: Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Max: UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Min: UInt16
}

extend UInt8 <: Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Max: UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Min: UInt8
}

extend Float64 <: Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop NaN: Float64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Inf: Float64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Max: Float64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Min: Float64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop MinDenormal: Float64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop MinNormal: Float64
    
    /**
    * If the value of @p Float64 is Positive Infinity or Negative Infinity,
    * true is returned. Otherwise, false is returned.
    *
    * @return true if @p Float64 is Positive Infinity or Negative Infinity.
    *
    * @since 0.17.4
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isInf(): Bool
    
    /**
    * If the value of @p Float64 is nan, true is returned. Otherwise, false is returned.
    *
    * @return true if @p Float64 is nan.
    *
    * @since 0.17.4
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isNaN(): Bool
    
    /**
    * If the value of @p Float64 is a normal floating-point number,
    * true is returned. Otherwise, false is returned.
    *
    * @return true if @p Float64 is a normal floating-point number.
    *
    * @since 0.17.4
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isNormal(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func max(a: Float64, b: Float64, others: Array<Float64>): Float64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func min(a: Float64, b: Float64, others: Array<Float64>): Float64
}

extend Float32 <: Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop NaN: Float32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Inf: Float32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Max: Float32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Min: Float32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop MinDenormal: Float32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop MinNormal: Float32
    
    /**
    * If the value of @p Float32 is Positive Infinity or Negative Infinity,
    * true is returned. Otherwise, false is returned.
    *
    * @return true if @p Float32 is Positive Infinity or Negative Infinity.
    *
    * @since 0.17.4
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isInf(): Bool
    
    /**
    * If the value of @p Float32 is nan, true is returned. Otherwise, false is returned.
    *
    * @return true if @p Float32 is nan.
    *
    * @since 0.17.4
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isNaN(): Bool
    
    /**
    * If the value of @p Float32 is a normal floating-point number,
    * true is returned. Otherwise, false is returned.
    *
    * @return true if @p Float32 is a normal floating-point number.
    *
    * @since 0.17.4
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isNormal(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func max(a: Float32, b: Float32, others: Array<Float32>): Float32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func min(a: Float32, b: Float32, others: Array<Float32>): Float32
}

extend Float16 <: Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop NaN: Float16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Inf: Float16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Max: Float16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop Min: Float16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop MinDenormal: Float16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop MinNormal: Float16
    
    /**
    * If the value of @p Float16 is Positive Infinity or Negative Infinity,
    * true is returned. Otherwise, false is returned.
    *
    * @return true if @p Float16 is Positive Infinity or Negative Infinity.
    *
    * @since 0.17.4
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isInf(): Bool
    
    /**
    * If the value of Float16 is nan, true is returned. Otherwise, false is returned.
    *
    * @return true if @p Float16 is nan.
    *
    * @since 0.17.4
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isNaN(): Bool
    
    /**
    * If the value of @p Float16 is a normal floating-point number,
    * true is returned. Otherwise, false is returned.
    *
    * @return true if @p Float16 is a normal floating-point number.
    *
    * @since 0.17.4
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isNormal(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func max(a: Float16, b: Float16, others: Array<Float16>): Float16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func min(a: Float16, b: Float16, others: Array<Float16>): Float16
}

extend<T> Range<T> <: Hashable where T <: Hashable & Countable<T> & Comparable<T> & Equatable<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Hasher {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func finish(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func reset(): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func write(value: Bool): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func write(value: Rune): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func write(value: Int8): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func write(value: Int16): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func write(value: Int32): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func write(value: Int64): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func write(value: UInt8): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func write(value: UInt16): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func write(value: UInt32): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func write(value: UInt64): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func write(value: Float16): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func write(value: Float32): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func write(value: Float64): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func write(value: String): Unit
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct DefaultHasher <: Hasher {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func finish(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func reset(): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func write(value: Bool): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func write(value: Rune): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func write(value: Int8): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func write(value: Int16): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func write(value: Int32): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func write(value: Int64): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func write(value: UInt8): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func write(value: UInt16): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func write(value: UInt32): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func write(value: UInt64): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func write(value: Float16): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func write(value: Float32): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func write(value: Float64): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func write(value: String): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(res!: Int64 = 0)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public open class IllegalArgumentException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public open class IllegalFormatException <: IllegalArgumentException {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class IllegalMemoryException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class IllegalStateException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class IncompatiblePackageException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class IndexOutOfBoundsException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

/**
* Implementing this interface allows an object to be the target of the "for-in loop" expression.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Iterable<E> {
    /* Returns an iterator over elements of type E. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func iterator(): Iterator<E>
}

/**
* An iterator over a collection.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public abstract class Iterator<T> <: Iterable<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func next(): Option<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    /*
    * Iterator.
    *
    * @return Iterator<T> Return Iterator<T>.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func iterator(): Iterator<T>
}

extend<T> Iterator<T> where T <: Equatable<T> {
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func contains(element: T): Bool
}

extend<T> Iterator<T> where T <: Comparable<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func max(): Option<T>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func min(): Option<T>
}

extend<T> Iterator<T> {
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func zip<R>(it: Iterator<R>): Iterator<(T, R)>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func enumerate(): Iterator<(Int64, T)>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func filter(predicate: (T) -> Bool): Iterator<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func filterMap<R>(transform: (T) -> Option<R>): Iterator<R>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func map<R>(transform: (T) -> R): Iterator<R>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func step(count: Int64): Iterator<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func skip(count: Int64): Iterator<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func take(count: Int64): Iterator<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func concat(other: Iterator<T>): Iterator<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func inspect(action: (T) -> Unit): Iterator<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func flatMap<R>(transform: (T) -> Iterator<R>): Iterator<R>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func intersperse(separator: T): Iterator<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func all(predicate: (T) -> Bool): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func any(predicate: (T) -> Bool): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func none(predicate: (T) -> Bool): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isEmpty(): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func count(): Int64
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func forEach(action: (T) -> Unit): Unit
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func first(): Option<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func last(): Option<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func at(n: Int64): Option<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func reduce(operation: (T, T) -> T): Option<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func fold<R>(initial: R, operation: (R, T) -> R): R
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func sizeOf<T>(): UIntNative where T <: CType

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func alignOf<T>(): UIntNative where T <: CType

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct LibC {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func malloc<T>(count!: Int64 = 1): CPointer<T> where T <: CType
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public unsafe static func free<T>(p: CPointer<T>): Unit where T <: CType
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public unsafe static func mallocCString(str: String): CString
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public unsafe static func free(cstr: CString): Unit
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class NegativeArraySizeException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class NoneValueException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Any {
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public open class Object <: Any {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public const init()
}

/**
* Check whether two Objects are referencing to the same memory block
*
* @return true means they are the same Object.
*
* @since 0.21.4
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func refEq(a: Object, b: Object): Bool

// This function is only used by ArrayList type, and it is not intended to be documented in users' guide
@Intrinsic
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public unsafe func zeroValue<T>(): T

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public enum Option<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Some(T) |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    None
    /*
    * @throws NoneValueException if the value of Option is None
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func getOrThrow(): T
    
    /*
    * @throws input Exception if the value of Option is None
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func getOrThrow(exception: () -> Exception): T
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func getOrDefault(other: () -> T): T
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isNone(): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isSome(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func map<R>(transform: (T) -> R): Option<R>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func filter(predicate: (T) -> Bool): Option<T>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func flatMap<R>(transform: (T) -> Option<R>): Option<R>
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func ifSome<T>(o: Option<T>, action: (T) -> Unit): Unit

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func ifNone<T>(o: Option<T>, action: () -> Unit): Unit

extend<T> Option<T> <: Equatable<Option<T>> where T <: Equatable<T> {
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: Option<T>): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(that: Option<T>): Bool
}

extend<T> Option<T> <: ToString where T <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend<T> Option<T> <: Hashable where T <: Hashable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
}

extend<T> Option<Option<T>> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func flatten(): Option<T>
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class OutOfMemoryError <: Error {
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class OverflowException <: ArithmeticException {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func print(str: String, flush!: Bool = false): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func println(): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func println(str: String): Unit

// The `eprint` is used to print error message, such as exception throwing.// The message will be printed to standard error text stream rather than standard output.
@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func eprint(str: String, flush!: Bool = true): Unit

// The `eprintln` is used to print error message, such as exception throwing.// The message will be printed to standard error text stream rather than standard output.
@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func eprintln(str: String): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func eprint<T>(arg: T, flush!: Bool = false): Unit where T <: ToString

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func eprintln<T>(arg: T): Unit where T <: ToString

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func print<T>(arg: T, flush!: Bool = false): Unit where T <: ToString

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func println<T>(arg: T): Unit where T <: ToString

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func readln(): String

/**
* overload primitive types for performance optimization
* For example, when using `Bool` type as the argument of `print` function, there are two steps:
* 1. call `toString()` method to create a String
* 2. call `print(String)` function to do the printing
* A few temporary objects like `Array<UInt8>` and `String` are created in above process.
* If we provide a few overloaded `print` function below, these temporary objects can be avoided.
*/
@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func print(b: Bool, flush!: Bool = false): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func println(b: Bool): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func print(c: Rune, flush!: Bool = false): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func println(c: Rune): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func print(f: Float16, flush!: Bool = false): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func println(f: Float16): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func print(f: Float32, flush!: Bool = false): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func println(f: Float32): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func print(f: Float64, flush!: Bool = false): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func println(f: Float64): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func print(i: Int8, flush!: Bool = false): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func print(i: Int16, flush!: Bool = false): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func print(i: Int32, flush!: Bool = false): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func print(i: Int64, flush!: Bool = false): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func print(i: UInt8, flush!: Bool = false): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func print(i: UInt16, flush!: Bool = false): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func print(i: UInt32, flush!: Bool = false): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func print(i: UInt64, flush!: Bool = false): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func println(i: Int8): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func println(i: Int16): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func println(i: Int32): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func println(i: Int64): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func println(i: UInt8): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func println(i: UInt16): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func println(i: UInt32): Unit

@Frozen
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func println(i: UInt64): Unit

@ConstSafe
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct Range<T> <: Iterable<T> where T <: Countable<T> & Comparable<T> & Equatable<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public let start: T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public let end: T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public let step: Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public let hasStart: Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public let hasEnd: Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public let isClosed: Bool
    
    /*
    * @throws IllegalArgumentException if the value of the step is equal to zero
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public const init(start: T, end: T, step: Int64, hasStart: Bool, hasEnd: Bool, isClosed: Bool)
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func iterator(): Iterator<T>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public const func isEmpty(): Bool
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class RangeIterator<T> <: Iterator<T> where T <: Countable<T> & Comparable<T> & Equatable<T> {
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func next(): Option<T>
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Resource {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func isClosed(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func close(): Unit
}

/**
* Sleep current thread for @p dur interval.
* If @p dur is less than or equal to Duration.Zero, current thread will relinquish the run right.
*
* @param dur Sleeping duration.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func sleep(dur: Duration): Unit

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SpawnException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class StackOverflowError <: Error {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public override func printStackTrace(): Unit
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public open class StackTraceElement {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public let declaringClass: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public let methodName: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public let fileName: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public let lineNumber: Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(declaringClass: String, methodName: String, fileName: String, lineNumber: Int64)
}

@ConstSafe
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct String <: Collection<Byte> & Comparable<String> & Hashable & ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static const empty: String = String()
    
    /**
    * Constructors
    */// Create an empty string which is an empty sequence of character.
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public const init()
    
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(value: Array<Rune>)
    
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(value: Collection<Rune>)
    
    // Returns the byte at the specified index.
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func get(index: Int64): Option<Byte>
    
    /**
    * Returns the sequence of characters in this string in the form of an array of characters.
    * @throws IllegalArgumentException if there is an invalid utf8 leading code
    *         in array `this.myData`.
    */
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toRuneArray(): Array<Rune>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toArray(): Array<Byte>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func iterator(): Iterator<Byte>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func runes(): Iterator<Rune>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func lines(): Iterator<String>
    
    // Returns the byte counts of this string.
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop size: Int64
    
    // Returns true if and only if this string is an empty string.
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isEmpty(): Bool
    
    /**
    * Determine if the string is an Ascii string,
    * return true if there are no characters other than Ascii in the string,
    * return true if the string is empty.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAscii(): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAsciiBlank(): Bool
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func clone(): String
    
    /**
    * Use wyhash to generate a hash value for a string.
    */
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    /**
    * Construct a string from a utf8-compliant bytecode sequence
    * @Param utf8Data - UTF8 bytecode sequence
    * @throws IllegalArgumentException If the array is an invalid UTF8 sequence
    * @return a String
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func fromUtf8(utf8Data: Array<UInt8>): String
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public unsafe func rawData(): Array<Byte>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public unsafe static func fromUtf8Unchecked(utf8Data: Array<UInt8>): String
    
    // Returns the index of the first occurrence of the specified byte.// Return `Option<Int64>.None` if the specified byte is absent.
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func indexOf(b: Byte): Option<Int64>
    
    // Returns the index of the first occurrence of the specified byte at or after the specified index.// Returns `Option<Int64>.None` if the specified byte is absent at or after the specified index.
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func indexOf(b: Byte, fromIndex: Int64): Option<Int64>
    
    // Returns the index of the first occurrence of the specified substring `str`.// Return `Option<Int64>.None` if `str` is absent.
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func indexOf(str: String): Option<Int64>
    
    // Returns the index of the first occurrence of the specified substring `str` at or after the specified index.// Return `Option<Int64>.None` if the specified string is absent at or after the specified index.
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func indexOf(str: String, fromIndex: Int64): Option<Int64>
    
    // Returns the index of the last occurrence of the specified byte.// Return `Option<Int64>.None` if specified byte is absent.
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func lastIndexOf(b: Byte): Option<Int64>
    
    // Returns the index of the last occurrence of the specified byte at or after the specified index.// Return `Option<Int64>.None` if specified byte is absent at or after the specified index.
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func lastIndexOf(b: Byte, fromIndex: Int64): Option<Int64>
    
    // Returns the index of the last occurrence of the specified substring `str`.// Return `Option<Int64>.None` if specified substring is absent.
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func lastIndexOf(str: String): Option<Int64>
    
    // Returns the index of the last occurrence of the specified substring `str` at or after the specified index.// Return `Option<Int64>.None` if specified substring is absent at or after the specified index.// Search last substring from the beginning when 'fromIndex' is less than 0.
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func lastIndexOf(str: String, fromIndex: Int64): Option<Int64>
    
    // Returns the number of non-overlapping occurrences of the given substring `str` in the string.// If `str` is an empty string, returns the number of Unicode code points in this string + 1.
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func count(str: String): Int64
    
    /**
    * @return an array of strings which are the result of separating this string using the specified
    *         separator. If the separator is not empty and is absent in this string, returns an array
    *         which only contains this string. If the separator is empty, split after each character.
    *         If both this string and separator are empty, returns an empty array.
    * @throws OutOfMemoryError if failed to call `this.splitOfString`.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func split(str: String, removeEmpty!: Bool = false): Array<String>
    
    /**
    * @return an array of strings which are the result of separating this string using the specified
    *         separator with maximum split number `maxSplits`.
    * @throws OutOfMemoryError if failed to call `this.splitOfString`.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func split(str: String, maxSplits: Int64, removeEmpty!: Bool = false): Array<String>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func lazySplit(str: String, removeEmpty!: Bool = false): Iterator<String>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func lazySplit(str: String, maxSplits: Int64, removeEmpty!: Bool = false): Iterator<String>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func replace(old: String, new: String): String
    
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAsciiLower(): String
    
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAsciiUpper(): String
    
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAsciiTitle(): String
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimAscii(): String
    
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimAsciiStart(): String
    
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimAsciiEnd(): String
    
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimStart(set: Array<Rune>): String
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimEnd(set: Array<Rune>): String
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimStart(set: String): String
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimEnd(set: String): String
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimStart(predicate: (Rune) -> Bool): String
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimEnd(predicate: (Rune) -> Bool): String
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func removePrefix(prefix: String): String
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func removeSuffix(suffix: String): String
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func contains(str: String): Bool
    
    // Returns true if and only if this string starts with the given `prefix`.
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func startsWith(prefix: String): Bool
    
    // Returns true if and only if this string ends with the given `suffix`.
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func endsWith(suffix: String): Bool
    
    /**
    * @return a new string which is the result of padding zero or more `padding` to this string on the left.
    * @throws IllegalArgumentException if `totalWidth` < 0.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func padStart(totalWidth: Int64, padding!: String = " "): String
    
    /**
    * @return a new string which is the result of padding zero or more `padding` to this string on the right.
    * @throws IllegalArgumentException if `totalWidth` < 0.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func padEnd(totalWidth: Int64, padding!: String = " "): String
    
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func equalsIgnoreAsciiCase(that: String): Bool
    
    /**
    * Compare the relationship between two instance of String, lexically byte-wise.
    *
    * @param str Instance of String compared with this.
    * @return Value indicating the relationship between two instance of String.
    *
    * @throws IllegalArgumentException if there is an invalid utf8 leading code
    *         in array `arr1` or `arr2`.
    *
    * @since 0.27.3
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func compare(str: String): Ordering
    
    // Return a string which is the result of concatenating `left` and `right`.
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator const func +(right: String): String
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator const func *(count: Int64): String
    
    // Returns true if and only if string `left` is less than `right` with the lexicographical order.
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator const func <(right: String): Bool
    
    // Returns true if and only if string `left` is less than or equal to `right` with the lexicographical order.
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator const func <=(right: String): Bool
    
    // Returns true if and only if string `left` is greater than `right` with the lexicographical order.
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator const func >(right: String): Bool
    
    // Returns true if and only if string `left` is greater than or equal to `right` with the lexicographical order.
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator const func >=(right: String): Bool
    
    // Returns true if and only if the two string are identical.
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator const func ==(right: String): Bool
    
    // Returns true if and only if the two string are not identical.
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator const func !=(right: String): Bool
    
    /**
    * @return the `Byte` value at the specified index.
    * @throws IndexOutOfBoundsException if `index` is out of bounds.
    */
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator const func [](index: Int64): Byte
    
    /**
    * @return the `String` value at the specified range.
    * @throws IllegalArgumentException if `step` is not equal to one.
    * @throws IndexOutOfBoundsException if `range` is out of bounds.
    * @throws IllegalArgumentException if the start or end point of the range is not the code point boundary.
    */
    @OverflowWrapping
@Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator const func [](range: Range<Int64>): String
    
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func join(strArray: Array<String>, delimiter!: String = String.empty): String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class StringBuilder <: ToString {
    /**
    * Constructors
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(str: String)
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(r: Rune, n: Int64)
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(value: Array<Rune>)
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(capacity: Int64)
    
    /**
    * Get UTF-8 code unit size.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop size: Int64
    
    /**
    * Get capacity of this instance.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop capacity: Int64
    
    /**
    * Return a String managed by StringBuilder.
    *
    * @return a String managed by StringBuilder.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
    
    /**
    * @throws IllegalMemoryException if there are some system errors.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func reset(capacity!: Option<Int64> = None): Unit
    
    @OverflowWrapping
@Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(r: Rune): Unit
    
    @OverflowWrapping
@Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(str: String): Unit
    
    @OverflowWrapping
@Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(sb: StringBuilder): Unit
    
    /*
    * @throws IllegalArgumentException if there is an invalid utf8 leading code
    *         in array "arr[i]".
    */
    @OverflowWrapping
@Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func appendFromUtf8(arr: Array<Byte>): Unit
    
    @OverflowWrapping
@Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public unsafe func appendFromUtf8Unchecked(arr: Array<Byte>): Unit
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(runeArr: Array<Rune>): Unit
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(cstr: CString): Unit
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append<T>(v: T): Unit where T <: ToString
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append<T>(val: Array<T>): Unit where T <: ToString
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(b: Bool): Unit
    
    @Frozen
@OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(n: Int64): Unit
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(n: Int32): Unit
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(n: Int16): Unit
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(n: Int8): Unit
    
    @OverflowWrapping
@Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(n: UInt64): Unit
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(n: UInt32): Unit
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(n: UInt16): Unit
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(n: UInt8): Unit
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(n: Float64): Unit
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(n: Float32): Unit
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(n: Float16): Unit
    
    @Frozen
@OverflowThrowing
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func reserve(additional: Int64): Unit
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class Thread {
    // If a Cangjie thread is created without a Future object,// its Thread object will be lazy-constructed.
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop currentThread: Thread
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop id: Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop name: String
    
    /**
    * Check whether the current Cangjie thread has termination requests,
    * i.e., whether its future has been marked as cancelled.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop hasPendingCancellation: Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func handleUncaughtExceptionBy(exHandler: (Thread, Exception) -> Unit): Unit
}

/**
* ThreadLocal is used to provide thread-local variables.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class ThreadLocal<T> {
    /**
    * Return the value of this thread-local variable in the current thread.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func get(): ?T
    
    /**
    * Set the current thread's thread-local variable with the value parameter.
    * If None is passed as the parameter, the value of this thread-local variable
    * will be removed from the current thread.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func set(value: ?T): Unit
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class TimeoutException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

/**
* This file introduces 'ToString' interface, which has a 'toString' function declaration.
* 'toString' function is used to provide string representation for various types.
* For primitive types, we provide standard toString implementation. For composite types
* or user-defined types, they have to to implement toString function by themselves.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func toString(): String
}

extend Int64 <: ToString {
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend IntNative <: ToString {
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend Int32 <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend Int16 <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend Int8 <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend UInt64 <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend UIntNative <: ToString {
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend UInt32 <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend UInt16 <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend UInt8 <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend Float64 <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend Float32 <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend Float16 <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend Bool <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend Rune <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

extend Unit <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

public type Byte = UInt8

public type Int = Int64

public type UInt = UInt64

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class UnsupportedException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

