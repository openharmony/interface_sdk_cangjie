/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package std.sort
import std.collection.*

import std.math.*

/**
* Sorting element T.
*
* @param data Array of elements to be sorted.
* @param stable Whether to use stable sorting.
* @param descending Indicates whether to use descending sorting.
*
*/
@Frozen
@!APILevel[since: "22"]
public func sort<T>(data: Array<T>, stable!: Bool = false, descending!: Bool = false): Unit where T <: Comparable<T>

/**
* Sorting element T.
*
* @param data Array of elements to be sorted.
* @param by Comparator.
* @param stable Whether to use stable sorting.
* @param descending Indicates whether to use descending sorting.
*
*/
@Frozen
@!APILevel[since: "22"]
public func sort<T>(data: Array<T>, by!: (T, T) -> Ordering, stable!: Bool = false, descending!: Bool = false): Unit

/**
* Sorting element T.
*
* @param data Array of elements to be sorted.
* @param lessThan Comparator.
* @param stable Whether to use stable sorting.
* @param descending Indicates whether to use descending sorting.
*
*/
@!APILevel[since: "22"]
public func sort<T>(data: Array<T>, lessThan!: (T, T) -> Bool, stable!: Bool = false, descending!: Bool = false): Unit

/**
* Sorting element T.
*
* @param data Array of elements to be sorted.
* @param key Mapping of elements T to K.
* @param stable Whether to use stable sorting.
* @param descending Indicates whether to use descending sorting.
*
*/
@!APILevel[since: "22"]
public func sort<T, K>(data: Array<T>, key!: (T) -> K, stable!: Bool = false, descending!: Bool = false): Unit where K <: Comparable<K>

/**
* Sorting element T.
*
* @param data List of elements to be sorted.
* @param stable Whether to use stable sorting.
* @param descending Indicates whether to use descending sorting.
*
*/
@!APILevel[since: "22"]
public func sort<T>(data: List<T>, stable!: Bool = false, descending!: Bool = false): Unit where T <: Comparable<T>

/**
* Sorting element T.
*
* @param data List of elements to be sorted.
* @param by Comparator.
* @param stable Whether to use stable sorting.
* @param descending Indicates whether to use descending sorting.
*
*/
@!APILevel[since: "22"]
public func sort<T>(data: List<T>, by!: (T, T) -> Ordering, stable!: Bool = false, descending!: Bool = false): Unit

/**
* Sorting element T.
*
* @param data List of elements to be sorted.
* @param lessThan Comparator.
* @param stable Whether to use stable sorting.
* @param descending Indicates whether to use descending sorting.
*
*/
@!APILevel[since: "22"]
public func sort<T>(data: List<T>, lessThan!: (T, T) -> Bool, stable!: Bool = false, descending!: Bool = false): Unit

/**
* Sorting element T.
*
* @param data List of elements to be sorted.
* @param key Mapping of elements T to K.
* @param stable Whether to use stable sorting.
* @param descending Indicates whether to use descending sorting.
*
*/
@!APILevel[since: "22"]
public func sort<T, K>(data: List<T>, key!: (T) -> K, stable!: Bool = false, descending!: Bool = false): Unit where K <: Comparable<K>

/**
* Sorting element T.
*
* @param data List of elements to be sorted.
* @param stable Whether to use stable sorting.
* @param descending Indicates whether to use descending sorting.
*
*/
@!APILevel[since: "22"]
public func sort<T>(data: ArrayList<T>, stable!: Bool = false, descending!: Bool = false): Unit where T <: Comparable<T>

/**
* Sorting element T.
*
* @param data List of elements to be sorted.
* @param by Comparator.
* @param stable Whether to use stable sorting.
* @param descending Indicates whether to use descending sorting.
*
*/
@!APILevel[since: "22"]
public func sort<T>(data: ArrayList<T>, by!: (T, T) -> Ordering, stable!: Bool = false, descending!: Bool = false): Unit

/**
* Sorting element T.
*
* @param data List of elements to be sorted.
* @param lessThan Comparator.
* @param stable Whether to use stable sorting.
* @param descending Indicates whether to use descending sorting.
*
*/
@!APILevel[since: "22"]
public func sort<T>(data: ArrayList<T>, lessThan!: (T, T) -> Bool, stable!: Bool = false, descending!: Bool = false): Unit

/**
* Sorting element T.
*
* @param data List of elements to be sorted.
* @param key Mapping of elements T to K.
* @param stable Whether to use stable sorting.
* @param descending Indicates whether to use descending sorting.
*
*/
@!APILevel[since: "22"]
public func sort<T, K>(data: ArrayList<T>, key!: (T) -> K, stable!: Bool = false, descending!: Bool = false): Unit where K <: Comparable<K>

@Deprecated[message: "The interface is deprecated, no substitutions."]
@!APILevel[since: "22"]
public interface SortByExtension<T> {
    /**
    * Incoming Sort by Condition.
    *
    * @param comparator transfer the condition to be judged.
    *
    * @since 0.27.3
    */
    @!APILevel[since: "22"]
    func sortBy(comparator!: (T, T) -> Ordering): Unit
    
