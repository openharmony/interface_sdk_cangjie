/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package std.ast
import std.collection.ArrayList

public import std.collection.ArrayList

/**
* Return true if two tokens are considered equal somehow(exclude NL, END and position info).
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func compareTokens(tokens1: Tokens, tokens2: Tokens): Bool


@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public open class Decl <: Node {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut open prop identifier: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop annotations: ArrayList<Annotation>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop modifiers: ArrayList<Modifier>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop genericParam: GenericParam
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop genericConstraint: ArrayList<GenericConstraint>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop constraintCommas: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func hasAttr(attr: String): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getAttrs(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop isGenericDecl: Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public open func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public open func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ClassDecl <: Decl {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop upperBound: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop superTypes: ArrayList<TypeNode>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop superTypeBitAnds: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop body: Body
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class StructDecl <: Decl {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop upperBound: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop superTypes: ArrayList<TypeNode>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop superTypeBitAnds: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop body: Body
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class InterfaceDecl <: Decl {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop upperBound: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop superTypes: ArrayList<TypeNode>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop superTypeBitAnds: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop body: Body
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class EnumDecl <: Decl {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop upperBound: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop superTypes: ArrayList<TypeNode>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop superTypeBitAnds: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lBrace: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop constructors: ArrayList<Constructor>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop decls: ArrayList<Decl>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rBrace: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop ellipsis: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ExtendDecl <: Decl {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut override prop identifier: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop extendType: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop upperBound: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop superTypes: ArrayList<TypeNode>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop superTypeBitAnds: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop body: Body
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class FuncDecl <: Decl {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop overloadOp: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop funcParams: ArrayList<FuncParam>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop colon: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop declType: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop block: Block
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isConst(): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class MainDecl <: Decl {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop funcParams: ArrayList<FuncParam>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop colon: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop declType: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop block: Block
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class MacroDecl <: Decl {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop funcParams: ArrayList<FuncParam>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop colon: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop declType: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop block: Block
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class PrimaryCtorDecl <: Decl {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop funcParams: ArrayList<FuncParam>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop block: Block
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isConst(): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class VarDecl <: Decl {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop pattern: Pattern
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop colon: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop declType: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop assign: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop expr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isConst(): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public open class FuncParam <: Decl {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop not: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop colon: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop paramType: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop assign: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop expr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isMemberParam(): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public open func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public open func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class PropDecl <: Decl {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop colon: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop declType: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lBrace: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop getter: FuncDecl
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop setter: FuncDecl
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rBrace: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class TypeAliasDecl <: Decl {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop assign: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop aliasType: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class MacroExpandDecl <: Decl {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop fullIdentifier: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lSquare: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop macroAttrs: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rSquare: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop macroInputs: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop macroInputDecl: Decl
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class MacroExpandParam <: FuncParam {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop fullIdentifier: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lSquare: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop macroAttrs: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rSquare: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop macroInputs: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop macroInputDecl: Decl
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

/**
* Level of diag report
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public enum DiagReportLevel {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    ERROR |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    WARNING
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func level(): Int32
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func diagReport(level: DiagReportLevel, tokens: Tokens, message: String, hint: String): Unit

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ASTException <: Exception {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ParseASTException <: Exception {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public open class Expr <: Node {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public open func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public open func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class Block <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lBrace: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop nodes: ArrayList<Node>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rBrace: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class BinaryExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop leftExpr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop op: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rightExpr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class UnaryExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop op: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop expr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class IsExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop expr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop shiftType: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class AsExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop expr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop shiftType: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ParenExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop parenthesizedExpr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class LitConstExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop literal: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class RefExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop identifier: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lAngle: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop typeArguments: ArrayList<TypeNode>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop commas: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rAngle: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ReturnExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop expr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ThrowExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop expr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class AssignExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop assign: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop leftExpr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rightExpr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class CallExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop callFunc: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop arguments: ArrayList<Argument>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class MemberAccess <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop baseExpr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop dot: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop field: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lAngle: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop typeArguments: ArrayList<TypeNode>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop commas: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rAngle: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class IfExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keywordI: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop condition: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop ifBlock: Block
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keywordE: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop elseExpr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class LetPatternExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop pattern: Pattern
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop backArrow: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop expr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class MatchExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop selector: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lBrace: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop matchCases: ArrayList<MatchCase>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rBrace: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class WhileExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop condition: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop block: Block
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class DoWhileExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keywordD: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop block: Block
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keywordW: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop condition: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class LambdaExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lBrace: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop funcParams: ArrayList<FuncParam>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop doubleArrow: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop nodes: ArrayList<Node>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rBrace: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class SpawnExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop threadContext: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lambdaExpr: LambdaExpr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class SynchronizedExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop structuredMutex: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop block: Block
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class TrailingClosureExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop expr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lambdaExpr: LambdaExpr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class TypeConvExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop targetType: PrimitiveType
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop expr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ForInExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keywordF: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop pattern: Pattern
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keywordI: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop expr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keywordW: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop patternGuard: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop block: Block
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class PrimitiveTypeExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(kind: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ArrayLiteral <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lSquare: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop elements: ArrayList<Expr>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rSquare: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class TupleLiteral <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop elements: ArrayList<Expr>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class RangeExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop start: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop op: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop end: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop colon: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop step: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class SubscriptExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop baseExpr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lSquare: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop indexList: ArrayList<Expr>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rSquare: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class JumpExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(kind: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class IncOrDecExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop op: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop expr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class TryExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keywordT: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop resourceSpec: ArrayList<VarDecl>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop tryBlock: Block
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keywordsC: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop catchPatterns: ArrayList<Pattern>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop catchBlocks: ArrayList<Block>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keywordF: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop finallyBlock: Block
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class OptionalExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    // we construct a MemberAccess to help parse OptionalExpr because compiler can't parse OptionalExpr directly.
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop baseExpr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop quest: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class QuoteToken <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop tokens: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class QuoteExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop exprs: ArrayList<Expr>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class WildcardExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(keyword: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class VArrayExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop vArrayType: VArrayType
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop arguments: ArrayList<Argument>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class MacroExpandExpr <: Expr {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop at: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop identifier: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lSquare: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop macroAttrs: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rSquare: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop macroInputs: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

/**
* @return cangjie tokens.
* @throws IllegalMemoryException if failed to call cangjieLex(code, true).
* @throws IllegalArgumentException if failed to call cangjieLex(code, true).
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func cangjieLex(code: String): Tokens

/**
* XXX: need further consideration.
* @return cangjie tokens.
* @throws IllegalMemoryException if malloc failed.
* @throws IllegalArgumentException if the call of CJ_AST_Lex returns an invalid token array.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func cangjieLex(code: String, truncated: Bool): Tokens

/**
* This part is the Macro with context related API:
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class MacroContextException <: Exception {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

/**
* For situations an inner macro call finds itself nested inside a particular outer macro call.
*
* @param parentMacroName - a particular outer macro call name.
*
* @return Unit.
*
* Throw an error unless the inner macro call is nested in the given outer macro call.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func assertParentContext(parentMacroName: String): Unit

/**
* For situations an inner macro call finds itself nested inside a particular outer macro call.
*
* @param parentMacroName - a particular outer macro call name.
*
* @return Bool. Returns true only if the inner macro call is nested in the given outer macro call.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func insideParentContext(parentMacroName: String): Bool

/**
* For situations an inner macro can sending key/value pairs to the outer macro by setItem.
*
* @param key - the key send to outer macro for index.
*
* @param value - the value that send to outer macro.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func setItem(key: String, value: String): Unit

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func setItem(key: String, value: Int64): Unit

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func setItem(key: String, value: Bool): Unit

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func setItem(key: String, value: Tokens): Unit

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class MacroMessage {
    /*
    * Check the given 'key' wheather have an item
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func hasItem(key: String): Bool
    
    /**
    * Get info of key, and return a string value
    * @param key - the key send to outer macro for index.
    * @return String - return a string value.
    * throw an exception if there is no such key/value pairs.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getString(key: String): String
    
    /**
    * Get info of key, and return the Int64 value
    * @param key - the key send to outer macro for index.
    * @return Int64 - return the Int64 value.
    * throw an exception if there is no such key/value pairs.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getInt64(key: String): Int64
    
    /**
    * Get info of key, and return the Bool value
    * @param key - the key send to outer macro for index.
    * @return Bool - return the Bool value.
    * throw an exception if there is no such key/value pairs.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getBool(key: String): Bool
    
    /**
    * Get info of key, and return the Tokens value
    * @param key - the key send to outer macro for index.
    * @return Tokens - return the Tokens value.
    * throw an exception if there is no such key/value pairs.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getTokens(key: String): Tokens
}

/**
* Getting one message (a map of key/value pairs) for each inner macro invocation that sent messages.
* @param innerMacroName - the inner macro name that has send to the current outer macro.
* @return String - return the arraylist of hashmap info.
* If there are no such messages, this is not an error, it's just an empty list.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func getChildMessages(children: String): ArrayList<MacroMessage>

abstract sealed class Node <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop beginPos: Position
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop endPos: Position
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func dump(): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class Annotation <: Node {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop at: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop identifier: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop arguments: ArrayList<Argument>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop attributes: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop condition: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class Modifier <: Node {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(keyword: Token)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class GenericParam <: Node {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(parameters: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lAngle: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop parameters: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rAngle: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

/*
* GenericConstraint is:
*   where T <: A, K <: B
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class GenericConstraint <: Node {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop typeArgument: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop upperBound: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop upperBounds: ArrayList<TypeNode>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop bitAnds: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

/*
* Body is:
*   {...}
* For mutable types, like ClassDecl, StructDecl, InterfaceDecl
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class Body <: Node {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(decls: ArrayList<Decl>)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lBrace: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop decls: ArrayList<Decl>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rBrace: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

/*
* Argument is actual parameter Node:
*   foo(arg1:value1)
*   "arg1:value1" is an Argument type
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class Argument <: Node {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop identifier: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop colon: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop expr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

/*
* MatchCase is the children node of Match Expression:
*   var scoreResult: String = match (score) {
*       case 0 => "zero" // This is a MatchCase Node
*       case 10 | 20 | 30 | 40 | 50 => "fail" // This is a MatchCase Node
*       case _ => "not a valid score"
*   }
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class MatchCase <: Node {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keywordC: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop expr: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop patterns: ArrayList<Pattern>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop bitOrs: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keywordW: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop patternGuard: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop arrow: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop block: Block
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

/**
* Program is the Cangjie source File node.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class Program <: Node {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop packageHeader: PackageHeader
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop importLists: ArrayList<ImportList>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop decls: ArrayList<Decl>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

/**
* PackageHeader node represents the package of the current file.
* The PackageHeader starts with the keyword package, followed by the package name.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class PackageHeader <: Node {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop accessible: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keywordM: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keywordP: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop prefixPaths: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop prefixDots: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop packageIdentifier: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public enum ImportKind <: ToString {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    Single |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    Alias |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    All |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    Multi
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ImportContent <: Node {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop importKind: ImportKind
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop prefixPaths: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop prefixDots: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop identifier: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop importAlias: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lBrace: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop items: ArrayList<ImportContent>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop commas: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rBrace: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isImportAlias(): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isImportAll(): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isImportMulti(): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isImportSingle(): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ImportList <: Node {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop modifier: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keywordI: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop content: ImportContent
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isImportMulti(): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

/**
* Constructor node represents the values related to enum.
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
* enum TimeUnit1 {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
*   Year | Month | Day | Hour(Float32) // Constructor node
* }
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class Constructor <: Node {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop annotations: ArrayList<Annotation>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop identifier: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop typeArguments: ArrayList<TypeNode>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

extend<T> ArrayList<T> <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

extend<T> Array<T> <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func parseDecl(input: Tokens, astKind!: String = ""): Decl

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func parseDeclFragment(input: Tokens, startFrom!: Int64 = 0): (Decl, Int64)

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func parseExpr(input: Tokens): Expr

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func parseExprFragment(input: Tokens, startFrom!: Int64 = 0): (Expr, Int64)

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func parseProgram(input: Tokens): Program

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func parsePattern(input: Tokens): Pattern

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func parsePatternFragment(input: Tokens, startFrom!: Int64 = 0): (Pattern, Int64)

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func parseType(input: Tokens): TypeNode

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func parseTypeFragment(input: Tokens, startFrom!: Int64 = 0): (TypeNode, Int64)

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public open class Pattern <: Node {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public open func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public open func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ConstPattern <: Pattern {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop litConstExpr: LitConstExpr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class WildcardPattern <: Pattern {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(keyword: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop wildcard: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class VarPattern <: Pattern {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(identifier: Token)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop identifier: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class VarOrEnumPattern <: Pattern {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(identifier: Token)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop identifier: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ExceptTypePattern <: Pattern {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop pattern: Pattern
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop colon: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop types: ArrayList<TypeNode>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class TypePattern <: Pattern {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop pattern: Pattern
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop colon: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop patternType: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class EnumPattern <: Pattern {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop constructor: Expr
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop patterns: ArrayList<Pattern>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop commas: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class TuplePattern <: Pattern {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop patterns: ArrayList<Pattern>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop commas: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public struct Position <: ToBytes {
    /* Fields */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public let fileID: UInt32
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public let line: Int32
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public let column: Int32
    
    /* Constructors *//** Create an empty position. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    /** Create a new position which is formed by fileID, line, column. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(fileID: UInt32, line: Int32, column: Int32)
    
    /* Methods *//** Returns true if and only if this position line and column equal to 0. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isEmpty(): Bool
    
    /** Returns true if and only if the two positions are identical. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(r: Position): Bool
    
    /** Returns true if and only if the two positions are not identical. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(r: Position): Bool
    
    /** Print the information of this position. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func dump(): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toBytes(): Array<UInt8>
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public interface ToBytes {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    func toBytes(): Array<UInt8>
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public struct Token <: ToBytes {
    /**
    Fields
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public let kind: TokenKind
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public let value: String
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public let pos: Position
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public var delimiterNum: UInt16 = 1
    
    /**
    Constructors
    */// Create an token with default value.
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    // Create a new token without value, position from enumerated type token.
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(kind: TokenKind)
    
    // Create a new token with empty position from token kind and token value.
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(kind: TokenKind, value: String)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func addPosition(fileID: UInt32, line: Int32, colum: Int32): Token
    
    // Returns true if and only if the two token's kind id, value, position are identical.// XXX: Bound check.
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(r: Token): Bool
    
    // Returns true if and only if the two token's kind id, value, position are not identical.
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(r: Token): Bool
    
    // Token + Tokens => Tokens
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func +(r: Tokens): Tokens
    
    // Token + Token => Tokens
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func +(r: Token): Tokens
    
    // Print the information of this token.
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func dump(): Unit
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toBytes(): Array<UInt8>
}

