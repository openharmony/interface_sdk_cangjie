package std.unittest.mock
import std.collection.ArrayList

import std.unittest.mock.internal.*
import std.unittest.common.*
import std.collection.*
import std.unittest.common.PrettyText
import std.collection.HashMap
import std.sync.*
import std.unittest.mock.internal.FuncInfo
import std.unittest.common.PrettyPrintable
import std.unittest.mock.internal.ParameterInfo
import std.collection.enumerate
import std.fs.Path

/**
 * @description An `ActionSelector` specifically for stubbing constructors.
 * It allows defining return values, exceptions, or calling the original constructor.
 */
@!APILevel[
    since: "22"
]
public sealed abstract class ActionSelector {
    /**
     * @description Specifies that the stubbed call should immediately fail the test.
     */
    @!APILevel[
        since: "22"
    ]
    public func fails(): Unit
}

/**
 * @description An `ActionSelector` specifically for stubbing method calls.
 * It allows defining return values, exceptions, or calling the original method.
 */
@!APILevel[
    since: "22"
]
public class MethodActionSelector<TRet> <: ActionSelector {
    /**
     * @description Specifies that the stubbed method should throw the given exception.
     * @param exception The exception instance to be thrown.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throws(exception: Exception): CardinalitySelector<MethodActionSelector<TRet>>
    
    /**
     * @description Specifies that the stubbed method should throw an exception created by the given factory function.
     * @param exceptionFactory A function that creates the exception to be thrown.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throws(exceptionFactory: () -> Exception): CardinalitySelector<MethodActionSelector<TRet>>
    
    /**
     * @description Specifies the value that the stubbed method should return.
     * @param value The value to be returned.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func returns(value: TRet): CardinalitySelector<MethodActionSelector<TRet>>
    
    /**
     * @description Specifies a factory function that will be called to generate the return value.
     * @param valueFactory A function that creates the return value.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func returns(valueFactory: () -> TRet): CardinalitySelector<MethodActionSelector<TRet>>
    
    /**
     * @description Specifies a sequence of values to be returned on consecutive calls to the stubbed method.
     * @param values An array of values to be returned in order.
     * @returns A `Continuation` object to allow chaining further actions.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func returnsConsecutively(values: Array<TRet>): Continuation<MethodActionSelector<TRet>>
    
    /**
     * @description Specifies a sequence of values to be returned on consecutive calls to the stubbed method.
     * @param values An `ArrayList` of values to be returned in order.
     * @returns A `Continuation` object to allow chaining further actions.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func returnsConsecutively(values: ArrayList<TRet>): Continuation<MethodActionSelector<TRet>>
    
    /**
     * @description Specifies that the original (non-mocked) method should be called. This is primarily for spies.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     */
    @!APILevel[
        since: "22"
    ]
    public func callsOriginal(): CardinalitySelector<MethodActionSelector<TRet>>
}

/**
 * @description An `ActionSelector` for stubbing property getters.
 */
@!APILevel[
    since: "22"
]
public class GetterActionSelector<TRet> <: ActionSelector {
    /**
     * @description Specifies that the stubbed getter should throw the given exception.
     * @param exception The exception instance to be thrown.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throws(exception: Exception): CardinalitySelector<GetterActionSelector<TRet>>
    
    /**
     * @description Specifies that the stubbed getter should throw an exception created by the given factory function.
     * @param exceptionFactory A function that creates the exception to be thrown.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throws(exceptionFactory: () -> Exception): CardinalitySelector<GetterActionSelector<TRet>>
    
    /**
     * @description Specifies the value that the stubbed getter should return.
     * @param value The value to be returned.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func returns(value: TRet): CardinalitySelector<GetterActionSelector<TRet>>
    
    /**
     * @description Specifies a factory function that will be called to generate the return value for the getter.
     * @param valueFactory A function that creates the return value.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func returns(valueFactory: () -> TRet): CardinalitySelector<GetterActionSelector<TRet>>
    
    /**
     * @description Specifies a sequence of values to be returned on consecutive calls to the stubbed getter.
     * @param values An array of values to be returned in order.
     * @returns A `Continuation` object to allow chaining further actions.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func returnsConsecutively(values: Array<TRet>): Continuation<GetterActionSelector<TRet>>
    
    /**
     * @description Specifies a sequence of values to be returned on consecutive calls to the stubbed getter.
     * @param values An `ArrayList` of values to be returned in order.
     * @returns A `Continuation` object to allow chaining further actions.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func returnsConsecutively(values: ArrayList<TRet>): Continuation<GetterActionSelector<TRet>>
    
    /**
     * @description Specifies that the original (non-mocked) getter should be called. This is primarily for spies.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     */
    @!APILevel[
        since: "22"
    ]
    public func getsOriginal(): CardinalitySelector<GetterActionSelector<TRet>>
    
