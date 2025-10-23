/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package std.objectpool
import std.collection.concurrent.*


@Deprecated
@!APILevel[since: "22"]
public class ObjectPool<T> where T <: Object {
    @!APILevel[since: "22"]
    public init(newFunc: () -> T, resetFunc!: Option<(T) -> T> = None)
    
    @!APILevel[since: "22"]
    public func get(): T
    
    @!APILevel[since: "22"]
    public func put(item: T): Unit
}

