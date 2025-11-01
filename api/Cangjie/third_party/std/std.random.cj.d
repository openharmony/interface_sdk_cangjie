
package std.random
import std.math.*


/**
 * @description A class that provides methods for generating random numbers with various distributions
 */
@!APILevel[
    since: "22"
]
public class Random {
    /**
     * @description Initializes a new random number generator with a time-based seed
     */
    @!APILevel[
        since: "22"
    ]
    public init()
    
    /**
     * @description Initializes a new random number generator with the specified seed
     * @param seed - The seed value to initialize the random number generator
     */
    @!APILevel[
        since: "22"
    ]
    public init(seed: UInt64)
    
    /**
     * @description Gets or sets the seed value for the random number generator
     */
    @!APILevel[
        since: "22"
    ]
    public prop seed: UInt64
    
    /**
     * @description Generates a random integer with the specified number of random bits
     * @param bits - The number of random bits to generate (must be between 1 and 64)
     * @returns A random UInt64 value with the specified number of random bits
     * @throws IllegalArgumentException when bits parameter is out of range
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func next(bits: UInt64): UInt64
    
    /**
     * @description Generates a random integer with the specified number of random bits
     * @param bits - The number of random bits to generate (must be between 1 and 64)
     * @returns A random UInt64 value with the specified number of random bits
     * @throws IllegalArgumentException when bits parameter is out of range
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func nextBits(bits: UInt64): UInt64
    
    /**
     * @description Generates a random boolean value
     * @returns A random boolean value (true or false)
     */
    @!APILevel[
        since: "22"
    ]
    public func nextBool(): Bool
    
    /**
     * @description Generates a random UInt8 value
     * @returns A random UInt8 value between 0 and 255
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func nextUInt8(): UInt8
    
    /**
     * @description Generates a random UInt16 value
     * @returns A random UInt16 value between 0 and 65535
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func nextUInt16(): UInt16
    
    /**
     * @description Generates a random UInt32 value
     * @returns A random UInt32 value between 0 and 4294967295
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func nextUInt32(): UInt32
    
    /**
     * @description Generates a random UInt64 value
     * @returns A random UInt64 value
     */
    @!APILevel[
        since: "22"
    ]
    public func nextUInt64(): UInt64
    
    /**
     * @description Generates a random Int8 value
     * @returns A random Int8 value between -128 and 127
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func nextInt8(): Int8
    
    /**
     * @description Generates a random Int16 value
     * @returns A random Int16 value between -32768 and 32767
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func nextInt16(): Int16
    
    /**
     * @description Generates a random Int32 value
     * @returns A random Int32 value between -2147483648 and 2147483647
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func nextInt32(): Int32
    
    /**
     * @description Generates a random Int64 value
     * @returns A random Int64 value
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public func nextInt64(): Int64
    
    /**
     * @description Generates a random UInt8 value with an upper bound
     * @param upper - The exclusive upper bound for the generated value
     * @returns A random UInt8 value between 0 (inclusive) and upper (exclusive)
     * @throws IllegalArgumentException when upper is 0
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func nextUInt8(upper: UInt8): UInt8
    
    /**
     * @description Generates a random UInt16 value with an upper bound
     * @param upper - The exclusive upper bound for the generated value
     * @returns A random UInt16 value between 0 (inclusive) and upper (exclusive)
     * @throws IllegalArgumentException when upper is 0
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func nextUInt16(upper: UInt16): UInt16
    
    /**
     * @description Generates a random UInt32 value with an upper bound
     * @param upper - The exclusive upper bound for the generated value
     * @returns A random UInt32 value between 0 (inclusive) and upper (exclusive)
     * @throws IllegalArgumentException when upper is 0
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func nextUInt32(upper: UInt32): UInt32
    
    /**
     * @description Generates a random UInt64 value with an upper bound
     * @param upper - The exclusive upper bound for the generated value
     * @returns A random UInt64 value between 0 (inclusive) and upper (exclusive)
     * @throws IllegalArgumentException when upper is 0
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func nextUInt64(upper: UInt64): UInt64
    
    /**
     * @description Generates a random Int8 value with an upper bound
     * @param upper - The exclusive upper bound for the generated value
     * @returns A random Int8 value between 0 (inclusive) and upper (exclusive)
     * @throws IllegalArgumentException when upper is less than or equal to 0
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func nextInt8(upper: Int8): Int8
    
    /**
     * @description Generates a random Int16 value with an upper bound
     * @param upper - The exclusive upper bound for the generated value
     * @returns A random Int16 value between 0 (inclusive) and upper (exclusive)
     * @throws IllegalArgumentException when upper is less than or equal to 0
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func nextInt16(upper: Int16): Int16
    
    /**
     * @description Generates a random Int32 value with an upper bound
     * @param upper - The exclusive upper bound for the generated value
     * @returns A random Int32 value between 0 (inclusive) and upper (exclusive)
     * @throws IllegalArgumentException when upper is less than or equal to 0
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func nextInt32(upper: Int32): Int32
    
    /**
     * @description Generates a random Int64 value with an upper bound
     * @param upper - The exclusive upper bound for the generated value
     * @returns A random Int64 value between 0 (inclusive) and upper (exclusive)
     * @throws IllegalArgumentException when upper is less than or equal to 0
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func nextInt64(upper: Int64): Int64
    
    /**
     * @description Fills the provided array with random UInt8 values
     * @param array - The array to fill with random values
     * @returns The filled array
     */
    @!APILevel[
        since: "22"
    ]
    public func nextUInt8s(array: Array<UInt8>): Array<UInt8>
    
