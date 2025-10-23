/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package std.unittest.diff
import std.unittest.common.PrettyPrinter

import std.collection.*
import std.unittest.common.*
import std.collection.ArrayList
import std.convert.Formattable
import std.math.ceil

@!APILevel[since: "22"]
public interface AssertPrintable<T> {
    @!APILevel[since: "22"]
    prop hasNestedDiff: Bool
    
    @!APILevel[since: "22"]
    func pprintForAssertion(
        pp: PrettyPrinter, that: T, thisPrefix: String, thatPrefix: String, level: Int64
    ): PrettyPrinter
}

extend<T> HashSet<T> <: AssertPrintableCollection<HashSet<T>> where T <: Equatable<T> {
    @!APILevel[since: "22"]
    public func pprint(right: HashSet<T>, pp: PrettyPrinter, leftPrefix: String, rightPrefix: String, _: Int64): PrettyPrinter
}

extend<K, V> HashMap<K, V> <: AssertPrintableCollection<HashMap<K, V>> where K <: Equatable<K> & Hashable,
    V <: Equatable<V> {
    @!APILevel[since: "22"]
    public func pprint(right: HashMap<K, V>, pp: PrettyPrinter, leftPrefix: String, rightPrefix: String, level: Int64): PrettyPrinter
}

extend<K, V> TreeMap<K, V> <: AssertPrintableCollection<TreeMap<K, V>> where K <: Equatable<K> & Hashable,
    V <: Equatable<V> {
    @!APILevel[since: "22"]
    public func pprint(right: TreeMap<K, V>, pp: PrettyPrinter, leftPrefix: String, rightPrefix: String, level: Int64): PrettyPrinter
}



extend Float16 <: AssertPrintable<Float16> {
    @!APILevel[since: "22"]
    public prop hasNestedDiff: Bool
    
    @!APILevel[since: "22"]
    public func pprintForAssertion(pp: PrettyPrinter, right: Float16, leftPrefix: String, rightPrefix: String,
        level: Int64): PrettyPrinter
}

extend Float32 <: AssertPrintable<Float32> {
    @!APILevel[since: "22"]
    public prop hasNestedDiff: Bool
    
    @!APILevel[since: "22"]
    public func pprintForAssertion(pp: PrettyPrinter, right: Float32, leftPrefix: String, rightPrefix: String,
        level: Int64): PrettyPrinter
}

extend Float64 <: AssertPrintable<Float64> {
    @!APILevel[since: "22"]
    public prop hasNestedDiff: Bool
    
    @!APILevel[since: "22"]
    public func pprintForAssertion(pp: PrettyPrinter, right: Float64, leftPrefix: String, rightPrefix: String,
        level: Int64): PrettyPrinter
}

/*
* Conditional compilation shouldn't be used because the strings may come from Windows environment anyway,
* e.g. by openning a file created on Windows initially
*/




extend<T> Option<T> <: AssertPrintable<Option<T>> where T <: Equatable<T> {
    @!APILevel[since: "22"]
    public prop hasNestedDiff: Bool
    
    @!APILevel[since: "22"]
    public func pprintForAssertion(pp: PrettyPrinter, right: Option<T>, leftPrefix: String, rightPrefix: String,
        level: Int64): PrettyPrinter
}



extend String <: AssertPrintable<String> {
    @!APILevel[since: "22"]
    public prop hasNestedDiff: Bool
    
    @!APILevel[since: "22"]
    public func pprintForAssertion(pp: PrettyPrinter, right: String, leftPrefix: String, rightPrefix: String,
        level: Int64): PrettyPrinter
}



