
package std.ref

/**
 * @description Base class for weak reference implementations
 */
@!APILevel[
    since: "22"
]
sealed abstract class WeakRefBase {
}

/**
 * @description Enumeration defining the cleanup policy for weak references
 */
@!APILevel[
    since: "22"
]
public enum CleanupPolicy <: Equatable<CleanupPolicy> {
    /**
     * @description Eager cleanup policy that releases resources as soon as possible
     */
    @!APILevel[
        since: "22"
    ]
    EAGER |
    /**
     * @description Deferred cleanup policy that delays resource release until necessary
     */
    @!APILevel[
        since: "22"
    ]
    DEFERRED
    /**
     * @description Compares two CleanupPolicy values for equality
     * @param other - The CleanupPolicy to compare with
     * @returns True if the policies are equal, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: CleanupPolicy): Bool
    
    /**
     * @description Compares two CleanupPolicy values for inequality
     * @param other - The CleanupPolicy to compare with
     * @returns True if the policies are not equal, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: CleanupPolicy): Bool
}

/**
 * @description A class that holds a weak reference to an object, allowing the object to be garbage collected when no strong references exist
 */
@!APILevel[
    since: "22"
]
public class WeakRef<T> <: WeakRefBase where T <: Object {
    /**
     * @description Creates a new weak reference to the specified object with the given cleanup policy
     * @param value - The object to create a weak reference to
     * @param cleanupPolicy - The policy determining when the reference should be cleaned up
     */
    @!APILevel[
        since: "22"
    ]
    public init(value: T, cleanupPolicy: CleanupPolicy)
    
    /**
     * @description Gets or sets the cleanup policy for this weak reference
     */
    @!APILevel[
        since: "22"
    ]
    public prop cleanupPolicy: CleanupPolicy
    
    /**
     * @description Gets the referenced object if it still exists
     * @returns An Option containing the referenced object, or None if the object has been garbage collected
     */
    @!APILevel[
        since: "22"
    ]
    public prop value: Option<T>
    
    /**
     * @description Explicitly clears the weak reference, allowing the referenced object to be garbage collected
     */
    @!APILevel[
        since: "22"
    ]
    public func clear(): Unit
}

