
package std.sort
import std.collection.*

import std.math.*

/**
 * @description Sorts the elements in an array using default comparison strategy
 * @param data - the array to be sorted
 * @param stable - whether to use stable sorting algorithm (default: false) 
 * @param descending - whether to sort in descending order (default: false)
 */
@Frozen
@!APILevel[
    since: "22"
]
public func sort<T>(data: Array<T>, stable!: Bool = false, descending!: Bool = false): Unit where T <: Comparable<T>

/**
 * @description Sorts the elements in an array using a custom comparator function
 * @param data - the array to be sorted
 * @param by - comparison function that returns Ordering (LT, EQ, GT)
 * @param stable - whether to use stable sorting algorithm (default: false)
 * @param descending - whether to sort in descending order (default: false)
 */
@Frozen
@!APILevel[
    since: "22"
]
public func sort<T>(data: Array<T>, by!: (T, T) -> Ordering, stable!: Bool = false, descending!: Bool = false): Unit

/**
 * @description Sorts the elements in an array using a less-than comparison function
 * @param data - the array to be sorted
 * @param lessThan - function that returns true if first element is less than second
 * @param stable - whether to use stable sorting algorithm (default: false)
 * @param descending - whether to sort in descending order (default: false)
 */
@!APILevel[
    since: "22"
]
public func sort<T>(data: Array<T>, lessThan!: (T, T) -> Bool, stable!: Bool = false, descending!: Bool = false): Unit

/**
 * @description Sorts the elements in an array by comparing keys extracted from elements
 * @param data - the array to be sorted
 * @param key - function that extracts a comparable key from each element
 * @param stable - whether to use stable sorting algorithm (default: false)
 * @param descending - whether to sort in descending order (default: false)
 */
@!APILevel[
    since: "22"
]
public func sort<T, K>(data: Array<T>, key!: (T) -> K, stable!: Bool = false, descending!: Bool = false): Unit where K <: Comparable<K>

/**
 * @description Sorts the elements in a List using default comparison strategy
 * @param data - the list to be sorted
 * @param stable - whether to use stable sorting algorithm (default: false)
 * @param descending - whether to sort in descending order (default: false)
 */
@!APILevel[
    since: "22"
]
public func sort<T>(data: List<T>, stable!: Bool = false, descending!: Bool = false): Unit where T <: Comparable<T>

/**
 * @description Sorts the elements in a List using a custom comparator function
 * @param data - the list to be sorted
 * @param by - comparison function that returns Ordering (LT, EQ, GT)
 * @param stable - whether to use stable sorting algorithm (default: false)
 * @param descending - whether to sort in descending order (default: false)
 */
@!APILevel[
    since: "22"
]
public func sort<T>(data: List<T>, by!: (T, T) -> Ordering, stable!: Bool = false, descending!: Bool = false): Unit

/**
 * @description Sorts the elements in a List using a less-than comparison function
 * @param data - the list to be sorted
 * @param lessThan - function that returns true if first element is less than second
 * @param stable - whether to use stable sorting algorithm (default: false)
 * @param descending - whether to sort in descending order (default: false)
 */
@!APILevel[
    since: "22"
]
public func sort<T>(data: List<T>, lessThan!: (T, T) -> Bool, stable!: Bool = false, descending!: Bool = false): Unit

/**
 * @description Sorts the elements in a List by comparing keys extracted from elements
 * @param data - the list to be sorted
 * @param key - function that extracts a comparable key from each element
 * @param stable - whether to use stable sorting algorithm (default: false)
 * @param descending - whether to sort in descending order (default: false)
 */
@!APILevel[
    since: "22"
]
public func sort<T, K>(data: List<T>, key!: (T) -> K, stable!: Bool = false, descending!: Bool = false): Unit where K <: Comparable<K>

/**
 * @description Sorts the elements in an ArrayList using default comparison strategy
 * @param data - the ArrayList to be sorted
 * @param stable - whether to use stable sorting algorithm (default: false)
 * @param descending - whether to sort in descending order (default: false)
 */
@!APILevel[
    since: "22"
]
public func sort<T>(data: ArrayList<T>, stable!: Bool = false, descending!: Bool = false): Unit where T <: Comparable<T>

/**
 * @description Sorts the elements in an ArrayList using a custom comparator function
 * @param data - the ArrayList to be sorted
 * @param by - comparison function that returns Ordering (LT, EQ, GT)
 * @param stable - whether to use stable sorting algorithm (default: false)
 * @param descending - whether to sort in descending order (default: false)
 */
@!APILevel[
    since: "22"
]
public func sort<T>(data: ArrayList<T>, by!: (T, T) -> Ordering, stable!: Bool = false, descending!: Bool = false): Unit

/**
 * @description Sorts the elements in an ArrayList using a less-than comparison function
 * @param data - the ArrayList to be sorted
 * @param lessThan - function that returns true if first element is less than second
 * @param stable - whether to use stable sorting algorithm (default: false)
 * @param descending - whether to sort in descending order (default: false)
 */
