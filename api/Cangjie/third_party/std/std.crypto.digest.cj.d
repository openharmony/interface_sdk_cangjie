/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package std.crypto.digest
import std.io.{InputStream, OutputStream}


/**
* The Digest interface
*
*
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public interface Digest {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    prop size: Int64
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    prop blockSize: Int64
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    prop algorithm: String
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    func write(buffer: Array<Byte>): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    func finish(to!: Array<Byte>): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    func finish(): Array<Byte>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    func reset(): Unit
}

/**
* The function is to calculate the digest of data
*
* @param algorithm - digest type
* @param data - data to be digested
*
* @return message-digested data
*/
@Deprecated[message: "Use global function `public func digest<T>(algorithm: T, input: InputStream): Array<Byte> where T <: Digest` instead."]
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func digest<T>(algorithm: T, data: String): Array<Byte> where T <: Digest

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func digest<T>(algorithm: T, input: InputStream): Array<Byte> where T <: Digest

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func digest<T>(algorithm: T, data: Array<Byte>): Array<Byte> where T <: Digest