    /**
     * @description Specifies that the getter should return the current value of a `SyntheticField`.
     * @param field The `SyntheticField` whose value will be returned.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getsField(field: SyntheticField<TRet>): CardinalitySelector<GetterActionSelector<TRet>>
}

/**
 * @description An `ActionSelector` for stubbing property setters.
 */
@!APILevel[
    since: "22"
]
public class SetterActionSelector<TArg> <: ActionSelector {
    /**
     * @description Specifies that the stubbed setter should throw the given exception.
     * @param exception The exception instance to be thrown.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throws(exception: Exception): CardinalitySelector<SetterActionSelector<TArg>>
    
    /**
     * @description Specifies that the stubbed setter should throw an exception created by the given factory function.
     * @param exceptionFactory A function that creates the exception to be thrown.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func throws(exceptionFactory: () -> Exception): CardinalitySelector<SetterActionSelector<TArg>>
    
    /**
     * @description Specifies that the stubbed setter should perform no action.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     */
    @!APILevel[
        since: "22"
    ]
    public func doesNothing(): CardinalitySelector<SetterActionSelector<TArg>>
    
    /**
     * @description Specifies that the original (non-mocked) setter should be called. This is primarily for spies.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     */
    @!APILevel[
        since: "22"
    ]
    public func setsOriginal(): CardinalitySelector<SetterActionSelector<TArg>>
    
    /**
     * @description Specifies that the setter should set the value of a `SyntheticField`.
     * @param field The `SyntheticField` whose value will be set.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setsField(field: SyntheticField<TArg>): CardinalitySelector<SetterActionSelector<TArg>>
}

extend MethodActionSelector<Unit> {
    /**
     * @description A convenience method for void functions, equivalent to `returns(Unit)`.
     * @returns A `CardinalitySelector` to specify how many times this action should occur.
     */
    @!APILevel[
        since: "22"
    ]
    public func returns(): CardinalitySelector<MethodActionSelector<Unit>>
}

/**
 * @description An abstract base class for defining custom logic to match arguments in mocked function calls.
 */
@!APILevel[
    since: "22"
]
public abstract class ArgumentMatcher {
    /**
     * @description Provides a custom description for the matcher, used in error messages.
     * @param description The custom description string.
     * @returns The same `ArgumentMatcher` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func withDescription(description: String): ArgumentMatcher
    
    /**
     * @description Associates the matcher with a specific parameter name, used for error reporting.
     * @param name The name of the parameter this matcher applies to.
     * @returns The same `ArgumentMatcher` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func forParameter(name: String): ArgumentMatcher
    
    /**
     * @description Checks if the matcher matches the given argument. This is an untyped check.
     * @param arg The argument value to check.
     * @returns `true` if the argument matches, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func matchesAny(arg: Any): Bool
}

/**
 * @description A type-safe version of `ArgumentMatcher`.
 */
@!APILevel[
    since: "22"
]
public abstract class TypedMatcher<T> <: ArgumentMatcher {
    /**
     * @description Checks if the matcher matches the given typed argument.
     * @param arg The typed argument value to check.
     * @returns `true` if the argument matches, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func matches(arg: T): Bool
    
    /**
     * @description Checks if the matcher matches the given argument. It first checks if the argument is of type `T`.
     * @param arg The argument value to check.
     * @returns `true` if the argument is of the correct type and matches, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public override func matchesAny(arg: Any): Bool
}

/**
 * @description A matcher that matches any value of any type.
 */
@!APILevel[
    since: "22"
]
public class AnyMatcher <: ArgumentMatcher {
    /**
     * @description Always returns `true`.
     * @param _ The argument value (ignored).
     * @returns Always `true`.
     */
    @!APILevel[
        since: "22"
    ]
    public func matchesAny(_: Any)
}

/**
 * @description A factory class providing static methods to create various `ArgumentMatcher` instances.
 */
@!APILevel[
    since: "22"
]
public class Matchers {
    /**
     * @description Creates a matcher that uses a predicate function to determine if an argument matches.
     * @param predicate A function that takes an argument of type `T` and returns `true` for a match.
     * @returns A `TypedMatcher<T>` that uses the predicate.
     */
    @!APILevel[
        since: "22"
    ]
    public static func argThat<T>(predicate: (T) -> Bool): TypedMatcher<T>
    
