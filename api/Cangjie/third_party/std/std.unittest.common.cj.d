package std.unittest.common
import std.collection.*

import std.convert.Parsable
import std.sync.ReentrantMutex
import std.collection.ArrayList
import std.collection.fold
import std.collection.enumerate
import std.convert.Formattable

/**
 * @description A type-safe key for specifying configuration options.
 */
@!APILevel[
    since: "22"
]
public interface KeyFor<T> {
    /**
     * @description The name of the configuration key, used for command-line arguments and string-based lookups.
     */
    @!APILevel[
        since: "22"
    ]
    prop name: String
}

/**
 * @description A configuration key for specifying test tags.
 */
@!APILevel[
    since: "22"
]
public struct KeyTags <: KeyFor<Array<String>> {
    /**
     * @description The singleton instance of `KeyTags`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop tags: KeyTags
    
    /**
     * @description The name of the configuration key, "tags".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description An abstract base class for keys used in the `Configuration` map.
 * It ensures type safety and provides a common base for all configuration keys.
 */
@!APILevel[
    since: "22"
]
sealed abstract class ConfigurationKey <: Equatable<ConfigurationKey> & Hashable {
    /**
     * @description Computes the hash code for the configuration key.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public override func hashCode(): Int64
    
    /**
     * @description Checks if this configuration key is equal to another.
     * @param other The other configuration key to compare with.
     * @returns `true` if the keys are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public override operator func ==(other: ConfigurationKey)
    
    /**
     * @description Checks if this configuration key is not equal to another.
     * @param other The other configuration key to compare with.
     * @returns `true` if the keys are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public override operator func !=(other: ConfigurationKey)
}

extend ConfigurationKey {
    /**
     * @description Creates a new `ConfigurationKey` with the given name.
     * @param name The name of the key.
     * @returns A new `ConfigurationKey` instance.
     */
    @!APILevel[
        since: "22"
    ]
    public static func create<T>(name: String): ConfigurationKey
}

/**
 * @description A class for managing test configurations. It stores key-value pairs
 * that control various aspects of test execution, such as filters, timeouts, and reporting.
 */
@!APILevel[
    since: "22"
]
public class Configuration <: ToString {
    /**
     * @description Creates a new, empty `Configuration`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()
    
    /**
     * @description Gets the value associated with the given type-safe key.
     * @param key The `KeyFor<T>` to look up.
     * @returns The value if found, otherwise `None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func get<T>(key: KeyFor<T>): ?T
    
    /**
     * @description Gets the value associated with the given name.
     * @param name The name of the key to look up.
     * @returns The value if found, otherwise `None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func getByName<T>(name: String): ?T
    
    /**
     * @description Sets the value for the given type-safe key.
     * @param key The `KeyFor<T>` to set.
     * @param value The value to associate with the key.
     */
    @!APILevel[
        since: "22"
    ]
    public func set<T>(key: KeyFor<T>, value: T): Unit
    
    /**
     * @description Sets the value for the given key name.
     * @param name The name of the key to set.
     * @param value The value to associate with the key.
     */
    @!APILevel[
        since: "22"
    ]
    public func setByName<T>(name: String, value: T): Unit
    
    /**
     * @description Removes the value associated with the given type-safe key.
     * @param key The `KeyFor<T>` to remove.
     * @returns The removed value if it existed, otherwise `None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func remove<T>(key: KeyFor<T>): ?T
    
    /**
     * @description Removes the value associated with the given key name.
     * @param key The name of the key to remove.
     * @returns The removed value if it existed, otherwise `None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func removeByName<T>(key: String): ?T
    
    /**
     * @description Creates a deep copy of this `Configuration`.
     * @returns A new `Configuration` instance with the same key-value pairs.
     */
    @!APILevel[
        since: "22"
    ]
    public func clone(): Configuration
    
