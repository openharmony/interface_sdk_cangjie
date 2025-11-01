macro package ohos.arkui.state_macro_manage

import ohos.encoding.json.*
import std.ast.*
import std.ast.Position as AstPosition
import std.collection.*
import std.convert.*
import std.fs.*
import std.io.*
import std.process.*
import std.regex.*
import std.unicode.*

/**
 * support two-way data binding between app storage and component data
 * example:
 * @StorageLink["name"] var a: Int64 = 20
 */
public macro StorageLink(attr: Tokens, input: Tokens): Tokens

/**
 * support one-way data binding between app storage and component data
 * example:
 * @StorageProp["name"] let a: Int64 = 20
 */
public macro StorageProp(attr: Tokens, input: Tokens): Tokens

public macro Binder(input: Tokens): Tokens

public macro Builder(input: Tokens): Tokens

public macro BuilderParam(input: Tokens): Tokens

public macro Component(input: Tokens): Tokens

public macro Consume(input: Tokens): Tokens

public macro Consume(consumeIdentifier: Tokens, input: Tokens): Tokens

public macro CustomDialog(input: Tokens): Tokens

public macro Entry(input: Tokens): Tokens

public macro Entry(attr: Tokens, input: Tokens): Tokens

public macro Preview(input: Tokens): Tokens

public macro HybridComponentEntry(input: Tokens): Tokens

extend VarDecl {}

public macro Link(input: Tokens): Tokens

/**
 * support two-way data binding between app storage and component data
 * example:
 * @LocalStorageLink["name"] var a: Int64 = 20
 * @LocalStorageLink["name", "InterOp"] var a: Int64 = 20
 */
public macro LocalStorageLink(attr: Tokens, input: Tokens): Tokens

/**
 * support one-way data binding between app storage and component data
 * example:
 * @LocalStorageProp["name"] let a: Int64 = 20
 * @LocalStorageProp["name", "InterOp"] let a: Int64 = 20
 */
public macro LocalStorageProp(attr: Tokens, input: Tokens): Tokens

/**
 * example:
 * @Observed
 * class Book {
 *     @Publish var title: String = "English"
 * }
 * will expand to
 * class Book <: ObservedObject {
 *     private var stateVarDecl_title_: ObservedProperty<String>
 *     prop var title: String {
 *         get() {
 *             return this.stateVarDecl_title_.get()
 *         }
 *         set(v) {
 *             this.stateVarDecl_title_.set(v)
 *         }
 *     }
 *     init(title!: String = "English") {
 *         this.stateVarDecl_title_ = ObservedProperty<String>("title", title)
 *         this.addPublishVar(this.stateVarDecl_title_)
 *     }
 *     func set(newValue: ObservedComplexAbstract) {
 *         let realValue = (newValue as Book).getOrThrow()
 *         this.title = realValue.title
 *     }
 *     func get(): Book {
 *         return this
 *     }
 * }
 */
public macro Observed(input: Tokens): Tokens

public macro Prop(input: Tokens): Tokens

public macro Provide(input: Tokens): Tokens

public macro Provide(provideIdentifier: Tokens, input: Tokens): Tokens

public macro Publish(input: Tokens): Tokens

/**
 * input example
 * @r(app.media.icon)
 * @r(app.string.value, "hello", 1, 1.1)
 * @r(app.plural.value, 5, 5)
 */
public macro r(input: Tokens): Tokens

/**
 * input example
 * @rawfile("image.png")
 */
public macro rawfile(input: Tokens): Tokens

/**
 * Constraint: define reuseable component before @Entry
 * Example:
 * @Reusable
 * @Component
 * class Child {...}
 */
public macro Reusable(input: Tokens): Tokens

public macro State(input: Tokens): Tokens

public macro Watch(watcher: Tokens, watched: Tokens): Tokens