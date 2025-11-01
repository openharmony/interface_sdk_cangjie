
macro package std.deriving
import std.deriving.api.*
import std.deriving.impl.deriveImpl
import std.ast.*
import std.collection.*

import std.deriving.impl.*
import std.deriving.builtins

public macro Derive(rawOptions: Tokens, input: Tokens): Tokens

public macro DeriveExclude(input: Tokens): Tokens

public macro DeriveInclude(input: Tokens): Tokens

public macro DeriveOrder(members: Tokens, input: Tokens): Tokens