@!APILevel[
    since: "22"
]
public func sort<T>(data: ArrayList<T>, lessThan!: (T, T) -> Bool, stable!: Bool = false, descending!: Bool = false): Unit

/**
 * @description Sorts the elements in an ArrayList by comparing keys extracted from elements
 * @param data - the ArrayList to be sorted
 * @param key - function that extracts a comparable key from each element
 * @param stable - whether to use stable sorting algorithm (default: false)
 * @param descending - whether to sort in descending order (default: false)
 */
@!APILevel[
    since: "22"
]
public func sort<T, K>(data: ArrayList<T>, key!: (T) -> K, stable!: Bool = false, descending!: Bool = false): Unit where K <: Comparable<K>

/**
 * @description An interface that provides sort-by-comparator functionality for collections
 */
@!APILevel[
    since: "22"
]
public interface SortByExtension<T> {
    /**
     * @description Sorts elements using a custom comparator function
     * @param comparator - comparison function that returns Ordering (LT, EQ, GT)
     */
    @!APILevel[
        since: "22"
    ]
    func sortBy(comparator!: (T, T) -> Ordering): Unit
    
    /**
     * @description Sorts elements using a custom comparator function with stability option
     * @param stable - whether to use stable sorting algorithm
     * @param comparator - comparison function that returns Ordering (LT, EQ, GT)
     */
    @!APILevel[
        since: "22"
    ]
    func sortBy(stable!: Bool, comparator!: (T, T) -> Ordering): Unit
}

/**
 * @description An interface that provides basic sorting functionality for collections
 */
@!APILevel[
    since: "22"
]
public interface SortExtension {
    /**
     * @description Sorts elements in ascending order using default comparison
     */
    @!APILevel[
        since: "22"
    ]
    func sort(): Unit
    
    /**
     * @description Sorts elements in ascending order with stability option
     * @param stable - whether to use stable sorting algorithm
     */
    @!APILevel[
        since: "22"
    ]
    func sort(stable!: Bool): Unit
    
    /**
     * @description Sorts elements in descending order using default comparison
     */
    @!APILevel[
        since: "22"
    ]
    func sortDescending(): Unit
    
    /**
     * @description Sorts elements in descending order with stability option
     * @param stable - whether to use stable sorting algorithm
     */
    @!APILevel[
        since: "22"
    ]
    func sortDescending(stable!: Bool): Unit
}

extend<T> Array<T> <: SortByExtension<T> {
    /**
     * @description Sort array elements using a custom comparator
     * @param comparator - comparison function that returns Ordering (LT, EQ, GT)
     */
    @!APILevel[
        since: "22"
    ]
    public func sortBy(comparator!: (T, T) -> Ordering): Unit
    
    /**
     * @description Sort array elements using a custom comparator with stability option
     * @param stable - whether to use stable sorting algorithm
     * @param comparator - comparison function that returns Ordering (LT, EQ, GT)
     */
    @!APILevel[
        since: "22"
    ]
    public func sortBy(stable!: Bool, comparator!: (T, T) -> Ordering): Unit
}

extend<T> Array<T> <: SortExtension where T <: Comparable<T> {
    /**
     * @description Sort array elements in ascending order    
     */
    @!APILevel[
        since: "22"
    ]
    public func sort(): Unit
    
    /**
     * @description Sort array elements in ascending order with stability option
     * @param stable - whether to use stable sorting algorithm
     */
    @!APILevel[
        since: "22"
    ]
    public func sort(stable!: Bool): Unit
    
    /**
     * @description Sort array elements in descending order    
     */
    @!APILevel[
        since: "22"
    ]
    public func sortDescending(): Unit
    
    /**
     * @description Sort array elements in descending order with stability option
     * @param stable - whether to use stable sorting algorithm
     */
    @!APILevel[
        since: "22"
    ]
    public func sortDescending(stable!: Bool): Unit
}



/**
 * @description A Function for stable sorting of arrays in ascending order
 * @param data - the array to be sorted using stable algorithm
 */
@!APILevel[
    since: "22"
]
public func stableSort<T>(data: Array<T>): Unit where T <: Comparable<T>

/**
 * @description A Function for stable sorting of arrays using a custom comparator
 * @param data - the array to be sorted using stable algorithm
 * @param comparator - comparison function that returns Ordering (LT, EQ, GT)
 */
@!APILevel[
    since: "22"
]
public func stableSort<T>(data: Array<T>, comparator: (T, T) -> Ordering): Unit



/**
 * @description A Function for unstable sorting of arrays in ascending order
 * @param data - the array to be sorted using unstable algorithm
 */
@!APILevel[
    since: "22"
]
public func unstableSort<T>(data: Array<T>): Unit where T <: Comparable<T>

/**
 * @description A Function for unstable sorting of arrays using a custom comparator
 * @param data - the array to be sorted using unstable algorithm
 * @param comparator - comparison function that returns Ordering (LT, EQ, GT)
 */
@!APILevel[
    since: "22"
]
public func unstableSort<T>(data: Array<T>, comparator: (T, T) -> Ordering): Unit



