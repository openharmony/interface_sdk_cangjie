/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

macro package std.deriving
import std.deriving.api.*
import std.deriving.impl.deriveImpl
import std.ast.*
import std.collection.*

import std.deriving.impl.*
// this is required to trigger static init// do not remove unless ensued that it can be done without breaking it
import std.deriving.builtins

public macro Derive(rawOptions: Tokens, input: Tokens): Tokens



public macro DeriveExclude(input: Tokens): Tokens



public macro DeriveInclude(input: Tokens): Tokens



public macro DeriveOrder(members: Tokens, input: Tokens): Tokens



