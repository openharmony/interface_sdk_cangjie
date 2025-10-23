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
@!APILevel[since: "22"]
public interface Digest {
    @!APILevel[since: "22"]
    prop size: Int64
    
    @!APILevel[since: "22"]
    prop blockSize: Int64
    
    @!APILevel[since: "22"]
    prop algorithm: String
    
    @!APILevel[since: "22"]
    func write(buffer: Array<Byte>): Unit
    
    @!APILevel[since: "22"]
    func finish(to!: Array<Byte>): Unit
    
    @!APILevel[since: "22"]
    func finish(): Array<Byte>
    
    @!APILevel[since: "22"]
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
@!APILevel[since: "22"]
public func digest<T>(algorithm: T, data: String): Array<Byte> where T <: Digest

@!APILevel[since: "22"]
public func digest<T>(algorithm: T, input: InputStream): Array<Byte> where T <: Digest

@!APILevel[since: "22"]
public func digest<T>(algorithm: T, data: Array<Byte>): Array<Byte> where T <: Digest