    /**
     * @description Returns a string representation of the configuration.
     * @returns A string containing the key-value pairs in the configuration.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
    
    /**
     * @description Merges two configurations. Values in the `child` configuration override those in the `parent`.
     * @param parent The base configuration.
     * @param child The configuration to merge, taking precedence.
     * @returns A new `Configuration` containing the merged key-value pairs.
     */
    @!APILevel[
        since: "22"
    ]
    public static func merge(parent: Configuration, child: Configuration): Configuration
}

/**
 * @description An interface for providing data to parameterized tests.
 */
@!APILevel[
    since: "22"
]
public interface DataProvider<T> {
    /**
     * @description Provides an iterable sequence of data for a test.
     * @returns An `Iterable` of data items.
     */
    @!APILevel[
        since: "22"
    ]
    func provide(): Iterable<T>
}

/**
 * @description An interface for shrinking data in property-based testing. When a failing test case is found, the shrinker attempts to find a smaller, simpler failing case.
 */
@!APILevel[
    since: "22"
]
public interface DataShrinker<T> {
    /**
     * @description Shrinks a given value into a sequence of smaller or simpler values.
     * @param value The value to shrink.
     * @returns An `Iterable` of shrunken values.
     */
    @!APILevel[
        since: "22"
    ]
    func shrink(value: T): Iterable<T>
}

/**
 * @description An interface that combines a `DataProvider` and a `DataShrinker` for property-based testing.
 */
@!APILevel[
    since: "22"
]
public interface DataStrategy<T> {
    /**
     * @description Gets the data provider for this strategy based on the given configuration.
     * @param configuration The test configuration.
     * @returns A `DataProvider` instance.
     */
    @!APILevel[
        since: "22"
    ]
    func provider(configuration: Configuration): DataProvider<T>
    
    /**
     * @description Gets the data shrinker for this strategy based on the given configuration.
     * @param configuration The test configuration.
     * @returns A `DataShrinker` instance.
     */
    @!APILevel[
        since: "22"
    ]
    func shrinker(configuration: Configuration): DataShrinker<T>
    