    /**
     * @description Creates a matcher that uses a predicate function to determine if an argument does *not* match.
     * @param predicate A function that takes an argument of type `T` and returns `true` for a non-match.
     * @returns A `TypedMatcher<T>` that uses the negated predicate.
     */
    @!APILevel[
        since: "22"
    ]
    public static func argThatNot<T>(predicate: (T) -> Bool): TypedMatcher<T>
    
    /**
     * @description Creates a matcher that uses a predicate and also captures the argument value into a `ValueListener`.
     * @param listener A `ValueListener` to capture the argument value.
     * @param predicate A function to determine if the argument matches.
     * @returns A `TypedMatcher<T>` that captures the value and uses the predicate.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func argThat<T>(listener: ValueListener<T>, predicate: (T) -> Bool): TypedMatcher<T>
    
    /**
     * @description Creates a matcher that checks for reference equality (`===`).
     * @param target The target object to compare against.
     * @returns A `TypedMatcher<T>` that checks for the same instance.
     */
    @!APILevel[
        since: "22"
    ]
    public static func same<T>(target: T): TypedMatcher<T> where T <: Object
    
    /**
     * @description Creates a matcher that checks for value equality (`==`).
     * @param target The target value to compare against.
     * @returns A `TypedMatcher<T>` that checks for equality.
     */
    @!APILevel[
        since: "22"
    ]
    public static func eq<T>(target: T): TypedMatcher<T> where T <: Equatable<T>
    
    /**
     * @description Creates a matcher that checks if an argument is an instance of a specific type `T`.
     * @returns A `TypedMatcher<T>` that checks the argument's type.
     */
    @!APILevel[
        since: "22"
    ]
    public static func ofType<T>(): TypedMatcher<T>
    
    /**
     * @description Creates a matcher that matches any value.
     * @returns An `AnyMatcher`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func any(): AnyMatcher
    
    /**
     * @description Creates a matcher that captures the argument's value into a `ValueListener` and always matches.
     * @param listener The `ValueListener` to capture the argument.
     * @returns A `TypedMatcher<T>` that captures the value.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func capture<T>(listener: ValueListener<T>): TypedMatcher<T>
    
    /**
     * @description Creates a matcher for an argument with a default value. This is used internally by the mock macro.
     * @param target The default value.
     * @returns A `TypedMatcher<T>`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func default<T>(target: T): TypedMatcher<T>
}

extend<T> TypedMatcher<T> {
    /**
     * @description Retrieves the value captured by this matcher. This is used internally by the framework.
     * @returns The captured value of type `T`.
     */
    @!APILevel[
        since: "22"
    ]
    public func value(): T
}

extend AnyMatcher {
    /**
     * @description Retrieves the value captured by this matcher. This is used internally by the framework.
     * @returns The captured value, cast to type `T`.
     */
    @!APILevel[
        since: "22"
    ]
    public func value<T>(): T
}

/**
 * @description An interface for capturing and inspecting argument values passed to mocked functions.
 */
@!APILevel[
    since: "22"
]
public interface ValueListener<T> {
    /**
     * @description Gets the last value captured by this listener.
     * @returns An `Option` containing the last value, or `None` if no value has been captured.
     */
    @!APILevel[
        since: "22"
    ]
    func lastValue(): Option<T>
    
    /**
     * @description Gets all values captured by this listener.
     * @returns An array containing all captured values in the order they were captured.
     */
    @!APILevel[
        since: "22"
    ]
    func allValues(): Array<T>
    
    /**
     * @description Adds a callback function to be invoked each time a new value is captured.
     * @param callback The function to call with the captured value.
     */
    @!APILevel[
        since: "22"
    ]
    func addCallback(callback: (T) -> Unit): Unit
    
