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

macro package ohos.ark_interop_macro
import std.ast.{Visitor, Decl, FuncDecl, RefType, PrimaryCtorDecl, InterfaceDecl, ClassDecl, PropDecl, Token, Tokens, MacroExpandDecl, PackageHeader, VarDecl, parseProgram, cangjieLex}
import std.collection.{ArrayList, HashSet, HashMap, forEach}
import std.fs.{FileInfo, Path, FSException, File, Directory, OpenMode}
import std.sync.Mutex
import std.io.readToEnd
import std.regex.{Regex, RegexFlag}
import std.env.{getVariable, getHomeDirectory}

import std.ast.{Decl, FuncDecl, PrimaryCtorDecl, VarDecl, PropDecl, Token, Tokens, ClassDecl, TypeNode, FuncParam, TokenKind, setItem, getChildMessages, ToTokens}
import std.collection.ArrayList
import std.ast.{Expr, Tokens, Token, FuncType, TypeNode, TokenKind, parseExprFragment, parseExpr, FuncParam, Decl, diagReport, DiagReportLevel, ToTokens}
import std.time.DateTime
import std.fs.{Path, FSException, exists, Directory, File, OpenMode}
import std.io.{SeekPosition, readToEnd}
import std.ast.{PropDecl, InterfaceDecl, FuncDecl, ClassDecl, TypeNode, Body, VarDecl, PrimaryCtorDecl, FuncParam, FuncType, RefType, Tokens}
import std.collection.{ArrayList, HashMap}
import std.ast.{Tokens, ClassDecl, InterfaceDecl, FuncDecl, Decl, parseDecl, assertParentContext}
import std.ast.{FuncDecl, Token, Tokens, FuncParam, TypeNode, TokenKind, ToTokens}
import std.ast.{Token, Tokens, FuncDecl, PropDecl, InterfaceDecl, ToTokens}

public macro Interop(attrTokens: Tokens, input: Tokens): Tokens



