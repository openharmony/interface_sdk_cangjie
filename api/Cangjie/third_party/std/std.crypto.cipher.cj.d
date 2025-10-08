/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package std.crypto.cipher


@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface BlockCipher {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop blockSize: Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop algorithm: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func encrypt(input: Array<Byte>): Array<Byte>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func decrypt(input: Array<Byte>): Array<Byte>
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func encrypt(input: Array<Byte>, to!: Array<Byte>): Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func decrypt(input: Array<Byte>, to!: Array<Byte>): Int64
}