/**
* Note: If Tokens.inc is changed, TokenKind and PATTERNS should change accordingly.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public enum TokenKind <: ToString {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    DOT |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "."           */
    COMMA |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  ","           */
    LPAREN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "("           */
    RPAREN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  ")"           */
    LSQUARE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "["           */
    RSQUARE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "]"           */
    LCURL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "{"           */
    RCURL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "}"           */
    EXP |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "**"          */
    MUL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "*"           */
    MOD |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "%"           */
    DIV |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "/"           */
    ADD |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "+"           */
    SUB |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "-"           */
    INCR |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "++"          */
    DECR |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "--"          */
    AND |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "&&"          */
    OR |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "||"          */
    COALESCING |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "??"          */
    PIPELINE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "|>"          */
    COMPOSITION |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "~>"          */
    NOT |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "!"           */
    BITAND |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "&"           */
    BITOR |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "|"           */
    BITXOR |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "^"           */
    BITNOT |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "~"           */
    LSHIFT |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "<<"          */
    RSHIFT |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  ">>"          */
    COLON |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  ":"           */
    SEMI |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  ";"           */
    ASSIGN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "="           */
    ADD_ASSIGN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "+="          */
    SUB_ASSIGN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "-="          */
    MUL_ASSIGN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "*="          */
    EXP_ASSIGN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "**="         */
    DIV_ASSIGN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "/="          */
    MOD_ASSIGN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "%="          */
    AND_ASSIGN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "&&="         */
    OR_ASSIGN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "||="         */
    BITAND_ASSIGN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "&="          */
    BITOR_ASSIGN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "|="          */
    BITXOR_ASSIGN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "^="          */
    LSHIFT_ASSIGN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "<<="         */
    RSHIFT_ASSIGN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  ">>="         */
    ARROW |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "->"          */
    BACKARROW |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "<-"          */
    DOUBLE_ARROW |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "=>"          */
    RANGEOP |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  ".."          */
    CLOSEDRANGEOP |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "..="         */
    ELLIPSIS |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "..."         */
    HASH |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "#"           */
    AT |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "@"           */
    QUEST |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "?"           */
    LT |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "<"           */
    GT |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  ">"           */
    LE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "<="          */
    GE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  ">="          */
    IS |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "is"          */
    AS |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "as"          */
    NOTEQ |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "!="          */
    EQUAL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "=="          */
    WILDCARD |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "_"           */
    INT8 |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "Int8"        */
    INT16 |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "Int16"       */
    INT32 |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "Int32"       */
    INT64 |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "Int64"       */
    INTNATIVE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "IntNative"   */
    UINT8 |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "UInt8"       */
    UINT16 |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "UInt16"      */
    UINT32 |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "UInt32"      */
    UINT64 |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "UInt64"      */
    UINTNATIVE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "UIntNative"  */
    FLOAT16 |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "Float16"     */
    FLOAT32 |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "Float32"     */
    FLOAT64 |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "Float64"     */
    RUNE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "Rune"        */
    BOOLEAN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "Bool"        */
    NOTHING |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "Nothing"     */
    UNIT |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "Unit"        */
    STRUCT |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "struct"      */
    ENUM |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "enum"        */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    VARRAY |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "VArray"      */
    THISTYPE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "This"        */
    PACKAGE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "package"     */
    IMPORT |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "import"      */
    CLASS |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "class"       */
    INTERFACE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "interface"   */
    FUNC |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "func"        */
    MACRO |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "macro"       */
    QUOTE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "quote"       */
    DOLLAR |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "$"           */
    LET |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "let"         */
    VAR |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "var"         */
    CONST |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "const"       */
    TYPE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "type"        */
    INIT |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "init"        */
    THIS |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "this"        */
    SUPER |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "super"       */
    IF |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "if"          */
    ELSE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "else"        */
    CASE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "case"        */
    TRY |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "try"         */
    CATCH |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "catch"       */
    FINALLY |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "finally"     */
    FOR |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "for"         */
    DO |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "do"          */
    WHILE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "while"       */
    THROW |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "throw"       */
    RETURN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "return"      */
    CONTINUE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "continue"    */
    BREAK |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "break"       */
    IN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "in"          */
    NOT_IN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "!in"         */
    MATCH |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "match"       */
    WHERE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "where"       */
    EXTEND |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "extend"      */
    WITH |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "with"        */
    PROP |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "prop"        */
    STATIC |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "static"      */
    PUBLIC |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "public"      */
    PRIVATE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "private"     */
    INTERNAL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "internal"     */
    PROTECTED |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "protected"   */
    OVERRIDE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "override"    */
    REDEF |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "redef"       */
    ABSTRACT |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "abstract"    */
    SEALED |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "sealed"      */
    OPEN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "open"        */
    FOREIGN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "foreign"     */
    INOUT |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "inout"       */
    MUT |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "mut"         */
    UNSAFE |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "unsafe"      */
    OPERATOR |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "operator"    */
    SPAWN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "spawn"       */
    SYNCHRONIZED |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "synchronized */
    UPPERBOUND |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "<:"          */
    MAIN |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "main"        */
    IDENTIFIER |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "x"           */
    PACKAGE_IDENTIFIER |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "x-y"         */
    INTEGER_LITERAL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  e.g. "1"      */
    RUNE_BYTE_LITERAL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  e.g. "b'x'"   */
    FLOAT_LITERAL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  e.g. "'1.0'"  */
    COMMENT |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  e.g. "/*xx*/" */
    NL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  newline         */
    END |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  end of file     */
    SENTINEL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  ";"             */
    RUNE_LITERAL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  e.g. "r'x'"      */
    STRING_LITERAL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  e.g. ""xx""     */
    SINGLE_QUOTED_STRING_LITERAL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  e.g. "'xx'"     */
    JSTRING_LITERAL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  e.g. "J"xx""     */
    MULTILINE_STRING |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  e.g. """"aaa""""   */
    MULTILINE_RAW_STRING |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  e.g. "#"aaa"#"     */
    BOOL_LITERAL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "true" or "false"  */
    UNIT_LITERAL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "()"               */
    DOLLAR_IDENTIFIER |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  e.g. "$x"          */
    ANNOTATION |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  e.g. "@When"       */
    AT_EXCL |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    /*  "@!"               */
    ILLEGAL |
    ...
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(right: TokenKind): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(right: TokenKind): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

