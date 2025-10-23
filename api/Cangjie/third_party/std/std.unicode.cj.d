/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package std.unicode
import std.collection.*


@!APILevel[since: "22"]
public enum CasingOption {
    @!APILevel[since: "22"]
    // Turkish
    TR |
    @!APILevel[since: "22"]
    // Azeri
    AZ |
    @!APILevel[since: "22"]
    // Lithuanian
    LT |
    @!APILevel[since: "22"]
    Other
}

/* Methods for  Unicode. */
@!APILevel[since: "22"]
public interface UnicodeRuneExtension {
    @!APILevel[since: "22"]
    func isLetter(): Bool
    
    @!APILevel[since: "22"]
    func isNumber(): Bool
    
    @!APILevel[since: "22"]
    func isLowerCase(): Bool
    
    @!APILevel[since: "22"]
    func isUpperCase(): Bool
    
    @!APILevel[since: "22"]
    func isTitleCase(): Bool
    
    @!APILevel[since: "22"]
    func isWhiteSpace(): Bool
    
    @!APILevel[since: "22"]
    func toUpperCase(): Rune
    
    @!APILevel[since: "22"]
    func toLowerCase(): Rune
    
    @!APILevel[since: "22"]
    func toTitleCase(): Rune
    
    @!APILevel[since: "22"]
    func toUpperCase(opt: CasingOption): Rune
    
    @!APILevel[since: "22"]
    func toLowerCase(opt: CasingOption): Rune
    
    @!APILevel[since: "22"]
    func toTitleCase(opt: CasingOption): Rune
}

extend Rune <: UnicodeRuneExtension {
    /**
    * Returns true if this Unicode character is Letter.
    * In Unicode, Letter includes Uppercase_Letter, Lowercase_Letter, Titlecase_Letter, Modifier_Letter and Other_Letter.
    */
    @!APILevel[since: "22"]
    public func isLetter(): Bool
    
    /**
    * Returns true if this Unicode character is Number.
    * In Unicode, Number includes Decimal_Number, Letter_Number and Other_Number.
    */
    @!APILevel[since: "22"]
    public func isNumber(): Bool
    
    /** Returns true if this Unicode character is Lowercase. */
    @!APILevel[since: "22"]
    public func isLowerCase(): Bool
    
    /** Returns true if this Unicode character is Uppercase. */
    @!APILevel[since: "22"]
    public func isUpperCase(): Bool
    
    /** Returns true if this Unicode character is Titlecase. */
    @!APILevel[since: "22"]
    public func isTitleCase(): Bool
    
    /** Returns true if this Unicode character is whitespace. */
    @!APILevel[since: "22"]
    public func isWhiteSpace(): Bool
    
    /** Returns the uppercase of this Unicode character. */
    @!APILevel[since: "22"]
    public func toUpperCase(): Rune
    
    /** Returns the lowercase of this Unicode character. */
    @!APILevel[since: "22"]
    public func toLowerCase(): Rune
    
    /** Returns the titlecase of this Unicode character. */
    @!APILevel[since: "22"]
    public func toTitleCase(): Rune
    
    /** Returns the uppercase of this Unicode character. */
    @!APILevel[since: "22"]
    public func toUpperCase(opt: CasingOption): Rune
    
    /** Returns the lowercase of this Unicode character. */
    @!APILevel[since: "22"]
    public func toLowerCase(opt: CasingOption): Rune
    
    /** Returns the titlecase of this Unicode character. */
    @!APILevel[since: "22"]
    public func toTitleCase(opt: CasingOption): Rune
}

@!APILevel[since: "22"]
public interface UnicodeStringExtension {
    @!APILevel[since: "22"]
    func isBlank(): Bool
    
    @!APILevel[since: "22"]
    func toLower(): String
    
    @!APILevel[since: "22"]
    func toLower(opt: CasingOption): String
    
    @!APILevel[since: "22"]
    func toTitle(): String
    