    /**
     * @description Creates a new `ValueListener`.
     * @returns A new `ValueListener` instance.
     */
    @!APILevel[
        since: "22"
    ]
    static func new(): ValueListener<T>
    
    /**
     * @description Creates a new `ValueListener` with a pre-configured callback.
     * @param callback The function to call for each captured value.
     * @returns A new `ValueListener` instance with the callback.
     */
    @!APILevel[
        since: "22"
    ]
    static func onEach(callback: (T) -> Unit): ValueListener<T>
}

/**
 * @description A class used by the mocking framework to configure stubs. Not intended for direct use.
 */
@!APILevel[
    since: "22"
]
public class ConfigureMock {
    /**
     * @description Internal method to begin stubbing a function call.
     * @param stubCall A lambda representing the function call to be stubbed.
     * @param matchers An array of `ArgumentMatcher`s for the function's parameters.
     * @param prefixRefName The name of the mock object instance.
     * @param methodName The name of the method being stubbed.
     * @param callDescription A string representation of the call.
     * @param lineNumber The line number where the stubbing occurs.
     * @returns A `MethodActionSelector` to define the stub's behavior.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func stubFunction<TRet>(
        stubCall: () -> TRet,
        matchers: Array<ArgumentMatcher>,
        prefixRefName: Option<String>,
        methodName: String,
        callDescription: String,
        lineNumber: Int64
    ): MethodActionSelector<TRet>
    
    /**
     * @description Internal method to begin stubbing a property getter.
     * @param stubCall A lambda representing the getter call.
     * @param prefixRefName The name of the mock object instance.
     * @param fieldOrPropertyName The name of the property.
     * @param callDescription A string representation of the call.
     * @param lineNumber The line number where the stubbing occurs.
     * @returns A `GetterActionSelector` to define the stub's behavior.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func stubGetter<TRet>(
        stubCall: () -> TRet,
        prefixRefName: Option<String>,
        fieldOrPropertyName: String,
        callDescription: String,
        lineNumber: Int64
    ): GetterActionSelector<TRet>
    
    /**
     * @description Internal method to begin stubbing a property setter.
     * @param stubCall A lambda representing the setter call.
     * @param _ A lambda to infer the argument type.
     * @param matcher An `ArgumentMatcher` for the value being set.
     * @param prefixRefName The name of the mock object instance.
     * @param fieldOrPropertyName The name of the property.
     * @param callDescription A string representation of the call.
     * @param lineNumber The line number where the stubbing occurs.
     * @returns A `SetterActionSelector` to define the stub's behavior.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func stubSetter<TArg>(
        stubCall: () -> Unit,
        _: () -> TArg,
        matcher: ArgumentMatcher,
        prefixRefName: Option<String>,
        fieldOrPropertyName: String,
        callDescription: String,
        lineNumber: Int64
    ): SetterActionSelector<TArg>
}

/**
 * @description Defines the default behavior for unstubbed methods on a mock object.
 */
@!APILevel[
    since: "22"
]
public enum StubMode {
    /**
     * @description Unstubbed methods will return default values (e.g., 0, false, empty string, null).
     */
    @!APILevel[
        since: "22"
    ]
    ReturnsDefaults |
    /**
     * @description Getters and setters for properties will be backed by `SyntheticField`s, allowing state to be stored on the mock.
     */
    @!APILevel[
        since: "22"
    ]
    SyntheticFields
}

/**
 * @description Creates a mock object of a given type `T`.
 * The mock will have default behavior for all its methods and properties.
 * @returns A new mock object of type `T`.
 * @throws IllegalArgumentException if an argument is invalid.
 */
@Frozen
@!APILevel[
    since: "22",
    throwexception: true
]
public func mock<T>(): T

/**
 * @description Creates a mock object of a given type `T` with specified stubbing modes.
 * @param modes An array of `StubMode`s to configure the mock's behavior.
 * @returns A new mock object of type `T`.
 * @throws IllegalArgumentException if an argument is invalid.
 */
@Frozen
@!APILevel[
    since: "22",
    throwexception: true
]
public func mock<T>(modes: Array<StubMode>): T

/**
 * @description Creates a spy object that wraps an existing object.
 * By default, all calls to the spy will be delegated to the real object.
 * You can then selectively stub or verify methods on the spy.
 * @param objectToSpyOn The real object to wrap.
 * @returns A new spy object of type `T`.
 * @throws IllegalArgumentException if an argument is invalid.
 */
@Frozen
@!APILevel[
    since: "22",
    throwexception: true
]
public func spy<T>(objectToSpyOn: T): T

/**
 * @description A base class for exceptions in the mock framework that can be pretty-printed for clear error messages.
 */
@!APILevel[
    since: "22"
]
public abstract class PrettyException <: Exception & PrettyPrintable {
    /**
     * @description Pretty-prints the exception details to the given `PrettyPrinter`.
     * @param to The `PrettyPrinter` to write to.
     * @returns The `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func pprint(to: PrettyPrinter): PrettyPrinter
}

/**
 * @description An exception indicating an unexpected internal error within the mock framework.
 */
@!APILevel[
    since: "22"
]
public class MockFrameworkInternalError <: PrettyException {
}

/**
 * @description A general-purpose exception for the mock framework.
 */
@!APILevel[
    since: "22"
]
public class MockFrameworkException <: PrettyException {
}

/**
 * @description An exception thrown when a verification fails because an expected call did not happen.
 */
@!APILevel[
    since: "22"
]
public open class ExpectationFailedException <: PrettyException {
}

/**
 * @description An exception thrown when a stub is defined but never used.
 */
@!APILevel[
    since: "22"
]
public class UnnecessaryStubbingException <: PrettyException {
}

/**
 * @description An exception thrown when a method is called on a mock object, but no stub has been defined for it.
 */
@!APILevel[
    since: "22"
]
public class UnstubbedInvocationException <: PrettyException {
}

/**
 * @description An exception thrown when a call is made outside of a stubbing or verification block.
 */
@!APILevel[
    since: "22"
]
public class UnhandledCallException <: PrettyException {
}

/**
 * @description An exception thrown when a `Verify.that` statement fails.
 */
@!APILevel[
    since: "22"
]
public class VerificationFailedException <: PrettyException {
}




/**
 * @description A synthetic, type-safe container for a value, used to back properties on mock objects created with `StubMode.SyntheticFields`.
 */
@!APILevel[
    since: "22"
]
public class SyntheticField<T> {
    /**
     * @description Creates a new `SyntheticField` with an initial value.
     * @param initialValue The initial value for the field.
     * @returns A new `SyntheticField` instance.
     */
    @!APILevel[
        since: "22"
    ]
    public static func create(initialValue!: T): SyntheticField<T>
}


/**
 * @description Provides static methods for managing the lifecycle of mock sessions.
 */
@!APILevel[
    since: "22"
]
public class MockFramework {
    /**
     * @description Opens a new mock session. Sessions are isolated contexts for stubbing and verification.
     * @param name A descriptive name for the session.
     * @param sessionKind The kind of session to open (`Forbidden`, `Stateless`, `Verifiable`).
     * @throws MockFrameworkException if a session is already active.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func openSession(name: String, sessionKind: MockSessionKind): Unit
    
    /**
     * @description Closes the currently active mock session and performs any necessary cleanup or verification.
     * @throws MockFrameworkException if no session is active.
     * @throws ExpectationFailedException if verifications fail upon closing.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func closeSession(): Unit
}





/**
 * @description Defines the kind of mock session, controlling how calls are handled and verified.
 */
@!APILevel[
    since: "22"
]
public enum MockSessionKind {
    /**
     * @description No mock interactions are allowed. Any call to a mock will throw an exception.
     */
    @!APILevel[
        since: "22"
    ]
    Forbidden |
    /**
     * @description Allows stubbing, but does not record invocations for verification.
     */
    @!APILevel[
        since: "22"
    ]
    Stateless |
    /**
     * @description Allows both stubbing and verification of interactions.
     */
    @!APILevel[
        since: "22"
    ]
    Verifiable
}

/**
 * @description An `ArgumentMatcher` that specifically matches an `Option.None` value.
 */
@!APILevel[
    since: "22"
]
public class NoneMatcher <: ArgumentMatcher {
    /**
     * @description Checks if the given argument is `Option.None`.
     * @param arg The argument to check.
     * @returns `true` if `arg` is `None`, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public override func matchesAny(arg: Any): Bool
}

extend Matchers {
    /**
     * @description Creates a matcher that matches `Option.None`.
     * @returns A `NoneMatcher`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func none(): NoneMatcher
}

extend NoneMatcher {
    /**
     * @description Returns `Option.None`. Used internally by the framework.
     * @returns `Option.None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func value<T>(): Option<T>
}

/**
 * @description Selects how many times a stubbed action should be applied.
 */
@!APILevel[
    since: "22"
]
public class CardinalitySelector<A> where A <: ActionSelector {
    /**
     * @description Specifies that the action can be applied any number of times (zero or more).
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func anyTimes(): Unit
    
    /**
     * @description Specifies that the action should be applied exactly once.
     * @returns A `Continuation` to chain further actions for subsequent calls.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func once(): Continuation<A>
    
    /**
     * @description Specifies that the action should be applied at least once.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func atLeastOnce(): Unit
    
    /**
     * @description Specifies that the action should be applied an exact number of times.
     * @param expectedTimes The exact number of times the action should be applied.
     * @returns A `Continuation` to chain further actions.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func times(expectedTimes: Int64): Continuation<A>
    
    /**
     * @description Specifies that the action should be applied within a range of times (inclusive).
     * @param min The minimum number of times.
     * @param max The maximum number of times.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func times(min!: Int64, max!: Int64): Unit
    
    /**
     * @description Specifies that the action should be applied at least a minimum number of times.
     * @param minTimesExpected The minimum number of times.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func atLeastTimes(minTimesExpected: Int64): Unit
}

/**
 * @description Allows chaining of stubbing actions for consecutive calls.
 */
@!APILevel[
    since: "22"
]
public class Continuation<A> where A <: ActionSelector {
    /**
     * @description Begins defining the action for the next call.
     * @returns An `ActionSelector` to define the behavior of the next consecutive call.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func then(): A
}

extend<T> Option<T> <: UntypedOption {
    /**
     * @description Gets the value of the option as a nullable `Any`.
     * @returns The value, or `null` if the option is `None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func value(): ?Any
}

/**
 * @description Specifies whether unordered verification should be exhaustive.
 */
@!APILevel[
    since: "22"
]
public enum Exhaustiveness {
    /**
     * @description All calls in the invocation log must be matched by a verification statement.
     */
    @!APILevel[
        since: "22"
    ]
    Exhaustive |
    /**
     * @description Only the specified verification statements must be matched; other calls are ignored.
     */
    @!APILevel[
        since: "22"
    ]
    Partial
}

/**
 * @description Provides static methods for verifying interactions with mock objects.
 */
@!APILevel[
    since: "22"
]
public class Verify {
    /**
     * @description Verifies that a single interaction occurred.
     * @param statement The verification statement describing the expected interaction.
     * @throws MockFrameworkException if there is a general mock framework error.
     * @throws VerificationFailedException if the expected interaction did not occur.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func that(statement: VerifyStatement): Unit
    
    /**
     * @description Verifies a set of interactions occurred, without regard to their order.
     * @param exhaustive Specifies if all interactions must be accounted for.
     * @param collectStatements A lambda that collects the verification statements.
     * @throws MockFrameworkException if there is a general mock framework error.
     * @throws VerificationFailedException if the verification fails.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func unordered(
        exhaustive: Exhaustiveness,
        collectStatements: (UnorderedVerifier) -> Unit
    ): Unit
    
    /**
     * @description Verifies a set of interactions occurred, without regard to their order (defaults to partial).
     * @param collectStatements A lambda that collects the verification statements.
     * @throws MockFrameworkException if there is a general mock framework error.
     * @throws VerificationFailedException if the verification fails.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func unordered(collectStatements: (UnorderedVerifier) -> Unit): Unit
    
    /**
     * @description Verifies a set of interactions occurred, without regard to their order (defaults to partial).
     * @param statements An array of verification statements.
     * @throws MockFrameworkException if there is a general mock framework error.
     * @throws VerificationFailedException if the verification fails.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func unordered(statements: Array<VerifyStatement>): Unit
    
    /**
     * @description Verifies a set of interactions occurred, without regard to their order.
     * @param exhaustive Specifies if all interactions must be accounted for.
     * @param statements An array of verification statements.
     * @throws MockFrameworkException if there is a general mock framework error.
     * @throws VerificationFailedException if the verification fails.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func unordered(
        exhaustive: Exhaustiveness,
        statements: Array<VerifyStatement>
    ): Unit
    
    /**
     * @description Verifies that a sequence of interactions occurred in a specific order.
     * @param collectStatements A lambda that collects the ordered verification statements.
     * @throws MockFrameworkException if there is a general mock framework error.
     * @throws VerificationFailedException if the verification fails.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func ordered(collectStatements: (OrderedVerifier) -> Unit): Unit
    
    /**
     * @description Verifies that a sequence of interactions occurred in a specific order.
     * @param statements An array of verification statements in the expected order.
     * @throws MockFrameworkException if there is a general mock framework error.
     * @throws VerificationFailedException if the verification fails.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func ordered(statements: Array<VerifyStatement>): Unit
    
    /**
     * @description Clears the log of all recorded invocations for the current session.
     */
    @!APILevel[
        since: "22"
    ]
    public static func clearInvocationLog(): Unit
    
