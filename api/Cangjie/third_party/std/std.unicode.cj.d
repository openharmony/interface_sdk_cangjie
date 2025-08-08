/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

package std.unicode
import std.collection.*


@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public enum CasingOption {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // Turkish
    TR |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // Azeri
    AZ |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // Lithuanian
    LT |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Other
}

/* Methods for  Unicode. */
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface UnicodeRuneExtension {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func isLetter(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func isNumber(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func isLowerCase(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func isUpperCase(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func isTitleCase(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func isWhiteSpace(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func toUpperCase(): Rune
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func toLowerCase(): Rune
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func toTitleCase(): Rune
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func toUpperCase(opt: CasingOption): Rune
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func toLowerCase(opt: CasingOption): Rune
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func toTitleCase(opt: CasingOption): Rune
}

extend Rune <: UnicodeRuneExtension {
    /**
    * Returns true if this Unicode character is Letter.
    * In Unicode, Letter includes Uppercase_Letter, Lowercase_Letter, Titlecase_Letter, Modifier_Letter and Other_Letter.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isLetter(): Bool
    
    /**
    * Returns true if this Unicode character is Number.
    * In Unicode, Number includes Decimal_Number, Letter_Number and Other_Number.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isNumber(): Bool
    
    /** Returns true if this Unicode character is Lowercase. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isLowerCase(): Bool
    
    /** Returns true if this Unicode character is Uppercase. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isUpperCase(): Bool
    
    /** Returns true if this Unicode character is Titlecase. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isTitleCase(): Bool
    
    /** Returns true if this Unicode character is whitespace. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isWhiteSpace(): Bool
    
    /** Returns the uppercase of this Unicode character. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toUpperCase(): Rune
    
    /** Returns the lowercase of this Unicode character. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toLowerCase(): Rune
    
    /** Returns the titlecase of this Unicode character. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTitleCase(): Rune
    
    /** Returns the uppercase of this Unicode character. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toUpperCase(opt: CasingOption): Rune
    
    /** Returns the lowercase of this Unicode character. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toLowerCase(opt: CasingOption): Rune
    
    /** Returns the titlecase of this Unicode character. */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTitleCase(opt: CasingOption): Rune
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface UnicodeStringExtension {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func isBlank(): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func toLower(): String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func toLower(opt: CasingOption): String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func toTitle(): String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func toTitle(opt: CasingOption): String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func toUpper(): String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func toUpper(opt: CasingOption): String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func trim(): String
    
    @Deprecated[message: "Use member function `func trimEnd(): String` instead."]
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func trimRight(): String
    
    @Deprecated[message: "Use member function `func trimStart(): String` instead."]
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func trimLeft(): String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func trimStart(): String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func trimEnd(): String
}

extend String <: UnicodeStringExtension {
    /**
    * Returns true if this string is empty or contains only whitespace Unicode, otherwise `false`.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isBlank(): Bool
    
    /**
    * @return a string which is the result of converting every character in this
    *         string to its lower case.
    * @throws IllegalArgumentException if there is an invalid utf8 leading code
    *         in array `itemBytes`.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toLower(): String
    
    /**
    * @return a string which is the result of converting every character in
    *         this string to its upper case.
    * @throws IllegalArgumentException if there is an invalid utf8 leading code
    *         in array `itemBytes`.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toUpper(): String
    
    /**
    * @return a string which is the result of converting every character in
    *         this string to its title case.
    * @throws IllegalArgumentException if there is an invalid utf8 leading code
    *         in array `itemBytes`.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTitle(): String
    
    /**
    * @return a string which is the result of converting every character in this
    *         string to its lower case.
    * @throws IllegalArgumentException if there is an invalid utf8 leading code
    *         in array `itemBytes`.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toLower(opt: CasingOption): String
    
    /**
    * @return a string which is the result of converting every character in
    *         this string to its upper case.
    * @throws IllegalArgumentException if there is an invalid utf8 leading code
    *         in array `itemBytes`.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toUpper(opt: CasingOption): String
    
    /**
    * @return a string which is the result of converting every character in
    *         this string to its title case.
    * @throws IllegalArgumentException if there is an invalid utf8 leading code
    *         in array `itemBytes`.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toTitle(opt: CasingOption): String
    
    /**
    * @return a string which is the result of removing the leading and trailing
    *         whitespace of this string.
    * @throws IllegalArgumentException if there is no valid utf8 code in array `myData`.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trim(): String
    
    /**
    * @return a string which is the result of removing the leading whitespace of this string.
    * @throws IllegalArgumentException if there is no valid utf8 leading code in array `myData`.
    */
    @Deprecated[message: "Use member function ` public func trimStart(): String` instead."]
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimLeft(): String
    
    /**
    * @return a string which is the result of removing the trailing whitespace of this string.
    * @throws IllegalArgumentException if there is no valid utf8 code in array `myData`.
    */
    @Deprecated[message: "Use member function ` public func trimEnd(): String` instead."]
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimRight(): String
    
    /**
    * @return a string which is the result of removing the leading whitespace of this string.
    * @throws IllegalArgumentException if there is no valid utf8 leading code in array `myData`.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimStart(): String
    
    /**
    * @return a string which is the result of removing the trailing whitespace of this string.
    * @throws IllegalArgumentException if there is no valid utf8 code in array `myData`.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func trimEnd(): String
}

