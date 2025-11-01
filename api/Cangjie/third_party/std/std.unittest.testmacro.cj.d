
macro package std.unittest.testmacro
import std.ast.*
import std.collection.*

import std.ast.BinaryExpr
import std.ast.Tokens
import std.ast.Token
import std.ast.Expr
import std.ast.TokenKind
import std.ast.ASTException
import std.collection.ArrayList
import std.collection.concurrent.ConcurrentHashMap
import std.sync.AtomicUInt64
import std.unittest.common.shieldEscapeSeq
import std.unicode.*
import std.collection.map

public macro Expect(input: Tokens): Tokens

public macro Assert(input: Tokens): Tokens

public macro Expect(assertion: Tokens, body: Tokens): Tokens

public macro Assert(assertion: Tokens, body: Tokens): Tokens

public macro CustomAssertion(body: Tokens)

public macro Bench(input: Tokens): Tokens

public macro Bench(attr: Tokens, input: Tokens): Tokens

public macro Configure(args: Tokens, input: Tokens)

public macro Fail(message: Tokens): Tokens

public macro FailExpect(message: Tokens): Tokens

public macro BeforeAll(input: Tokens)

public macro AfterAll(input: Tokens)

public macro BeforeEach(input: Tokens)

public macro AfterEach(input: Tokens)

public macro Measure(attr: Tokens, input: Tokens): Tokens

public macro Parallel(input: Tokens): Tokens

public macro PowerAssert(input: Tokens): Tokens

public macro Skip(input: Tokens): Tokens

public macro Skip(attr: Tokens, input: Tokens): Tokens

public macro Strategy(input: Tokens): Tokens

public macro Strategy(attr: Tokens, input: Tokens): Tokens

public macro Tag(tags: Tokens, input: Tokens): Tokens

public macro TestBuilder(input: Tokens): Tokens

public macro TestCase(input: Tokens): Tokens

public macro TestCase(args: Tokens, input: Tokens): Tokens

public macro Test(input: Tokens): Tokens

public macro Test(dsl: Tokens, input: Tokens): Tokens

public macro TestTemplate(input: Tokens): Tokens

public macro TestTemplate(dsl: Tokens, input: Tokens): Tokens

public macro AssertThrows(body: Tokens): Tokens

public macro AssertThrows(exceptions: Tokens, body: Tokens): Tokens

public macro ExpectThrows(body: Tokens): Tokens

public macro ExpectThrows(exceptions: Tokens, body: Tokens): Tokens

public macro Timeout(attrs: Tokens, input: Tokens): Tokens

public macro Types(dsl: Tokens, input: Tokens)

public macro UnittestOption(_: Tokens): Tokens

public macro UnittestOption(types: Tokens, params: Tokens): Tokens