/**
* Conversion function for UInt16 to Enum
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func getTokenKind(no: UInt16): TokenKind

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class TokensIterator <: Iterator<Token> {
    /* Constructors */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(tokens: Tokens)
    
    /* Methods *//** Returns the current Option<Token>. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func peek(): Option<Token>
    
    /** Returns true if current token is the kind, otherwise false. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func seeing(kind: TokenKind): Bool
    
    /** Returns next Option<Token>. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func next(): Option<Token>
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public open class Tokens <: ToString & Iterable<Token> & ToBytes {
    /* Constructors *//** Create an empty tokens. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    /** Create a new tokens from token array. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(tokArray: Array<Token>)
    
    /** Create a new tokens from token array. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(tokArrayList: ArrayList<Token>)
    
    /* Methods *//** Returns the size of tokens. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public open prop size: Int64
    
    /** Returns the token from the index, if the index is out of bound or its element is null then throws IndexOutOfBoundsException. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public open func get(index: Int64): Token
    
    /** Returns an iterator over the tokens. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func iterator(): TokensIterator
    
    /** Returns the concatenation of this Tokens and the argument. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func concat(tokens: Tokens): Tokens
    
    /* Operator functions *//** Returns the token at the specified index. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func [](index: Int64): Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public open operator func [](range: Range<Int64>): Tokens
    
    /** Returns a tokens which is the result of concatenating `ts1` and `ts2`. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func +(r: Tokens): Tokens
    
    /** Returns a tokens which is the result of concatenating `ts1` and `t2`. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func +(r: Token): Tokens
    
    /** Returns current tokens which is the result of concatenating this and `tks`. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public open func append(tokens: Tokens): Tokens
    
    /** Returns current tokens which is the result of concatenating this and `tk`. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public open func append(token: Token): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func append(node: Node): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func remove(index: Int64): Tokens
    
    /** Print the information of this tokens. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func dump(): Unit
    
    /** Convert Tokens to String. */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toBytes(): Array<UInt8>
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public interface ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    func toTokens(): Tokens
}

