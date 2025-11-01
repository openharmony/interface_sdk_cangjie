package std.crypto.digest
import std.io.{InputStream, OutputStream}

/**
 * @description Represents a cryptographic hash algorithm that can compute a fixed-size hash value from variable-length input data.
 */
@!APILevel[
    since: "22"
]
public interface Digest {
    /**
     * @description Gets the size of the digest output in bytes.
     * @returns The digest size in bytes.
     */
    @!APILevel[
        since: "22"
    ]
    prop size: Int64
    
    /**
     * @description Gets the block size of the digest algorithm in bytes.
     * @returns The block size in bytes.
     */
    @!APILevel[
        since: "22"
    ]
    prop blockSize: Int64
    
    /**
     * @description Gets the name of the digest algorithm.
     * @returns The algorithm name as a string.
     */
    @!APILevel[
        since: "22"
    ]
    prop algorithm: String
    
    /**
     * @description Processes input data and updates the digest calculation.
     * @param buffer - The input data to be processed
     */
    @!APILevel[
        since: "22"
    ]
    func write(buffer: Array<Byte>): Unit
    
    /**
     * @description Completes the digest calculation and stores the result in the provided output array.
     * @param to! - The output array to store the digest result
     */
    @!APILevel[
        since: "22"
    ]
    func finish(to!: Array<Byte>): Unit
    
    /**
     * @description Completes the digest calculation and returns the result as a new array.
     * @returns A new array containing the digest result
     */
    @!APILevel[
        since: "22"
    ]
    func finish(): Array<Byte>
    
    /**
     * @description Resets the digest to its initial state, clearing any previously processed data.
     */
    @!APILevel[
        since: "22"
    ]
    func reset(): Unit
}

/**
 * @description Calculates the digest of the given string data.
 * @param algorithm - The digest algorithm to use
 * @param data - The string data to be digested
 * @returns A new array containing the digest result
 */
@!APILevel[
    since: "22"
]
public func digest<T>(algorithm: T, data: String): Array<Byte> where T <: Digest

/**
 * @description Calculates the digest of data read from an input stream.
 * @param algorithm - The digest algorithm to use
 * @param input - The input stream containing data to be digested
 * @returns A new array containing the digest result
 * @throws IllegalArgumentException when an invalid argument is passed to the function
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func digest<T>(algorithm: T, input: InputStream): Array<Byte> where T <: Digest

/**
 * @description Calculates the digest of the given byte array data.
 * @param algorithm - The digest algorithm to use
 * @param data - The byte array data to be digested
 * @returns A new array containing the digest result
 */
@!APILevel[
    since: "22"
]
public func digest<T>(algorithm: T, data: Array<Byte>): Array<Byte> where T <: Digest