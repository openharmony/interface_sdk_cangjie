
package std.objectpool
import std.collection.concurrent.*


/**
 * @description A pool for reusing objects of type T to improve performance by reducing object creation overhead.
 */
@!APILevel[
    since: "22"
]
public class ObjectPool<T> where T <: Object {
    /**
     * @description Initializes the object pool with a function to create new objects and an optional function to reset objects before reuse.
     * @param newFunc: The function that creates new instances of type T.
     * @param resetFunc: An optional function that resets an object of type T before it is reused.
     */
    @!APILevel[
        since: "22"
    ]
    public init(newFunc: () -> T, resetFunc!: Option<(T) -> T> = None)
    
    /**
     * @description Retrieves an object from the pool. If the pool is empty, a new object is created using the provided newFunc.
     * @returns An object of type T, either reused from the pool or newly created.
     */
    @!APILevel[
        since: "22"
    ]
    public func get(): T
    
    /**
     * @description Returns an object back to the pool for future reuse.
     * @param item: The object of type T to be returned to the pool.
     */
    @!APILevel[
        since: "22"
    ]
    public func put(item: T): Unit
}