/**
Basical ToTokens method. List of supporting type in the following.
+ Token, Tokens
+ Int64, Int32, Int16, Int8
+ UInt64, UInt32, UInt16, UInt8
+ Float64, Float32, Float16
+ Bool, Rune, String
*/
extend Token <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

extend Tokens <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

extend Int64 <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

extend Int32 <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

extend Int16 <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

extend Int8 <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

extend UInt64 <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

extend UInt32 <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

extend UInt16 <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

extend UInt8 <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

extend Float64 <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

extend Float32 <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

extend Float16 <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

extend Bool <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

extend Rune <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

extend String <: ToTokens {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public open class TypeNode <: Node {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop typeParameterName: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop colon: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public open func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public open func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class PrimitiveType <: TypeNode {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class RefType <: TypeNode {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop identifier: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lAngle: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop typeArguments: ArrayList<TypeNode>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop commas: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rAngle: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class QualifiedType <: TypeNode {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop baseType: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop dot: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop identifier: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lAngle: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop typeArguments: ArrayList<TypeNode>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop commas: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rAngle: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ParenType <: TypeNode {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop parenthesizedType: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class TupleType <: TypeNode {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop types: ArrayList<TypeNode>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ThisType <: TypeNode {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class PrefixType <: TypeNode {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop prefixOps: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop baseType: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class FuncType <: TypeNode {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop types: ArrayList<TypeNode>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop commas: Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rParen: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop arrow: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop returnType: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class VArrayType <: TypeNode {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(inputs: Tokens)
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop keyword: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop lAngle: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop elementTy: TypeNode
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop dollar: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop size: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public mut prop rAngle: Token
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTokens(): Tokens
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public abstract class Visitor {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func breakTraverse(): Unit
}

