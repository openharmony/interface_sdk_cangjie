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

package ohos.ark_interop
internal import ohos.labels.*

internal import std.math.numeric.*
import ohos.business_exception.*
import std.collection.*
import std.convert.*
import std.sync.*
import std.collection.ArrayList
import std.sync.Mutex
import std.sync.AtomicInt64

public type JSBufferFinalizer = (CPointer<Byte>) -> Unit

/**
* ArrayBuffer relative operation class, interop ArrayBuffer, DataView and TypedArrays	
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSArrayBuffer <: JSHeapObject {
    /**
    * Binding memory's size in byte.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public prop byteLength: Int32
    
    /**
    * Read binding memory in bytes.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func readBytes(): Array<Byte>
    
    /**
    * Read binding memory to Array<bytes>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toUInt8Array(): Array<UInt8>
    
    /**
    * Read binding memory to Array<Int8>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toInt8Array(): Array<Int8>
    
    /**
    * Read binding memory to Array<UInt16>.
    *
    * @throws { Exception } - Binding memory's size is not pow of 2.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toUInt16Array(): Array<UInt16>
    
    /**
    * Read binding memory to Array<Int16>.
    *
    * @throws { Exception} - Binding memory's size is not pow of 2.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toInt16Array(): Array<Int16>
    
    /**
    * Read binding memory to Array<Int32>.
    *
    * @throws { Exception} - Binding memory's size is not pow of 4.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toInt32Array(): Array<Int32>
    
    /**
    * Read binding memory to Array<UInt32>.
    * 
    * @throws { Exception } - Binding memory's size is not pow of 4.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toUInt32Array(): Array<UInt32>
    
    /**
    * Read binding memory to Array<Float32>.
    *
    * @throws { Exception } - Binding memory's size is not pow of 4.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toFloat32Array(): Array<Float32>
    
    /**
    * Read binding memory to Array<UInt64>.
    *
    * @throws { Exception } - Binding memory's size is not pow of 8.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toUInt64Array(): Array<UInt64>
    
    /**
    * Read binding memory to Array<Int64>.
    * 
    * @throws { Exception } - Binding memory's size is not pow of 8.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toInt64Array(): Array<Int64>
    
    /**
    * Read binding memory to Array<Float64>.
    *
    * @throws { Exception } - Binding memory's size is not pow of 8.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toFloat64Array(): Array<Float64>
    
    /**
    * Return the JSValue of arrayBuffer in ArkTS.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toArrayBufferJSValue(): JSValue
    
    /**
    * Return the JSValue of uint8Array in ArkTS.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toUInt8ArrayJSValue(): JSValue
    
    /**
    * Return the JSValue of uint8ClampedArray in ArkTS.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toUInt8ClampedArrayJSValue(): JSValue
    
    /**
    * Return the JSValue of int8Array in ArkTS.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toInt8ArrayJSValue(): JSValue
    
    /**
    * Return the JSValue of uint16Array in ArkTS.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toUInt16ArrayJSValue(): JSValue
    
    /**
    * Return the JSValue of int16Array in ArkTS.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toInt16ArrayJSValue(): JSValue
    
    /**
    * Return the JSValue of uint32Array in ArkTS.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toUInt32ArrayJSValue(): JSValue
    
    /**
    * Return the JSValue of int32Array in ArkTS.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toInt32ArrayJSValue(): JSValue
    
    /**
    * Return the JSValue of uint64Array in ArkTS.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toUInt64ArrayJSValue(): JSValue
    
    /**
    * Return the JSValue of int64Array in ArkTS.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toInt64ArrayJSValue(): JSValue
    
    /**
    * Return the JSValue of float32Array in ArkTS.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toFloat32ArrayJSValue(): JSValue
    
    /**
    * Return the JSValue of float64Array in ArkTS.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toFloat64ArrayJSValue(): JSValue
}


/**
* The JSBigInt object is used to represent a safe reference to the ArkTS bigint type.
* It can be converted to Cangjie BigInt.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSBigInt <: JSHeapObject {
    /**
    * Convert JSBigInt to Cangjie BigInt.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toBigInt(): BigInt
}


public type OverrideMethod = (JSContext, JSCallInfo, JSFunction) -> JSValue

/**
* The JSClass object is used to represent a safe reference to the ArkTS class (constructor).
* Method and accessors can be added to this class, and instances of this class can be created.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSClass <: JSHeapObject {
    /**
    * Prototype obejct of class.
    *
    * @throws { NoneValueException } - The value of prototype is None.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public prop prototype: JSObject
    
    /**
    * Instantiate a new object through the ArkTS class.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func new(): JSValue
    
    /**
    * Instantiate a new object through the ArkTS class.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func new(arg: JSValue): JSValue
    
    /**
    * Instantiate a new object through the ArkTS class.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func new(args: Array<JSValue>): JSValue
    
    /**
    * Add a data member to the ArkTS class, typically used to define immutable property.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func addProperty(key: JSKeyable, value: JSValue): Unit
    
    /**
    * Define a pair of getter and setter for the ArkTS class.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func addAccessor(key: JSKeyable, getter!: ?JSFunction = None, setter!: ?JSFunction = None): Unit
    
    /**
    * Define a pair of getter and setter for the ArkTS class.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func addAccessor(key: JSKeyable, getter!: ?JSLambda = None, setter!: ?JSLambda = None): Unit
    
    /**
    * Define a method for the ArkTS class.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func addMethod(key: JSKeyable, method: JSFunction): Unit
    
    /**
    * Define a method for the ArkTS class.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func addMethod(key: JSKeyable, method: JSLambda): Unit
}


/**
* Base class of objects shared with arkts. It has an unique id. When shared to arkts, the object would be kept to
*  a global table. The id used to index the object.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public open class SharedObject {
    /**
    * Init SharedObject.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public init()
    
    /**
    * Id of the SharedObject in global table.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public prop nativeId: Int64
}


/**
* The js presentation of a cj object. It holds the id of cj object, and affects the lifecycle of the cj object.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSExternal <: JSHeapObject {
    /**
    * Get sharedObject by id.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func getData(): SharedObject
    
    /**
    * Cast sharedObject to Option<T>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func cast<T>(): Option<T> where T <: SharedObject
}


/**
* Information related to an ArkTS function call. It can obtain the `this` pointer, retrieve the number of
* arguments, and get argument by index. Each ArkTS function call saves the argument list and other related
* information on the ArkTS stack. JSCallInfo is a pointer to this information.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public struct JSCallInfo {
    /**
    * Number of input arguments.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public prop count: Int64
    
    /**
    * `this` pointer.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public prop thisArg: JSValue
    
    /**
    * Get argument at index.
    * 
    * @throws { BusinessException } 34300001 - Index is less than 0.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func [](index: Int64): JSValue
}


public type JSLambda = (JSContext, JSCallInfo) -> JSValue

/**
* A safe reference to the ArkTS function.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSFunction <: JSHeapObject {
    /**
    * An ArkTS function call with None argument.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func call(thisArg!: JSValue = context.undefined().toJSValue()): JSValue
    
    /**
    * An ArkTS function call with one argument.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func call(arg: JSValue, thisArg!: JSValue = context.undefined().toJSValue()): JSValue
    
    /**
    * An ArkTS function call with multiple arguments.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func call(args: Array<JSValue>, thisArg!: JSValue = context.undefined().toJSValue()): JSValue
}



/**
* JSObjects into cj are references, JSHeapObject is the base class of all JSObject references.
*  JSHeapObject keeps the JSObject alive by create global handle, and dispose global handle after cj object are
*  destructed(Note: the finalizer is called in final derived class [cj spec rule]).
*/
@!APILevel[
    21,
    stagemodelonly: true
]
abstract sealed class JSHeapObject {
    /**
    * Convert JSHeapObject to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(): JSValue
}


/**
* Function and performance expansion of JSString.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSStringEx <: JSInteropType<JSStringEx> & Equatable<JSStringEx> & ToString {
    /**
    * Init JSStringEx.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public init(str: String)
    
    /**
    * Return true if and only if the two string are identical.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func ==(str: JSStringEx): Bool
    
    /**
    * Return true if and only if the two string are not identical.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func !=(str: JSStringEx): Bool
    
    /**
    * Convert JSStringEx to String.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toString(): String
    
    /**
    * Convert JSStringEx to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Init JSStringEx from JSValue.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSString.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(context: JSContext, input: JSValue): JSStringEx
    
    /**
    * Get corresponding ArkTS type name of JSStringEx.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* Function and performance expansion of JSArray.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSArrayEx<T> <: JSInteropType<JSArrayEx<T>> where T <: JSInteropType<T> {
    /**
    * Init JSArrayEx<T>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public init(arr: Array<T>)
    
    /**
    * Clone JSArrayEx<T>. A deep copy of JSArrayEx<T> data will be peformed. 
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func clone(): JSArrayEx<T>
    
    /**
    * Create a new JSArrayEx, with content being the concatenation of the current JSArrayEx follow by other JSArrayEx.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func concat(other: JSArrayEx<T>): JSArrayEx<T>
    
    /**
    * The size of JSArrayEx.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public prop size: Int64
    
    /**
    * Get the element at index.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func get(index: Int64): Option<T>
    
    /**
    * Set the element at index.
    *
    * @throws {IndexOutOfBoundsException} if `index` is negative or greater than or equal to the size of array.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func set(index: Int64, element: T): Unit
    
    /**
    * Check whether the size is empty. If yes, true is returned. Otherwise, false is returned.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isEmpty(): Bool
    
    /**
    * Get the element at index.
    *
    * @throws {IndexOutOfBoundsException} if `index` is negative or greater than or equal to the size of array.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func [](index: Int64): T
    
    /**
    * Set the element at index.
    *
    * @throws {IndexOutOfBoundsException} if `index` is negative or greater than or equal to the size of array.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func [](index: Int64, value!: T)
    
    /**
    * Convert JSArrayEx<T> to Array<T>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toArray(): Array<T>
    
    /**
    * Convert JSArrayEx<T> to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Init JSArrayEx<T> from JSValue.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSArray.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(context: JSContext, input: JSValue): JSArrayEx<T>
    
    /**
    * Get corresponding ArkTS type name of JSArrayEx<T>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* Function and performance expansion of JSMap.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSHashMapEx<K, V> <: JSInteropType<JSHashMapEx<K, V>> where K <: JSKeyable & Hashable & Equatable<K> &
    JSInteropType<K>, V <: JSInteropType<V> {
    /**
    * Init JSHashMapEx<K, V>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public init(map: HashMap<K, V>)
    
    /**
    * Init JSHashMapEx<K, V>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public init()
    
    /**
    * Get the value corresponding to the key.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func get(key: K): Option<V>
    
    /**
    * Clear JSHashMapEx.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func clear(): Unit
    
    /**
    * Clone JSHashMapEx<K, V>. A deep copy of JSHashMapEx<K, V> data will be peformed. 
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func clone(): JSHashMapEx<K, V>
    
    /**
    * Checks whether the mapping relationship corresponding to the collection key exists in this JSHashMapEx<K, V>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func containsAll(keys: Collection<K>): Bool
    
    /**
    * Check whether the size if empty. If yes, true is returned. Otherwise, false is returned.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isEmpty(): Bool
    
    /**
    * Set value corresponding to the key.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func set(key: K, value: V): Unit
    
    /**
    * Set value corresponding to the key in collection.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func setAll(elements: Collection<(K, V)>): Unit
    
    /**
    * Set value corresponding to the key if key does not exists in this JSHashMapEx<K, V>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func setIfAbsent(key: K, value: V): Bool
    
    /**
    * Delete key in this JSHashMapEx<K, V>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func delete(key: K): Bool
    
    /**
    * Delete keys in this JSHashMapEx<K, V>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func deleteAll(keys: Collection<K>): Unit
    
    /**
    * Delete keys that do not meet the predicate condition.
    *
    * @throws { Exception } - Get value failed.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func deleteIf(predicate: (K, V) -> Bool): Unit
    
    /**
    * Return keys.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func keys(): EquatableCollection<K>
    
    /**
    * Return values.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func values(): Collection<V>
    
    /**
    * The size of JSHashMapEx<K, V>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public prop size: Int64
    
    /**
    * Checks whether the mapping relationship corresponding to the key exists in this JSHashMapEx<K, V>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func has(key: K): Bool
    
    /**
    * Convert JSHashMapEx<K, V> to HashMap<K, V>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toHashMap(): HashMap<K, V>
    
    /**
    * Get the value corresponding to the key.
    *
    * @throws { NoneValueException } - Value does not exist.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func [](key: K): V
    
    /**
    * Set value corresponding to the key.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func [](key: K, value!: V): Unit
    
    /**
    * Convert JSHashMapEx<K, V> to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(c: JSContext): JSValue
    
    /**
    * Init JSHashMapEx<K, V> from JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(context: JSContext, input: JSValue): JSHashMapEx<K, V>
    
    /**
    * Get corresponding ArkTS type name of JSHashMapEx<K, V>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


@!APILevel[
    21,
    stagemodelonly: true
]
sealed interface JSInteropByte {
}


/**
* Byte extended JSInteropByte interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend Byte <: JSInteropByte {
}


/**
* The interface is used to implement extension methods for types that can be utilized in declarative interop macros.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public interface JSInteropType<T> {
    /**
    * Init from JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    static func fromJSValue(context: JSContext, input: JSValue): T
    
    /**
    * Convert to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    func toJSValue(context: JSContext): JSValue
    
    /**
    * Get ArkTS type name corresponding to the Cangjie type.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    static func toArkTsType(): String
}


/**
* Int8 extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend Int8 <: JSInteropType<Int8> {
    /**
    * Convert JSValue to Int8.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to Float64.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Int8
    
    /**
    * Convert Int8 to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Get corresponding ArkTS type name of Int8.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* Int16 extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend Int16 <: JSInteropType<Int16> {
    /**
    * Convert JSValue to Int16.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to Float64.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Int16
    
    /**
    * Convert Int16 to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Get corresponding ArkTS type name of Int16.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* Int32 extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend Int32 <: JSInteropType<Int32> {
    /**
    * Convert JSValue to Int32.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to Float64.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Int32
    
    /**
    * Convert Int32 to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Get corresponding ArkTS type name of Int32.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* Int64 extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend Int64 <: JSInteropType<Int64> {
    /**
    * Convert JSValue to Int64.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to Float64.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Int64
    
    /**
    * Convert Int64 to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Get corresponding ArkTS type name of Int64.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* UInt8 extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend UInt8 <: JSInteropType<UInt8> {
    /**
    * Convert JSValue to UInt8.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to Float64.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): UInt8
    
    /**
    * Convert UInt8 to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Get corresponding ArkTS type name of UInt8.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* UInt16 extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend UInt16 <: JSInteropType<UInt16> {
    /**
    * Convert JSValue to UInt16.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to Float64.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): UInt16
    
    /**
    * Convert UInt16 to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Get corresponding ArkTS type name of UInt16.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* UInt32 extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend UInt32 <: JSInteropType<UInt32> {
    /**
    * Convert JSValue to UInt32.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to Float64.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    @OverflowWrapping
    public static func fromJSValue(_: JSContext, input: JSValue): UInt32
    
    /**
    * Convert UInt32 to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    @OverflowWrapping
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Get corresponding ArkTS type name of UInt32.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* UInt64 extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend UInt64 <: JSInteropType<UInt64> {
    /**
    * Convert JSValue to UInt64.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to Float64.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): UInt64
    
    /**
    * Convert UInt64 to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Get corresponding ArkTS type name of UInt64.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* Float16 extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend Float16 <: JSInteropType<Float16> {
    /**
    * Convert JSValue to Float16.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to Float64.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Float16
    
    /**
    * Convert Float16 to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Get corresponding ArkTS type name of Float16.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* Float32 extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend Float32 <: JSInteropType<Float32> {
    /**
    * Convert JSValue to Float32.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to Float64.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Float32
    
    /**
    * Convert Float32 to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Get corresponding ArkTS type name of Float32.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* Float64 extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend Float64 <: JSInteropType<Float64> & JSKeyable {
    /**
    * Convert JSValue to Float64.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to Float64.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Float64
    
    /**
    * Convert Float64 to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Get corresponding ArkTS type name of Float64.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* Bool extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend Bool <: JSInteropType<Bool> {
    /**
    * Convert JSValue to Bool.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to Bool.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Bool
    
    /**
    * Convert Bool to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Get corresponding ArkTS type name of Bool.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* String extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend String <: JSInteropType<String> {
    /**
    * Convert JSValue to String.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to String.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): String
    
    /**
    * Get corresponding ArkTS type name of String.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* JSString extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend JSString <: JSInteropType<JSString> {
    /**
    * Convert JSValue to JSString.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSString.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): JSString
    
    /**
    * Get corresponding ArkTS type name of JSString.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* Unit extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend Unit <: JSInteropType<Unit> {
    /**
    * Convert JSValue to Unit.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(_: JSContext, _: JSValue): Unit
    
    /**
    * Convert Unit to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Get corresponding ArkTS type name of Unit.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* Option<T> extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend<T> Option<T> <: JSInteropType<Option<T>> where T <: JSInteropType<T> {
    /**
    * Convert JSValue to Option<T>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(context: JSContext, input: JSValue): Option<T>
    
    /**
    * Convert Option<T> to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Get corresponding ArkTS type name of Option<T>.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


/**
* Array<T> extended JSInteropType interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend<T> Array<T> <: JSInteropType<Array<T>> where T <: JSInteropByte {
    /**
    * Init Int8 from JSValue.
    *
    * @throws { Exception } - JSValue convert to Array error
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Array<T>
    
    /**
    * Convert Array to JSValue.
    *
    * @throws { Exception } - Array Buffer convert to JSValue error.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Get corresponding ArkTS type name of Array.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


public type ModuleRegister = (JSContext, JSObject) -> Unit

public type ClassRegister = (JSContext) -> JSClass

public type FuncRegister = (JSContext) -> JSFunction

/**
* A static class that provides interface for exporting symbol registration.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSModule {
    /**
    * Register the interface to be exported to ArkTS.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func registerModule(register: ModuleRegister): Unit
    
    /**
    * Register a class to be exported to ArkTS.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func registerClass(name: String, register: ClassRegister): Unit
    
    /**
    * Register a function to be exported to ArkTS.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func registerFunc(name: String, register: FuncRegister): Unit
    
    /**
    * Register a function to be exported to ArkTS.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func registerFunc(name: String, lambda: JSLambda): Unit
}


type JSPromiseCap = CPointer<JSPromisePrivate>
/**
* A callback encapsulation object. JSPromise aims to provide consistent encapsulation for callbacks, significantly
* enhancing its usability by combining the syntactic sugar of async and await. The lifecycle of JSPromise exceeds the 
* referenced ArkTS object.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSPromise <: JSHeapObject {
    /**
    * Register result processing callback function.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func then(onFulfilled: JSFunction, onRejected!: ?JSFunction = None): Unit
    
    /**
    * Register exception processing callback function.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func catchError(callback: JSFunction): Unit
}


/**
* JSPromiseCapability is not a JSValue but a JSVM internal type,
* the main purpose is to enhance performance.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSPromiseCapability {
    /**
    * Notify promise of noraml completion and commits the return value.
    *
    * @throws { BusinessException } 34300003 - JSPromiseCapability has been fulfilled or rejected.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func resolve(value: JSValue): Unit
    
    /**
    * Submit an exception to promise.
    *
    * @throws { BusinessException } 34300003 - JSPromiseCapability has been fulfilled or rejected.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func reject(value: JSValue): Unit
    
    /**
    * Convert JSPromiseCapability to JSValue.
    * 
    * @throws { BusinessException } 34300003 - JSPromiseCapability has been fulfilled or rejected.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(): JSValue
}


/**
* ArkTs null.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public struct JSNull {
    /**
    * Convert JSNull to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(): JSValue
}


/**
* ArkTs undefined.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public struct JSUndefined {
    /**
    * Convert JSUndefined to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(): JSValue
}


/**
* ArkTs boolean.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public struct JSBoolean {
    /**
    * Convert JSBoolean to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(): JSValue
    
    /**
    * Convert JSBoolean to Cangjie Bool.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toBool(): Bool
}


/**
* ArkTs number.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public struct JSNumber {
    /**
    * Convert JSNumber to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(): JSValue
    
    /**
    * Convert JSNumber to Cangjie Float64.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to Float64.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toFloat64(): Float64
}


/**
* JSValue is unified type in the ArkTS runtime and alse the data type that directly interacts with the ArkTS runtime.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public struct JSValue {
    /**
    * Get the type of JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func typeof(): JSType
    
    /**
    * Perform a strict equality check (type consistency and value equality) on two JSValues.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func strictEqual(target: JSValue): Bool
    
    /**
    * Check whether JSValue is null.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isNull(): Bool
    
    /**
    * Check whether JSValue is undefined.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isUndefined(): Bool
    
    /**
    * Check whether JSValue is boolean.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isBoolean(): Bool
    
    /**
    * Check whether JSValue is number.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isNumber(): Bool
    
    /**
    * Check whether JSValue is string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isString(): Bool
    
    /**
    * Check whether JSValue is function.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isFunction(): Bool
    
    /**
    * Check whether JSValue is object.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isObject(): Bool
    
    /**
    * Check whether JSValue is array.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isArray(): Bool
    
    /**
    * Check whether JSValue is Promise.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isPromise(): Bool
    
    /**
    * Check whether JSValue is ArkTS class.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isClass(): Bool
    
    /**
    * Check whether JSValue is an external object (ArkTS reference of a Cangjie object).
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isExternal(): Bool
    
    /**
    * Check whether JSValue is symbol.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isSymbol(): Bool
    
    /**
    * Check whether JSValue is ArrayBuffer.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isArrayBuffer(): Bool
    
    /**
    * Convert JSValue to JSNull. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSNull.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func asNull(): JSNull
    
    /**
    * Convert JSValue to JSUndefined. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSUndefined.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func asUndefined(): JSUndefined
    
    /**
    * Convert JSValue to JSBoolean. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSBoolean.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func asBoolean(): JSBoolean
    
    /**
    * Convert JSValue to JSNumber. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSNumber.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func asNumber(): JSNumber
    
    /**
    * Convert JSValue to Bool. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to Bool.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toBoolean(): Bool
    
    /**
    * Convert JSValue to Float64. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to Float64.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toNumber(): Float64
    
    /**
    * Convert JSValue to String. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to String.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toString(): String
    
    /**
    * Convert JSValue to Utf16String.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toUtf16String(): Utf16String
    
    /**
    * Convert JSValue to JSString. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSString.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func asString(): JSString
    
    /**
    * Convert JSValue to JSObject. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSObject.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func asObject(): JSObject
    
    /**
    * Convert JSValue to JSFunction. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSFunction.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func asFunction(): JSFunction
    
    /**
    * Conert JSValue to JSArray. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSArray.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func asArray(): JSArray
    
    /**
    * Convert JSValue to JSClass. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSClass.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func asClass(): JSClass
    
    /**
    * Convert JSValue to JSExternal. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSExternal.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func asExternal(): JSExternal
    
    /**
    * Convert JSValue to JSPromise. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSPromise.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func asPromise(): JSPromise
    
    /**
    * Convert JSValue to JSSymbol. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSSymbol.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func asSymbol(): JSSymbol
    
    /**
    * Convert JSValue to JSArrayBuffer. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSArrayBuffer.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func asArrayBuffer(): JSArrayBuffer
    
    /**
    * Check whether JSValue is BigInt.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isBigInt(): Bool
    
    /**
    * Convert JSValue to JSBigInt. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to JSBigInt.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func asBigInt(): JSBigInt
    
    /**
    * Convert JSValue to BigInt. If the failure occurs, Exception will be throwed.
    *
    * @throws { BusinessException } 34300005 - JSValue cannot be converted to BigInt.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toBigInt(): BigInt
    
    /**
    * Get the element at index.
    *
    * @throws { BusinessException } 34300001 - The index is out of range.
    * @throws { BusinessException } 34300005 - JSValue is not an array.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func getElement(index: Int64): JSValue
    
    /**
    * Set the element at index.
    *
    * @throws { BusinessException } 34300001 - The index is less than 0.
    * @throws { BusinessException } 34300005 - JSValue is not an array.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func setElement(index: Int64, value: JSValue): Unit
    
    /**
    * Get the property corresponding to the key.
    *
    * @throws { BusinessException } 34300005 - JSValue is not JSObject.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func getProperty(key: JSKeyable): JSValue
    
    /**
    * Set the property corresponding to the key.
    *
    * @throws { BusinessException } 34300005 - JSValue is not JSObject.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func setProperty(key: JSKeyable, setValue: JSValue): Unit
    
    /**
    * Set the property corresponding to the key.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func setProperty(_: JSContext, key: JSKeyable, setValue: JSValue): Unit
    
    /**
    * Bind JSValue to an ArkTs external object.
    *
    * @throws { BusinessException } 34300005 - JSValue is not JSObject or external is not JSExternal.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func bindObject(external: JSValue): Unit
    
    /**
    * Bind JSValue to an ArkTs external object.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func bindObject(data: SharedObject): Unit
    
    /**
    * Get the Cangjie object bound to the ArkTs object.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func getBindingObject(): ?SharedObject
}



/**
* The ArkTS runtime created by Cangjie. 
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSRuntime {
    /**
    * Init JSRuntime.
    *
    * @throws { Exception } - ArkTS Engine is Null.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public init()
    
    /**
    * ArkTS interop context.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public prop mainContext: JSContext
    
    /**
    * Get napi environment pointer.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func getNapiEnv(): CPointer<Unit>
}


/**
* The JSSymbol object is used to represent a safe reference to the ArkTS symbol type.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSSymbol <: JSHeapObject & JSKeyable {
    /**
    * Convert JSSymbol to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(_: JSContext): JSValue
    
    /**
    * The description of symbol.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public prop description: String
    
    /**
    * Return a String that represents the JSSymbol.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toString(): String
}


/**
* The ArkTS data type enumeration.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
@C
public struct JSType {
    /**
    * ArkTS undefined type.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static let UNDEFINED: JSType = JSType(0)
    
    /**
    * ArkTS null type.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static let NULL: JSType = JSType(1)
    
    /**
    * ArkTS number type.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static let NUMBER: JSType = JSType(2)
    
    /**
    * ArkTS boolean type.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static let BOOLEAN: JSType = JSType(3)
    
    /**
    * ArkTS bigint type.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static let BIGINT: JSType = JSType(4)
    
    /**
    * ArkTS string type.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static let STRING: JSType = JSType(5)
    
    /**
    * ArkTS symbol type.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static let SYMBOL: JSType = JSType(6)
    
    /**
    * ArkTS object type.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static let OBJECT: JSType = JSType(7)
    
    /**
    * ArkTS function type.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static let FUNCTION: JSType = JSType(8)
    
    /**
    * ArkTS external type.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static let EXTERNAL: JSType = JSType(9)
    
    /**
    * Return true if and only if the two JSType are identical.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func ==(target: JSType): Bool
    
    /**
    * Return true if and only if the two JSType are not identical.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func !=(target: JSType): Bool
    
    /**
    * Get string description of JSType.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toString(): String
}


/**
* The JSArray object is used to represent a safe reference to the ArkTS array.
* It supports getting length, reading and writing elements.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSArray <: JSHeapObject {
    /**
    * Array length.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public prop size: Int64
    
    /**
    * Get the element at index.
    *
    * @throws { BusinessException } 34300001 - The index is out of range.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func [](index: Int64): JSValue
    
    /**
    * Set the element at index.
    *
    * @throws { BusinessException } 34300001 - The index is less than 0.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func [](index: Int64, value!: JSValue): Unit
    
    /**
    * Set the element at index.
    *
    * @throws { BusinessException } 34300001 - The index is less than 0.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func [](index: Int64, value!: JSHeapObject): Unit
}


type JSEnv = IntNative



public type napi_env = CPointer<Unit>

public type napi_value = CPointer<Unit>

/**
* A single-thread ArkTS interop context. JSContext has a one-to-one correspondence with the ArkTS runtime. 
* Its main purpose is to create JSValues and safe references and manage the lifecycle of Cangjie objects 
* referenced by ArkTS.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSContext {
    /**
    * Check whether the current thread can execute interop interface.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isInBindThread(): Bool
    
    /**
    * ArkTS global environment variable.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public prop global: JSObject
    
    /**
    * ArkTS interop context.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public prop env: JSEnv
    
    /**
    * Get napi environment pointer.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func getNapiEnv(): napi_env
    
    /**
    * Create an ArkTS undefined.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func undefined(): JSUndefined
    
    /**
    * Create an ArkTS null.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func null(): JSNull
    
    /**
    * Create an ArkTS boolean.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func boolean(value: Bool): JSBoolean
    
    /**
    * Create an ArkTS number.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func number(value: Float64): JSNumber
    
    /**
    * Create an ArkTS number.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func number(value: Int32): JSNumber
    
    /**
    * Create an ArkTS string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func string(value: String): JSString
    
    /**
    * Create an ArkTS string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func string(value: Utf16String): JSString
    
    /**
    * Create an empty ArkTS object reference.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func object(): JSObject
    
    /**
    * Create an ArkTS function.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func function(lambda: JSLambda): JSFunction
    
    /**
    * Create an ArkTS array.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func array(arr: Array<JSValue>): JSArray
    
    /**
    * Create an ArkTS class.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func clazz(ctor: JSLambda, superClass!: ?JSClass = None): JSClass
    
    /**
    * Create an ArkTS reference to Cangjie object.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func external(data: SharedObject): JSExternal
    
    /**
    * Create an ArkTS Promise.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func promiseCapability(): JSPromiseCapability
    
    /**
    * Create an ArkTS ArrayBuffer.
    *
    * @throws {BusinessException} 34300001 - Length is thess than 0.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func arrayBuffer(length: Int32): JSArrayBuffer
    
    /**
    * Create an ArkTS ArrayBuffer.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func arrayBuffer(data: Array<Byte>): JSArrayBuffer
    
    /**
    * Create an ArkTS ArrayBuffer.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func arrayBuffer(data: Array<Int8>): JSArrayBuffer
    
    /**
    * Create an ArkTS ArrayBuffer.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func arrayBuffer(data: Array<Int16>): JSArrayBuffer
    
    /**
    * Create an ArkTS ArrayBuffer.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func arrayBuffer(data: Array<UInt16>): JSArrayBuffer
    
    /**
    * Create an ArkTS ArrayBuffer.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func arrayBuffer(data: Array<UInt32>): JSArrayBuffer
    
    /**
    * Create an ArkTS ArrayBuffer.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func arrayBuffer(data: Array<Int32>): JSArrayBuffer
    
    /**
    * Create an ArkTS ArrayBuffer.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func arrayBuffer(data: Array<Float32>): JSArrayBuffer
    
    /**
    * Create an ArkTS ArrayBuffer.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func arrayBuffer(data: Array<Int64>): JSArrayBuffer
    
    /**
    * Create an ArkTS ArrayBuffer.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func arrayBuffer(data: Array<UInt64>): JSArrayBuffer
    
    /**
    * Create an ArkTS ArrayBuffer.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func arrayBuffer(data: Array<Float64>): JSArrayBuffer
    
    /**
    * Create an ArkTS ArrayBuffer.
    *
    * @throws {BusinessException} 34300001 - Length is thess than 0.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public unsafe func arrayBuffer(rawData: CPointer<Byte>, length: Int32, finalizer: JSBufferFinalizer): JSArrayBuffer
    
    /**
    * Create an ArkTS symbol.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func symbol(description!: String = ""): JSSymbol
    
    /**
    * Create an ArkTS bigint.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func bigint(value: Int64): JSBigInt
    
    /**
    * Create an ArkTS bigint.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func bigint(value: BigInt): JSBigInt
    
    /**
    * Create a task to be executed in ArkTS thread.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func postJSTask(callback: () -> Unit): Unit
    
    /**
    * Load the built-in ArkTS napi module of the system.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func requireSystemNativeModule(moduleName: String, prefix!: ?String = None): JSValue
}


/**
* Base class of a safe reference to ArkTS object.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
abstract sealed class JSObjectBase <: JSHeapObject {
    /**
    * Check whether the current object is an instance of the target ArkTS class. 
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func instanceOf(clazz: JSClass): Bool
    
    /**
    * Check whether the current object has the target property. 
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func hasProperty(key: JSKeyable): Bool
    
    /**
    * Get the property value of the current object. 
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func getProperty(key: JSKeyable): JSValue
    
    /**
    * Get the property value of the current object. 
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func [](key: JSKeyable): JSValue
    
    /**
    * Call method corressponding to the key of the JSObject.
    *
    * @throws {BusinessException} 34300005 - Object is not JSFunction.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func callMethod(key: JSKeyable, args: Array<JSValue>): JSValue
    
    /**
    * Set property to the current object. 
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func setProperty(key: JSKeyable, setValue: JSValue): Unit
    
    /**
    * Set property to the current object. 
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func [](key: JSKeyable, value!: JSValue): Unit
    
    /**
    * Define property on the current object. 
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func defineOwnProperty(key: JSKeyable, setValue: JSValue, isWritable!: Bool = true,
        isEnumerable!: Bool = true, isConfigurable!: Bool = true): Bool
    
    /**
    * Define accessor on the current object. 
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func defineOwnAccessor(key: JSKeyable, getter!: ?JSFunction = None, setter!: ?JSFunction = None,
        isEnumerable!: Bool = false, isConfigurable!: Bool = false): Bool
    
    /**
    * Define accessor on the current object. 
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func defineOwnAccessor(key: JSKeyable, getter!: ?JSLambda = None, setter!: ?JSLambda = None,
        isEnumerable!: Bool = false, isConfigurable!: Bool = false): Bool
    
    /**
    * Get all property names of the current object. 
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func keys(): Array<String>
    
    /**
    * Attach target JSExternal to the current object. 
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func attachCJObject(target: JSExternal): Unit
    
    /**
    * Get the target JSExternal attached to the current object. 
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func getAttachInfo(): ?JSExternal
}


/**
* A secure reference to ArkTS object.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSObject <: JSObjectBase {
}


/**
* An interface that implements extension method to convert value to JSValue.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public interface ToJSValue {
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    func toJSValue(context: JSContext): JSValue
}


/**
* An interface that can be used as a JSObejct key. It implements extension methods for String type.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
sealed interface JSKeyable <: ToString & ToJSValue {
}


/**
* String class that extends the JSKeyable interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
extend String <: JSKeyable {
    /**
    * Convert String to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
}


/**
* The JSString object is used to represent a secure reference to the ArkTS string.
* It can be converted to Cangjie String and Utf16String.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class JSString <: JSHeapObject & ToString & JSKeyable {
    /**
    * Convert JSString to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(_: JSContext): JSValue
    
    /**
    * Convert JSString to String.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toString(): String
    
    /**
    * Convert JSString to Utf16String.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toUtf16String(): Utf16String
}



/**
* String stored in UTF-16 encoding format which has better performance than String when converting to and from ArkTS string.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class Utf16String <: ToString & Equatable<Utf16String> & Hashable & JSKeyable & JSInteropType<Utf16String> {
    /**
    * Empty String.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static let empty = Utf16String(unsafe { CJUtf16StringCreateEmpty()})
    
    /**
    * Init Utf16String.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public init(src: String)
    
    /**
    * Release the memory that stores the string content. Accessing the string content after the first dispose will
    * result in an exception.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func dispose(): Unit
    
    /**
    * Check whether ths string content is accessible. The string content can be manually released using 
    * dispose method. Continuing to access it after release will throw an exception.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public prop accessible: Bool
    
    /**
    * Convert Utf16String to String.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toString(): String
    
    /**
    * Compare the relationship between this Utf16String and another Utf16String.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func compare(target: Utf16String): Ordering
    
    /**
    * Check whether the current Utf16String is euqal to `target`.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func == (target: Utf16String): Bool
    
    /**
    * Get the hash value of the current Utf16String.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func hashCode(): Int64
    
    /**
    * The total length of the code units in the string (UTF-16 encoding format).
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public prop size: Int64
    
    /**
    * The number of the total chars.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public prop totalChars: Int64
    
    /**
    * Check whether the size if empty. If yes, true is returned. Otherwise, false is returned.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isEmpty(): Bool
    
    /**
    * Check whether the content of string has been compressed.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func isCompressed(): Bool
    
    /**
    * Return true if and only if the two string are not identical.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func != (target: Utf16String): Bool
    
    /**
    * Return true if and only if the current string is greater than the target string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func > (target: Utf16String): Bool
    
    /**
    * Return true if and only if the current string is greater than or equal to the target string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func >= (target: Utf16String): Bool
    
    /**
    * Return true if and only if the current string is less than the target string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func < (target: Utf16String): Bool
    
    /**
    * Return true if and only if the current string is less than or equal to the target string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func <= (target: Utf16String): Bool
    
    /**
    * Get the element at index.
    *
    * @throws { IndexOutOfBoundsException } - The index is out of range.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func [](index: Int64): UInt16
    
    /**
    * Get the string at the specified range.
    *
    * @throws { Exception } - The range is out of bounds.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func [](range: Range<Int64>): Utf16String
    
    /**
    * Return rune iterator of the string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func runes(): Iterator<Rune>
    
    /**
    * Return line Iterator of the string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func lines(): Iterator<Utf16String>
    
    /**
    * Search backward for the position of the target string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func indexOf(target: Utf16String): ?Int64
    
    /**
    * Search backward from the index for the position of the target string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func indexOf(target: Utf16String, fromIndex: Int64): ?Int64
    
    /**
    * Search forward for the position of the target string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func lastIndexOf(target: Utf16String): ?Int64
    
    /**
    * Search forward from the index for the position of the target string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func lastIndexOf(target: Utf16String, fromIndex: Int64): ?Int64
    
    /**
    * Return the number of occurrences of the given substring `src` in the string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func count(src: Utf16String): Int64
    
    /**
    * Split the string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func split(seperator: Utf16String, remoteEmpty!: Bool = false): Array<Utf16String>
    
    /**
    * Split the string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func split(seperator: Utf16String, maxSplit: Int64, remoteEmpty!: Bool = false): Array<Utf16String>
    
    /**
    * Lazy split the string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func lazySplit(separator: Utf16String, remoteEmpty!: Bool = false): Iterator<Utf16String>
    
    /**
    * Lazy split the string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func lazySplit(separator: Utf16String, maxSplit: Int64, remoteEmpty!: Bool = false): Iterator<Utf16String>
    
    /**
    * Return a string which is result of replacing occurrences of `old` in the string with `new`.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    @OverflowWrapping
    public func replace(old: Utf16String, new: Utf16String, count!: Int64 = Int64.Max): Utf16String
    
    /**
    * Return true if and only if the current string contains the target string.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func contains(target: Utf16String): Bool
    
    /**
    * Return true if and only if this string starts with the given `target`.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func startsWith(target: Utf16String): Bool
    
    /**
    * Return true if and only if this string ends with the given `target`.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func endsWith(target: Utf16String): Bool
    
    /**
    * Return s string which is the result of concatenating `left` and `right`.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public operator func + (right: Utf16String): Utf16String
    
    /**
    * Convert Utf16String to JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public func toJSValue(context: JSContext): JSValue
    
    /**
    * Create an Utf16String from JSValue.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func fromJSValue(_: JSContext, value: JSValue): Utf16String
    
    /**
    * Get corresponding ArkTS type name of Utf16String.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public static func toArkTsType(): String
}