    /**
    * Incoming Sort by Condition.
    *
    * @param comparator transfer the condition to be judged.
    * @param stable Whether to use stable sorting
    *
    * @since 0.27.3
    */
    @!APILevel[since: "22"]
    func sortBy(stable!: Bool, comparator!: (T, T) -> Ordering): Unit
}

@Deprecated[message: "The interface is deprecated, no substitutions."]
@!APILevel[since: "22"]
public interface SortExtension {
    /**
    * Sort data in ascending order.
    *
    * @since 0.27.3
    */
    @!APILevel[since: "22"]
    func sort(): Unit
    
    /**
    * Sort data in ascending order.
    *
    * @param stable Whether to use stable sorting
    *
    * @since 0.27.3
    */
    @!APILevel[since: "22"]
    func sort(stable!: Bool): Unit
    
    /*
    * Sort data in descending order.
    *
    * @since 0.27.3
    */
    @!APILevel[since: "22"]
    func sortDescending(): Unit
    
    /*
    * Sort data in descending order.
    *
    * @param stable Whether to use stable sorting
    *
    * @since 0.27.3
    */
    @!APILevel[since: "22"]
    func sortDescending(stable!: Bool): Unit
}

extend<T> Array<T> <: SortByExtension<T> {
    @Deprecated[message: "Use global function `public func sort<T>(data: Array<T>, by!: (T, T) -> Ordering, stable!: Bool = false, descending!: Bool = false): Unit` instead."]
    @!APILevel[since: "22"]
    public func sortBy(comparator!: (T, T) -> Ordering): Unit
    
    @Deprecated[message: "Use global function `public func sort<T>(data: Array<T>, by!: (T, T) -> Ordering, stable!: Bool = false, descending!: Bool = false): Unit` instead."]
    @!APILevel[since: "22"]
    public func sortBy(stable!: Bool, comparator!: (T, T) -> Ordering): Unit
}

extend<T> Array<T> <: SortExtension where T <: Comparable<T> {
    @Deprecated[message: "Use global function `public func sort<T>(data: Array<T>, stable!: Bool = false, descending!: Bool = false): Unit where T <: Comparable<T>` instead."]
    @!APILevel[since: "22"]
    public func sort(): Unit
    
    @Deprecated[message: "Use global function `public func sort<T>(data: Array<T>, stable!: Bool = false, descending!: Bool = false): Unit where T <: Comparable<T>` instead."]
    @!APILevel[since: "22"]
    public func sort(stable!: Bool): Unit
    
    @Deprecated[message: "Use global function `public func sort<T>(data: Array<T>, stable!: Bool = false, descending!: Bool = false): Unit where T <: Comparable<T>` instead."]
    @!APILevel[since: "22"]
    public func sortDescending(): Unit
    
    @Deprecated[message: "Use global function `public func sort<T>(data: Array<T>, stable!: Bool = false, descending!: Bool = false): Unit where T <: Comparable<T>` instead."]
    @!APILevel[since: "22"]
    public func sortDescending(stable!: Bool): Unit
}


/*
* Stable ascending sort
*
* @param data Array to be sorted.
*
* @since 0.27.3
*/
@Deprecated[message: "Use global function `public func sort<T>(data: Array<T>, stable!: Bool = false, descending!: Bool = false): Unit where T <: Comparable<T>` instead."]
@!APILevel[since: "22"]
public func stableSort<T>(data: Array<T>): Unit where T <: Comparable<T>

/*
* Stable sort
*
* @param data Array to be sorted.
* @param comparator The sorted comparison strategy.
*
* @since 0.27.3
*/
@Deprecated[message: "Use global function `public func sort<T>(data: Array<T>, by!: (T, T) -> Ordering, stable!: Bool = false, descending!: Bool = false): Unit` instead."]
@!APILevel[since: "22"]
public func stableSort<T>(data: Array<T>, comparator: (T, T) -> Ordering): Unit


/**
* Unstable ascending sort
*
* @param data Array to be sorted.
*
* @since 0.27.3
*/
@Deprecated[message: "Use global function `public func sort<T>(data: Array<T>, stable!: Bool = false, descending!: Bool = false): Unit where T <: Comparable<T>` instead."]
@!APILevel[since: "22"]
public func unstableSort<T>(data: Array<T>): Unit where T <: Comparable<T>

/**
* Unstable sort
*
* @param data Array to be sorted.
* @param comparator The sorted comparison strategy.
*
* @since 0.27.3
*/
@Deprecated[message: "Use global function `public func sort<T>(data: Array<T>, by!: (T, T) -> Ordering, stable!: Bool = false, descending!: Bool = false): Unit` instead."]
@!APILevel[since: "22"]
public func unstableSort<T>(data: Array<T>, comparator: (T, T) -> Ordering): Unit


