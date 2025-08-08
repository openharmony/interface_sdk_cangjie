/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

package std.overflow


@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface CarryingOp<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func carryingAdd(y: T): (Bool, T)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func carryingSub(y: T): (Bool, T)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func carryingMul(y: T): (Bool, T)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func carryingDiv(y: T): (Bool, T)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func carryingMod(y: T): (Bool, T)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func carryingInc(): (Bool, T)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func carryingDec(): (Bool, T)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func carryingNeg(): (Bool, T)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func carryingShl(y: UInt64): (Bool, T)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func carryingShr(y: UInt64): (Bool, T)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface CarryingPow {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func carryingPow(y: UInt64): (Bool, Int64)
}

extend Int8 <: CarryingOp<Int8> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingAdd(y: Int8): (Bool, Int8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingSub(y: Int8): (Bool, Int8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMul(y: Int8): (Bool, Int8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDiv(y: Int8): (Bool, Int8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMod(y: Int8): (Bool, Int8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingInc(): (Bool, Int8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDec(): (Bool, Int8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingNeg(): (Bool, Int8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShl(y: UInt64): (Bool, Int8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShr(y: UInt64): (Bool, Int8)
}

extend Int16 <: CarryingOp<Int16> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingAdd(y: Int16): (Bool, Int16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingSub(y: Int16): (Bool, Int16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMul(y: Int16): (Bool, Int16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDiv(y: Int16): (Bool, Int16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMod(y: Int16): (Bool, Int16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingInc(): (Bool, Int16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDec(): (Bool, Int16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingNeg(): (Bool, Int16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShl(y: UInt64): (Bool, Int16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShr(y: UInt64): (Bool, Int16)
}

extend Int32 <: CarryingOp<Int32> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingAdd(y: Int32): (Bool, Int32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingSub(y: Int32): (Bool, Int32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMul(y: Int32): (Bool, Int32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDiv(y: Int32): (Bool, Int32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMod(y: Int32): (Bool, Int32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingInc(): (Bool, Int32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDec(): (Bool, Int32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingNeg(): (Bool, Int32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShl(y: UInt64): (Bool, Int32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShr(y: UInt64): (Bool, Int32)
}

extend Int64 <: CarryingOp<Int64> & CarryingPow {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingAdd(y: Int64): (Bool, Int64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingSub(y: Int64): (Bool, Int64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMul(y: Int64): (Bool, Int64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDiv(y: Int64): (Bool, Int64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMod(y: Int64): (Bool, Int64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingInc(): (Bool, Int64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDec(): (Bool, Int64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingNeg(): (Bool, Int64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShl(y: UInt64): (Bool, Int64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShr(y: UInt64): (Bool, Int64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingPow(y: UInt64): (Bool, Int64)
}

extend IntNative <: CarryingOp<IntNative> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingAdd(y: IntNative): (Bool, IntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingSub(y: IntNative): (Bool, IntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMul(y: IntNative): (Bool, IntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDiv(y: IntNative): (Bool, IntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMod(y: IntNative): (Bool, IntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingInc(): (Bool, IntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDec(): (Bool, IntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingNeg(): (Bool, IntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShl(y: UInt64): (Bool, IntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShr(y: UInt64): (Bool, IntNative)
}

extend UInt8 <: CarryingOp<UInt8> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingAdd(y: UInt8): (Bool, UInt8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingSub(y: UInt8): (Bool, UInt8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMul(y: UInt8): (Bool, UInt8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDiv(y: UInt8): (Bool, UInt8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMod(y: UInt8): (Bool, UInt8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingInc(): (Bool, UInt8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDec(): (Bool, UInt8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingNeg(): (Bool, UInt8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShl(y: UInt64): (Bool, UInt8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShr(y: UInt64): (Bool, UInt8)
}

extend UInt16 <: CarryingOp<UInt16> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingAdd(y: UInt16): (Bool, UInt16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingSub(y: UInt16): (Bool, UInt16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMul(y: UInt16): (Bool, UInt16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDiv(y: UInt16): (Bool, UInt16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMod(y: UInt16): (Bool, UInt16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingInc(): (Bool, UInt16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDec(): (Bool, UInt16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingNeg(): (Bool, UInt16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShl(y: UInt64): (Bool, UInt16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShr(y: UInt64): (Bool, UInt16)
}

extend UInt32 <: CarryingOp<UInt32> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingAdd(y: UInt32): (Bool, UInt32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingSub(y: UInt32): (Bool, UInt32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMul(y: UInt32): (Bool, UInt32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDiv(y: UInt32): (Bool, UInt32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMod(y: UInt32): (Bool, UInt32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingInc(): (Bool, UInt32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDec(): (Bool, UInt32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingNeg(): (Bool, UInt32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShl(y: UInt64): (Bool, UInt32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShr(y: UInt64): (Bool, UInt32)
}

extend UInt64 <: CarryingOp<UInt64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingAdd(y: UInt64): (Bool, UInt64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingSub(y: UInt64): (Bool, UInt64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMul(y: UInt64): (Bool, UInt64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDiv(y: UInt64): (Bool, UInt64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMod(y: UInt64): (Bool, UInt64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingInc(): (Bool, UInt64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDec(): (Bool, UInt64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingNeg(): (Bool, UInt64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShl(y: UInt64): (Bool, UInt64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShr(y: UInt64): (Bool, UInt64)
}

extend UIntNative <: CarryingOp<UIntNative> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingAdd(y: UIntNative): (Bool, UIntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingSub(y: UIntNative): (Bool, UIntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMul(y: UIntNative): (Bool, UIntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDiv(y: UIntNative): (Bool, UIntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingMod(y: UIntNative): (Bool, UIntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingInc(): (Bool, UIntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingDec(): (Bool, UIntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingNeg(): (Bool, UIntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShl(y: UInt64): (Bool, UIntNative)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func carryingShr(y: UInt64): (Bool, UIntNative)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface CheckedOp<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func checkedAdd(y: T): ?T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func checkedSub(y: T): ?T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func checkedMul(y: T): ?T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func checkedDiv(y: T): ?T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func checkedMod(y: T): ?T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func checkedInc(): ?T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func checkedDec(): ?T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func checkedNeg(): ?T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func checkedShl(y: UInt64): ?T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func checkedShr(y: UInt64): ?T
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface CheckedPow {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func checkedPow(y: UInt64): ?Int64
}

extend Int8 <: CheckedOp<Int8> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedAdd(y: Int8): ?Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedSub(y: Int8): ?Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMul(y: Int8): ?Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDiv(y: Int8): ?Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMod(y: Int8): ?Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedInc(): ?Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDec(): ?Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedNeg(): ?Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShl(y: UInt64): ?Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShr(y: UInt64): ?Int8
}

extend Int16 <: CheckedOp<Int16> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedAdd(y: Int16): ?Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedSub(y: Int16): ?Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMul(y: Int16): ?Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDiv(y: Int16): ?Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMod(y: Int16): ?Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedInc(): ?Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDec(): ?Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedNeg(): ?Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShl(y: UInt64): ?Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShr(y: UInt64): ?Int16
}

extend Int32 <: CheckedOp<Int32> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedAdd(y: Int32): ?Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedSub(y: Int32): ?Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMul(y: Int32): ?Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDiv(y: Int32): ?Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMod(y: Int32): ?Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedInc(): ?Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDec(): ?Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedNeg(): ?Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShl(y: UInt64): ?Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShr(y: UInt64): ?Int32
}

extend Int64 <: CheckedOp<Int64> & CheckedPow {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedAdd(y: Int64): ?Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedSub(y: Int64): ?Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMul(y: Int64): ?Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDiv(y: Int64): ?Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMod(y: Int64): ?Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedPow(y: UInt64): ?Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedInc(): ?Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDec(): ?Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedNeg(): ?Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShl(y: UInt64): ?Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShr(y: UInt64): ?Int64
}

extend UInt8 <: CheckedOp<UInt8> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedAdd(y: UInt8): ?UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedSub(y: UInt8): ?UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMul(y: UInt8): ?UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDiv(y: UInt8): ?UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMod(y: UInt8): ?UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedInc(): ?UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDec(): ?UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedNeg(): ?UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShl(y: UInt64): ?UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShr(y: UInt64): ?UInt8
}

extend UInt16 <: CheckedOp<UInt16> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedAdd(y: UInt16): ?UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedSub(y: UInt16): ?UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMul(y: UInt16): ?UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDiv(y: UInt16): ?UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMod(y: UInt16): ?UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedInc(): ?UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDec(): ?UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedNeg(): ?UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShl(y: UInt64): ?UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShr(y: UInt64): ?UInt16
}

extend UInt32 <: CheckedOp<UInt32> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedAdd(y: UInt32): ?UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedSub(y: UInt32): ?UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMul(y: UInt32): ?UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDiv(y: UInt32): ?UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMod(y: UInt32): ?UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedInc(): ?UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDec(): ?UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedNeg(): ?UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShl(y: UInt64): ?UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShr(y: UInt64): ?UInt32
}

extend UInt64 <: CheckedOp<UInt64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedAdd(y: UInt64): ?UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedSub(y: UInt64): ?UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMul(y: UInt64): ?UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDiv(y: UInt64): ?UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMod(y: UInt64): ?UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedInc(): ?UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDec(): ?UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedNeg(): ?UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShl(y: UInt64): ?UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShr(y: UInt64): ?UInt64
}

extend IntNative <: CheckedOp<IntNative> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedAdd(y: IntNative): ?IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedSub(y: IntNative): ?IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMul(y: IntNative): ?IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDiv(y: IntNative): ?IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMod(y: IntNative): ?IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedInc(): ?IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDec(): ?IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedNeg(): ?IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShl(y: UInt64): ?IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShr(y: UInt64): ?IntNative
}

extend UIntNative <: CheckedOp<UIntNative> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedAdd(y: UIntNative): ?UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedSub(y: UIntNative): ?UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMul(y: UIntNative): ?UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDiv(y: UIntNative): ?UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedMod(y: UIntNative): ?UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedInc(): ?UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedDec(): ?UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedNeg(): ?UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShl(y: UInt64): ?UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func checkedShr(y: UInt64): ?UIntNative
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface SaturatingOp<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func saturatingAdd(y: T): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func saturatingSub(y: T): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func saturatingMul(y: T): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func saturatingDiv(y: T): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func saturatingMod(y: T): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func saturatingInc(): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func saturatingDec(): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func saturatingNeg(): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func saturatingShl(y: UInt64): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func saturatingShr(y: UInt64): T
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface SaturatingPow {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func saturatingPow(y: UInt64): Int64
}

extend Int8 <: SaturatingOp<Int8> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingAdd(y: Int8): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingSub(y: Int8): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMul(y: Int8): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDiv(y: Int8): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMod(y: Int8): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingInc(): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDec(): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingNeg(): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShl(y: UInt64): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShr(y: UInt64): Int8
}

extend Int16 <: SaturatingOp<Int16> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingAdd(y: Int16): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingSub(y: Int16): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMul(y: Int16): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDiv(y: Int16): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMod(y: Int16): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingInc(): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDec(): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingNeg(): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShl(y: UInt64): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShr(y: UInt64): Int16
}

extend Int32 <: SaturatingOp<Int32> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingAdd(y: Int32): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingSub(y: Int32): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMul(y: Int32): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDiv(y: Int32): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMod(y: Int32): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingInc(): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDec(): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingNeg(): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShl(y: UInt64): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShr(y: UInt64): Int32
}

extend Int64 <: SaturatingOp<Int64> & SaturatingPow {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingAdd(y: Int64): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingSub(y: Int64): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMul(y: Int64): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDiv(y: Int64): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMod(y: Int64): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingPow(y: UInt64): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingInc(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDec(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingNeg(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShl(y: UInt64): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShr(y: UInt64): Int64
}

extend UInt8 <: SaturatingOp<UInt8> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingAdd(y: UInt8): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingSub(y: UInt8): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMul(y: UInt8): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDiv(y: UInt8): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMod(y: UInt8): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingInc(): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDec(): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingNeg(): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShl(y: UInt64): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShr(y: UInt64): UInt8
}

extend UInt16 <: SaturatingOp<UInt16> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingAdd(y: UInt16): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingSub(y: UInt16): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMul(y: UInt16): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDiv(y: UInt16): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMod(y: UInt16): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingInc(): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDec(): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingNeg(): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShl(y: UInt64): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShr(y: UInt64): UInt16
}

extend UInt32 <: SaturatingOp<UInt32> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingAdd(y: UInt32): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingSub(y: UInt32): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMul(y: UInt32): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDiv(y: UInt32): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMod(y: UInt32): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingInc(): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDec(): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingNeg(): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShl(y: UInt64): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShr(y: UInt64): UInt32
}

extend UInt64 <: SaturatingOp<UInt64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingAdd(y: UInt64): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingSub(y: UInt64): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMul(y: UInt64): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDiv(y: UInt64): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMod(y: UInt64): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingInc(): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDec(): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingNeg(): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShl(y: UInt64): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShr(y: UInt64): UInt64
}

extend IntNative <: SaturatingOp<IntNative> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingAdd(y: IntNative): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingSub(y: IntNative): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMul(y: IntNative): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDiv(y: IntNative): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMod(y: IntNative): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingInc(): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDec(): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingNeg(): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShl(y: UInt64): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShr(y: UInt64): IntNative
}

extend UIntNative <: SaturatingOp<UIntNative> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingAdd(y: UIntNative): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingSub(y: UIntNative): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMul(y: UIntNative): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDiv(y: UIntNative): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingMod(y: UIntNative): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingInc(): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingDec(): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingNeg(): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShl(y: UInt64): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func saturatingShr(y: UInt64): UIntNative
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface ThrowingOp<T> {
    /*
    * @throws OverflowException if the add operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func throwingAdd(y: T): T
    
    /*
    * @throws OverflowException if the subtraction operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func throwingSub(y: T): T
    
    /*
    * @throws OverflowException if the multiplication operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func throwingMul(y: T): T
    
    /*
    * @throws OverflowException if the division operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func throwingDiv(y: T): T
    
    /*
    * @throws OverflowException if the modulo operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func throwingMod(y: T): T
    
    /*
    * @throws OverflowException if the increase operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func throwingInc(): T
    
    /*
    * @throws OverflowException if the decrease operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func throwingDec(): T
    
    /*
    * @throws OverflowException if the negative operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func throwingNeg(): T
    
    /*
    * @throws OverflowException if The right operand is greater than or equal to the number of bits of the type of the left operand, or the right operand is negative.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func throwingShl(y: UInt64): T
    
    /*
    * @throws OverflowException if The right operand is greater than or equal to the number of bits of the type of the left operand, or the right operand is negative.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func throwingShr(y: UInt64): T
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface ThrowingPow {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func throwingPow(y: UInt64): Int64
}

extend Int8 <: ThrowingOp<Int8> {
    /*
    * @throws OverflowException if the add operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingAdd(y: Int8): Int8
    
    /*
    * @throws OverflowException if the subtraction operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingSub(y: Int8): Int8
    
    /*
    * @throws OverflowException if the multiplication operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMul(y: Int8): Int8
    
    /*
    * @throws OverflowException if the division operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDiv(y: Int8): Int8
    
    /*
    * @throws OverflowException if the modulo operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMod(y: Int8): Int8
    
    /*
    * @throws OverflowException if the increase operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingInc(): Int8
    
    /*
    * @throws OverflowException if the decrease operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDec(): Int8
    
    /*
    * @throws OverflowException if the negative operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingNeg(): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShl(y: UInt64): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShr(y: UInt64): Int8
}

extend Int16 <: ThrowingOp<Int16> {
    /*
    * @throws OverflowException if the add operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingAdd(y: Int16): Int16
    
    /*
    * @throws OverflowException if the subtraction operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingSub(y: Int16): Int16
    
    /*
    * @throws OverflowException if the multiplication operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMul(y: Int16): Int16
    
    /*
    * @throws OverflowException if the division operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDiv(y: Int16): Int16
    
    /*
    * @throws OverflowException if the modulo operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMod(y: Int16): Int16
    
    /*
    * @throws OverflowException if the increase operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingInc(): Int16
    
    /*
    * @throws OverflowException if the decrease operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDec(): Int16
    
    /*
    * @throws OverflowException if the negative operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingNeg(): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShl(y: UInt64): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShr(y: UInt64): Int16
}

extend Int32 <: ThrowingOp<Int32> {
    /*
    * @throws OverflowException if the add operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingAdd(y: Int32): Int32
    
    /*
    * @throws OverflowException if the subtraction operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingSub(y: Int32): Int32
    
    /*
    * @throws OverflowException if the multiplication operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMul(y: Int32): Int32
    
    /*
    * @throws OverflowException if the division operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDiv(y: Int32): Int32
    
    /*
    * @throws OverflowException if the modulo operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMod(y: Int32): Int32
    
    /*
    * @throws OverflowException if the increase operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingInc(): Int32
    
    /*
    * @throws OverflowException if the decrease operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDec(): Int32
    
    /*
    * @throws OverflowException if the negative operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingNeg(): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShl(y: UInt64): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShr(y: UInt64): Int32
}

extend Int64 <: ThrowingOp<Int64> & ThrowingPow {
    /*
    * @throws OverflowException if the add operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingAdd(y: Int64): Int64
    
    /*
    * @throws OverflowException if the subtraction operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingSub(y: Int64): Int64
    
    /*
    * @throws OverflowException if the multiplication operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMul(y: Int64): Int64
    
    /*
    * @throws OverflowException if the division operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDiv(y: Int64): Int64
    
    /*
    * @throws OverflowException if the modulo operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMod(y: Int64): Int64
    
    /*
    * @throws OverflowException if the power operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingPow(y: UInt64): Int64
    
    /*
    * @throws OverflowException if the increase operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingInc(): Int64
    
    /*
    * @throws OverflowException if the decrease operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDec(): Int64
    
    /*
    * @throws OverflowException if the negative operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingNeg(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShl(y: UInt64): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShr(y: UInt64): Int64
}

extend UInt8 <: ThrowingOp<UInt8> {
    /*
    * @throws OverflowException if the add operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingAdd(y: UInt8): UInt8
    
    /*
    * @throws OverflowException if the subtraction operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingSub(y: UInt8): UInt8
    
    /*
    * @throws OverflowException if the multiplication operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMul(y: UInt8): UInt8
    
    /*
    * @throws OverflowException if the division operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDiv(y: UInt8): UInt8
    
    /*
    * @throws OverflowException if the modulo operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMod(y: UInt8): UInt8
    
    /*
    * @throws OverflowException if the increase operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingInc(): UInt8
    
    /*
    * @throws OverflowException if the decrease operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDec(): UInt8
    
    /*
    * @throws OverflowException if the negative operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingNeg(): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShl(y: UInt64): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShr(y: UInt64): UInt8
}

extend UInt16 <: ThrowingOp<UInt16> {
    /*
    * @throws OverflowException if the add operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingAdd(y: UInt16): UInt16
    
    /*
    * @throws OverflowException if the subtraction operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingSub(y: UInt16): UInt16
    
    /*
    * @throws OverflowException if the multiplication operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMul(y: UInt16): UInt16
    
    /*
    * @throws OverflowException if the division operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDiv(y: UInt16): UInt16
    
    /*
    * @throws OverflowException if the modulo operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMod(y: UInt16): UInt16
    
    /*
    * @throws OverflowException if the increase operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingInc(): UInt16
    
    /*
    * @throws OverflowException if the decrease operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDec(): UInt16
    
    /*
    * @throws OverflowException if the negative operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingNeg(): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShl(y: UInt64): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShr(y: UInt64): UInt16
}

extend UInt32 <: ThrowingOp<UInt32> {
    /*
    * @throws OverflowException if the add operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingAdd(y: UInt32): UInt32
    
    /*
    * @throws OverflowException if the subtraction operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingSub(y: UInt32): UInt32
    
    /*
    * @throws OverflowException if the multiplication operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMul(y: UInt32): UInt32
    
    /*
    * @throws OverflowException if the division operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDiv(y: UInt32): UInt32
    
    /*
    * @throws OverflowException if the modulo operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMod(y: UInt32): UInt32
    
    /*
    * @throws OverflowException if the increase operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingInc(): UInt32
    
    /*
    * @throws OverflowException if the decrease operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDec(): UInt32
    
    /*
    * @throws OverflowException if the negative operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingNeg(): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShl(y: UInt64): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShr(y: UInt64): UInt32
}

extend UInt64 <: ThrowingOp<UInt64> {
    /*
    * @throws OverflowException if the add operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingAdd(y: UInt64): UInt64
    
    /*
    * @throws OverflowException if the subtraction operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingSub(y: UInt64): UInt64
    
    /*
    * @throws OverflowException if the multiplication operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMul(y: UInt64): UInt64
    
    /*
    * @throws OverflowException if the division operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDiv(y: UInt64): UInt64
    
    /*
    * @throws OverflowException if the modulo operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMod(y: UInt64): UInt64
    
    /*
    * @throws OverflowException if the increase operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingInc(): UInt64
    
    /*
    * @throws OverflowException if the decrease operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDec(): UInt64
    
    /*
    * @throws OverflowException if the negative operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingNeg(): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShl(y: UInt64): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShr(y: UInt64): UInt64
}

extend IntNative <: ThrowingOp<IntNative> {
    /*
    * @throws OverflowException if the add operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingAdd(y: IntNative): IntNative
    
    /*
    * @throws OverflowException if the subtraction operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingSub(y: IntNative): IntNative
    
    /*
    * @throws OverflowException if the multiplication operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMul(y: IntNative): IntNative
    
    /*
    * @throws OverflowException if the division operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDiv(y: IntNative): IntNative
    
    /*
    * @throws OverflowException if the modulo operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMod(y: IntNative): IntNative
    
    /*
    * @throws OverflowException if the increase operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingInc(): IntNative
    
    /*
    * @throws OverflowException if the decrease operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDec(): IntNative
    
    /*
    * @throws OverflowException if the negative operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingNeg(): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShl(y: UInt64): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShr(y: UInt64): IntNative
}

extend UIntNative <: ThrowingOp<UIntNative> {
    /*
    * @throws OverflowException if the add operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingAdd(y: UIntNative): UIntNative
    
    /*
    * @throws OverflowException if the subtraction operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingSub(y: UIntNative): UIntNative
    
    /*
    * @throws OverflowException if the multiplication operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMul(y: UIntNative): UIntNative
    
    /*
    * @throws OverflowException if the division operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDiv(y: UIntNative): UIntNative
    
    /*
    * @throws OverflowException if the modulo operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingMod(y: UIntNative): UIntNative
    
    /*
    * @throws OverflowException if the increase operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingInc(): UIntNative
    
    /*
    * @throws OverflowException if the decrease operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingDec(): UIntNative
    
    /*
    * @throws OverflowException if the negative operation overflows
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingNeg(): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShl(y: UInt64): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func throwingShr(y: UInt64): UIntNative
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class OvershiftException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class UndershiftException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface WrappingOp<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func wrappingAdd(y: T): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func wrappingSub(y: T): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func wrappingMul(y: T): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func wrappingDiv(y: T): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func wrappingMod(y: T): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func wrappingInc(): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func wrappingDec(): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func wrappingNeg(): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func wrappingShl(y: UInt64): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func wrappingShr(y: UInt64): T
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface WrappingPow {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func wrappingPow(y: UInt64): Int64
}

extend Int8 <: WrappingOp<Int8> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingAdd(y: Int8): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingSub(y: Int8): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMul(y: Int8): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDiv(y: Int8): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMod(y: Int8): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingInc(): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDec(): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingNeg(): Int8
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShl(y: UInt64): Int8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShr(y: UInt64): Int8
}

extend Int16 <: WrappingOp<Int16> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingAdd(y: Int16): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingSub(y: Int16): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMul(y: Int16): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDiv(y: Int16): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMod(y: Int16): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingInc(): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDec(): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingNeg(): Int16
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShl(y: UInt64): Int16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShr(y: UInt64): Int16
}

extend Int32 <: WrappingOp<Int32> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingAdd(y: Int32): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingSub(y: Int32): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMul(y: Int32): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDiv(y: Int32): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMod(y: Int32): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingInc(): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDec(): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingNeg(): Int32
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShl(y: UInt64): Int32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShr(y: UInt64): Int32
}

extend Int64 <: WrappingOp<Int64> & WrappingPow {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingAdd(y: Int64): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingSub(y: Int64): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMul(y: Int64): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDiv(y: Int64): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMod(y: Int64): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingPow(y: UInt64): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingInc(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDec(): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingNeg(): Int64
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShl(y: UInt64): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShr(y: UInt64): Int64
}

extend UInt8 <: WrappingOp<UInt8> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingAdd(y: UInt8): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingSub(y: UInt8): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMul(y: UInt8): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDiv(y: UInt8): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMod(y: UInt8): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingInc(): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDec(): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingNeg(): UInt8
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShl(y: UInt64): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShr(y: UInt64): UInt8
}

extend UInt16 <: WrappingOp<UInt16> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingAdd(y: UInt16): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingSub(y: UInt16): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMul(y: UInt16): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDiv(y: UInt16): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMod(y: UInt16): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingInc(): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDec(): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingNeg(): UInt16
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShl(y: UInt64): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShr(y: UInt64): UInt16
}

extend UInt32 <: WrappingOp<UInt32> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingAdd(y: UInt32): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingSub(y: UInt32): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMul(y: UInt32): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDiv(y: UInt32): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMod(y: UInt32): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingInc(): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDec(): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingNeg(): UInt32
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShl(y: UInt64): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShr(y: UInt64): UInt32
}

extend UInt64 <: WrappingOp<UInt64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingAdd(y: UInt64): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingSub(y: UInt64): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMul(y: UInt64): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDiv(y: UInt64): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMod(y: UInt64): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingInc(): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDec(): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingNeg(): UInt64
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShl(y: UInt64): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShr(y: UInt64): UInt64
}

extend IntNative <: WrappingOp<IntNative> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingAdd(y: IntNative): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingSub(y: IntNative): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMul(y: IntNative): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDiv(y: IntNative): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMod(y: IntNative): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingInc(): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDec(): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingNeg(): IntNative
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShl(y: UInt64): IntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShr(y: UInt64): IntNative
}

extend UIntNative <: WrappingOp<UIntNative> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingAdd(y: UIntNative): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingSub(y: UIntNative): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMul(y: UIntNative): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDiv(y: UIntNative): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingMod(y: UIntNative): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingInc(): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingDec(): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingNeg(): UIntNative
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShl(y: UInt64): UIntNative
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func wrappingShr(y: UInt64): UIntNative
}