    /**
     * @description Indicates whether the data strategy can generate an infinite sequence of values.
     */
    @!APILevel[
        since: "22"
    ]
    prop isInfinite: Bool
}

extend<T> Array<T> <: DataStrategy<T> & DataProvider<T> {
    /**
     * @description Provides the array itself as an iterable sequence of data.
     * @returns An `Iterable` over the elements of the array.
     */
    @!APILevel[
        since: "22"
    ]
    public func provide(): Iterable<T>
    
    /**
     * @description Indicates that an array provides a finite sequence of data.
     */
    @!APILevel[
        since: "22"
    ]
    public prop isInfinite: Bool
    
    /**
     * @description Gets the array itself as the data provider.
     * @param _ The test configuration (unused).
     * @returns This array instance as a `DataProvider`.
     */
    @!APILevel[
        since: "22"
    ]
    public func provider(_: Configuration): DataProvider<T>
}

extend<T> Range<T> <: DataStrategy<T> & DataProvider<T> {
    /**
     * @description Provides the range itself as an iterable sequence of data.
     * @returns An `Iterable` over the elements of the range.
     */
    @!APILevel[
        since: "22"
    ]
    public func provide(): Iterable<T>
    
    /**
     * @description Indicates whether the range is infinite.
     */
    @!APILevel[
        since: "22"
    ]
    public prop isInfinite: Bool
    
    /**
     * @description Gets the range itself as the data provider.
     * @param _ The test configuration (unused).
     * @returns This range instance as a `DataProvider`.
     */
    @!APILevel[
        since: "22"
    ]
    public func provider(_: Configuration): DataProvider<T>
}


extend DataModel <: ToJson {
    /**
     * @description Deserializes a `JsonValue` into a `DataModel`.
     * @param jv The `JsonValue` to deserialize.
     * @returns The deserialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func fromJson(jv: JsonValue): DataModel
    
    /**
     * @description Serializes the `DataModel` into a `JsonValue`.
     * @returns The serialized `JsonValue`.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJson(): JsonValue
}

/**
 * @description An exception thrown when a test configuration option fails validation.
 */
@!APILevel[
    since: "22"
]
public class UnittestOptionValidationException <: Exception {
}

/**
 * @description Represents the result of validating a test configuration option.
 */
@!APILevel[
    since: "22"
]
public enum OptionValidity {
    /**
     * @description The type of the option is unknown or not registered.
     */
    @!APILevel[
        since: "22"
    ]
    UnknownOptionType |
    /**
     * @description The option value is invalid. Contains a message explaining why.
     */
    @!APILevel[
        since: "22"
    ]
    InvalidOption(String) |
    /**
     * @description The option is valid. Contains the corresponding `ConfigurationKey`.
     */
    @!APILevel[
        since: "22"
    ]
    ValidOption(ConfigurationKey)
}

/**
 * @description A flag indicating whether the unittest options registry is closed for new registrations.
 */
@!APILevel[
    since: "22"
]
public var unittestOptionsRegistryClosed = false

/**
 * @description A struct holding information about a test configuration option, such as its type and description.
 */
@!APILevel[
    since: "22"
]
public struct OptionInfo {
    /**
     * @description The name of the option.
     */
    @!APILevel[
        since: "22"
    ]
    public let name: String

    /**
     * @description Whether.
     */
    @!APILevel[
        since: "22"
    ]
    public let userDefined: Bool

    /**
     * @description The description of the option.
     */
    @!APILevel[
        since: "22"
    ]
    public let description: ?String

    /**
     * @description The map from option type names to their descriptions.
     */
    @!APILevel[
        since: "22"
    ]
    public let types: HashMap<String, ?String> = HashMap()
}

/**
 * @description A global map that stores `OptionInfo` for all registered test configuration options.
 */
@!APILevel[
    since: "22"
]
public let optionsInfo: HashMap<String, OptionInfo> = HashMap()

/**
 * @description Registers a validator function for a test configuration option.
 * @param name The name of the option.
 * @param validator The validation function.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func registerOptionValidator(name: String, validator: (Any) -> OptionValidity): Unit

/**
 * @description Sets descriptive information for a test configuration option.
 * @param name The name of the option.
 * @param types An array of strings representing the allowed types for the option's value.
 * @param description An optional description of the option.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func setOptionInfo(
    name: String,
    types: Array<String>,
    description!: ?String = None
): Unit

/**
 * @description Sets or updates descriptive information for a specific type of a test configuration option.
 * @param name The name of the option.
 * @param description An optional description of the option.
 * @param ty The specific type for which information is being set.
 * @param typeDescription A description for this specific type.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func setOrUpdateOptionInfo(
    name: String,
    description: ?String,
    ty: String,
    typeDescription: String
): Unit

/**
 * @description An enum representing colors for console output.
 */
@!APILevel[
    since: "22"
]
public enum Color <: Equatable<Color> {
    /**
     * @description Red color.
     */
    @!APILevel[
        since: "22"
    ]
    RED |
    /**
     * @description Green color.
     */
    @!APILevel[
        since: "22"
    ]
    GREEN |
    /**
     * @description Yellow color.
     */
    @!APILevel[
        since: "22"
    ]
    YELLOW |
    /**
     * @description Blue color.
     */
    @!APILevel[
        since: "22"
    ]
    BLUE |
    /**
     * @description Cyan color.
     */
    @!APILevel[
        since: "22"
    ]
    CYAN |
    /**
     * @description Magenta color.
     */
    @!APILevel[
        since: "22"
    ]
    MAGENTA |
    /**
     * @description Gray color.
     */
    @!APILevel[
        since: "22"
    ]
    GRAY |
    /**
     * @description The default terminal color.
     */
    @!APILevel[
        since: "22"
    ]
    DEFAULT_COLOR
    /**
     * @description Checks if this color is equal to another.
     * @param other The other color to compare with.
     * @returns `true` if the colors are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: Color): Bool
    
    /**
     * @description Checks if this color is not equal to another.
     * @param other The other color to compare with.
     * @returns `true` if the colors are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: Color)
}

/**
 * @description An abstract class for building formatted, indented, and colored text output.
 */
@!APILevel[
    since: "22"
]
public abstract class PrettyPrinter {
    /**
     * @description Creates a `PrettyPrinter`.
     * @param indentationSize The number of spaces for each indentation level.
     * @param startingIndent The initial indentation level.
     */
    @!APILevel[
        since: "22"
    ]
    public PrettyPrinter(let indentationSize!: UInt64 = 4, let startingIndent!: UInt64 = 0)
    
    /**
     * @description Indicates if the printer is at the top level (no indentation).
     */
    @!APILevel[
        since: "22"
    ]
    public prop isTopLevel: Bool
    
    /**
     * @description Increases the indentation level for the code executed within the `body` lambda.
     * @param body A lambda containing the code to be indented.
     * @returns This `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func indent(body: () -> Unit): PrettyPrinter
    
    /**
     * @description Increases the indentation by a specified number of levels for the code within the `body` lambda.
     * @param indents The number of indentation levels to add.
     * @param body A lambda containing the code to be indented.
     * @returns This `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func indent(indents: UInt64, body: () -> Unit): PrettyPrinter
    
    /**
     * @description Applies a custom character offset for the code within the `body` lambda.
     * @param symbols The number of characters to offset.
     * @param body A lambda containing the code to be offset.
     * @returns This `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func customOffset(symbols: UInt64, body: () -> Unit): PrettyPrinter
    
    /**
     * @description Applies a color to the text generated within the `body` lambda.
     * @param color The color to apply.
     * @param body A lambda that generates the text to be colored.
     * @returns This `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func colored(color: Color, body: () -> Unit): PrettyPrinter
    
    /**
     * @description Fills a limited space with content generated by the `body` lambda.
     * @param spaceSize The size of the space to fill.
     * @param body A lambda that generates the content.
     * @returns This `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public open func fillLimitedSpace(spaceSize: Int64, body: () -> Unit): PrettyPrinter
    
    /**
     * @description Appends a string with a specified color.
     * @param color The color to apply.
     * @param text The text to append.
     * @returns This `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func colored(color: Color, text: String): PrettyPrinter
    
    /**
     * @description Appends a string to the output.
     * @param text The text to append.
     * @returns This `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func append(text: String): PrettyPrinter
    
    /**
     * @description Appends text centered within a given space.
     * @param text The text to append.
     * @param space The total space width.
     * @returns This `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func appendCentered(text: String, space: UInt64): PrettyPrinter
    
    /**
     * @description Appends text left-aligned within a given space.
     * @param text The text to append.
     * @param space The total space width.
     * @returns This `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func appendLeftAligned(text: String, space: UInt64): PrettyPrinter
    
    /**
     * @description Appends text right-aligned within a given space.
     * @param text The text to append.
     * @param space The total space width.
     * @returns This `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func appendRightAligned(text: String, space: UInt64): PrettyPrinter
    
    /**
     * @description Appends a `PrettyPrintable` object to the output.
     * @param value The `PrettyPrintable` object to append.
     * @returns This `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func append<PP>(value: PP): PrettyPrinter where PP <: PrettyPrintable
    
    /**
     * @description Appends a newline character to the output.
     * @returns This `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func newLine(): PrettyPrinter
    
    /**
     * @description Appends a string followed by a newline character.
     * @param text The text to append.
     * @returns This `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func appendLine(text: String): PrettyPrinter
    
    /**
     * @description Appends a `PrettyPrintable` object followed by a newline character.
     * @param value The `PrettyPrintable` object to append.
     * @returns This `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func appendLine<PP>(value: PP): PrettyPrinter where PP <: PrettyPrintable
}

/**
 * @description A concrete `PrettyPrinter` that builds a string representation of the formatted text.
 */
@!APILevel[
    since: "22"
]
public class PrettyText <: PrettyPrinter & PrettyPrintable & ToString {
    /**
     * @description Creates an empty `PrettyText` object.
     */
    @!APILevel[
        since: "22"
    ]
    public init()
    
    /**
     * @description Creates a `PrettyText` object initialized with a string.
     * @param string The initial string content.
     */
    @!APILevel[
        since: "22"
    ]
    public init(string: String)
    
    /**
     * @description Creates a `PrettyText` object from a `PrettyPrintable` object.
     * @param pp The `PrettyPrintable` object.
     */
    @!APILevel[
        since: "22"
    ]
    public static func of<PP>(pp: PP) where PP <: PrettyPrintable
    
    /**
     * @description Checks if the `PrettyText` object is empty.
     * @returns `true` if empty, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool
    
    /**
     * @description Appends the content of this `PrettyText` to another `PrettyPrinter`.
     * @param to The target `PrettyPrinter`.
     * @returns The target `PrettyPrinter` instance.
     */
    @!APILevel[
        since: "22"
    ]
    public func pprint(to: PrettyPrinter): PrettyPrinter
    
    /**
     * @description Returns the string representation of the formatted text.
     * @returns The final formatted string.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description An interface for objects that can be pretty-printed.
 */
@!APILevel[
    since: "22"
]
public interface PrettyPrintable {
    /**
     * @description Pretty-prints the object to the given `PrettyPrinter`.
     * @param to The `PrettyPrinter` to write to.
     * @returns The `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    func pprint(to: PrettyPrinter): PrettyPrinter
}

extend<T> Array<T> <: PrettyPrintable where T <: PrettyPrintable {
    /**
     * @description Pretty-prints the array to the given `PrettyPrinter`.
     * @param to The `PrettyPrinter` to write to.
     * @returns The `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func pprint(to: PrettyPrinter): PrettyPrinter
}

extend<T> ArrayList<T> <: PrettyPrintable where T <: PrettyPrintable {
    /**
     * @description Pretty-prints the `ArrayList` to the given `PrettyPrinter`.
     * @param to The `PrettyPrinter` to write to.
     * @returns The `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func pprint(to: PrettyPrinter): PrettyPrinter
}

extend Color <: Serializable<Color> {
    /**
     * @description Serializes the `Color` enum to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into a `Color` enum.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `Color`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): Color
}

extend PrettyPrintableTextChunk <: Serializable<PrettyPrintableTextChunk> {
    /**
     * @description Serializes the `PrettyPrintableTextChunk` to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into a `PrettyPrintableTextChunk`.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `PrettyPrintableTextChunk`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): PrettyPrintableTextChunk
}

extend PrettyText <: Serializable<PrettyText> {
    /**
     * @description Serializes the `PrettyText` object to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into a `PrettyText` object.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `PrettyText` object.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): PrettyText
}

extend Int64 <: Serializable<Int64> {
    /**
     * @description Serializes the `Int64` value to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into an `Int64` value.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `Int64`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): Int64
}

extend Int32 <: Serializable<Int32> {
    /**
     * @description Serializes the `Int32` value to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into an `Int32` value.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `Int32`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): Int32
}

extend Int16 <: Serializable<Int16> {
    /**
     * @description Serializes the `Int16` value to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into an `Int16` value.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `Int16`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): Int16
}

extend Int8 <: Serializable<Int8> {
    /**
     * @description Serializes the `Int8` value to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into an `Int8` value.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `Int8`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): Int8
}

extend UInt64 <: Serializable<UInt64> {
    /**
     * @description Serializes the `UInt64` value to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into a `UInt64` value.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `UInt64`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): UInt64
}

extend UInt32 <: Serializable<UInt32> {
    /**
     * @description Serializes the `UInt32` value to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into a `UInt32` value.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `UInt32`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): UInt32
}

extend UInt16 <: Serializable<UInt16> {
    /**
     * @description Serializes the `UInt16` value to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into a `UInt16` value.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `UInt16`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): UInt16
}

extend UInt8 <: Serializable<UInt8> {
    /**
     * @description Serializes the `UInt8` value to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into a `UInt8` value.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `UInt8`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): UInt8
}

extend Float64 <: Serializable<Float64> {
    /**
     * @description Serializes the `Float64` value to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into a `Float64` value.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `Float64`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): Float64
}

extend Float32 <: Serializable<Float32> {
    /**
     * @description Serializes the `Float32` value to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into a `Float32` value.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `Float32`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): Float32
}

extend Float16 <: Serializable<Float16> {
    /**
     * @description Serializes the `Float16` value to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into a `Float16` value.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `Float16`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): Float16
}

extend Bool <: Serializable<Bool> {
    /**
     * @description Serializes the `Bool` value to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into a `Bool` value.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `Bool`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): Bool
}

extend String <: Serializable<String> {
    /**
     * @description Serializes the `String` value to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into a `String` value.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `String`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): String
}

extend Rune <: Serializable<Rune> {
    /**
     * @description Serializes the `Rune` value to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into a `Rune` value.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `Rune`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): Rune
}

extend<T> Option<T> <: Serializable<Option<T>> where T <: Serializable<T> {
    /**
     * @description Serializes the `Option` value to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into an `Option` value.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `Option`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): Option<T>
}

extend<T> Array<T> <: Serializable<Array<T>> where T <: Serializable<T> {
    /**
     * @description Serializes the `Array` to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into an `Array`.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `Array`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): Array<T>
}

extend<T> ArrayList<T> <: Serializable<ArrayList<T>> where T <: Serializable<T> {
    /**
     * @description Serializes the `ArrayList` to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into an `ArrayList`.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `ArrayList`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): ArrayList<T>
}

extend<T> HashSet<T> <: Serializable<HashSet<T>> where T <: Serializable<T> & Hashable & Equatable<T> {
    /**
     * @description Serializes the `HashSet` to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into a `HashSet`.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `HashSet`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): HashSet<T>
}

extend<K, V> HashMap<K, V> <: Serializable<HashMap<K, V>>
    where K <: Serializable<K> & Hashable & Equatable<K>, V <: Serializable<V> {
    /**
     * @description Serializes the `HashMap` to a `DataModel`.
     * @returns The serialized `DataModel`.
     */
    @!APILevel[
        since: "22"
    ]
    public func serializeInternal(): DataModel
    
    /**
     * @description Deserializes a `DataModel` into a `HashMap`.
     * @param dm The `DataModel` to deserialize.
     * @returns The deserialized `HashMap`.
     */
    @!APILevel[
        since: "22"
    ]
    public static func deserialize(dm: DataModel): HashMap<K, V>
}

extend Rune <: TextWidth {
    /**
     * @description Calculates the display width of the rune.
     * @returns The width of the rune, typically 1 for standard characters and 2 for wide characters.
     */
    @!APILevel[
        since: "22"
    ]
    public func width(): Int64
}

extend String <: TextWidth {
    /**
     * @description Calculates the display width of the string.
     * @returns The total width of the string, accounting for wide characters.
     */
    @!APILevel[
        since: "22"
    ]
    public func width(): Int64
}

/**
 * @description An interface for types that have a calculable text display width.
 */
@!APILevel[
    since: "22"
]
public interface TextWidth {
    /**
     * @description Calculates the display width of the object's text representation.
     * @returns The width of the text.
     */
    @!APILevel[
        since: "22"
    ]
    func width(): Int64
}