    @!APILevel[since: "22"]
    func toTitle(opt: CasingOption): String
    
    @!APILevel[since: "22"]
    func toUpper(): String
    
    @!APILevel[since: "22"]
    func toUpper(opt: CasingOption): String
    
    @!APILevel[since: "22"]
    func trim(): String
    
    @Deprecated[message: "Use member function `func trimEnd(): String` instead."]
    @!APILevel[since: "22"]
    func trimRight(): String
    
    @Deprecated[message: "Use member function `func trimStart(): String` instead."]
    @!APILevel[since: "22"]
    func trimLeft(): String
    
    @!APILevel[since: "22"]
    func trimStart(): String
    
    @!APILevel[since: "22"]
    func trimEnd(): String
}

extend String <: UnicodeStringExtension {
    /**
    * Returns true if this string is empty or contains only whitespace Unicode, otherwise `false`.
    */
    @!APILevel[since: "22"]
    public func isBlank(): Bool
    
    /**
    * @return a string which is the result of converting every character in this
    *         string to its lower case.
    * @throws IllegalArgumentException if there is an invalid utf8 leading code
    *         in array `itemBytes`.
    */
    @!APILevel[since: "22"]
    public func toLower(): String
    
    /**
    * @return a string which is the result of converting every character in
    *         this string to its upper case.
    * @throws IllegalArgumentException if there is an invalid utf8 leading code
    *         in array `itemBytes`.
    */
    @!APILevel[since: "22"]
    public func toUpper(): String
    
    /**
    * @return a string which is the result of converting every character in
    *         this string to its title case.
    * @throws IllegalArgumentException if there is an invalid utf8 leading code
    *         in array `itemBytes`.
    */
    @!APILevel[since: "22"]
    public func toTitle(): String
    
    /**
    * @return a string which is the result of converting every character in this
    *         string to its lower case.
    * @throws IllegalArgumentException if there is an invalid utf8 leading code
    *         in array `itemBytes`.
    */
    @!APILevel[since: "22"]
    public func toLower(opt: CasingOption): String
    
    /**
    * @return a string which is the result of converting every character in
    *         this string to its upper case.
    * @throws IllegalArgumentException if there is an invalid utf8 leading code
    *         in array `itemBytes`.
    */
    @!APILevel[since: "22"]
    public func toUpper(opt: CasingOption): String
    
    /**
    * @return a string which is the result of converting every character in
    *         this string to its title case.
    * @throws IllegalArgumentException if there is an invalid utf8 leading code
    *         in array `itemBytes`.
    */
    @!APILevel[since: "22"]
    public func toTitle(opt: CasingOption): String
    
    /**
    * @return a string which is the result of removing the leading and trailing
    *         whitespace of this string.
    * @throws IllegalArgumentException if there is no valid utf8 code in array `myData`.
    */
    @!APILevel[since: "22"]
    public func trim(): String
    
    /**
    * @return a string which is the result of removing the leading whitespace of this string.
    * @throws IllegalArgumentException if there is no valid utf8 leading code in array `myData`.
    */
    @Deprecated[message: "Use member function ` public func trimStart(): String` instead."]
    @!APILevel[since: "22"]
    public func trimLeft(): String
    
    /**
    * @return a string which is the result of removing the trailing whitespace of this string.
    * @throws IllegalArgumentException if there is no valid utf8 code in array `myData`.
    */
    @Deprecated[message: "Use member function ` public func trimEnd(): String` instead."]
    @!APILevel[since: "22"]
    public func trimRight(): String
    
    /**
    * @return a string which is the result of removing the leading whitespace of this string.
    * @throws IllegalArgumentException if there is no valid utf8 leading code in array `myData`.
    */
    @!APILevel[since: "22"]
    public func trimStart(): String
    
    /**
    * @return a string which is the result of removing the trailing whitespace of this string.
    * @throws IllegalArgumentException if there is no valid utf8 code in array `myData`.
    */
    @!APILevel[since: "22"]
    public func trimEnd(): String
}

