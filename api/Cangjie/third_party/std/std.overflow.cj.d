package std.overflow


/**
 * @description Interface that provides carrying operations for numeric types
 */
@!APILevel[
    since: "22"
]
public interface CarryingOp<T> {
    /**
     * @description Performs addition with overflow checking
     * @param y The value to add
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    func carryingAdd(y: T): (Bool, T)
    
    /**
     * @description Performs subtraction with overflow checking
     * @param y The value to subtract
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    func carryingSub(y: T): (Bool, T)
    
    /**
     * @description Performs multiplication with overflow checking
     * @param y The value to multiply by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    func carryingMul(y: T): (Bool, T)
    
    /**
     * @description Performs division with overflow checking
     * @param y The value to divide by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the divisor is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func carryingDiv(y: T): (Bool, T)
    
    /**
     * @description Performs modulo operation with overflow checking
     * @param y The modulus value
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the modulus is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func carryingMod(y: T): (Bool, T)
    
    /**
     * @description Performs increment operation with overflow checking
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    func carryingInc(): (Bool, T)
    
    /**
     * @description Performs decrement operation with overflow checking
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    func carryingDec(): (Bool, T)
    
    /**
     * @description Performs negation operation with overflow checking
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    func carryingNeg(): (Bool, T)
    
    /**
     * @description Performs left shift operation with overflow checking
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    func carryingShl(y: UInt64): (Bool, T)
    
    /**
     * @description Performs right shift operation with overflow checking
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    func carryingShr(y: UInt64): (Bool, T)
}

/**
 * @description Interface that provides power operation with overflow checking
 */
@!APILevel[
    since: "22"
]
public interface CarryingPow {
    /**
     * @description Performs power operation with overflow checking
     * @param y The exponent value
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    func carryingPow(y: UInt64): (Bool, Int64)
}

/**
 * @description Provides carrying arithmetic operations for the Int8 type.
 */
extend Int8 <: CarryingOp<Int8> {
    /**
     * @description Performs addition with overflow checking for Int8
     * @param y The value to add
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingAdd(y: Int8): (Bool, Int8)
    
    /**
     * @description Performs subtraction with overflow checking for Int8
     * @param y The value to subtract
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingSub(y: Int8): (Bool, Int8)
    
    /**
     * @description Performs multiplication with overflow checking for Int8
     * @param y The value to multiply by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingMul(y: Int8): (Bool, Int8)
    
    /**
     * @description Performs division with overflow checking for Int8
     * @param y The value to divide by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the divisor is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingDiv(y: Int8): (Bool, Int8)
    
    /**
     * @description Performs modulo operation with overflow checking for Int8
     * @param y The modulus value
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the modulus is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingMod(y: Int8): (Bool, Int8)
    
    /**
     * @description Performs increment operation with overflow checking for Int8
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingInc(): (Bool, Int8)
    
    /**
     * @description Performs decrement operation with overflow checking for Int8
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingDec(): (Bool, Int8)
    
    /**
     * @description Performs negation operation with overflow checking for Int8
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingNeg(): (Bool, Int8)
    
    /**
     * @description Performs left shift operation with overflow checking for Int8
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShl(y: UInt64): (Bool, Int8)
    
    /**
     * @description Performs right shift operation with overflow checking for Int8
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShr(y: UInt64): (Bool, Int8)
}

/**
 * @description Provides carrying arithmetic operations for the Int16 type.
 */
extend Int16 <: CarryingOp<Int16> {
    /**
     * @description Performs addition with overflow checking for Int16
     * @param y The value to add
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingAdd(y: Int16): (Bool, Int16)
    
    /**
     * @description Performs subtraction with overflow checking for Int16
     * @param y The value to subtract
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingSub(y: Int16): (Bool, Int16)
    
    /**
     * @description Performs multiplication with overflow checking for Int16
     * @param y The value to multiply by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingMul(y: Int16): (Bool, Int16)
    
    /**
     * @description Performs division with overflow checking for Int16
     * @param y The value to divide by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the divisor is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingDiv(y: Int16): (Bool, Int16)
    
    /**
     * @description Performs modulo operation with overflow checking for Int16
     * @param y The modulus value
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the modulus is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingMod(y: Int16): (Bool, Int16)
    
    /**
     * @description Performs increment operation with overflow checking for Int16
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingInc(): (Bool, Int16)
    
    /**
     * @description Performs decrement operation with overflow checking for Int16
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingDec(): (Bool, Int16)
    
    /**
     * @description Performs negation operation with overflow checking for Int16
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingNeg(): (Bool, Int16)
    
    /**
     * @description Performs left shift operation with overflow checking for Int16
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShl(y: UInt64): (Bool, Int16)
    
    /**
     * @description Performs right shift operation with overflow checking for Int16
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShr(y: UInt64): (Bool, Int16)
}

/**
 * @description Provides carrying arithmetic operations for the Int32 type.
 */
extend Int32 <: CarryingOp<Int32> {
    /**
     * @description Performs addition with overflow checking for Int32
     * @param y The value to add
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingAdd(y: Int32): (Bool, Int32)
    
    /**
     * @description Performs subtraction with overflow checking for Int32
     * @param y The value to subtract
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingSub(y: Int32): (Bool, Int32)
    
    /**
     * @description Performs multiplication with overflow checking for Int32
     * @param y The value to multiply by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingMul(y: Int32): (Bool, Int32)
    
    /**
     * @description Performs division with overflow checking for Int32
     * @param y The value to divide by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the divisor is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingDiv(y: Int32): (Bool, Int32)
    
    /**
     * @description Performs modulo operation with overflow checking for Int32
     * @param y The modulus value
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the modulus is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingMod(y: Int32): (Bool, Int32)
    
    /**
     * @description Performs increment operation with overflow checking for Int32
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingInc(): (Bool, Int32)
    
    /**
     * @description Performs decrement operation with overflow checking for Int32
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingDec(): (Bool, Int32)
    
    /**
     * @description Performs negation operation with overflow checking for Int32
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingNeg(): (Bool, Int32)
    
    /**
     * @description Performs left shift operation with overflow checking for Int32
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShl(y: UInt64): (Bool, Int32)
    
    /**
     * @description Performs right shift operation with overflow checking for Int32
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShr(y: UInt64): (Bool, Int32)
}

/**
 * @description Provides carrying arithmetic operations for the Int64 type.
 */
extend Int64 <: CarryingOp<Int64> & CarryingPow {
    /**
     * @description Performs addition with overflow checking for Int64
     * @param y The value to add
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingAdd(y: Int64): (Bool, Int64)
    
    /**
     * @description Performs subtraction with overflow checking for Int64
     * @param y The value to subtract
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingSub(y: Int64): (Bool, Int64)
    
    /**
     * @description Performs multiplication with overflow checking for Int64
     * @param y The value to multiply by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingMul(y: Int64): (Bool, Int64)
    
    /**
     * @description Performs division with overflow checking for Int64
     * @param y The value to divide by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the divisor is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingDiv(y: Int64): (Bool, Int64)
    
    /**
     * @description Performs modulo operation with overflow checking for Int64
     * @param y The modulus value
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the modulus is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingMod(y: Int64): (Bool, Int64)
    
    /**
     * @description Performs increment operation with overflow checking for Int64
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingInc(): (Bool, Int64)
    
    /**
     * @description Performs decrement operation with overflow checking for Int64
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingDec(): (Bool, Int64)
    
    /**
     * @description Performs negation operation with overflow checking for Int64
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingNeg(): (Bool, Int64)
    
    /**
     * @description Performs left shift operation with overflow checking for Int64
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShl(y: UInt64): (Bool, Int64)
    
    /**
     * @description Performs right shift operation with overflow checking for Int64
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShr(y: UInt64): (Bool, Int64)
    
    /**
     * @description Performs power operation with overflow checking for Int64
     * @param y The exponent
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingPow(y: UInt64): (Bool, Int64)
}

/**
 * @description Provides carrying arithmetic operations for the IntNative type.
 */
extend IntNative <: CarryingOp<IntNative> {
    /**
     * @description Performs addition with overflow checking for IntNative
     * @param y The value to add
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingAdd(y: IntNative): (Bool, IntNative)
    
    /**
     * @description Performs subtraction with overflow checking for IntNative
     * @param y The value to subtract
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingSub(y: IntNative): (Bool, IntNative)
    
    /**
     * @description Performs multiplication with overflow checking for IntNative
     * @param y The value to multiply by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingMul(y: IntNative): (Bool, IntNative)
    
    /**
     * @description Performs division with overflow checking for IntNative
     * @param y The value to divide by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the divisor is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingDiv(y: IntNative): (Bool, IntNative)
    
    /**
     * @description Performs modulo operation with overflow checking for IntNative
     * @param y The modulus value
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the modulus is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingMod(y: IntNative): (Bool, IntNative)
    
    /**
     * @description Performs increment operation with overflow checking for IntNative
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingInc(): (Bool, IntNative)
    
    /**
     * @description Performs decrement operation with overflow checking for IntNative
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingDec(): (Bool, IntNative)
    
    /**
     * @description Performs negation operation with overflow checking for IntNative
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingNeg(): (Bool, IntNative)
    
    /**
     * @description Performs left shift operation with overflow checking for IntNative
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShl(y: UInt64): (Bool, IntNative)
    
    /**
     * @description Performs right shift operation with overflow checking for IntNative
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShr(y: UInt64): (Bool, IntNative)
}

/**
 * @description Provides carrying arithmetic operations for the UInt8 type.
 */
extend UInt8 <: CarryingOp<UInt8> {
    /**
     * @description Performs addition with overflow checking for UInt8
     * @param y The value to add
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingAdd(y: UInt8): (Bool, UInt8)
    
    /**
     * @description Performs subtraction with overflow checking for UInt8
     * @param y The value to subtract
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingSub(y: UInt8): (Bool, UInt8)
    
    /**
     * @description Performs multiplication with overflow checking for UInt8
     * @param y The value to multiply by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingMul(y: UInt8): (Bool, UInt8)
    
    /**
     * @description Performs division with overflow checking for UInt8
     * @param y The value to divide by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the divisor is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingDiv(y: UInt8): (Bool, UInt8)
    
    /**
     * @description Performs modulo operation with overflow checking for UInt8
     * @param y The modulus value
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the modulus is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingMod(y: UInt8): (Bool, UInt8)
    
    /**
     * @description Performs increment operation with overflow checking for UInt8
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingInc(): (Bool, UInt8)
    
    /**
     * @description Performs decrement operation with overflow checking for UInt8
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingDec(): (Bool, UInt8)
    
    /**
     * @description Performs negation operation with overflow checking for UInt8
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingNeg(): (Bool, UInt8)
    
    /**
     * @description Performs left shift operation with overflow checking for UInt8
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShl(y: UInt64): (Bool, UInt8)
    
    /**
     * @description Performs right shift operation with overflow checking for UInt8
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShr(y: UInt64): (Bool, UInt8)
}

/**
 * @description Provides carrying arithmetic operations for the UInt16 type.
 */
extend UInt16 <: CarryingOp<UInt16> {
    /**
     * @description Performs addition with overflow checking for UInt16
     * @param y The value to add
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingAdd(y: UInt16): (Bool, UInt16)
    
    /**
     * @description Performs subtraction with overflow checking for UInt16
     * @param y The value to subtract
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingSub(y: UInt16): (Bool, UInt16)
    
    /**
     * @description Performs multiplication with overflow checking for UInt16
     * @param y The value to multiply by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingMul(y: UInt16): (Bool, UInt16)
    
    /**
     * @description Performs division with overflow checking for UInt16
     * @param y The value to divide by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the divisor is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingDiv(y: UInt16): (Bool, UInt16)
    
    /**
     * @description Performs modulo operation with overflow checking for UInt16
     * @param y The modulus value
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the modulus is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingMod(y: UInt16): (Bool, UInt16)
    
    /**
     * @description Performs increment operation with overflow checking for UInt16
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingInc(): (Bool, UInt16)
    
    /**
     * @description Performs decrement operation with overflow checking for UInt16
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingDec(): (Bool, UInt16)
    
    /**
     * @description Performs negation operation with overflow checking for UInt16
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingNeg(): (Bool, UInt16)
    
    /**
     * @description Performs left shift operation with overflow checking for UInt16
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShl(y: UInt64): (Bool, UInt16)
    
    /**
     * @description Performs right shift operation with overflow checking for UInt16
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShr(y: UInt64): (Bool, UInt16)
}

/**
 * @description Provides carrying arithmetic operations for the UInt32 type.
 */
extend UInt32 <: CarryingOp<UInt32> {
    /**
     * @description Performs addition with overflow checking for UInt32
     * @param y The value to add
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingAdd(y: UInt32): (Bool, UInt32)
    
    /**
     * @description Performs subtraction with overflow checking for UInt32
     * @param y The value to subtract
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingSub(y: UInt32): (Bool, UInt32)
    
    /**
     * @description Performs multiplication with overflow checking for UInt32
     * @param y The value to multiply by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingMul(y: UInt32): (Bool, UInt32)
    
    /**
     * @description Performs division with overflow checking for UInt32
     * @param y The value to divide by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the divisor is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingDiv(y: UInt32): (Bool, UInt32)
    
    /**
     * @description Performs modulo operation with overflow checking for UInt32
     * @param y The modulus value
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the modulus is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingMod(y: UInt32): (Bool, UInt32)
    
    /**
     * @description Performs increment operation with overflow checking for UInt32
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingInc(): (Bool, UInt32)
    
    /**
     * @description Performs decrement operation with overflow checking for UInt32
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingDec(): (Bool, UInt32)
    
    /**
     * @description Performs negation operation with overflow checking for UInt32
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingNeg(): (Bool, UInt32)
    
    /**
     * @description Performs left shift operation with overflow checking for UInt32
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShl(y: UInt64): (Bool, UInt32)
    
    /**
     * @description Performs right shift operation with overflow checking for UInt32
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShr(y: UInt64): (Bool, UInt32)
}

/**
 * @description Provides carrying arithmetic operations for the UInt64 type.
 */
extend UInt64 <: CarryingOp<UInt64> {
    /**
     * @description Performs addition with overflow checking for UInt64
     * @param y The value to add
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingAdd(y: UInt64): (Bool, UInt64)
    
    /**
     * @description Performs subtraction with overflow checking for UInt64
     * @param y The value to subtract
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingSub(y: UInt64): (Bool, UInt64)
    
    /**
     * @description Performs multiplication with overflow checking for UInt64
     * @param y The value to multiply by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingMul(y: UInt64): (Bool, UInt64)
    
    /**
     * @description Performs division with overflow checking for UInt64
     * @param y The value to divide by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the divisor is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingDiv(y: UInt64): (Bool, UInt64)
    
    /**
     * @description Performs modulo operation with overflow checking for UInt64
     * @param y The modulus value
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the modulus is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingMod(y: UInt64): (Bool, UInt64)
    
    /**
     * @description Performs increment operation with overflow checking for UInt64
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingInc(): (Bool, UInt64)
    
    /**
     * @description Performs decrement operation with overflow checking for UInt64
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingDec(): (Bool, UInt64)
    
    /**
     * @description Performs negation operation with overflow checking for UInt64
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingNeg(): (Bool, UInt64)
    
    /**
     * @description Performs left shift operation with overflow checking for UInt64
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShl(y: UInt64): (Bool, UInt64)
    
    /**
     * @description Performs right shift operation with overflow checking for UInt64
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShr(y: UInt64): (Bool, UInt64)
}

/**
 * @description Provides carrying arithmetic operations for the UIntNative type.
 */
extend UIntNative <: CarryingOp<UIntNative> {
    /**
     * @description Performs addition with overflow checking for UIntNative
     * @param y The value to add
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingAdd(y: UIntNative): (Bool, UIntNative)
    
    /**
     * @description Performs subtraction with overflow checking for UIntNative
     * @param y The value to subtract
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingSub(y: UIntNative): (Bool, UIntNative)
    
    /**
     * @description Performs multiplication with overflow checking for UIntNative
     * @param y The value to multiply by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingMul(y: UIntNative): (Bool, UIntNative)
    
    /**
     * @description Performs division with overflow checking for UIntNative
     * @param y The value to divide by
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the divisor is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingDiv(y: UIntNative): (Bool, UIntNative)
    
    /**
     * @description Performs modulo operation with overflow checking for UIntNative
     * @param y The modulus value
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     * @throws DivideByZeroException when the modulus is zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func carryingMod(y: UIntNative): (Bool, UIntNative)
    
    /**
     * @description Performs increment operation with overflow checking for UIntNative
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingInc(): (Bool, UIntNative)
    
    /**
     * @description Performs decrement operation with overflow checking for UIntNative
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingDec(): (Bool, UIntNative)
    
    /**
     * @description Performs negation operation with overflow checking for UIntNative
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingNeg(): (Bool, UIntNative)
    
    /**
     * @description Performs left shift operation with overflow checking for UIntNative
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShl(y: UInt64): (Bool, UIntNative)
    
    /**
     * @description Performs right shift operation with overflow checking for UIntNative
     * @param y The number of bits to shift
     * @returns A tuple containing a boolean indicating whether overflow occurred and the result of the operation
     */
    @!APILevel[
        since: "22"
    ]
    public func carryingShr(y: UInt64): (Bool, UIntNative)
}

/**
 * @description Interface that provides checked operations for numeric types
 */
@!APILevel[
    since: "22"
]
public interface CheckedOp<T> {
    /**
     * @description Performs addition with overflow checking, returning None if overflow occurs
     * @param y The value to add
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func checkedAdd(y: T): ?T
    
    /**
     * @description Performs subtraction with overflow checking, returning None if overflow occurs
     * @param y The value to subtract
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func checkedSub(y: T): ?T
    
    /**
     * @description Performs multiplication with overflow checking, returning None if overflow occurs
     * @param y The value to multiply by
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func checkedMul(y: T): ?T
    
    /**
     * @description Performs division with overflow checking, returning None if overflow occurs or divisor is zero
     * @param y The value to divide by
     * @returns Some(result) if no overflow occurred and divisor is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func checkedDiv(y: T): ?T
    
    /**
     * @description Performs modulo operation with overflow checking, returning None if overflow occurs or modulus is zero
     * @param y The modulus value
     * @returns Some(result) if no overflow occurred and modulus is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func checkedMod(y: T): ?T
    
    /**
     * @description Performs increment operation with overflow checking, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func checkedInc(): ?T
    
    /**
     * @description Performs decrement operation with overflow checking, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func checkedDec(): ?T
    
    /**
     * @description Performs negation operation with overflow checking, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func checkedNeg(): ?T
    
    /**
     * @description Performs left shift operation with overflow checking, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func checkedShl(y: UInt64): ?T
    
    /**
     * @description Performs right shift operation with overflow checking, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func checkedShr(y: UInt64): ?T
}

/**
 * @description Interface that provides power operation with overflow checking
 */
@!APILevel[
    since: "22"
]
public interface CheckedPow {
    /**
     * @description Performs power operation with overflow checking
     * @param y The exponent value
     * @returns The result of the operation, or null if overflow occurred
     */
    @!APILevel[
        since: "22"
    ]
    func checkedPow(y: UInt64): ?Int64
}

/**
 * @description Provides checked arithmetic operations for the Int8 type.
 */
extend Int8 <: CheckedOp<Int8> {
    /**
     * @description Performs addition with overflow checking for Int8, returning None if overflow occurs
     * @param y The value to add
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedAdd(y: Int8): ?Int8
    
    /**
     * @description Performs subtraction with overflow checking for Int8, returning None if overflow occurs
     * @param y The value to subtract
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedSub(y: Int8): ?Int8
    
    /**
     * @description Performs multiplication with overflow checking for Int8, returning None if overflow occurs
     * @param y The value to multiply by
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMul(y: Int8): ?Int8
    
    /**
     * @description Performs division with overflow checking for Int8, returning None if overflow occurs or divisor is zero
     * @param y The value to divide by
     * @returns Some(result) if no overflow occurred and divisor is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDiv(y: Int8): ?Int8
    
    /**
     * @description Performs modulo operation with overflow checking for Int8, returning None if overflow occurs or modulus is zero
     * @param y The modulus value
     * @returns Some(result) if no overflow occurred and modulus is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMod(y: Int8): ?Int8
    
    /**
     * @description Performs increment operation with overflow checking for Int8, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedInc(): ?Int8
    
    /**
     * @description Performs decrement operation with overflow checking for Int8, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDec(): ?Int8
    
    /**
     * @description Performs negation operation with overflow checking for Int8, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedNeg(): ?Int8
    
    /**
     * @description Performs left shift operation with overflow checking for Int8, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShl(y: UInt64): ?Int8
    
    /**
     * @description Performs right shift operation with overflow checking for Int8, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShr(y: UInt64): ?Int8
}

/**
 * @description Provides checked arithmetic operations for the Int16 type.
 */
extend Int16 <: CheckedOp<Int16> {
    /**
     * @description Performs addition with overflow checking for Int16, returning None if overflow occurs
     * @param y The value to add
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedAdd(y: Int16): ?Int16
    
    /**
     * @description Performs subtraction with overflow checking for Int16, returning None if overflow occurs
     * @param y The value to subtract
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedSub(y: Int16): ?Int16
    
    /**
     * @description Performs multiplication with overflow checking for Int16, returning None if overflow occurs
     * @param y The value to multiply by
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMul(y: Int16): ?Int16
    
    /**
     * @description Performs division with overflow checking for Int16, returning None if overflow occurs or divisor is zero
     * @param y The value to divide by
     * @returns Some(result) if no overflow occurred and divisor is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDiv(y: Int16): ?Int16
    
    /**
     * @description Performs modulo operation with overflow checking for Int16, returning None if overflow occurs or modulus is zero
     * @param y The modulus value
     * @returns Some(result) if no overflow occurred and modulus is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMod(y: Int16): ?Int16
    
    /**
     * @description Performs increment operation with overflow checking for Int16, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedInc(): ?Int16
    
    /**
     * @description Performs decrement operation with overflow checking for Int16, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDec(): ?Int16
    
    /**
     * @description Performs negation operation with overflow checking for Int16, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedNeg(): ?Int16
    
    /**
     * @description Performs left shift operation with overflow checking for Int16, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShl(y: UInt64): ?Int16
    
    /**
     * @description Performs right shift operation with overflow checking for Int16, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShr(y: UInt64): ?Int16
}

/**
 * @description Provides checked arithmetic operations for the Int32 type.
 */
extend Int32 <: CheckedOp<Int32> {
    /**
     * @description Performs addition with overflow checking for Int32, returning None if overflow occurs
     * @param y The value to add
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedAdd(y: Int32): ?Int32
    
    /**
     * @description Performs subtraction with overflow checking for Int32, returning None if overflow occurs
     * @param y The value to subtract
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedSub(y: Int32): ?Int32
    
    /**
     * @description Performs multiplication with overflow checking for Int32, returning None if overflow occurs
     * @param y The value to multiply by
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMul(y: Int32): ?Int32
    
    /**
     * @description Performs division with overflow checking for Int32, returning None if overflow occurs or divisor is zero
     * @param y The value to divide by
     * @returns Some(result) if no overflow occurred and divisor is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDiv(y: Int32): ?Int32
    
    /**
     * @description Performs modulo operation with overflow checking for Int32, returning None if overflow occurs or modulus is zero
     * @param y The modulus value
     * @returns Some(result) if no overflow occurred and modulus is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMod(y: Int32): ?Int32
    
    /**
     * @description Performs increment operation with overflow checking for Int32, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedInc(): ?Int32
    
    /**
     * @description Performs decrement operation with overflow checking for Int32, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDec(): ?Int32
    
    /**
     * @description Performs negation operation with overflow checking for Int32, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedNeg(): ?Int32
    
    /**
     * @description Performs left shift operation with overflow checking for Int32, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShl(y: UInt64): ?Int32
    
    /**
     * @description Performs right shift operation with overflow checking for Int32, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShr(y: UInt64): ?Int32
}

/**
 * @description Provides checked arithmetic operations for the Int64 type.
 */
extend Int64 <: CheckedOp<Int64> & CheckedPow {
    /**
     * @description Performs addition with overflow checking for Int64, returning None if overflow occurs
     * @param y The value to add
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedAdd(y: Int64): ?Int64
    
    /**
     * @description Performs subtraction with overflow checking for Int64, returning None if overflow occurs
     * @param y The value to subtract
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedSub(y: Int64): ?Int64
    
    /**
     * @description Performs multiplication with overflow checking for Int64, returning None if overflow occurs
     * @param y The value to multiply by
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMul(y: Int64): ?Int64
    
    /**
     * @description Performs division with overflow checking for Int64, returning None if overflow occurs or divisor is zero
     * @param y The value to divide by
     * @returns Some(result) if no overflow occurred and divisor is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDiv(y: Int64): ?Int64
    
    /**
     * @description Performs modulo operation with overflow checking for Int64, returning None if overflow occurs or modulus is zero
     * @param y The modulus value
     * @returns Some(result) if no overflow occurred and modulus is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMod(y: Int64): ?Int64
    
    /**
     * @description Performs exponentiation with overflow checking for Int64, returning None if overflow occurs
     * @param y The exponent
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedPow(y: UInt64): ?Int64
    
    /**
     * @description Performs increment operation with overflow checking for Int64, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedInc(): ?Int64
    
    /**
     * @description Performs decrement operation with overflow checking for Int64, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDec(): ?Int64
    
    /**
     * @description Performs negation operation with overflow checking for Int64, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedNeg(): ?Int64
    
    /**
     * @description Performs left shift operation with overflow checking for Int64, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShl(y: UInt64): ?Int64
    
    /**
     * @description Performs right shift operation with overflow checking for Int64, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShr(y: UInt64): ?Int64
}

/**
 * @description Provides checked arithmetic operations for the UInt8 type.
 */
extend UInt8 <: CheckedOp<UInt8> {
    /**
     * @description Performs addition with overflow checking for UInt8, returning None if overflow occurs
     * @param y The value to add
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedAdd(y: UInt8): ?UInt8
    
    /**
     * @description Performs subtraction with overflow checking for UInt8, returning None if overflow occurs
     * @param y The value to subtract
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedSub(y: UInt8): ?UInt8
    
    /**
     * @description Performs multiplication with overflow checking for UInt8, returning None if overflow occurs
     * @param y The value to multiply by
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMul(y: UInt8): ?UInt8
    
    /**
     * @description Performs division with overflow checking for UInt8, returning None if overflow occurs or divisor is zero
     * @param y The value to divide by
     * @returns Some(result) if no overflow occurred and divisor is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDiv(y: UInt8): ?UInt8
    
    /**
     * @description Performs modulo operation with overflow checking for UInt8, returning None if overflow occurs or modulus is zero
     * @param y The modulus value
     * @returns Some(result) if no overflow occurred and modulus is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMod(y: UInt8): ?UInt8
    
    /**
     * @description Performs increment operation with overflow checking for UInt8, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedInc(): ?UInt8
    
    /**
     * @description Performs decrement operation with overflow checking for UInt8, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDec(): ?UInt8
    
    /**
     * @description Performs negation operation with overflow checking for UInt8, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedNeg(): ?UInt8
    
    /**
     * @description Performs left shift operation with overflow checking for UInt8, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShl(y: UInt64): ?UInt8
    
    /**
     * @description Performs right shift operation with overflow checking for UInt8, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShr(y: UInt64): ?UInt8
}

/**
 * @description Provides checked arithmetic operations for the UInt16 type.
 */
extend UInt16 <: CheckedOp<UInt16> {
    /**
     * @description Performs addition with overflow checking for UInt16, returning None if overflow occurs
     * @param y The value to add
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedAdd(y: UInt16): ?UInt16
    
    /**
     * @description Performs subtraction with overflow checking for UInt16, returning None if overflow occurs
     * @param y The value to subtract
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedSub(y: UInt16): ?UInt16
    
    /**
     * @description Performs multiplication with overflow checking for UInt16, returning None if overflow occurs
     * @param y The value to multiply by
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMul(y: UInt16): ?UInt16
    
    /**
     * @description Performs division with overflow checking for UInt16, returning None if overflow occurs or divisor is zero
     * @param y The value to divide by
     * @returns Some(result) if no overflow occurred and divisor is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDiv(y: UInt16): ?UInt16
    
    /**
     * @description Performs modulo operation with overflow checking for UInt16, returning None if overflow occurs or modulus is zero
     * @param y The modulus value
     * @returns Some(result) if no overflow occurred and modulus is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMod(y: UInt16): ?UInt16
    
    /**
     * @description Performs increment operation with overflow checking for UInt16, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedInc(): ?UInt16
    
    /**
     * @description Performs decrement operation with overflow checking for UInt16, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDec(): ?UInt16
    
    /**
     * @description Performs negation operation with overflow checking for UInt16, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedNeg(): ?UInt16
    
    /**
     * @description Performs left shift operation with overflow checking for UInt16, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShl(y: UInt64): ?UInt16
    
    /**
     * @description Performs right shift operation with overflow checking for UInt16, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShr(y: UInt64): ?UInt16
}

/**
 * @description Provides checked arithmetic operations for the UInt32 type.
 */
extend UInt32 <: CheckedOp<UInt32> {
    /**
     * @description Performs addition with overflow checking for UInt32, returning None if overflow occurs
     * @param y The value to add
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedAdd(y: UInt32): ?UInt32
    
    /**
     * @description Performs subtraction with overflow checking for UInt32, returning None if overflow occurs
     * @param y The value to subtract
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedSub(y: UInt32): ?UInt32
    
    /**
     * @description Performs multiplication with overflow checking for UInt32, returning None if overflow occurs
     * @param y The value to multiply by
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMul(y: UInt32): ?UInt32
    
    /**
     * @description Performs division with overflow checking for UInt32, returning None if overflow occurs or divisor is zero
     * @param y The value to divide by
     * @returns Some(result) if no overflow occurred and divisor is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDiv(y: UInt32): ?UInt32
    
    /**
     * @description Performs modulo operation with overflow checking for UInt32, returning None if overflow occurs or modulus is zero
     * @param y The modulus value
     * @returns Some(result) if no overflow occurred and modulus is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMod(y: UInt32): ?UInt32
    
    /**
     * @description Performs increment operation with overflow checking for UInt32, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedInc(): ?UInt32
    
    /**
     * @description Performs decrement operation with overflow checking for UInt32, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDec(): ?UInt32
    
    /**
     * @description Performs negation operation with overflow checking for UInt32, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedNeg(): ?UInt32
    
    /**
     * @description Performs left shift operation with overflow checking for UInt32, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShl(y: UInt64): ?UInt32
    
    /**
     * @description Performs right shift operation with overflow checking for UInt32, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShr(y: UInt64): ?UInt32
}

/**
 * @description Provides checked arithmetic operations for the UInt64 type.
 */
extend UInt64 <: CheckedOp<UInt64> {
    /**
     * @description Performs addition with overflow checking for UInt64, returning None if overflow occurs
     * @param y The value to add
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedAdd(y: UInt64): ?UInt64
    
    /**
     * @description Performs subtraction with overflow checking for UInt64, returning None if overflow occurs
     * @param y The value to subtract
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedSub(y: UInt64): ?UInt64
    
    /**
     * @description Performs multiplication with overflow checking for UInt64, returning None if overflow occurs
     * @param y The value to multiply by
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMul(y: UInt64): ?UInt64
    
    /**
     * @description Performs division with overflow checking for UInt64, returning None if overflow occurs or divisor is zero
     * @param y The value to divide by
     * @returns Some(result) if no overflow occurred and divisor is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDiv(y: UInt64): ?UInt64
    
    /**
     * @description Performs modulo operation with overflow checking for UInt64, returning None if overflow occurs or modulus is zero
     * @param y The modulus value
     * @returns Some(result) if no overflow occurred and modulus is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMod(y: UInt64): ?UInt64
    
    /**
     * @description Performs increment operation with overflow checking for UInt64, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedInc(): ?UInt64
    
    /**
     * @description Performs decrement operation with overflow checking for UInt64, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDec(): ?UInt64
    
    /**
     * @description Performs negation operation with overflow checking for UInt64, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedNeg(): ?UInt64
    
    /**
     * @description Performs left shift operation with overflow checking for UInt64, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShl(y: UInt64): ?UInt64
    
    /**
     * @description Performs right shift operation with overflow checking for UInt64, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShr(y: UInt64): ?UInt64
}

/**
 * @description Provides checked arithmetic operations for the IntNative type.
 */
extend IntNative <: CheckedOp<IntNative> {
    /**
     * @description Performs addition with overflow checking for IntNative, returning None if overflow occurs
     * @param y The value to add
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedAdd(y: IntNative): ?IntNative
    
    /**
     * @description Performs subtraction with overflow checking for IntNative, returning None if overflow occurs
     * @param y The value to subtract
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedSub(y: IntNative): ?IntNative
    
    /**
     * @description Performs multiplication with overflow checking for IntNative, returning None if overflow occurs
     * @param y The value to multiply by
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMul(y: IntNative): ?IntNative
    
    /**
     * @description Performs division with overflow checking for IntNative, returning None if overflow occurs or divisor is zero
     * @param y The value to divide by
     * @returns Some(result) if no overflow occurred and divisor is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDiv(y: IntNative): ?IntNative
    
    /**
     * @description Performs modulo operation with overflow checking for IntNative, returning None if overflow occurs or modulus is zero
     * @param y The modulus value
     * @returns Some(result) if no overflow occurred and modulus is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMod(y: IntNative): ?IntNative
    
    /**
     * @description Performs increment operation with overflow checking for IntNative, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedInc(): ?IntNative
    
    /**
     * @description Performs decrement operation with overflow checking for IntNative, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDec(): ?IntNative
    
    /**
     * @description Performs negation operation with overflow checking for IntNative, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedNeg(): ?IntNative
    
    /**
     * @description Performs left shift operation with overflow checking for IntNative, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShl(y: UInt64): ?IntNative
    
    /**
     * @description Performs right shift operation with overflow checking for IntNative, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShr(y: UInt64): ?IntNative
}

/**
 * @description Provides checked arithmetic operations for the UIntNative type.
 */
extend UIntNative <: CheckedOp<UIntNative> {
    /**
     * @description Performs addition with overflow checking for UIntNative, returning None if overflow occurs
     * @param y The value to add
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedAdd(y: UIntNative): ?UIntNative
    
    /**
     * @description Performs subtraction with overflow checking for UIntNative, returning None if overflow occurs
     * @param y The value to subtract
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedSub(y: UIntNative): ?UIntNative
    
    /**
     * @description Performs multiplication with overflow checking for UIntNative, returning None if overflow occurs
     * @param y The value to multiply by
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMul(y: UIntNative): ?UIntNative
    
    /**
     * @description Performs division with overflow checking for UIntNative, returning None if overflow occurs or divisor is zero
     * @param y The value to divide by
     * @returns Some(result) if no overflow occurred and divisor is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDiv(y: UIntNative): ?UIntNative
    
    /**
     * @description Performs modulo operation with overflow checking for UIntNative, returning None if overflow occurs or modulus is zero
     * @param y The modulus value
     * @returns Some(result) if no overflow occurred and modulus is non-zero, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedMod(y: UIntNative): ?UIntNative
    
    /**
     * @description Performs increment operation with overflow checking for UIntNative, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedInc(): ?UIntNative
    
    /**
     * @description Performs decrement operation with overflow checking for UIntNative, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedDec(): ?UIntNative
    
    /**
     * @description Performs negation operation with overflow checking for UIntNative, returning None if overflow occurs
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedNeg(): ?UIntNative
    
    /**
     * @description Performs left shift operation with overflow checking for UIntNative, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShl(y: UInt64): ?UIntNative
    
    /**
     * @description Performs right shift operation with overflow checking for UIntNative, returning None if overflow occurs
     * @param y The number of bits to shift
     * @returns Some(result) if no overflow occurred, None otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func checkedShr(y: UInt64): ?UIntNative
}

/**
 * @description An interface for numeric types that provides saturating arithmetic operations.
 * Saturating operations clamp the result to the minimum or maximum value of the type if an overflow or underflow occurs, instead of wrapping around.
 */
@!APILevel[
    since: "22"
]
public interface SaturatingOp<T> {
    /**
     * @description Performs addition with saturation for type T, clamping to the type's minimum/maximum bounds on overflow
     * @param y The value to add
     * @returns The saturated result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    func saturatingAdd(y: T): T
    
    /**
     * @description Performs subtraction with saturation for type T, clamping to the type's minimum/maximum bounds on overflow
     * @param y The value to subtract
     * @returns The saturated result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    func saturatingSub(y: T): T
    
    /**
     * @description Performs multiplication with saturation for type T, clamping to the type's minimum/maximum bounds on overflow
     * @param y The value to multiply by
     * @returns The saturated result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    func saturatingMul(y: T): T
    
    /**
     * @description Performs division with saturation for type T, clamping to the type's minimum/maximum bounds on overflow
     * @param y The value to divide by
     * @returns The saturated result of the division
     */
    @!APILevel[
        since: "22"
    ]
    func saturatingDiv(y: T): T
    
    /**
     * @description Performs modulo operation with saturation for type T, clamping to the type's minimum/maximum bounds on overflow
     * @param y The modulus value
     * @returns The saturated result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    func saturatingMod(y: T): T
    
    /**
     * @description Performs increment operation with saturation for type T, clamping to the type's minimum/maximum bounds on overflow
     * @returns The saturated result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    func saturatingInc(): T
    
    /**
     * @description Performs decrement operation with saturation for type T, clamping to the type's minimum/maximum bounds on overflow
     * @returns The saturated result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    func saturatingDec(): T
    
    /**
     * @description Performs negation operation with saturation for type T, clamping to the type's minimum/maximum bounds on overflow
     * @returns The saturated result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    func saturatingNeg(): T
    
    /**
     * @description Performs left shift operation with saturation for type T, clamping to the type's minimum/maximum bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the left shift
     */
    @!APILevel[
        since: "22"
    ]
    func saturatingShl(y: UInt64): T
    
    /**
     * @description Performs right shift operation with saturation for type T, clamping to the type's minimum/maximum bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    func saturatingShr(y: UInt64): T
}

/**
 * @description Interface for saturating exponentiation operations that clamp results to type bounds on overflow
 */
@!APILevel[
    since: "22"
]
public interface SaturatingPow {
    /**
     * @description Performs exponentiation with saturation for Int64, clamping to Int64 bounds on overflow
     * @param y The exponent value
     * @returns The saturated result of the exponentiation
     */
    @!APILevel[
        since: "22"
    ]
    func saturatingPow(y: UInt64): Int64
}

/**
 * @description Provides saturating arithmetic operations for the Int8 type.
 */
extend Int8 <: SaturatingOp<Int8> {
    /**
     * @description Performs saturating addition for Int8, clamping to Int8 bounds on overflow
     * @param y The value to add
     * @returns The saturated result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingAdd(y: Int8): Int8
    
    /**
     * @description Performs saturating subtraction for Int8, clamping to Int8 bounds on overflow
     * @param y The value to subtract
     * @returns The saturated result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingSub(y: Int8): Int8
    
    /**
     * @description Performs saturating multiplication for Int8, clamping to Int8 bounds on overflow
     * @param y The value to multiply by
     * @returns The saturated result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMul(y: Int8): Int8
    
    /**
     * @description Performs saturating division for Int8, clamping to Int8 bounds on overflow
     * @param y The value to divide by
     * @returns The saturated result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDiv(y: Int8): Int8
    
    /**
     * @description Performs saturating modulo operation for Int8, clamping to Int8 bounds on overflow
     * @param y The modulus value
     * @returns The saturated result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMod(y: Int8): Int8
    
    /**
     * @description Performs saturating increment for Int8, clamping to Int8 bounds on overflow
     * @returns The saturated result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingInc(): Int8
    
    /**
     * @description Performs saturating decrement for Int8, clamping to Int8 bounds on overflow
     * @returns The saturated result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDec(): Int8
    
    /**
     * @description Performs saturating negation for Int8, clamping to Int8 bounds on overflow
     * @returns The saturated result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingNeg(): Int8
    
    /**
     * @description Performs saturating left shift for Int8, clamping to Int8 bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the left shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShl(y: UInt64): Int8
    
    /**
     * @description Performs saturating right shift for Int8, clamping to Int8 bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShr(y: UInt64): Int8
}

/**
 * @description Provides saturating arithmetic operations for the Int16 type.
 */
extend Int16 <: SaturatingOp<Int16> {
    /**
     * @description Performs saturating addition for Int16, clamping to Int16 bounds on overflow
     * @param y The value to add
     * @returns The saturated result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingAdd(y: Int16): Int16
    
    /**
     * @description Performs saturating subtraction for Int16, clamping to Int16 bounds on overflow
     * @param y The value to subtract
     * @returns The saturated result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingSub(y: Int16): Int16
    
    /**
     * @description Performs saturating multiplication for Int16, clamping to Int16 bounds on overflow
     * @param y The value to multiply by
     * @returns The saturated result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMul(y: Int16): Int16
    
    /**
     * @description Performs saturating division for Int16, clamping to Int16 bounds on overflow
     * @param y The value to divide by
     * @returns The saturated result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDiv(y: Int16): Int16
    
    /**
     * @description Performs saturating modulo operation for Int16, clamping to Int16 bounds on overflow
     * @param y The modulus value
     * @returns The saturated result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMod(y: Int16): Int16
    
    /**
     * @description Performs saturating increment for Int16, clamping to Int16 bounds on overflow
     * @returns The saturated result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingInc(): Int16
    
    /**
     * @description Performs saturating decrement for Int16, clamping to Int16 bounds on overflow
     * @returns The saturated result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDec(): Int16
    
    /**
     * @description Performs saturating negation for Int16, clamping to Int16 bounds on overflow
     * @returns The saturated result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingNeg(): Int16
    
    /**
     * @description Performs saturating left shift for Int16, clamping to Int16 bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the left shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShl(y: UInt64): Int16
    
    /**
     * @description Performs saturating right shift for Int16, clamping to Int16 bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShr(y: UInt64): Int16
}

/**
 * @description Provides saturating arithmetic operations for the Int32 type.
 */
extend Int32 <: SaturatingOp<Int32> {
    /**
     * @description Performs saturating addition for Int32, clamping to Int32 bounds on overflow
     * @param y The value to add
     * @returns The saturated result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingAdd(y: Int32): Int32
    
    /**
     * @description Performs saturating subtraction for Int32, clamping to Int32 bounds on overflow
     * @param y The value to subtract
     * @returns The saturated result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingSub(y: Int32): Int32
    
    /**
     * @description Performs saturating multiplication for Int32, clamping to Int32 bounds on overflow
     * @param y The value to multiply by
     * @returns The saturated result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMul(y: Int32): Int32
    
    /**
     * @description Performs saturating division for Int32, clamping to Int32 bounds on overflow
     * @param y The value to divide by
     * @returns The saturated result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDiv(y: Int32): Int32
    
    /**
     * @description Performs saturating modulo operation for Int32, clamping to Int32 bounds on overflow
     * @param y The modulus value
     * @returns The saturated result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMod(y: Int32): Int32
    
    /**
     * @description Performs saturating increment for Int32, clamping to Int32 bounds on overflow
     * @returns The saturated result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingInc(): Int32
    
    /**
     * @description Performs saturating decrement for Int32, clamping to Int32 bounds on overflow
     * @returns The saturated result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDec(): Int32
    
    /**
     * @description Performs saturating negation for Int32, clamping to Int32 bounds on overflow
     * @returns The saturated result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingNeg(): Int32
    
    /**
     * @description Performs saturating left shift for Int32, clamping to Int32 bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the left shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShl(y: UInt64): Int32
    
    /**
     * @description Performs saturating right shift for Int32, clamping to Int32 bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShr(y: UInt64): Int32
}

/**
 * @description Provides saturating arithmetic operations for the Int64 type.
 */
extend Int64 <: SaturatingOp<Int64> & SaturatingPow {
    /**
     * @description Performs saturating addition for Int64, clamping to Int64 bounds on overflow
     * @param y The value to add
     * @returns The saturated result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingAdd(y: Int64): Int64
    
    /**
     * @description Performs saturating subtraction for Int64, clamping to Int64 bounds on overflow
     * @param y The value to subtract
     * @returns The saturated result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingSub(y: Int64): Int64
    
    /**
     * @description Performs saturating multiplication for Int64, clamping to Int64 bounds on overflow
     * @param y The value to multiply by
     * @returns The saturated result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMul(y: Int64): Int64
    
    /**
     * @description Performs saturating division for Int64, clamping to Int64 bounds on overflow
     * @param y The value to divide by
     * @returns The saturated result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDiv(y: Int64): Int64
    
    /**
     * @description Performs saturating modulo operation for Int64, clamping to Int64 bounds on overflow
     * @param y The modulus value
     * @returns The saturated result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMod(y: Int64): Int64
    
    /**
     * @description Performs saturating exponentiation for Int64, clamping to Int64 bounds on overflow
     * @param y The exponent
     * @returns The saturated result of the exponentiation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingPow(y: UInt64): Int64
    
    /**
     * @description Performs saturating increment for Int64, clamping to Int64 bounds on overflow
     * @returns The saturated result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingInc(): Int64
    
    /**
     * @description Performs saturating decrement for Int64, clamping to Int64 bounds on overflow
     * @returns The saturated result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDec(): Int64
    
    /**
     * @description Performs saturating negation for Int64, clamping to Int64 bounds on overflow
     * @returns The saturated result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingNeg(): Int64
    
    /**
     * @description Performs saturating left shift for Int64, clamping to Int64 bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the left shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShl(y: UInt64): Int64
    
    /**
     * @description Performs saturating right shift for Int64, clamping to Int64 bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShr(y: UInt64): Int64
}

/**
 * @description Provides saturating arithmetic operations for the UInt8 type.
 */
extend UInt8 <: SaturatingOp<UInt8> {
    /**
     * @description Performs saturating addition for UInt8, clamping to UInt8 bounds on overflow
     * @param y The value to add
     * @returns The saturated result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingAdd(y: UInt8): UInt8
    
    /**
     * @description Performs saturating subtraction for UInt8, clamping to UInt8 bounds on overflow
     * @param y The value to subtract
     * @returns The saturated result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingSub(y: UInt8): UInt8
    
    /**
     * @description Performs saturating multiplication for UInt8, clamping to UInt8 bounds on overflow
     * @param y The value to multiply by
     * @returns The saturated result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMul(y: UInt8): UInt8
    
    /**
     * @description Performs saturating division for UInt8, clamping to UInt8 bounds on overflow
     * @param y The value to divide by
     * @returns The saturated result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDiv(y: UInt8): UInt8
    
    /**
     * @description Performs saturating modulo operation for UInt8, clamping to UInt8 bounds on overflow
     * @param y The modulus value
     * @returns The saturated result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMod(y: UInt8): UInt8
    
    /**
     * @description Performs saturating increment for UInt8, clamping to UInt8 bounds on overflow
     * @returns The saturated result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingInc(): UInt8
    
    /**
     * @description Performs saturating decrement for UInt8, clamping to UInt8 bounds on overflow
     * @returns The saturated result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDec(): UInt8
    
    /**
     * @description Performs saturating negation for UInt8, clamping to UInt8 bounds on overflow
     * @returns The saturated result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingNeg(): UInt8
    
    /**
     * @description Performs saturating left shift for UInt8, clamping to UInt8 bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the left shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShl(y: UInt64): UInt8
    
    /**
     * @description Performs saturating right shift for UInt8, clamping to UInt8 bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShr(y: UInt64): UInt8
}

/**
 * @description Provides saturating arithmetic operations for the UInt16 type.
 */
extend UInt16 <: SaturatingOp<UInt16> {
    /**
     * @description Performs saturating addition for UInt16, clamping to UInt16 bounds on overflow
     * @param y The value to add
     * @returns The saturated result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingAdd(y: UInt16): UInt16
    
    /**
     * @description Performs saturating subtraction for UInt16, clamping to UInt16 bounds on overflow
     * @param y The value to subtract
     * @returns The saturated result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingSub(y: UInt16): UInt16
    
    /**
     * @description Performs saturating multiplication for UInt16, clamping to UInt16 bounds on overflow
     * @param y The value to multiply by
     * @returns The saturated result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMul(y: UInt16): UInt16
    
    /**
     * @description Performs saturating division for UInt16, clamping to UInt16 bounds on overflow
     * @param y The value to divide by
     * @returns The saturated result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDiv(y: UInt16): UInt16
    
    /**
     * @description Performs saturating modulo operation for UInt16, clamping to UInt16 bounds on overflow
     * @param y The modulus value
     * @returns The saturated result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMod(y: UInt16): UInt16
    
    /**
     * @description Performs saturating increment for UInt16, clamping to UInt16 bounds on overflow
     * @returns The saturated result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingInc(): UInt16
    
    /**
     * @description Performs saturating decrement for UInt16, clamping to UInt16 bounds on overflow
     * @returns The saturated result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDec(): UInt16
    
    /**
     * @description Performs saturating negation for UInt16, clamping to UInt16 bounds on overflow
     * @returns The saturated result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingNeg(): UInt16
    
    /**
     * @description Performs saturating left shift for UInt16, clamping to UInt16 bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the left shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShl(y: UInt64): UInt16
    
    /**
     * @description Performs saturating right shift for UInt16, clamping to UInt16 bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShr(y: UInt64): UInt16
}

/**
 * @description Provides saturating arithmetic operations for the UInt32 type.
 */
extend UInt32 <: SaturatingOp<UInt32> {
    /**
     * @description Performs saturating addition for UInt32, clamping to UInt32 bounds on overflow
     * @param y The value to add
     * @returns The saturated result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingAdd(y: UInt32): UInt32
    
    /**
     * @description Performs saturating subtraction for UInt32, clamping to UInt32 bounds on overflow
     * @param y The value to subtract
     * @returns The saturated result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingSub(y: UInt32): UInt32
    
    /**
     * @description Performs saturating multiplication for UInt32, clamping to UInt32 bounds on overflow
     * @param y The value to multiply by
     * @returns The saturated result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMul(y: UInt32): UInt32
    
    /**
     * @description Performs saturating division for UInt32, clamping to UInt32 bounds on overflow
     * @param y The value to divide by
     * @returns The saturated result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDiv(y: UInt32): UInt32
    
    /**
     * @description Performs saturating modulo operation for UInt32, clamping to UInt32 bounds on overflow
     * @param y The modulus value
     * @returns The saturated result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMod(y: UInt32): UInt32
    
    /**
     * @description Performs saturating increment for UInt32, clamping to UInt32 bounds on overflow
     * @returns The saturated result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingInc(): UInt32
    
    /**
     * @description Performs saturating decrement for UInt32, clamping to UInt32 bounds on overflow
     * @returns The saturated result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDec(): UInt32
    
    /**
     * @description Performs saturating negation for UInt32, clamping to UInt32 bounds on overflow
     * @returns The saturated result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingNeg(): UInt32
    
    /**
     * @description Performs saturating left shift for UInt32, clamping to UInt32 bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the left shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShl(y: UInt64): UInt32
    
    /**
     * @description Performs saturating right shift for UInt32, clamping to UInt32 bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShr(y: UInt64): UInt32
}

/**
 * @description Provides saturating arithmetic operations for the UInt64 type.
 */
extend UInt64 <: SaturatingOp<UInt64> {
    /**
     * @description Performs saturating addition for UInt64, clamping to UInt64 bounds on overflow
     * @param y The value to add
     * @returns The saturated result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingAdd(y: UInt64): UInt64
    
    /**
     * @description Performs saturating subtraction for UInt64, clamping to UInt64 bounds on overflow
     * @param y The value to subtract
     * @returns The saturated result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingSub(y: UInt64): UInt64
    
    /**
     * @description Performs saturating multiplication for UInt64, clamping to UInt64 bounds on overflow
     * @param y The value to multiply by
     * @returns The saturated result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMul(y: UInt64): UInt64
    
    /**
     * @description Performs saturating division for UInt64, clamping to UInt64 bounds on overflow
     * @param y The value to divide by
     * @returns The saturated result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDiv(y: UInt64): UInt64
    
    /**
     * @description Performs saturating modulo operation for UInt64, clamping to UInt64 bounds on overflow
     * @param y The modulus value
     * @returns The saturated result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMod(y: UInt64): UInt64
    
    /**
     * @description Performs saturating increment for UInt64, clamping to UInt64 bounds on overflow
     * @returns The saturated result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingInc(): UInt64
    
    /**
     * @description Performs saturating decrement for UInt64, clamping to UInt64 bounds on overflow
     * @returns The saturated result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDec(): UInt64
    
    /**
     * @description Performs saturating negation for UInt64, clamping to UInt64 bounds on overflow
     * @returns The saturated result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingNeg(): UInt64
    
    /**
     * @description Performs saturating left shift for UInt64, clamping to UInt64 bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the left shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShl(y: UInt64): UInt64
    
    /**
     * @description Performs saturating right shift for UInt64, clamping to UInt64 bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShr(y: UInt64): UInt64
}

/**
 * @description Provides saturating arithmetic operations for the IntNative type.
 */
extend IntNative <: SaturatingOp<IntNative> {
    /**
     * @description Performs saturating addition for IntNative, clamping to IntNative bounds on overflow
     * @param y The value to add
     * @returns The saturated result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingAdd(y: IntNative): IntNative
    
    /**
     * @description Performs saturating subtraction for IntNative, clamping to IntNative bounds on overflow
     * @param y The value to subtract
     * @returns The saturated result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingSub(y: IntNative): IntNative
    
    /**
     * @description Performs saturating multiplication for IntNative, clamping to IntNative bounds on overflow
     * @param y The value to multiply by
     * @returns The saturated result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMul(y: IntNative): IntNative
    
    /**
     * @description Performs saturating division for IntNative, clamping to IntNative bounds on overflow
     * @param y The value to divide by
     * @returns The saturated result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDiv(y: IntNative): IntNative
    
    /**
     * @description Performs saturating modulo operation for IntNative, clamping to IntNative bounds on overflow
     * @param y The modulus value
     * @returns The saturated result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMod(y: IntNative): IntNative
    
    /**
     * @description Performs saturating increment for IntNative, clamping to IntNative bounds on overflow
     * @returns The saturated result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingInc(): IntNative
    
    /**
     * @description Performs saturating decrement for IntNative, clamping to IntNative bounds on overflow
     * @returns The saturated result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDec(): IntNative
    
    /**
     * @description Performs saturating negation for IntNative, clamping to IntNative bounds on overflow
     * @returns The saturated result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingNeg(): IntNative
    
    /**
     * @description Performs saturating left shift for IntNative, clamping to IntNative bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the left shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShl(y: UInt64): IntNative
    
    /**
     * @description Performs saturating right shift for IntNative, clamping to IntNative bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShr(y: UInt64): IntNative
}

/**
 * @description Provides saturating arithmetic operations for the UIntNative type.
 */
extend UIntNative <: SaturatingOp<UIntNative> {
    /**
     * @description Performs saturating addition for UIntNative, clamping to UIntNative bounds on overflow
     * @param y The value to add
     * @returns The saturated result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingAdd(y: UIntNative): UIntNative
    
    /**
     * @description Performs saturating subtraction for UIntNative, clamping to UIntNative bounds on overflow
     * @param y The value to subtract
     * @returns The saturated result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingSub(y: UIntNative): UIntNative
    
    /**
     * @description Performs saturating multiplication for UIntNative, clamping to UIntNative bounds on overflow
     * @param y The value to multiply by
     * @returns The saturated result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMul(y: UIntNative): UIntNative
    
    /**
     * @description Performs saturating division for UIntNative, clamping to UIntNative bounds on overflow
     * @param y The value to divide by
     * @returns The saturated result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDiv(y: UIntNative): UIntNative
    
    /**
     * @description Performs saturating modulo operation for UIntNative, clamping to UIntNative bounds on overflow
     * @param y The modulus value
     * @returns The saturated result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingMod(y: UIntNative): UIntNative
    
    /**
     * @description Performs saturating increment for UIntNative, clamping to UIntNative bounds on overflow
     * @returns The saturated result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingInc(): UIntNative
    
    /**
     * @description Performs saturating decrement for UIntNative, clamping to UIntNative bounds on overflow
     * @returns The saturated result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingDec(): UIntNative
    
    /**
     * @description Performs saturating negation for UIntNative, clamping to UIntNative bounds on overflow
     * @returns The saturated result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingNeg(): UIntNative
    
    /**
     * @description Performs saturating left shift for UIntNative, clamping to UIntNative bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the left shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShl(y: UInt64): UIntNative
    
    /**
     * @description Performs saturating right shift for UIntNative, clamping to UIntNative bounds on overflow
     * @param y The number of bits to shift
     * @returns The saturated result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func saturatingShr(y: UInt64): UIntNative
}

/**
 * @description Interface for throwing arithmetic operations that throw exceptions on overflow
 * @type T The numeric type for the operations
 */
@!APILevel[
    since: "22"
]
public interface ThrowingOp<T> {
    /**
     * @description Performs throwing addition that throws on overflow
     * @param y The value to add
     * @returns The result of the addition
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func throwingAdd(y: T): T
    
    /**
     * @description Performs throwing subtraction that throws on overflow
     * @param y The value to subtract
     * @returns The result of the subtraction
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func throwingSub(y: T): T
    
    /**
     * @description Performs throwing multiplication that throws on overflow
     * @param y The value to multiply by
     * @returns The result of the multiplication
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func throwingMul(y: T): T
    
    /**
     * @description Performs throwing division that throws on overflow or division by zero
     * @param y The value to divide by
     * @returns The result of the division
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func throwingDiv(y: T): T
    
    /**
     * @description Performs throwing modulo operation that throws on overflow or division by zero
     * @param y The modulus value
     * @returns The result of the modulo operation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func throwingMod(y: T): T
    
    /**
     * @description Performs throwing increment that throws on overflow
     * @returns The result of the increment
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func throwingInc(): T
    
    /**
     * @description Performs throwing decrement that throws on overflow
     * @returns The result of the decrement
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func throwingDec(): T
    
    /**
     * @description Performs throwing negation that throws on overflow
     * @returns The result of the negation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func throwingNeg(): T
    
    /**
     * @description Performs throwing left shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the left shift
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func throwingShl(y: UInt64): T
    
    /**
     * @description Performs throwing right shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the right shift
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func throwingShr(y: UInt64): T
}

/**
 * @description Interface for throwing power operations that throw exceptions on overflow
 */
@!APILevel[
    since: "22"
]
public interface ThrowingPow {
    /**
     * @description Performs throwing power operation that throws on overflow
     * @param y The exponent to raise to
     * @returns The result of the power operation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    func throwingPow(y: UInt64): Int64
}

/**
 * @description Provides throwing arithmetic operations for the Int8 type.
 */
extend Int8 <: ThrowingOp<Int8> {
    /**
     * @description Performs throwing addition that throws on overflow
     * @param y The value to add
     * @returns The result of the addition
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingAdd(y: Int8): Int8
    
    /**
     * @description Performs throwing subtraction that throws on overflow
     * @param y The value to subtract
     * @returns The result of the subtraction
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingSub(y: Int8): Int8
    
    /**
     * @description Performs throwing multiplication that throws on overflow
     * @param y The value to multiply by
     * @returns The result of the multiplication
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMul(y: Int8): Int8
    
    /**
     * @description Performs throwing division that throws on overflow or division by zero
     * @param y The value to divide by
     * @returns The result of the division
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDiv(y: Int8): Int8
    
    /**
     * @description Performs throwing modulo operation that throws on overflow or division by zero
     * @param y The modulus value
     * @returns The result of the modulo operation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMod(y: Int8): Int8
    
    /**
     * @description Performs throwing increment that throws on overflow
     * @returns The result of the increment
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingInc(): Int8
    
    /**
     * @description Performs throwing decrement that throws on overflow
     * @returns The result of the decrement
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDec(): Int8
    
    /**
     * @description Performs throwing negation that throws on overflow
     * @returns The result of the negation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingNeg(): Int8
    
    /**
     * @description Performs throwing left shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the left shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShl(y: UInt64): Int8
    
    /**
     * @description Performs throwing right shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the right shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShr(y: UInt64): Int8
}

/**
 * @description Provides throwing arithmetic operations for the Int16 type.
 */
extend Int16 <: ThrowingOp<Int16> {
    /**
     * @description Performs throwing addition that throws on overflow
     * @param y The value to add
     * @returns The result of the addition
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingAdd(y: Int16): Int16
    
    /**
     * @description Performs throwing subtraction that throws on overflow
     * @param y The value to subtract
     * @returns The result of the subtraction
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingSub(y: Int16): Int16
    
    /**
     * @description Performs throwing multiplication that throws on overflow
     * @param y The value to multiply by
     * @returns The result of the multiplication
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMul(y: Int16): Int16
    
    /**
     * @description Performs throwing division that throws on overflow or division by zero
     * @param y The value to divide by
     * @returns The result of the division
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDiv(y: Int16): Int16
    
    /**
     * @description Performs throwing modulo operation that throws on overflow or division by zero
     * @param y The modulus value
     * @returns The result of the modulo operation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMod(y: Int16): Int16
    
    /**
     * @description Performs throwing increment that throws on overflow
     * @returns The result of the increment
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingInc(): Int16
    
    /**
     * @description Performs throwing decrement that throws on overflow
     * @returns The result of the decrement
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDec(): Int16
    
    /**
     * @description Performs throwing negation that throws on overflow
     * @returns The result of the negation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingNeg(): Int16
    
    /**
     * @description Performs throwing left shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the left shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShl(y: UInt64): Int16
    
    /**
     * @description Performs throwing right shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the right shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShr(y: UInt64): Int16
}

/**
 * @description Provides throwing arithmetic operations for the Int32 type.
 */
extend Int32 <: ThrowingOp<Int32> {
    /**
     * @description Performs throwing addition that throws on overflow
     * @param y The value to add
     * @returns The result of the addition
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingAdd(y: Int32): Int32
    
    /**
     * @description Performs throwing subtraction that throws on overflow
     * @param y The value to subtract
     * @returns The result of the subtraction
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingSub(y: Int32): Int32
    
    /**
     * @description Performs throwing multiplication that throws on overflow
     * @param y The value to multiply by
     * @returns The result of the multiplication
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMul(y: Int32): Int32
    
    /**
     * @description Performs throwing division that throws on overflow or division by zero
     * @param y The value to divide by
     * @returns The result of the division
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDiv(y: Int32): Int32
    
    /**
     * @description Performs throwing modulo operation that throws on overflow or division by zero
     * @param y The modulus value
     * @returns The result of the modulo operation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMod(y: Int32): Int32
    
    /**
     * @description Performs throwing increment that throws on overflow
     * @returns The result of the increment
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingInc(): Int32
    
    /**
     * @description Performs throwing decrement that throws on overflow
     * @returns The result of the decrement
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDec(): Int32
    
    /**
     * @description Performs throwing negation that throws on overflow
     * @returns The result of the negation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingNeg(): Int32
    
    /**
     * @description Performs throwing left shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the left shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShl(y: UInt64): Int32
    
    /**
     * @description Performs throwing right shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the right shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShr(y: UInt64): Int32
}

/**
 * @description Provides throwing arithmetic operations for the Int64 type.
 */
extend Int64 <: ThrowingOp<Int64> & ThrowingPow {
    /**
     * @description Performs throwing addition that throws on overflow
     * @param y The value to add
     * @returns The result of the addition
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingAdd(y: Int64): Int64
    
    /**
     * @description Performs throwing subtraction that throws on overflow
     * @param y The value to subtract
     * @returns The result of the subtraction
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingSub(y: Int64): Int64
    
    /**
     * @description Performs throwing multiplication that throws on overflow
     * @param y The value to multiply by
     * @returns The result of the multiplication
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMul(y: Int64): Int64
    
    /**
     * @description Performs throwing division that throws on overflow or division by zero
     * @param y The value to divide by
     * @returns The result of the division
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDiv(y: Int64): Int64
    
    /**
     * @description Performs throwing modulo operation that throws on overflow or division by zero
     * @param y The modulus value
     * @returns The result of the modulo operation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMod(y: Int64): Int64
    
    /**
     * @description Performs throwing power operation that throws on overflow
     * @param y The exponent to raise to
     * @returns The result of the power operation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingPow(y: UInt64): Int64
    
    /**
     * @description Performs throwing increment that throws on overflow
     * @returns The result of the increment
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingInc(): Int64
    
    /**
     * @description Performs throwing decrement that throws on overflow
     * @returns The result of the decrement
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDec(): Int64
    
    /**
     * @description Performs throwing negation that throws on overflow
     * @returns The result of the negation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingNeg(): Int64
    
    /**
     * @description Performs throwing left shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the left shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShl(y: UInt64): Int64
    
    /**
     * @description Performs throwing right shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the right shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShr(y: UInt64): Int64
}

/**
 * @description Provides throwing arithmetic operations for the UInt8 type.
 */
extend UInt8 <: ThrowingOp<UInt8> {
    /**
     * @description Performs throwing addition that throws on overflow
     * @param y The value to add
     * @returns The result of the addition
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingAdd(y: UInt8): UInt8
    
    /**
     * @description Performs throwing subtraction that throws on overflow
     * @param y The value to subtract
     * @returns The result of the subtraction
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingSub(y: UInt8): UInt8
    
    /**
     * @description Performs throwing multiplication that throws on overflow
     * @param y The value to multiply by
     * @returns The result of the multiplication
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMul(y: UInt8): UInt8
    
    /**
     * @description Performs throwing division that throws on overflow or division by zero
     * @param y The value to divide by
     * @returns The result of the division
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDiv(y: UInt8): UInt8
    
    /**
     * @description Performs throwing modulo operation that throws on overflow or division by zero
     * @param y The modulus value
     * @returns The result of the modulo operation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMod(y: UInt8): UInt8
    
    /**
     * @description Performs throwing increment that throws on overflow
     * @returns The result of the increment
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingInc(): UInt8
    
    /**
     * @description Performs throwing decrement that throws on overflow
     * @returns The result of the decrement
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDec(): UInt8
    
    /**
     * @description Performs throwing negation that throws on overflow
     * @returns The result of the negation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingNeg(): UInt8
    
    /**
     * @description Performs throwing left shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the left shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShl(y: UInt64): UInt8
    
    /**
     * @description Performs throwing right shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the right shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShr(y: UInt64): UInt8
}

/**
 * @description Provides throwing arithmetic operations for the UInt16 type.
 */
extend UInt16 <: ThrowingOp<UInt16> {
    /**
     * @description Performs throwing addition that throws on overflow
     * @param y The value to add
     * @returns The result of the addition
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingAdd(y: UInt16): UInt16
    
    /**
     * @description Performs throwing subtraction that throws on overflow
     * @param y The value to subtract
     * @returns The result of the subtraction
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingSub(y: UInt16): UInt16
    
    /**
     * @description Performs throwing multiplication that throws on overflow
     * @param y The value to multiply by
     * @returns The result of the multiplication
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMul(y: UInt16): UInt16
    
    /**
     * @description Performs throwing division that throws on overflow or division by zero
     * @param y The value to divide by
     * @returns The result of the division
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDiv(y: UInt16): UInt16
    
    /**
     * @description Performs throwing modulo operation that throws on overflow or division by zero
     * @param y The modulus value
     * @returns The result of the modulo operation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMod(y: UInt16): UInt16
    
    /**
     * @description Performs throwing increment that throws on overflow
     * @returns The result of the increment
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingInc(): UInt16
    
    /**
     * @description Performs throwing decrement that throws on overflow
     * @returns The result of the decrement
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDec(): UInt16
    
    /**
     * @description Performs throwing negation that throws on overflow
     * @returns The result of the negation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingNeg(): UInt16
    
    /**
     * @description Performs throwing left shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the left shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShl(y: UInt64): UInt16
    
    /**
     * @description Performs throwing right shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the right shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShr(y: UInt64): UInt16
}

/**
 * @description Provides throwing arithmetic operations for the UInt32 type.
 */
extend UInt32 <: ThrowingOp<UInt32> {
    /**
     * @description Performs throwing addition that throws on overflow
     * @param y The value to add
     * @returns The result of the addition
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingAdd(y: UInt32): UInt32
    
    /**
     * @description Performs throwing subtraction that throws on overflow
     * @param y The value to subtract
     * @returns The result of the subtraction
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingSub(y: UInt32): UInt32
    
    /**
     * @description Performs throwing multiplication that throws on overflow
     * @param y The value to multiply by
     * @returns The result of the multiplication
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMul(y: UInt32): UInt32
    
    /**
     * @description Performs throwing division that throws on overflow or division by zero
     * @param y The value to divide by
     * @returns The result of the division
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDiv(y: UInt32): UInt32
    
    /**
     * @description Performs throwing modulo operation that throws on overflow or division by zero
     * @param y The modulus value
     * @returns The result of the modulo operation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMod(y: UInt32): UInt32
    
    /**
     * @description Performs throwing increment that throws on overflow
     * @returns The result of the increment
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingInc(): UInt32
    
    /**
     * @description Performs throwing decrement that throws on overflow
     * @returns The result of the decrement
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDec(): UInt32
    
    /**
     * @description Performs throwing negation that throws on overflow
     * @returns The result of the negation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingNeg(): UInt32
    
    /**
     * @description Performs throwing left shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the left shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShl(y: UInt64): UInt32
    
    /**
     * @description Performs throwing right shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the right shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShr(y: UInt64): UInt32
}

/**
 * @description Provides throwing arithmetic operations for the UInt64 type.
 */
extend UInt64 <: ThrowingOp<UInt64> {
    /**
     * @description Performs throwing addition that throws on overflow
     * @param y The value to add
     * @returns The result of the addition
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingAdd(y: UInt64): UInt64
    
    /**
     * @description Performs throwing subtraction that throws on overflow
     * @param y The value to subtract
     * @returns The result of the subtraction
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingSub(y: UInt64): UInt64
    
    /**
     * @description Performs throwing multiplication that throws on overflow
     * @param y The value to multiply by
     * @returns The result of the multiplication
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMul(y: UInt64): UInt64
    
    /**
     * @description Performs throwing division that throws on overflow or division by zero
     * @param y The value to divide by
     * @returns The result of the division
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDiv(y: UInt64): UInt64
    
    /**
     * @description Performs throwing modulo operation that throws on overflow or division by zero
     * @param y The modulus value
     * @returns The result of the modulo operation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMod(y: UInt64): UInt64
    
    /**
     * @description Performs throwing increment that throws on overflow
     * @returns The result of the increment
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingInc(): UInt64
    
    /**
     * @description Performs throwing decrement that throws on overflow
     * @returns The result of the decrement
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDec(): UInt64
    
    /**
     * @description Performs throwing negation that throws on overflow
     * @returns The result of the negation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingNeg(): UInt64
    
    /**
     * @description Performs throwing left shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the left shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShl(y: UInt64): UInt64
    
    /**
     * @description Performs throwing right shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the right shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShr(y: UInt64): UInt64
}

/**
 * @description Provides throwing arithmetic operations for the IntNative type.
 */
extend IntNative <: ThrowingOp<IntNative> {
    /**
     * @description Performs throwing addition that throws on overflow
     * @param y The value to add
     * @returns The result of the addition
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingAdd(y: IntNative): IntNative
    
    /**
     * @description Performs throwing subtraction that throws on overflow
     * @param y The value to subtract
     * @returns The result of the subtraction
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingSub(y: IntNative): IntNative
    
    /**
     * @description Performs throwing multiplication that throws on overflow
     * @param y The value to multiply by
     * @returns The result of the multiplication
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMul(y: IntNative): IntNative
    
    /**
     * @description Performs throwing division that throws on overflow or division by zero
     * @param y The value to divide by
     * @returns The result of the division
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDiv(y: IntNative): IntNative
    
    /**
     * @description Performs throwing modulo operation that throws on overflow or division by zero
     * @param y The modulus value
     * @returns The result of the modulo operation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMod(y: IntNative): IntNative
    
    /**
     * @description Performs throwing increment that throws on overflow
     * @returns The result of the increment
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingInc(): IntNative
    
    /**
     * @description Performs throwing decrement that throws on overflow
     * @returns The result of the decrement
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDec(): IntNative
    
    /**
     * @description Performs throwing negation that throws on overflow
     * @returns The result of the negation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingNeg(): IntNative
    
    /**
     * @description Performs throwing left shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the left shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShl(y: UInt64): IntNative
    
    /**
     * @description Performs throwing right shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the right shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShr(y: UInt64): IntNative
}

/**
 * @description Provides throwing arithmetic operations for the UIntNative type.
 */
extend UIntNative <: ThrowingOp<UIntNative> {
    /**
     * @description Performs throwing addition that throws on overflow
     * @param y The value to add
     * @returns The result of the addition
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingAdd(y: UIntNative): UIntNative
    
    /**
     * @description Performs throwing subtraction that throws on overflow
     * @param y The value to subtract
     * @returns The result of the subtraction
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingSub(y: UIntNative): UIntNative
    
    /**
     * @description Performs throwing multiplication that throws on overflow
     * @param y The value to multiply by
     * @returns The result of the multiplication
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMul(y: UIntNative): UIntNative
    
    /**
     * @description Performs throwing division that throws on overflow or division by zero
     * @param y The value to divide by
     * @returns The result of the division
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDiv(y: UIntNative): UIntNative
    
    /**
     * @description Performs throwing modulo operation that throws on overflow or division by zero
     * @param y The modulus value
     * @returns The result of the modulo operation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingMod(y: UIntNative): UIntNative
    
    /**
     * @description Performs throwing increment that throws on overflow
     * @returns The result of the increment
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingInc(): UIntNative
    
    /**
     * @description Performs throwing decrement that throws on overflow
     * @returns The result of the decrement
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingDec(): UIntNative
    
    /**
     * @description Performs throwing negation that throws on overflow
     * @returns The result of the negation
     * @throws OverflowException when operation overflows
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingNeg(): UIntNative
    
    /**
     * @description Performs throwing left shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the left shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShl(y: UInt64): UIntNative
    
    /**
     * @description Performs throwing right shift that throws on overflow
     * @param y The number of bits to shift
     * @returns The result of the right shift
     * @throws OvershiftException if the number of shift bits is greater than or equal to that of the operand
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throwingShr(y: UInt64): UIntNative
}

/**
 * @description Exception thrown when a shift operation exceeds the valid bit range
 */
@!APILevel[
    since: "22"
]
public class OvershiftException <: Exception {
    /**
     * @description Creates a new OvershiftException with default message
     */
    @!APILevel[
        since: "22"
    ]
    public init()
    
    /**
     * @description Creates a new OvershiftException with custom message
     * @param message The exception message
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Exception thrown when an invalid shift operation occurs
 */
@!APILevel[
    since: "22"
]
public class UndershiftException <: Exception {
    /**
     * @description Creates a new UndershiftException with default message
     */
    @!APILevel[
        since: "22"
    ]
    public init()
    
    /**
     * @description Creates a new UndershiftException with custom message
     * @param message The exception message
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Interface for wrapping arithmetic operations that wrap around on overflow
 * @type T The numeric type for the operations
 */
@!APILevel[
    since: "22"
]
public interface WrappingOp<T> {
    /**
     * @description Performs wrapping addition that wraps around on overflow
     * @param y The value to add
     * @returns The wrapped result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    func wrappingAdd(y: T): T
    
    /**
     * @description Performs wrapping subtraction that wraps around on overflow
     * @param y The value to subtract
     * @returns The wrapped result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    func wrappingSub(y: T): T
    
    /**
     * @description Performs wrapping multiplication that wraps around on overflow
     * @param y The value to multiply by
     * @returns The wrapped result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    func wrappingMul(y: T): T
    
    /**
     * @description Performs wrapping division that wraps around on overflow or throws on division by zero
     * @param y The value to divide by
     * @returns The wrapped result of the division
     */
    @!APILevel[
        since: "22"
    ]
    func wrappingDiv(y: T): T
    
    /**
     * @description Performs wrapping modulo operation that wraps around on overflow or throws on division by zero
     * @param y The modulus value
     * @returns The wrapped result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    func wrappingMod(y: T): T
    
    /**
     * @description Performs wrapping increment that wraps around on overflow
     * @returns The wrapped result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    func wrappingInc(): T
    
    /**
     * @description Performs wrapping decrement that wraps around on overflow
     * @returns The wrapped result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    func wrappingDec(): T
    
    /**
     * @description Performs wrapping negation that wraps around on overflow
     * @returns The wrapped result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    func wrappingNeg(): T
    
    /**
     * @description Performs wrapping left shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the left shift
     */
    @!APILevel[
        since: "22"
    ]
    func wrappingShl(y: UInt64): T
    
    /**
     * @description Performs wrapping right shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    func wrappingShr(y: UInt64): T
}

/**
 * @description Interface for wrapping power operations that wrap around on overflow
 */
@!APILevel[
    since: "22"
]
public interface WrappingPow {
    /**
     * @description Performs wrapping power operation that wraps around on overflow
     * @param y The exponent value
     * @returns The wrapped result of the power operation
     */
    @!APILevel[
        since: "22"
    ]
    func wrappingPow(y: UInt64): Int64
}

/**
 * @description Provides wrapping arithmetic operations for the Int8 type.
 */
extend Int8 <: WrappingOp<Int8> {
    /**
     * @description Performs wrapping addition that wraps around on overflow
     * @param y The value to add
     * @returns The wrapped result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingAdd(y: Int8): Int8
    
    /**
     * @description Performs wrapping subtraction that wraps around on overflow
     * @param y The value to subtract
     * @returns The wrapped result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingSub(y: Int8): Int8
    
    /**
     * @description Performs wrapping multiplication that wraps around on overflow
     * @param y The value to multiply by
     * @returns The wrapped result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMul(y: Int8): Int8
    
    /**
     * @description Performs wrapping division that wraps around on overflow or throws on division by zero
     * @param y The value to divide by
     * @returns The wrapped result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDiv(y: Int8): Int8
    
    /**
     * @description Performs wrapping modulo operation that wraps around on overflow or throws on division by zero
     * @param y The modulus value
     * @returns The wrapped result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMod(y: Int8): Int8
    
    /**
     * @description Performs wrapping increment that wraps around on overflow
     * @returns The wrapped result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingInc(): Int8
    
    /**
     * @description Performs wrapping decrement that wraps around on overflow
     * @returns The wrapped result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDec(): Int8
    
    /**
     * @description Performs wrapping negation that wraps around on overflow
     * @returns The wrapped result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingNeg(): Int8
    
    /**
     * @description Performs wrapping left shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the left shift
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func wrappingShl(y: UInt64): Int8
    
    /**
     * @description Performs wrapping right shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingShr(y: UInt64): Int8
}

/**
 * @description Provides wrapping arithmetic operations for the Int16 type.
 */
extend Int16 <: WrappingOp<Int16> {
    /**
     * @description Performs wrapping addition that wraps around on overflow
     * @param y The value to add
     * @returns The wrapped result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingAdd(y: Int16): Int16
    
    /**
     * @description Performs wrapping subtraction that wraps around on overflow
     * @param y The value to subtract
     * @returns The wrapped result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingSub(y: Int16): Int16
    
    /**
     * @description Performs wrapping multiplication that wraps around on overflow
     * @param y The value to multiply by
     * @returns The wrapped result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMul(y: Int16): Int16
    
    /**
     * @description Performs wrapping division that wraps around on overflow or throws on division by zero
     * @param y The value to divide by
     * @returns The wrapped result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDiv(y: Int16): Int16
    
    /**
     * @description Performs wrapping modulo operation that wraps around on overflow or throws on division by zero
     * @param y The modulus value
     * @returns The wrapped result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMod(y: Int16): Int16
    
    /**
     * @description Performs wrapping increment that wraps around on overflow
     * @returns The wrapped result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingInc(): Int16
    
    /**
     * @description Performs wrapping decrement that wraps around on overflow
     * @returns The wrapped result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDec(): Int16
    
    /**
     * @description Performs wrapping negation that wraps around on overflow
     * @returns The wrapped result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingNeg(): Int16
    
    /**
     * @description Performs wrapping left shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the left shift
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func wrappingShl(y: UInt64): Int16
    
    /**
     * @description Performs wrapping right shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingShr(y: UInt64): Int16
}

/**
 * @description Provides wrapping arithmetic operations for the Int32 type.
 */
extend Int32 <: WrappingOp<Int32> {
    /**
     * @description Performs wrapping addition that wraps around on overflow
     * @param y The value to add
     * @returns The wrapped result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingAdd(y: Int32): Int32
    
    /**
     * @description Performs wrapping subtraction that wraps around on overflow
     * @param y The value to subtract
     * @returns The wrapped result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingSub(y: Int32): Int32
    
    /**
     * @description Performs wrapping multiplication that wraps around on overflow
     * @param y The value to multiply by
     * @returns The wrapped result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMul(y: Int32): Int32
    
    /**
     * @description Performs wrapping division that wraps around on overflow or throws on division by zero
     * @param y The value to divide by
     * @returns The wrapped result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDiv(y: Int32): Int32
    
    /**
     * @description Performs wrapping modulo operation that wraps around on overflow or throws on division by zero
     * @param y The modulus value
     * @returns The wrapped result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMod(y: Int32): Int32
    
    /**
     * @description Performs wrapping increment that wraps around on overflow
     * @returns The wrapped result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingInc(): Int32
    
    /**
     * @description Performs wrapping decrement that wraps around on overflow
     * @returns The wrapped result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDec(): Int32
    
    /**
     * @description Performs wrapping negation that wraps around on overflow
     * @returns The wrapped result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingNeg(): Int32
    
    /**
     * @description Performs wrapping left shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the left shift
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func wrappingShl(y: UInt64): Int32
    
    /**
     * @description Performs wrapping right shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingShr(y: UInt64): Int32
}

/**
 * @description Provides wrapping arithmetic operations for the Int64 type.
 */
extend Int64 <: WrappingOp<Int64> & WrappingPow {
    /**
     * @description Performs wrapping addition that wraps around on overflow
     * @param y The value to add
     * @returns The wrapped result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingAdd(y: Int64): Int64
    
    /**
     * @description Performs wrapping subtraction that wraps around on overflow
     * @param y The value to subtract
     * @returns The wrapped result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingSub(y: Int64): Int64
    
    /**
     * @description Performs wrapping multiplication that wraps around on overflow
     * @param y The value to multiply by
     * @returns The wrapped result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMul(y: Int64): Int64
    
    /**
     * @description Performs wrapping division that wraps around on overflow or throws on division by zero
     * @param y The value to divide by
     * @returns The wrapped result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDiv(y: Int64): Int64
    
    /**
     * @description Performs wrapping modulo operation that wraps around on overflow or throws on division by zero
     * @param y The modulus value
     * @returns The wrapped result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMod(y: Int64): Int64
    
    /**
     * @description Performs wrapping power operation that wraps around on overflow
     * @param y The exponent value
     * @returns The wrapped result of the power operation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingPow(y: UInt64): Int64
    
    /**
     * @description Performs wrapping increment that wraps around on overflow
     * @returns The wrapped result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingInc(): Int64
    
    /**
     * @description Performs wrapping decrement that wraps around on overflow
     * @returns The wrapped result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDec(): Int64
    
    /**
     * @description Performs wrapping negation that wraps around on overflow
     * @returns The wrapped result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingNeg(): Int64
    
    /**
     * @description Performs wrapping left shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the left shift
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func wrappingShl(y: UInt64): Int64
    
    /**
     * @description Performs wrapping right shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingShr(y: UInt64): Int64
}

/**
 * @description Provides wrapping arithmetic operations for the UInt8 type.
 */
extend UInt8 <: WrappingOp<UInt8> {
    /**
     * @description Performs wrapping addition that wraps around on overflow
     * @param y The value to add
     * @returns The wrapped result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingAdd(y: UInt8): UInt8
    
    /**
     * @description Performs wrapping subtraction that wraps around on overflow
     * @param y The value to subtract
     * @returns The wrapped result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingSub(y: UInt8): UInt8
    
    /**
     * @description Performs wrapping multiplication that wraps around on overflow
     * @param y The value to multiply by
     * @returns The wrapped result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMul(y: UInt8): UInt8
    
    /**
     * @description Performs wrapping division that wraps around on overflow or throws on division by zero
     * @param y The value to divide by
     * @returns The wrapped result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDiv(y: UInt8): UInt8
    
    /**
     * @description Performs wrapping modulo operation that wraps around on overflow or throws on division by zero
     * @param y The modulus value
     * @returns The wrapped result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMod(y: UInt8): UInt8
    
    /**
     * @description Performs wrapping increment that wraps around on overflow
     * @returns The wrapped result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingInc(): UInt8
    
    /**
     * @description Performs wrapping decrement that wraps around on overflow
     * @returns The wrapped result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDec(): UInt8
    
    /**
     * @description Performs wrapping negation that wraps around on overflow
     * @returns The wrapped result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingNeg(): UInt8
    
    /**
     * @description Performs wrapping left shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the left shift
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func wrappingShl(y: UInt64): UInt8
    
    /**
     * @description Performs wrapping right shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingShr(y: UInt64): UInt8
}

/**
 * @description Provides wrapping arithmetic operations for the UInt16 type.
 */
extend UInt16 <: WrappingOp<UInt16> {
    /**
     * @description Performs wrapping addition that wraps around on overflow
     * @param y The value to add
     * @returns The wrapped result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingAdd(y: UInt16): UInt16
    
    /**
     * @description Performs wrapping subtraction that wraps around on overflow
     * @param y The value to subtract
     * @returns The wrapped result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingSub(y: UInt16): UInt16
    
    /**
     * @description Performs wrapping multiplication that wraps around on overflow
     * @param y The value to multiply by
     * @returns The wrapped result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMul(y: UInt16): UInt16
    
    /**
     * @description Performs wrapping division that wraps around on overflow or throws on division by zero
     * @param y The value to divide by
     * @returns The wrapped result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDiv(y: UInt16): UInt16
    
    /**
     * @description Performs wrapping modulo operation that wraps around on overflow or throws on division by zero
     * @param y The modulus value
     * @returns The wrapped result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMod(y: UInt16): UInt16
    
    /**
     * @description Performs wrapping increment that wraps around on overflow
     * @returns The wrapped result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingInc(): UInt16
    
    /**
     * @description Performs wrapping decrement that wraps around on overflow
     * @returns The wrapped result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDec(): UInt16
    
    /**
     * @description Performs wrapping negation that wraps around on overflow
     * @returns The wrapped result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingNeg(): UInt16
    
    /**
     * @description Performs wrapping left shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the left shift
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func wrappingShl(y: UInt64): UInt16
    
    /**
     * @description Performs wrapping right shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingShr(y: UInt64): UInt16
}

/**
 * @description Provides wrapping arithmetic operations for the UInt32 type.
 */
extend UInt32 <: WrappingOp<UInt32> {
    /**
     * @description Performs wrapping addition that wraps around on overflow
     * @param y The value to add
     * @returns The wrapped result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingAdd(y: UInt32): UInt32
    
    /**
     * @description Performs wrapping subtraction that wraps around on overflow
     * @param y The value to subtract
     * @returns The wrapped result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingSub(y: UInt32): UInt32
    
    /**
     * @description Performs wrapping multiplication that wraps around on overflow
     * @param y The value to multiply by
     * @returns The wrapped result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMul(y: UInt32): UInt32
    
    /**
     * @description Performs wrapping division that wraps around on overflow or throws on division by zero
     * @param y The value to divide by
     * @returns The wrapped result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDiv(y: UInt32): UInt32
    
    /**
     * @description Performs wrapping modulo operation that wraps around on overflow or throws on division by zero
     * @param y The modulus value
     * @returns The wrapped result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMod(y: UInt32): UInt32
    
    /**
     * @description Performs wrapping increment that wraps around on overflow
     * @returns The wrapped result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingInc(): UInt32
    
    /**
     * @description Performs wrapping decrement that wraps around on overflow
     * @returns The wrapped result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDec(): UInt32
    
    /**
     * @description Performs wrapping negation that wraps around on overflow
     * @returns The wrapped result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingNeg(): UInt32
    
    /**
     * @description Performs wrapping left shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the left shift
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func wrappingShl(y: UInt64): UInt32
    
    /**
     * @description Performs wrapping right shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingShr(y: UInt64): UInt32
}

/**
 * @description Provides wrapping arithmetic operations for the UInt64 type.
 */
extend UInt64 <: WrappingOp<UInt64> {
    /**
     * @description Performs wrapping addition that wraps around on overflow
     * @param y The value to add
     * @returns The wrapped result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingAdd(y: UInt64): UInt64
    
    /**
     * @description Performs wrapping subtraction that wraps around on overflow
     * @param y The value to subtract
     * @returns The wrapped result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingSub(y: UInt64): UInt64
    
    /**
     * @description Performs wrapping multiplication that wraps around on overflow
     * @param y The value to multiply by
     * @returns The wrapped result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMul(y: UInt64): UInt64
    
    /**
     * @description Performs wrapping division that wraps around on overflow or throws on division by zero
     * @param y The value to divide by
     * @returns The wrapped result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDiv(y: UInt64): UInt64
    
    /**
     * @description Performs wrapping modulo operation that wraps around on overflow or throws on division by zero
     * @param y The modulus value
     * @returns The wrapped result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMod(y: UInt64): UInt64
    
    /**
     * @description Performs wrapping increment that wraps around on overflow
     * @returns The wrapped result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingInc(): UInt64
    
    /**
     * @description Performs wrapping decrement that wraps around on overflow
     * @returns The wrapped result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDec(): UInt64
    
    /**
     * @description Performs wrapping negation that wraps around on overflow
     * @returns The wrapped result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingNeg(): UInt64
    
    /**
     * @description Performs wrapping left shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the left shift
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func wrappingShl(y: UInt64): UInt64
    
    /**
     * @description Performs wrapping right shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingShr(y: UInt64): UInt64
}

/**
 * @description Provides wrapping arithmetic operations for the IntNative type.
 */
extend IntNative <: WrappingOp<IntNative> {
    /**
     * @description Performs wrapping addition that wraps around on overflow
     * @param y The value to add
     * @returns The wrapped result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingAdd(y: IntNative): IntNative
    
    /**
     * @description Performs wrapping subtraction that wraps around on overflow
     * @param y The value to subtract
     * @returns The wrapped result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingSub(y: IntNative): IntNative
    
    /**
     * @description Performs wrapping multiplication that wraps around on overflow
     * @param y The value to multiply by
     * @returns The wrapped result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMul(y: IntNative): IntNative
    
    /**
     * @description Performs wrapping division that wraps around on overflow or throws on division by zero
     * @param y The value to divide by
     * @returns The wrapped result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDiv(y: IntNative): IntNative
    
    /**
     * @description Performs wrapping modulo operation that wraps around on overflow or throws on division by zero
     * @param y The modulus value
     * @returns The wrapped result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMod(y: IntNative): IntNative
    
    /**
     * @description Performs wrapping increment that wraps around on overflow
     * @returns The wrapped result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingInc(): IntNative
    
    /**
     * @description Performs wrapping decrement that wraps around on overflow
     * @returns The wrapped result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDec(): IntNative
    
    /**
     * @description Performs wrapping negation that wraps around on overflow
     * @returns The wrapped result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingNeg(): IntNative
    
    /**
     * @description Performs wrapping left shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the left shift
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func wrappingShl(y: UInt64): IntNative
    
    /**
     * @description Performs wrapping right shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingShr(y: UInt64): IntNative
}

/**
 * @description Provides wrapping arithmetic operations for the UIntNative type.
 */
extend UIntNative <: WrappingOp<UIntNative> {
    /**
     * @description Performs wrapping addition that wraps around on overflow
     * @param y The value to add
     * @returns The wrapped result of the addition
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingAdd(y: UIntNative): UIntNative
    
    /**
     * @description Performs wrapping subtraction that wraps around on overflow
     * @param y The value to subtract
     * @returns The wrapped result of the subtraction
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingSub(y: UIntNative): UIntNative
    
    /**
     * @description Performs wrapping multiplication that wraps around on overflow
     * @param y The value to multiply by
     * @returns The wrapped result of the multiplication
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMul(y: UIntNative): UIntNative
    
    /**
     * @description Performs wrapping division that wraps around on overflow or throws on division by zero
     * @param y The value to divide by
     * @returns The wrapped result of the division
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDiv(y: UIntNative): UIntNative
    
    /**
     * @description Performs wrapping modulo operation that wraps around on overflow or throws on division by zero
     * @param y The modulus value
     * @returns The wrapped result of the modulo operation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingMod(y: UIntNative): UIntNative
    
    /**
     * @description Performs wrapping increment that wraps around on overflow
     * @returns The wrapped result of the increment
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingInc(): UIntNative
    
    /**
     * @description Performs wrapping decrement that wraps around on overflow
     * @returns The wrapped result of the decrement
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingDec(): UIntNative
    
    /**
     * @description Performs wrapping negation that wraps around on overflow
     * @returns The wrapped result of the negation
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingNeg(): UIntNative
    
    /**
     * @description Performs wrapping left shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the left shift
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func wrappingShl(y: UInt64): UIntNative
    
    /**
     * @description Performs wrapping right shift that wraps around on overflow
     * @param y The number of bits to shift
     * @returns The wrapped result of the right shift
     */
    @!APILevel[
        since: "22"
    ]
    public func wrappingShr(y: UInt64): UIntNative
}