    /**
     * @description Verifies that no interactions occurred with the specified mock objects.
     * @param mockObjects An array of mock objects to check.
     * @throws MockFrameworkException if there is a general mock framework error.
     * @throws VerificationFailedException if any interaction is found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func noInteractions(mockObjects: Array<Object>): Unit
}

/**
 * @description A helper class for building a set of unordered verification statements.
 */
@!APILevel[
    since: "22"
]
public class UnorderedVerifier {
    /**
     * @description Adds a verification statement to the set of unordered checks.
     * @param statement The verification statement to add.
     * @returns The same `UnorderedVerifier` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func checkThat(statement: VerifyStatement): UnorderedVerifier
}

/**
 * @description A helper class for building a sequence of ordered verification statements.
 */
@!APILevel[
    since: "22"
]
public class OrderedVerifier {
    /**
     * @description Adds a verification statement to the sequence of ordered checks.
     * @param statement The verification statement to add.
     * @returns The same `OrderedVerifier` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func checkThat(statement: VerifyStatement): OrderedVerifier
}

/**
 * @description Represents a statement to be verified, including the call, argument matchers, and expected cardinality.
 */
@!APILevel[
    since: "22"
]
public class VerifyStatement {
    /**
     * @description Internal factory method to create a `VerifyStatement` from a stub call.
     * @param stubCall A lambda representing the call to verify.
     * @param matchers The argument matchers for the call.
     * @param objName The name of the mock object instance.
     * @param declarationName The name of the method or property.
     * @param callDescription A string representation of the call.
     * @param lineNumber The line number where the verification occurs.
     * @returns A new `VerifyStatement`.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromStub<R>(
        stubCall: () -> R,
        matchers: Array<ArgumentMatcher>,
        objName: Option<String>,
        declarationName: String,
        callDescription: String,
        lineNumber: Int64
    ): VerifyStatement
    
    /**
     * @description Specifies that the interaction should have occurred exactly once.
     * @returns The same `VerifyStatement` instance for chaining.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func once(): VerifyStatement
    
    /**
     * @description Specifies that the interaction should have occurred at least once.
     * @returns The same `VerifyStatement` instance for chaining.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func atLeastOnce(): VerifyStatement
    
    /**
     * @description Specifies that the interaction should have occurred an exact number of times.
     * @param expectedTimes The exact number of expected occurrences.
     * @returns The same `VerifyStatement` instance for chaining.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func times(expectedTimes: Int64): VerifyStatement
    
    /**
     * @description Specifies that the interaction should have occurred within a range of times (inclusive).
     * @param min The minimum number of times.
     * @param max The maximum number of times.
     * @returns The same `VerifyStatement` instance for chaining.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func times(min!: Int64, max!: Int64): VerifyStatement
    
    /**
     * @description Specifies that the interaction should have occurred at least a minimum number of times.
     * @param minTimesExpected The minimum number of expected occurrences.
     * @returns The same `VerifyStatement` instance for chaining.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func atLeastTimes(minTimesExpected: Int64): VerifyStatement
    
    /**
     * @description Specifies that the interaction should never have occurred.
     * @returns The same `VerifyStatement` instance for chaining.
     * @throws MockFrameworkException if there is a general mock framework error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func never(): VerifyStatement
}



