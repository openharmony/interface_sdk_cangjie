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
@!APILevel[since: "22"]
public func compareTokens(tokens1: Tokens, tokens2: Tokens): Bool


@!APILevel[since: "22"]
public open class Decl <: Node {
    @!APILevel[since: "22"]
    public mut open prop identifier: Token
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public mut prop annotations: ArrayList<Annotation>
    
    @!APILevel[since: "22"]
    public mut prop modifiers: ArrayList<Modifier>
    
    @!APILevel[since: "22"]
    public mut prop genericParam: GenericParam
    
    @!APILevel[since: "22"]
    public mut prop genericConstraint: ArrayList<GenericConstraint>
    
    @!APILevel[since: "22"]
    public mut prop constraintCommas: Tokens
    
    @!APILevel[since: "22"]
    public func hasAttr(attr: String): Bool
    
    @!APILevel[since: "22"]
    public func getAttrs(): Tokens
    
    @!APILevel[since: "22"]
    public mut prop isGenericDecl: Bool
    
    @!APILevel[since: "22"]
    public open func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public open func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class ClassDecl <: Decl {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop upperBound: Token
    
    @!APILevel[since: "22"]
    public mut prop superTypes: ArrayList<TypeNode>
    
    @!APILevel[since: "22"]
    public mut prop superTypeBitAnds: Tokens
    
    @!APILevel[since: "22"]
    public mut prop body: Body
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class StructDecl <: Decl {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop upperBound: Token
    
    @!APILevel[since: "22"]
    public mut prop superTypes: ArrayList<TypeNode>
    
    @!APILevel[since: "22"]
    public mut prop superTypeBitAnds: Tokens
    
    @!APILevel[since: "22"]
    public mut prop body: Body
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class InterfaceDecl <: Decl {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop upperBound: Token
    
    @!APILevel[since: "22"]
    public mut prop superTypes: ArrayList<TypeNode>
    
    @!APILevel[since: "22"]
    public mut prop superTypeBitAnds: Tokens
    
    @!APILevel[since: "22"]
    public mut prop body: Body
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class EnumDecl <: Decl {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop upperBound: Token
    
    @!APILevel[since: "22"]
    public mut prop superTypes: ArrayList<TypeNode>
    
    @!APILevel[since: "22"]
    public mut prop superTypeBitAnds: Tokens
    
    @!APILevel[since: "22"]
    public mut prop lBrace: Token
    
    @!APILevel[since: "22"]
    public mut prop constructors: ArrayList<Constructor>
    
    @!APILevel[since: "22"]
    public mut prop decls: ArrayList<Decl>
    
    @!APILevel[since: "22"]
    public mut prop rBrace: Token
    
    @!APILevel[since: "22"]
    public mut prop ellipsis: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class ExtendDecl <: Decl {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut override prop identifier: Token
    
    @!APILevel[since: "22"]
    public mut prop extendType: TypeNode
    
    @!APILevel[since: "22"]
    public mut prop upperBound: Token
    
    @!APILevel[since: "22"]
    public mut prop superTypes: ArrayList<TypeNode>
    
    @!APILevel[since: "22"]
    public mut prop superTypeBitAnds: Tokens
    
    @!APILevel[since: "22"]
    public mut prop body: Body
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class FuncDecl <: Decl {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop overloadOp: Tokens
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop funcParams: ArrayList<FuncParam>
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public mut prop colon: Token
    
    @!APILevel[since: "22"]
    public mut prop declType: TypeNode
    
    @!APILevel[since: "22"]
    public mut prop block: Block
    
    @!APILevel[since: "22"]
    public func isConst(): Bool
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class MainDecl <: Decl {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop funcParams: ArrayList<FuncParam>
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public mut prop colon: Token
    
    @!APILevel[since: "22"]
    public mut prop declType: TypeNode
    
    @!APILevel[since: "22"]
    public mut prop block: Block
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class MacroDecl <: Decl {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop funcParams: ArrayList<FuncParam>
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public mut prop colon: Token
    
    @!APILevel[since: "22"]
    public mut prop declType: TypeNode
    
    @!APILevel[since: "22"]
    public mut prop block: Block
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class PrimaryCtorDecl <: Decl {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop funcParams: ArrayList<FuncParam>
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public mut prop block: Block
    
    @!APILevel[since: "22"]
    public func isConst(): Bool
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class VarDecl <: Decl {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop pattern: Pattern
    
    @!APILevel[since: "22"]
    public mut prop colon: Token
    
    @!APILevel[since: "22"]
    public mut prop declType: TypeNode
    
    @!APILevel[since: "22"]
    public mut prop assign: Token
    
    @!APILevel[since: "22"]
    public mut prop expr: Expr
    
    @!APILevel[since: "22"]
    public func isConst(): Bool
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public open class FuncParam <: Decl {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop not: Token
    
    @!APILevel[since: "22"]
    public mut prop colon: Token
    
    @!APILevel[since: "22"]
    public mut prop paramType: TypeNode
    
    @!APILevel[since: "22"]
    public mut prop assign: Token
    
    @!APILevel[since: "22"]
    public mut prop expr: Expr
    
    @!APILevel[since: "22"]
    public func isMemberParam(): Bool
    
    @!APILevel[since: "22"]
    public open func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public open func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class PropDecl <: Decl {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop colon: Token
    
    @!APILevel[since: "22"]
    public mut prop declType: TypeNode
    
    @!APILevel[since: "22"]
    public mut prop lBrace: Token
    
    @!APILevel[since: "22"]
    public mut prop getter: FuncDecl
    
    @!APILevel[since: "22"]
    public mut prop setter: FuncDecl
    
    @!APILevel[since: "22"]
    public mut prop rBrace: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class TypeAliasDecl <: Decl {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop assign: Token
    
    @!APILevel[since: "22"]
    public mut prop aliasType: TypeNode
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class MacroExpandDecl <: Decl {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop fullIdentifier: Token
    
    @!APILevel[since: "22"]
    public mut prop lSquare: Token
    
    @!APILevel[since: "22"]
    public mut prop macroAttrs: Tokens
    
    @!APILevel[since: "22"]
    public mut prop rSquare: Token
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop macroInputs: Tokens
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public mut prop macroInputDecl: Decl
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class MacroExpandParam <: FuncParam {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop fullIdentifier: Token
    
    @!APILevel[since: "22"]
    public mut prop lSquare: Token
    
    @!APILevel[since: "22"]
    public mut prop macroAttrs: Tokens
    
    @!APILevel[since: "22"]
    public mut prop rSquare: Token
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop macroInputs: Tokens
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public mut prop macroInputDecl: Decl
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

/**
* Level of diag report
*/
@!APILevel[since: "22"]
public enum DiagReportLevel {
    @!APILevel[since: "22"]
    ERROR |
    @!APILevel[since: "22"]
    WARNING
    @!APILevel[since: "22"]
    public func level(): Int32
}

@!APILevel[since: "22"]
public func diagReport(level: DiagReportLevel, tokens: Tokens, message: String, hint: String): Unit

@!APILevel[since: "22"]
public class ASTException <: Exception {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public init(message: String)
}

@!APILevel[since: "22"]
public class ParseASTException <: Exception {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public init(message: String)
}

@!APILevel[since: "22"]
public open class Expr <: Node {
    @!APILevel[since: "22"]
    public open func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public open func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class Block <: Expr {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop lBrace: Token
    
    @!APILevel[since: "22"]
    public mut prop nodes: ArrayList<Node>
    
    @!APILevel[since: "22"]
    public mut prop rBrace: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class BinaryExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop leftExpr: Expr
    
    @!APILevel[since: "22"]
    public mut prop op: Token
    
    @!APILevel[since: "22"]
    public mut prop rightExpr: Expr
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class UnaryExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop op: Token
    
    @!APILevel[since: "22"]
    public mut prop expr: Expr
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class IsExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop expr: Expr
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public mut prop shiftType: TypeNode
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class AsExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop expr: Expr
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public mut prop shiftType: TypeNode
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class ParenExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop parenthesizedExpr: Expr
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class LitConstExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop literal: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class RefExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop identifier: Token
    
    @!APILevel[since: "22"]
    public mut prop lAngle: Token
    
    @!APILevel[since: "22"]
    public mut prop typeArguments: ArrayList<TypeNode>
    
    @!APILevel[since: "22"]
    public mut prop commas: Tokens
    
    @!APILevel[since: "22"]
    public mut prop rAngle: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class ReturnExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public mut prop expr: Expr
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class ThrowExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public mut prop expr: Expr
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class AssignExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop assign: Token
    
    @!APILevel[since: "22"]
    public mut prop leftExpr: Expr
    
    @!APILevel[since: "22"]
    public mut prop rightExpr: Expr
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class CallExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop callFunc: Expr
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop arguments: ArrayList<Argument>
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class MemberAccess <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop baseExpr: Expr
    
    @!APILevel[since: "22"]
    public mut prop dot: Token
    
    @!APILevel[since: "22"]
    public mut prop field: Token
    
    @!APILevel[since: "22"]
    public mut prop lAngle: Token
    
    @!APILevel[since: "22"]
    public mut prop typeArguments: ArrayList<TypeNode>
    
    @!APILevel[since: "22"]
    public mut prop commas: Tokens
    
    @!APILevel[since: "22"]
    public mut prop rAngle: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class IfExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keywordI: Token
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop condition: Expr
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public mut prop ifBlock: Block
    
    @!APILevel[since: "22"]
    public mut prop keywordE: Token
    
    @!APILevel[since: "22"]
    public mut prop elseExpr: Expr
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class LetPatternExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public mut prop pattern: Pattern
    
    @!APILevel[since: "22"]
    public mut prop backArrow: Token
    
    @!APILevel[since: "22"]
    public mut prop expr: Expr
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class MatchExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop selector: Expr
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public mut prop lBrace: Token
    
    @!APILevel[since: "22"]
    public mut prop matchCases: ArrayList<MatchCase>
    
    @!APILevel[since: "22"]
    public mut prop rBrace: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class WhileExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop condition: Expr
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public mut prop block: Block
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class DoWhileExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keywordD: Token
    
    @!APILevel[since: "22"]
    public mut prop block: Block
    
    @!APILevel[since: "22"]
    public mut prop keywordW: Token
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop condition: Expr
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class LambdaExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop lBrace: Token
    
    @!APILevel[since: "22"]
    public mut prop funcParams: ArrayList<FuncParam>
    
    @!APILevel[since: "22"]
    public mut prop doubleArrow: Token
    
    @!APILevel[since: "22"]
    public mut prop nodes: ArrayList<Node>
    
    @!APILevel[since: "22"]
    public mut prop rBrace: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class SpawnExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop threadContext: Expr
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public mut prop lambdaExpr: LambdaExpr
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class SynchronizedExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop structuredMutex: Expr
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public mut prop block: Block
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class TrailingClosureExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop expr: Expr
    
    @!APILevel[since: "22"]
    public mut prop lambdaExpr: LambdaExpr
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class TypeConvExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop targetType: PrimitiveType
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop expr: Expr
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class ForInExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keywordF: Token
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop pattern: Pattern
    
    @!APILevel[since: "22"]
    public mut prop keywordI: Token
    
    @!APILevel[since: "22"]
    public mut prop expr: Expr
    
    @!APILevel[since: "22"]
    public mut prop keywordW: Token
    
    @!APILevel[since: "22"]
    public mut prop patternGuard: Expr
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public mut prop block: Block
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class PrimitiveTypeExpr <: Expr {
    @!APILevel[since: "22"]
    public init(kind: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class ArrayLiteral <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop lSquare: Token
    
    @!APILevel[since: "22"]
    public mut prop elements: ArrayList<Expr>
    
    @!APILevel[since: "22"]
    public mut prop rSquare: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class TupleLiteral <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop elements: ArrayList<Expr>
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class RangeExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop start: Expr
    
    @!APILevel[since: "22"]
    public mut prop op: Token
    
    @!APILevel[since: "22"]
    public mut prop end: Expr
    
    @!APILevel[since: "22"]
    public mut prop colon: Token
    
    @!APILevel[since: "22"]
    public mut prop step: Expr
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class SubscriptExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop baseExpr: Expr
    
    @!APILevel[since: "22"]
    public mut prop lSquare: Token
    
    @!APILevel[since: "22"]
    public mut prop indexList: ArrayList<Expr>
    
    @!APILevel[since: "22"]
    public mut prop rSquare: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class JumpExpr <: Expr {
    @!APILevel[since: "22"]
    public init(kind: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class IncOrDecExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop op: Token
    
    @!APILevel[since: "22"]
    public mut prop expr: Expr
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class TryExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keywordT: Token
    
    @!APILevel[since: "22"]
    public mut prop resourceSpec: ArrayList<VarDecl>
    
    @!APILevel[since: "22"]
    public mut prop tryBlock: Block
    
    @!APILevel[since: "22"]
    public mut prop keywordsC: Tokens
    
    @!APILevel[since: "22"]
    public mut prop catchPatterns: ArrayList<Pattern>
    
    @!APILevel[since: "22"]
    public mut prop catchBlocks: ArrayList<Block>
    
    @!APILevel[since: "22"]
    public mut prop keywordF: Token
    
    @!APILevel[since: "22"]
    public mut prop finallyBlock: Block
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class OptionalExpr <: Expr {
    @!APILevel[since: "22"]
    public init()
    
    // we construct a MemberAccess to help parse OptionalExpr because compiler can't parse OptionalExpr directly.
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public mut prop baseExpr: Expr
    
    @!APILevel[since: "22"]
    public mut prop quest: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class QuoteToken <: Expr {
    @!APILevel[since: "22"]
    public mut prop tokens: Tokens
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class QuoteExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop exprs: ArrayList<Expr>
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class WildcardExpr <: Expr {
    @!APILevel[since: "22"]
    public init(keyword: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class VArrayExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop vArrayType: VArrayType
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop arguments: ArrayList<Argument>
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class MacroExpandExpr <: Expr {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop at: Token
    
    @!APILevel[since: "22"]
    public mut prop identifier: Token
    
    @!APILevel[since: "22"]
    public mut prop lSquare: Token
    
    @!APILevel[since: "22"]
    public mut prop macroAttrs: Tokens
    
    @!APILevel[since: "22"]
    public mut prop rSquare: Token
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop macroInputs: Tokens
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

/**
* @return cangjie tokens.
* @throws IllegalMemoryException if failed to call cangjieLex(code, true).
* @throws IllegalArgumentException if failed to call cangjieLex(code, true).
*/
@!APILevel[since: "22"]
public func cangjieLex(code: String): Tokens

/**
* XXX: need further consideration.
* @return cangjie tokens.
* @throws IllegalMemoryException if malloc failed.
* @throws IllegalArgumentException if the call of CJ_AST_Lex returns an invalid token array.
*/
@!APILevel[since: "22"]
public func cangjieLex(code: String, truncated: Bool): Tokens

/**
* This part is the Macro with context related API:
*/
@!APILevel[since: "22"]
public class MacroContextException <: Exception {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
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
@!APILevel[since: "22"]
public func assertParentContext(parentMacroName: String): Unit

/**
* For situations an inner macro call finds itself nested inside a particular outer macro call.
*
* @param parentMacroName - a particular outer macro call name.
*
* @return Bool. Returns true only if the inner macro call is nested in the given outer macro call.
*/
@!APILevel[since: "22"]
public func insideParentContext(parentMacroName: String): Bool

/**
* For situations an inner macro can sending key/value pairs to the outer macro by setItem.
*
* @param key - the key send to outer macro for index.
*
* @param value - the value that send to outer macro.
*/
@!APILevel[since: "22"]
public func setItem(key: String, value: String): Unit

@!APILevel[since: "22"]
public func setItem(key: String, value: Int64): Unit

@!APILevel[since: "22"]
public func setItem(key: String, value: Bool): Unit

@!APILevel[since: "22"]
public func setItem(key: String, value: Tokens): Unit

@!APILevel[since: "22"]
public class MacroMessage {
    /*
    * Check the given 'key' wheather have an item
    */
    @!APILevel[since: "22"]
    public func hasItem(key: String): Bool
    
    /**
    * Get info of key, and return a string value
    * @param key - the key send to outer macro for index.
    * @return String - return a string value.
    * throw an exception if there is no such key/value pairs.
    */
    @!APILevel[since: "22"]
    public func getString(key: String): String
    
    /**
    * Get info of key, and return the Int64 value
    * @param key - the key send to outer macro for index.
    * @return Int64 - return the Int64 value.
    * throw an exception if there is no such key/value pairs.
    */
    @!APILevel[since: "22"]
    public func getInt64(key: String): Int64
    
    /**
    * Get info of key, and return the Bool value
    * @param key - the key send to outer macro for index.
    * @return Bool - return the Bool value.
    * throw an exception if there is no such key/value pairs.
    */
    @!APILevel[since: "22"]
    public func getBool(key: String): Bool
    
    /**
    * Get info of key, and return the Tokens value
    * @param key - the key send to outer macro for index.
    * @return Tokens - return the Tokens value.
    * throw an exception if there is no such key/value pairs.
    */
    @!APILevel[since: "22"]
    public func getTokens(key: String): Tokens
}

/**
* Getting one message (a map of key/value pairs) for each inner macro invocation that sent messages.
* @param innerMacroName - the inner macro name that has send to the current outer macro.
* @return String - return the arraylist of hashmap info.
* If there are no such messages, this is not an error, it's just an empty list.
*/
@!APILevel[since: "22"]
public func getChildMessages(children: String): ArrayList<MacroMessage>

abstract sealed class Node <: ToTokens {
    @!APILevel[since: "22"]
    public mut prop beginPos: Position
    
    @!APILevel[since: "22"]
    public mut prop endPos: Position
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
    
    @!APILevel[since: "22"]
    public func dump(): Unit
}

@!APILevel[since: "22"]
public class Annotation <: Node {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop at: Token
    
    @!APILevel[since: "22"]
    public mut prop identifier: Token
    
    @!APILevel[since: "22"]
    public mut prop arguments: ArrayList<Argument>
    
    @!APILevel[since: "22"]
    public mut prop attributes: Tokens
    
    @!APILevel[since: "22"]
    public mut prop condition: Expr
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class Modifier <: Node {
    @!APILevel[since: "22"]
    public init(keyword: Token)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class GenericParam <: Node {
    @!APILevel[since: "22"]
    public init(parameters: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop lAngle: Token
    
    @!APILevel[since: "22"]
    public mut prop parameters: Tokens
    
    @!APILevel[since: "22"]
    public mut prop rAngle: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

/*
* GenericConstraint is:
*   where T <: A, K <: B
*/
@!APILevel[since: "22"]
public class GenericConstraint <: Node {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public mut prop typeArgument: TypeNode
    
    @!APILevel[since: "22"]
    public mut prop upperBound: Token
    
    @!APILevel[since: "22"]
    public mut prop upperBounds: ArrayList<TypeNode>
    
    @!APILevel[since: "22"]
    public mut prop bitAnds: Tokens
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

/*
* Body is:
*   {...}
* For mutable types, like ClassDecl, StructDecl, InterfaceDecl
*/
@!APILevel[since: "22"]
public class Body <: Node {
    @!APILevel[since: "22"]
    public init(decls: ArrayList<Decl>)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop lBrace: Token
    
    @!APILevel[since: "22"]
    public mut prop decls: ArrayList<Decl>
    
    @!APILevel[since: "22"]
    public mut prop rBrace: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

/*
* Argument is actual parameter Node:
*   foo(arg1:value1)
*   "arg1:value1" is an Argument type
*/
@!APILevel[since: "22"]
public class Argument <: Node {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public mut prop identifier: Token
    
    @!APILevel[since: "22"]
    public mut prop colon: Token
    
    @!APILevel[since: "22"]
    public mut prop expr: Expr
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
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
@!APILevel[since: "22"]
public class MatchCase <: Node {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keywordC: Token
    
    @!APILevel[since: "22"]
    public mut prop expr: Expr
    
    @!APILevel[since: "22"]
    public mut prop patterns: ArrayList<Pattern>
    
    @!APILevel[since: "22"]
    public mut prop bitOrs: Tokens
    
    @!APILevel[since: "22"]
    public mut prop keywordW: Token
    
    @!APILevel[since: "22"]
    public mut prop patternGuard: Expr
    
    @!APILevel[since: "22"]
    public mut prop arrow: Token
    
    @!APILevel[since: "22"]
    public mut prop block: Block
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

/**
* Program is the Cangjie source File node.
*/
@!APILevel[since: "22"]
public class Program <: Node {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop packageHeader: PackageHeader
    
    @!APILevel[since: "22"]
    public mut prop importLists: ArrayList<ImportList>
    
    @!APILevel[since: "22"]
    public mut prop decls: ArrayList<Decl>
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

/**
* PackageHeader node represents the package of the current file.
* The PackageHeader starts with the keyword package, followed by the package name.
*/
@!APILevel[since: "22"]
public class PackageHeader <: Node {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop accessible: Token
    
    @!APILevel[since: "22"]
    public mut prop keywordM: Token
    
    @!APILevel[since: "22"]
    public mut prop keywordP: Token
    
    @!APILevel[since: "22"]
    public mut prop prefixPaths: Tokens
    
    @!APILevel[since: "22"]
    public mut prop prefixDots: Tokens
    
    @!APILevel[since: "22"]
    public mut prop packageIdentifier: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public enum ImportKind <: ToString {
    @!APILevel[since: "22"]
    Single |
    @!APILevel[since: "22"]
    Alias |
    @!APILevel[since: "22"]
    All |
    @!APILevel[since: "22"]
    Multi
    @!APILevel[since: "22"]
    public func toString(): String
}

@!APILevel[since: "22"]
public class ImportContent <: Node {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop importKind: ImportKind
    
    @!APILevel[since: "22"]
    public mut prop prefixPaths: Tokens
    
    @!APILevel[since: "22"]
    public mut prop prefixDots: Tokens
    
    @!APILevel[since: "22"]
    public mut prop identifier: Token
    
    @!APILevel[since: "22"]
    public mut prop importAlias: Tokens
    
    @!APILevel[since: "22"]
    public mut prop lBrace: Token
    
    @!APILevel[since: "22"]
    public mut prop items: ArrayList<ImportContent>
    
    @!APILevel[since: "22"]
    public mut prop commas: Tokens
    
    @!APILevel[since: "22"]
    public mut prop rBrace: Token
    
    @!APILevel[since: "22"]
    public func isImportAlias(): Bool
    
    @!APILevel[since: "22"]
    public func isImportAll(): Bool
    
    @!APILevel[since: "22"]
    public func isImportMulti(): Bool
    
    @!APILevel[since: "22"]
    public func isImportSingle(): Bool
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class ImportList <: Node {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop modifier: Token
    
    @!APILevel[since: "22"]
    public mut prop keywordI: Token
    
    @!APILevel[since: "22"]
    public mut prop content: ImportContent
    
    @!APILevel[since: "22"]
    public func isImportMulti(): Bool
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

/**
* Constructor node represents the values related to enum.
    @!APILevel[since: "22"]
* enum TimeUnit1 {
    @!APILevel[since: "22"]
*   Year | Month | Day | Hour(Float32) // Constructor node
* }
*/
@!APILevel[since: "22"]
public class Constructor <: Node {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop annotations: ArrayList<Annotation>
    
    @!APILevel[since: "22"]
    public mut prop identifier: Token
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop typeArguments: ArrayList<TypeNode>
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

extend<T> ArrayList<T> <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

extend<T> Array<T> <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

@!APILevel[since: "22"]
public func parseDecl(input: Tokens, astKind!: String = ""): Decl

@!APILevel[since: "22"]
public func parseDeclFragment(input: Tokens, startFrom!: Int64 = 0): (Decl, Int64)

@!APILevel[since: "22"]
public func parseExpr(input: Tokens): Expr

@!APILevel[since: "22"]
public func parseExprFragment(input: Tokens, startFrom!: Int64 = 0): (Expr, Int64)

@!APILevel[since: "22"]
public func parseProgram(input: Tokens): Program

@!APILevel[since: "22"]
public func parsePattern(input: Tokens): Pattern

@!APILevel[since: "22"]
public func parsePatternFragment(input: Tokens, startFrom!: Int64 = 0): (Pattern, Int64)

@!APILevel[since: "22"]
public func parseType(input: Tokens): TypeNode

@!APILevel[since: "22"]
public func parseTypeFragment(input: Tokens, startFrom!: Int64 = 0): (TypeNode, Int64)

@!APILevel[since: "22"]
public open class Pattern <: Node {
    @!APILevel[since: "22"]
    public open func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public open func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class ConstPattern <: Pattern {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop litConstExpr: LitConstExpr
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class WildcardPattern <: Pattern {
    @!APILevel[since: "22"]
    public init(keyword: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop wildcard: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class VarPattern <: Pattern {
    @!APILevel[since: "22"]
    public init(identifier: Token)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop identifier: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class VarOrEnumPattern <: Pattern {
    @!APILevel[since: "22"]
    public init(identifier: Token)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop identifier: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class ExceptTypePattern <: Pattern {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public mut prop pattern: Pattern
    
    @!APILevel[since: "22"]
    public mut prop colon: Token
    
    @!APILevel[since: "22"]
    public mut prop types: ArrayList<TypeNode>
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class TypePattern <: Pattern {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public mut prop pattern: Pattern
    
    @!APILevel[since: "22"]
    public mut prop colon: Token
    
    @!APILevel[since: "22"]
    public mut prop patternType: TypeNode
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class EnumPattern <: Pattern {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public mut prop constructor: Expr
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop patterns: ArrayList<Pattern>
    
    @!APILevel[since: "22"]
    public mut prop commas: Tokens
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class TuplePattern <: Pattern {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop patterns: ArrayList<Pattern>
    
    @!APILevel[since: "22"]
    public mut prop commas: Tokens
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public struct Position <: ToBytes {
    /* Fields */
    @!APILevel[since: "22"]
    public let fileID: UInt32
    
    @!APILevel[since: "22"]
    public let line: Int32
    
    @!APILevel[since: "22"]
    public let column: Int32
    
    /* Constructors *//** Create an empty position. */
    @!APILevel[since: "22"]
    public init()
    
    /** Create a new position which is formed by fileID, line, column. */
    @!APILevel[since: "22"]
    public init(fileID: UInt32, line: Int32, column: Int32)
    
    /* Methods *//** Returns true if and only if this position line and column equal to 0. */
    @!APILevel[since: "22"]
    public func isEmpty(): Bool
    
    /** Returns true if and only if the two positions are identical. */
    @!APILevel[since: "22"]
    public operator func ==(r: Position): Bool
    
    /** Returns true if and only if the two positions are not identical. */
    @!APILevel[since: "22"]
    public operator func !=(r: Position): Bool
    
    /** Print the information of this position. */
    @!APILevel[since: "22"]
    public func dump(): Unit
    
    @!APILevel[since: "22"]
    public func toBytes(): Array<UInt8>
}

@!APILevel[since: "22"]
public interface ToBytes {
    @!APILevel[since: "22"]
    func toBytes(): Array<UInt8>
}

@!APILevel[since: "22"]
public struct Token <: ToBytes {
    /**
    Fields
    */
    @!APILevel[since: "22"]
    public let kind: TokenKind
    
    @!APILevel[since: "22"]
    public let value: String
    
    @!APILevel[since: "22"]
    public let pos: Position
    
    @!APILevel[since: "22"]
    public var delimiterNum: UInt16 = 1
    
    /**
    Constructors
    */// Create an token with default value.
    @!APILevel[since: "22"]
    public init()
    
    // Create a new token without value, position from enumerated type token.
    @!APILevel[since: "22"]
    public init(kind: TokenKind)
    
    // Create a new token with empty position from token kind and token value.
    @!APILevel[since: "22"]
    public init(kind: TokenKind, value: String)
    
    @!APILevel[since: "22"]
    public func addPosition(fileID: UInt32, line: Int32, colum: Int32): Token
    
    // Returns true if and only if the two token's kind id, value, position are identical.// XXX: Bound check.
    @!APILevel[since: "22"]
    public operator func ==(r: Token): Bool
    
    // Returns true if and only if the two token's kind id, value, position are not identical.
    @!APILevel[since: "22"]
    public operator func !=(r: Token): Bool
    
    // Token + Tokens => Tokens
    @!APILevel[since: "22"]
    public operator func +(r: Tokens): Tokens
    
    // Token + Token => Tokens
    @!APILevel[since: "22"]
    public operator func +(r: Token): Tokens
    
    // Print the information of this token.
    @!APILevel[since: "22"]
    public func dump(): Unit
    
    @!APILevel[since: "22"]
    public func toBytes(): Array<UInt8>
}

/**
* Note: If Tokens.inc is changed, TokenKind and PATTERNS should change accordingly.
*/
@!APILevel[since: "22"]
public enum TokenKind <: ToString {
    @!APILevel[since: "22"]
    DOT |
    @!APILevel[since: "22"]
    /*  "."           */
    COMMA |
    @!APILevel[since: "22"]
    /*  ","           */
    LPAREN |
    @!APILevel[since: "22"]
    /*  "("           */
    RPAREN |
    @!APILevel[since: "22"]
    /*  ")"           */
    LSQUARE |
    @!APILevel[since: "22"]
    /*  "["           */
    RSQUARE |
    @!APILevel[since: "22"]
    /*  "]"           */
    LCURL |
    @!APILevel[since: "22"]
    /*  "{"           */
    RCURL |
    @!APILevel[since: "22"]
    /*  "}"           */
    EXP |
    @!APILevel[since: "22"]
    /*  "**"          */
    MUL |
    @!APILevel[since: "22"]
    /*  "*"           */
    MOD |
    @!APILevel[since: "22"]
    /*  "%"           */
    DIV |
    @!APILevel[since: "22"]
    /*  "/"           */
    ADD |
    @!APILevel[since: "22"]
    /*  "+"           */
    SUB |
    @!APILevel[since: "22"]
    /*  "-"           */
    INCR |
    @!APILevel[since: "22"]
    /*  "++"          */
    DECR |
    @!APILevel[since: "22"]
    /*  "--"          */
    AND |
    @!APILevel[since: "22"]
    /*  "&&"          */
    OR |
    @!APILevel[since: "22"]
    /*  "||"          */
    COALESCING |
    @!APILevel[since: "22"]
    /*  "??"          */
    PIPELINE |
    @!APILevel[since: "22"]
    /*  "|>"          */
    COMPOSITION |
    @!APILevel[since: "22"]
    /*  "~>"          */
    NOT |
    @!APILevel[since: "22"]
    /*  "!"           */
    BITAND |
    @!APILevel[since: "22"]
    /*  "&"           */
    BITOR |
    @!APILevel[since: "22"]
    /*  "|"           */
    BITXOR |
    @!APILevel[since: "22"]
    /*  "^"           */
    BITNOT |
    @!APILevel[since: "22"]
    /*  "~"           */
    LSHIFT |
    @!APILevel[since: "22"]
    /*  "<<"          */
    RSHIFT |
    @!APILevel[since: "22"]
    /*  ">>"          */
    COLON |
    @!APILevel[since: "22"]
    /*  ":"           */
    SEMI |
    @!APILevel[since: "22"]
    /*  ";"           */
    ASSIGN |
    @!APILevel[since: "22"]
    /*  "="           */
    ADD_ASSIGN |
    @!APILevel[since: "22"]
    /*  "+="          */
    SUB_ASSIGN |
    @!APILevel[since: "22"]
    /*  "-="          */
    MUL_ASSIGN |
    @!APILevel[since: "22"]
    /*  "*="          */
    EXP_ASSIGN |
    @!APILevel[since: "22"]
    /*  "**="         */
    DIV_ASSIGN |
    @!APILevel[since: "22"]
    /*  "/="          */
    MOD_ASSIGN |
    @!APILevel[since: "22"]
    /*  "%="          */
    AND_ASSIGN |
    @!APILevel[since: "22"]
    /*  "&&="         */
    OR_ASSIGN |
    @!APILevel[since: "22"]
    /*  "||="         */
    BITAND_ASSIGN |
    @!APILevel[since: "22"]
    /*  "&="          */
    BITOR_ASSIGN |
    @!APILevel[since: "22"]
    /*  "|="          */
    BITXOR_ASSIGN |
    @!APILevel[since: "22"]
    /*  "^="          */
    LSHIFT_ASSIGN |
    @!APILevel[since: "22"]
    /*  "<<="         */
    RSHIFT_ASSIGN |
    @!APILevel[since: "22"]
    /*  ">>="         */
    ARROW |
    @!APILevel[since: "22"]
    /*  "->"          */
    BACKARROW |
    @!APILevel[since: "22"]
    /*  "<-"          */
    DOUBLE_ARROW |
    @!APILevel[since: "22"]
    /*  "=>"          */
    RANGEOP |
    @!APILevel[since: "22"]
    /*  ".."          */
    CLOSEDRANGEOP |
    @!APILevel[since: "22"]
    /*  "..="         */
    ELLIPSIS |
    @!APILevel[since: "22"]
    /*  "..."         */
    HASH |
    @!APILevel[since: "22"]
    /*  "#"           */
    AT |
    @!APILevel[since: "22"]
    /*  "@"           */
    QUEST |
    @!APILevel[since: "22"]
    /*  "?"           */
    LT |
    @!APILevel[since: "22"]
    /*  "<"           */
    GT |
    @!APILevel[since: "22"]
    /*  ">"           */
    LE |
    @!APILevel[since: "22"]
    /*  "<="          */
    GE |
    @!APILevel[since: "22"]
    /*  ">="          */
    IS |
    @!APILevel[since: "22"]
    /*  "is"          */
    AS |
    @!APILevel[since: "22"]
    /*  "as"          */
    NOTEQ |
    @!APILevel[since: "22"]
    /*  "!="          */
    EQUAL |
    @!APILevel[since: "22"]
    /*  "=="          */
    WILDCARD |
    @!APILevel[since: "22"]
    /*  "_"           */
    INT8 |
    @!APILevel[since: "22"]
    /*  "Int8"        */
    INT16 |
    @!APILevel[since: "22"]
    /*  "Int16"       */
    INT32 |
    @!APILevel[since: "22"]
    /*  "Int32"       */
    INT64 |
    @!APILevel[since: "22"]
    /*  "Int64"       */
    INTNATIVE |
    @!APILevel[since: "22"]
    /*  "IntNative"   */
    UINT8 |
    @!APILevel[since: "22"]
    /*  "UInt8"       */
    UINT16 |
    @!APILevel[since: "22"]
    /*  "UInt16"      */
    UINT32 |
    @!APILevel[since: "22"]
    /*  "UInt32"      */
    UINT64 |
    @!APILevel[since: "22"]
    /*  "UInt64"      */
    UINTNATIVE |
    @!APILevel[since: "22"]
    /*  "UIntNative"  */
    FLOAT16 |
    @!APILevel[since: "22"]
    /*  "Float16"     */
    FLOAT32 |
    @!APILevel[since: "22"]
    /*  "Float32"     */
    FLOAT64 |
    @!APILevel[since: "22"]
    /*  "Float64"     */
    RUNE |
    @!APILevel[since: "22"]
    /*  "Rune"        */
    BOOLEAN |
    @!APILevel[since: "22"]
    /*  "Bool"        */
    NOTHING |
    @!APILevel[since: "22"]
    /*  "Nothing"     */
    UNIT |
    @!APILevel[since: "22"]
    /*  "Unit"        */
    STRUCT |
    @!APILevel[since: "22"]
    /*  "struct"      */
    ENUM |
    @!APILevel[since: "22"]
    /*  "enum"        */
    @!APILevel[since: "22"]
    VARRAY |
    @!APILevel[since: "22"]
    /*  "VArray"      */
    THISTYPE |
    @!APILevel[since: "22"]
    /*  "This"        */
    PACKAGE |
    @!APILevel[since: "22"]
    /*  "package"     */
    IMPORT |
    @!APILevel[since: "22"]
    /*  "import"      */
    CLASS |
    @!APILevel[since: "22"]
    /*  "class"       */
    INTERFACE |
    @!APILevel[since: "22"]
    /*  "interface"   */
    FUNC |
    @!APILevel[since: "22"]
    /*  "func"        */
    MACRO |
    @!APILevel[since: "22"]
    /*  "macro"       */
    QUOTE |
    @!APILevel[since: "22"]
    /*  "quote"       */
    DOLLAR |
    @!APILevel[since: "22"]
    /*  "$"           */
    LET |
    @!APILevel[since: "22"]
    /*  "let"         */
    VAR |
    @!APILevel[since: "22"]
    /*  "var"         */
    CONST |
    @!APILevel[since: "22"]
    /*  "const"       */
    TYPE |
    @!APILevel[since: "22"]
    /*  "type"        */
    INIT |
    @!APILevel[since: "22"]
    /*  "init"        */
    THIS |
    @!APILevel[since: "22"]
    /*  "this"        */
    SUPER |
    @!APILevel[since: "22"]
    /*  "super"       */
    IF |
    @!APILevel[since: "22"]
    /*  "if"          */
    ELSE |
    @!APILevel[since: "22"]
    /*  "else"        */
    CASE |
    @!APILevel[since: "22"]
    /*  "case"        */
    TRY |
    @!APILevel[since: "22"]
    /*  "try"         */
    CATCH |
    @!APILevel[since: "22"]
    /*  "catch"       */
    FINALLY |
    @!APILevel[since: "22"]
    /*  "finally"     */
    FOR |
    @!APILevel[since: "22"]
    /*  "for"         */
    DO |
    @!APILevel[since: "22"]
    /*  "do"          */
    WHILE |
    @!APILevel[since: "22"]
    /*  "while"       */
    THROW |
    @!APILevel[since: "22"]
    /*  "throw"       */
    RETURN |
    @!APILevel[since: "22"]
    /*  "return"      */
    CONTINUE |
    @!APILevel[since: "22"]
    /*  "continue"    */
    BREAK |
    @!APILevel[since: "22"]
    /*  "break"       */
    IN |
    @!APILevel[since: "22"]
    /*  "in"          */
    NOT_IN |
    @!APILevel[since: "22"]
    /*  "!in"         */
    MATCH |
    @!APILevel[since: "22"]
    /*  "match"       */
    WHERE |
    @!APILevel[since: "22"]
    /*  "where"       */
    EXTEND |
    @!APILevel[since: "22"]
    /*  "extend"      */
    WITH |
    @!APILevel[since: "22"]
    /*  "with"        */
    PROP |
    @!APILevel[since: "22"]
    /*  "prop"        */
    STATIC |
    @!APILevel[since: "22"]
    /*  "static"      */
    PUBLIC |
    @!APILevel[since: "22"]
    /*  "public"      */
    PRIVATE |
    @!APILevel[since: "22"]
    /*  "private"     */
    INTERNAL |
    @!APILevel[since: "22"]
    /*  "internal"     */
    PROTECTED |
    @!APILevel[since: "22"]
    /*  "protected"   */
    OVERRIDE |
    @!APILevel[since: "22"]
    /*  "override"    */
    REDEF |
    @!APILevel[since: "22"]
    /*  "redef"       */
    ABSTRACT |
    @!APILevel[since: "22"]
    /*  "abstract"    */
    SEALED |
    @!APILevel[since: "22"]
    /*  "sealed"      */
    OPEN |
    @!APILevel[since: "22"]
    /*  "open"        */
    FOREIGN |
    @!APILevel[since: "22"]
    /*  "foreign"     */
    INOUT |
    @!APILevel[since: "22"]
    /*  "inout"       */
    MUT |
    @!APILevel[since: "22"]
    /*  "mut"         */
    UNSAFE |
    @!APILevel[since: "22"]
    /*  "unsafe"      */
    OPERATOR |
    @!APILevel[since: "22"]
    /*  "operator"    */
    SPAWN |
    @!APILevel[since: "22"]
    /*  "spawn"       */
    SYNCHRONIZED |
    @!APILevel[since: "22"]
    /*  "synchronized */
    UPPERBOUND |
    @!APILevel[since: "22"]
    /*  "<:"          */
    MAIN |
    @!APILevel[since: "22"]
    /*  "main"        */
    IDENTIFIER |
    @!APILevel[since: "22"]
    /*  "x"           */
    PACKAGE_IDENTIFIER |
    @!APILevel[since: "22"]
    /*  "x-y"         */
    INTEGER_LITERAL |
    @!APILevel[since: "22"]
    /*  e.g. "1"      */
    RUNE_BYTE_LITERAL |
    @!APILevel[since: "22"]
    /*  e.g. "b'x'"   */
    FLOAT_LITERAL |
    @!APILevel[since: "22"]
    /*  e.g. "'1.0'"  */
    COMMENT |
    @!APILevel[since: "22"]
    /*  e.g. "/*xx*/" */
    NL |
    @!APILevel[since: "22"]
    /*  newline         */
    END |
    @!APILevel[since: "22"]
    /*  end of file     */
    SENTINEL |
    @!APILevel[since: "22"]
    /*  ";"             */
    RUNE_LITERAL |
    @!APILevel[since: "22"]
    /*  e.g. "r'x'"      */
    STRING_LITERAL |
    @!APILevel[since: "22"]
    /*  e.g. ""xx""     */
    SINGLE_QUOTED_STRING_LITERAL |
    @!APILevel[since: "22"]
    /*  e.g. "'xx'"     */
    JSTRING_LITERAL |
    @!APILevel[since: "22"]
    /*  e.g. "J"xx""     */
    MULTILINE_STRING |
    @!APILevel[since: "22"]
    /*  e.g. """"aaa""""   */
    MULTILINE_RAW_STRING |
    @!APILevel[since: "22"]
    /*  e.g. "#"aaa"#"     */
    BOOL_LITERAL |
    @!APILevel[since: "22"]
    /*  "true" or "false"  */
    UNIT_LITERAL |
    @!APILevel[since: "22"]
    /*  "()"               */
    DOLLAR_IDENTIFIER |
    @!APILevel[since: "22"]
    /*  e.g. "$x"          */
    ANNOTATION |
    @!APILevel[since: "22"]
    /*  e.g. "@When"       */
    AT_EXCL |
    @!APILevel[since: "22"]
    /*  "@!"               */
    ILLEGAL |
    ...
    @!APILevel[since: "22"]
    public operator func ==(right: TokenKind): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(right: TokenKind): Bool
    
    @!APILevel[since: "22"]
    public func toString(): String
}

/**
* Conversion function for UInt16 to Enum
*/
@!APILevel[since: "22"]
public func getTokenKind(no: UInt16): TokenKind

@!APILevel[since: "22"]
public class TokensIterator <: Iterator<Token> {
    /* Constructors */
    @!APILevel[since: "22"]
    public init(tokens: Tokens)
    
    /* Methods *//** Returns the current Option<Token>. */
    @!APILevel[since: "22"]
    public func peek(): Option<Token>
    
    /** Returns true if current token is the kind, otherwise false. */
    @!APILevel[since: "22"]
    public func seeing(kind: TokenKind): Bool
    
    /** Returns next Option<Token>. */
    @!APILevel[since: "22"]
    public func next(): Option<Token>
}

@!APILevel[since: "22"]
public open class Tokens <: ToString & Iterable<Token> & ToBytes {
    /* Constructors *//** Create an empty tokens. */
    @!APILevel[since: "22"]
    public init()
    
    /** Create a new tokens from token array. */
    @!APILevel[since: "22"]
    public init(tokArray: Array<Token>)
    
    /** Create a new tokens from token array. */
    @!APILevel[since: "22"]
    public init(tokArrayList: ArrayList<Token>)
    
    /* Methods *//** Returns the size of tokens. */
    @!APILevel[since: "22"]
    public open prop size: Int64
    
    /** Returns the token from the index, if the index is out of bound or its element is null then throws IndexOutOfBoundsException. */
    @!APILevel[since: "22"]
    public open func get(index: Int64): Token
    
    /** Returns an iterator over the tokens. */
    @!APILevel[since: "22"]
    public func iterator(): TokensIterator
    
    /** Returns the concatenation of this Tokens and the argument. */
    @!APILevel[since: "22"]
    public func concat(tokens: Tokens): Tokens
    
    /* Operator functions *//** Returns the token at the specified index. */
    @!APILevel[since: "22"]
    public operator func [](index: Int64): Token
    
    @!APILevel[since: "22"]
    public open operator func [](range: Range<Int64>): Tokens
    
    /** Returns a tokens which is the result of concatenating `ts1` and `ts2`. */
    @!APILevel[since: "22"]
    public operator func +(r: Tokens): Tokens
    
    /** Returns a tokens which is the result of concatenating `ts1` and `t2`. */
    @!APILevel[since: "22"]
    public operator func +(r: Token): Tokens
    
    /** Returns current tokens which is the result of concatenating this and `tks`. */
    @!APILevel[since: "22"]
    public open func append(tokens: Tokens): Tokens
    
    /** Returns current tokens which is the result of concatenating this and `tk`. */
    @!APILevel[since: "22"]
    public open func append(token: Token): Tokens
    
    @!APILevel[since: "22"]
    public func append(node: Node): Tokens
    
    @!APILevel[since: "22"]
    public func remove(index: Int64): Tokens
    
    /** Print the information of this tokens. */
    @!APILevel[since: "22"]
    public func dump(): Unit
    
    /** Convert Tokens to String. */
    @!APILevel[since: "22"]
    public func toString(): String
    
    @!APILevel[since: "22"]
    public func toBytes(): Array<UInt8>
}

@!APILevel[since: "22"]
public interface ToTokens {
    @!APILevel[since: "22"]
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
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

extend Tokens <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

extend Int64 <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

extend Int32 <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

extend Int16 <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

extend Int8 <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

extend UInt64 <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

extend UInt32 <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

extend UInt16 <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

extend UInt8 <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

extend Float64 <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

extend Float32 <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

extend Float16 <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

extend Bool <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

extend Rune <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

extend String <: ToTokens {
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
}

@!APILevel[since: "22"]
public open class TypeNode <: Node {
    @!APILevel[since: "22"]
    public mut prop typeParameterName: Token
    
    @!APILevel[since: "22"]
    public mut prop colon: Token
    
    @!APILevel[since: "22"]
    public open func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public open func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class PrimitiveType <: TypeNode {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class RefType <: TypeNode {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop identifier: Token
    
    @!APILevel[since: "22"]
    public mut prop lAngle: Token
    
    @!APILevel[since: "22"]
    public mut prop typeArguments: ArrayList<TypeNode>
    
    @!APILevel[since: "22"]
    public mut prop commas: Tokens
    
    @!APILevel[since: "22"]
    public mut prop rAngle: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class QualifiedType <: TypeNode {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop baseType: TypeNode
    
    @!APILevel[since: "22"]
    public mut prop dot: Token
    
    @!APILevel[since: "22"]
    public mut prop identifier: Token
    
    @!APILevel[since: "22"]
    public mut prop lAngle: Token
    
    @!APILevel[since: "22"]
    public mut prop typeArguments: ArrayList<TypeNode>
    
    @!APILevel[since: "22"]
    public mut prop commas: Tokens
    
    @!APILevel[since: "22"]
    public mut prop rAngle: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class ParenType <: TypeNode {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop parenthesizedType: TypeNode
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class TupleType <: TypeNode {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop types: ArrayList<TypeNode>
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class ThisType <: TypeNode {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class PrefixType <: TypeNode {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop prefixOps: Tokens
    
    @!APILevel[since: "22"]
    public mut prop baseType: TypeNode
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class FuncType <: TypeNode {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public mut prop lParen: Token
    
    @!APILevel[since: "22"]
    public mut prop types: ArrayList<TypeNode>
    
    @!APILevel[since: "22"]
    public mut prop commas: Tokens
    
    @!APILevel[since: "22"]
    public mut prop rParen: Token
    
    @!APILevel[since: "22"]
    public mut prop arrow: Token
    
    @!APILevel[since: "22"]
    public mut prop returnType: TypeNode
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public class VArrayType <: TypeNode {
    @!APILevel[since: "22"]
    public init(inputs: Tokens)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public mut prop keyword: Token
    
    @!APILevel[since: "22"]
    public mut prop lAngle: Token
    
    @!APILevel[since: "22"]
    public mut prop elementTy: TypeNode
    
    @!APILevel[since: "22"]
    public mut prop dollar: Token
    
    @!APILevel[since: "22"]
    public mut prop size: Token
    
    @!APILevel[since: "22"]
    public mut prop rAngle: Token
    
    @!APILevel[since: "22"]
    public func toTokens(): Tokens
    
    @!APILevel[since: "22"]
    public func traverse(v: Visitor): Unit
}

@!APILevel[since: "22"]
public abstract class Visitor {
    @!APILevel[since: "22"]
    public func breakTraverse(): Unit
}