    /**
     * @description Fills the provided byte array with random values(in-place modification and no return value).
     * @param bytes - The byte array to fill with random values
     */
    @!APILevel[
        since: "22"
    ]
    public func nextBytes(bytes: Array<Byte>): Unit
    
    /**
     * @description Creates a new byte array of the specified length and fills it with random values
     * @param length - The length of the byte array to create
     * @returns A new byte array filled with random values
     * @throws IllegalArgumentException when length is negative or zero
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func nextBytes(length: Int32): Array<Byte>
    
    /**
     * @description Generates a random Float16 value between 0.0 (inclusive) and 1.0 (exclusive)
     * @returns A random Float16 value between 0.0 (inclusive) and 1.0 (exclusive)
     */
    @!APILevel[
        since: "22"
    ]
    public func nextFloat16(): Float16
    
    /**
     * @description Generates a random Float32 value between 0.0 (inclusive) and 1.0 (exclusive)
     * @returns A random Float32 value between 0.0 (inclusive) and 1.0 (exclusive)
     */
    @!APILevel[
        since: "22"
    ]
    public func nextFloat32(): Float32
    
    /**
     * @description Generates a random Float64 value between 0.0 (inclusive) and 1.0 (exclusive)
     * @returns A random Float64 value between 0.0 (inclusive) and 1.0 (exclusive)
     */
    @!APILevel[
        since: "22"
    ]
    public func nextFloat64(): Float64
    
    /**
     * @description Generates a random Float16 value from a Gaussian distribution
     * @param mean - The mean of the Gaussian distribution, defaults to 0.0
     * @param sigma - The standard deviation of the Gaussian distribution, defaults to 1.0
     * @returns A random Float16 value from a Gaussian distribution with the specified mean and standard deviation
     */
    @!APILevel[
        since: "22"
    ]
    public func nextGaussianFloat16(mean!: Float16 = 0.0, sigma!: Float16 = 1.0): Float16
    
    /**
     * @description Generates a random Float32 value from a Gaussian distribution
     * @param mean - The mean of the Gaussian distribution, defaults to 0.0
     * @param sigma - The standard deviation of the Gaussian distribution, defaults to 1.0
     * @returns A random Float32 value from a Gaussian distribution with the specified mean and standard deviation
     */
    @!APILevel[
        since: "22"
    ]
    public func nextGaussianFloat32(mean!: Float32 = 0.0, sigma!: Float32 = 1.0): Float32
    
    /**
     * @description Generates a random Float64 value from a Gaussian distribution
     * @param mean - The mean of the Gaussian distribution, defaults to 0.0
     * @param sigma - The standard deviation of the Gaussian distribution, defaults to 1.0
     * @returns A random Float64 value from a Gaussian distribution with the specified mean and standard deviation
     */
    @!APILevel[
        since: "22"
    ]
    public func nextGaussianFloat64(mean!: Float64 = 0.0, sigma!: Float64 = 1.0): Float64
}

