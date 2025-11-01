package std.crypto.cipher

/**
 * @description Represents a block cipher algorithm that can encrypt and decrypt data in blocks of a fixed size.
 */
@!APILevel[
    since: "22"
]
public interface BlockCipher {
    /**
     * @description Gets the block size of the cipher algorithm in bytes.
     * @returns The block size in bytes.
     */
    @!APILevel[
        since: "22"
    ]
    prop blockSize: Int64
    
    /**
     * @description Gets the name of the cipher algorithm.
     * @returns The algorithm name as a string.
     */
    @!APILevel[
        since: "22"
    ]
    prop algorithm: String
    
    /**
     * @description Encrypts the input data block and returns a new array with the encrypted data.
     * @param input - The data to be encrypted
     * @returns A new array containing the encrypted data
     */
    @!APILevel[
        since: "22"
    ]
    func encrypt(input: Array<Byte>): Array<Byte>
    
    /**
     * @description Decrypts the input data block and returns a new array with the decrypted data.
     * @param input - The data to be decrypted
     * @returns A new array containing the decrypted data
     */
    @!APILevel[
        since: "22"
    ]
    func decrypt(input: Array<Byte>): Array<Byte>
    
    /**
     * @description Encrypts the input data block and stores the result in the provided output array.
     * @param input - The data to be encrypted
     * @param to! - The output array to store the encrypted data
     * @returns The number of bytes written to the output array
     */
    @!APILevel[
        since: "22"
    ]
    func encrypt(input: Array<Byte>, to!: Array<Byte>): Int64
    
    /**
     * @description Decrypts the input data block and stores the result in the provided output array.
     * @param input - The data to be decrypted
     * @param to! - The output array to store the decrypted data
     * @returns The number of bytes written to the output array
     */
    @!APILevel[
        since: "22"
    ]
    func decrypt(input: Array<Byte>, to!: Array<Byte>): Int64
}