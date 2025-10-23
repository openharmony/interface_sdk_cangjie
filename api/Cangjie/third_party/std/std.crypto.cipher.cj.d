/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package std.crypto.cipher


@!APILevel[since: "22"]
public interface BlockCipher {
    @!APILevel[since: "22"]
    prop blockSize: Int64
    
    @!APILevel[since: "22"]
    prop algorithm: String
    
    @!APILevel[since: "22"]
    func encrypt(input: Array<Byte>): Array<Byte>
    
    @!APILevel[since: "22"]
    func decrypt(input: Array<Byte>): Array<Byte>
    
    @!APILevel[since: "22"]
    func encrypt(input: Array<Byte>, to!: Array<Byte>): Int64
    
    @!APILevel[since: "22"]
    func decrypt(input: Array<Byte>, to!: Array<Byte>): Int64
}

