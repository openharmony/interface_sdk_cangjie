
package std.unicode
import std.collection.*


/**
 * @description Enumeration representing different casing options for locale-specific character case conversion
 */
@!APILevel[
    since: "22"
]
public enum CasingOption {
    /**
     * @description Turkish casing option for character case conversion
     */
    @!APILevel[
        since: "22"
    ]
    TR |
    /**
     * @description Azerbaijani casing option for character case conversion
     */
    @!APILevel[
        since: "22"
    ]
    AZ |
    /**
     * @description Lithuanian casing option for character case conversion
     */
    @!APILevel[
        since: "22"
    ]
    LT |
    /**
     * @description Other/default casing option for standard character case conversion
     */
    @!APILevel[
        since: "22"
    ]
    Other
}

/**
 * @description Interface providing Unicode character classification and case conversion methods for Rune
 */
@!APILevel[
    since: "22"
]
public interface UnicodeRuneExtension {
    /**
     * @description Determines if the Unicode character is a letter (Uppercase_Letter, Lowercase_Letter, Titlecase_Letter, Modifier_Letter, or Other_Letter)
     * @returns true if the character is a letter, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func isLetter(): Bool
    
    /**
     * @description Determines if the Unicode character is a number (Decimal_Number, Letter_Number, or Other_Number)
     * @returns true if the character is a number, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func isNumber(): Bool
    
    /**
     * @description Determines if the Unicode character is a lowercase letter
     * @returns true if the character is lowercase, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func isLowerCase(): Bool
    
    /**
     * @description Determines if the Unicode character is an uppercase letter
     * @returns true if the character is uppercase, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func isUpperCase(): Bool
    
    /**
     * @description Determines if the Unicode character is a titlecase letter
     * @returns true if the character is titlecase, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func isTitleCase(): Bool
    
    /**
     * @description Determines if the Unicode character is a whitespace character
     * @returns true if the character is whitespace, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func isWhiteSpace(): Bool
    
    /**
     * @description Converts the Unicode character to its uppercase equivalent
     * @returns the uppercase version of the character
     */
    @!APILevel[
        since: "22"
    ]
    func toUpperCase(): Rune
    
    /**
     * @description Converts the Unicode character to its lowercase equivalent
     * @returns the lowercase version of the character
     */
    @!APILevel[
        since: "22"
    ]
    func toLowerCase(): Rune
    
    /**
     * @description Converts the Unicode character to its titlecase equivalent
     * @returns the titlecase version of the character
     */
    @!APILevel[
        since: "22"
    ]
    func toTitleCase(): Rune
    
    /**
     * @description Converts the Unicode character to its uppercase equivalent using locale-specific casing rules
     * @param opt the casing option for locale-specific conversion (Turkish, Azerbaijani, Lithuanian, or Other)
     * @returns the uppercase version of the character according to the specified locale rules
     */
    @!APILevel[
        since: "22"
    ]
    func toUpperCase(opt: CasingOption): Rune
    
    /**
     * @description Converts the Unicode character to its lowercase equivalent using locale-specific casing rules
     * @param opt the casing option for locale-specific conversion (Turkish, Azerbaijani, Lithuanian, or Other)
     * @returns the lowercase version of the character according to the specified locale rules
     */
    @!APILevel[
        since: "22"
    ]
    func toLowerCase(opt: CasingOption): Rune
    
    /**
     * @description Converts the Unicode character to its titlecase equivalent using locale-specific casing rules
     * @param opt the casing option for locale-specific conversion (Turkish, Azerbaijani, Lithuanian, or Other)
     * @returns the titlecase version of the character according to the specified locale rules
     */
    @!APILevel[
        since: "22"
    ]
    func toTitleCase(opt: CasingOption): Rune
}

extend Rune <: UnicodeRuneExtension {
    /**
     * @description Determines if the Unicode character is a letter (Uppercase_Letter, Lowercase_Letter, Titlecase_Letter, Modifier_Letter, or Other_Letter)
     * @returns true if the character is a letter, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isLetter(): Bool
    
    /**
     * @description Determines if the Unicode character is a number (Decimal_Number, Letter_Number, or Other_Number)
     * @returns true if the character is a number, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isNumber(): Bool
    
    /**
     * @description Determines if the Unicode character is a lowercase letter
     * @returns true if the character is lowercase, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isLowerCase(): Bool
    
    /**
     * @description Determines if the Unicode character is an uppercase letter
     * @returns true if the character is uppercase, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isUpperCase(): Bool
    
    /**
     * @description Determines if the Unicode character is a titlecase letter
     * @returns true if the character is titlecase, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isTitleCase(): Bool
    
    /**
     * @description Determines if the Unicode character is a whitespace character
     * @returns true if the character is whitespace, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isWhiteSpace(): Bool
    
    /**
     * @description Converts the Unicode character to its uppercase equivalent
     * @returns the uppercase version of the character
     */
    @!APILevel[
        since: "22"
    ]
    public func toUpperCase(): Rune
    
    /**
     * @description Converts the Unicode character to its lowercase equivalent
     * @returns the lowercase version of the character
     */
    @!APILevel[
        since: "22"
    ]
    public func toLowerCase(): Rune
    
    /**
     * @description Converts the Unicode character to its titlecase equivalent
     * @returns the titlecase version of the character
     */
    @!APILevel[
        since: "22"
    ]
    public func toTitleCase(): Rune
    
    /**
     * @description Converts the Unicode character to its uppercase equivalent using locale-specific casing rules
     * @param opt the casing option for locale-specific conversion (Turkish, Azerbaijani, Lithuanian, or Other)
     * @returns the uppercase version of the character according to the specified locale rules
     */
    @!APILevel[
        since: "22"
    ]
    public func toUpperCase(opt: CasingOption): Rune
    
    /**
     * @description Converts the Unicode character to its lowercase equivalent using locale-specific casing rules
     * @param opt the casing option for locale-specific conversion (Turkish, Azerbaijani, Lithuanian, or Other)
     * @returns the lowercase version of the character according to the specified locale rules
     */
    @!APILevel[
        since: "22"
    ]
    public func toLowerCase(opt: CasingOption): Rune
    
    /**
     * @description Converts the Unicode character to its titlecase equivalent using locale-specific casing rules
     * @param opt the casing option for locale-specific conversion (Turkish, Azerbaijani, Lithuanian, or Other)
     * @returns the titlecase version of the character according to the specified locale rules
     */
    @!APILevel[
        since: "22"
    ]
    public func toTitleCase(opt: CasingOption): Rune
}

/**
 * @description Interface providing Unicode string processing methods including case conversion, trimming, and blank checking
 */
@!APILevel[
    since: "22"
]
public interface UnicodeStringExtension {
    /**
     * @description Determines if the string is empty or contains only whitespace characters
     * @returns true if the string is blank (empty or only whitespace), false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    func isBlank(): Bool
    
    /**
     * @description Converts all characters in the string to lowercase
     * @returns a new string with all characters converted to lowercase
     */
    @!APILevel[
        since: "22"
    ]
    func toLower(): String
    
    /**
     * @description Converts all characters in the string to lowercase using locale-specific casing rules
     * @param opt the casing option for locale-specific conversion (Turkish, Azerbaijani, Lithuanian, or Other)
     * @returns a new string with all characters converted to lowercase according to the specified locale rules
     */
    @!APILevel[
        since: "22"
    ]
    func toLower(opt: CasingOption): String
    
    /**
     * @description Converts all characters in the string to titlecase
     * @returns a new string with all characters converted to titlecase
     */
    @!APILevel[
        since: "22"
    ]
    func toTitle(): String
    
    /**
     * @description Converts all characters in the string to titlecase using locale-specific casing rules
     * @param opt the casing option for locale-specific conversion (Turkish, Azerbaijani, Lithuanian, or Other)
     * @returns a new string with all characters converted to titlecase according to the specified locale rules
     */
    @!APILevel[
        since: "22"
    ]
    func toTitle(opt: CasingOption): String
    
    /**
     * @description Converts all characters in the string to uppercase
     * @returns a new string with all characters converted to uppercase
     */
    @!APILevel[
        since: "22"
    ]
    func toUpper(): String
    
    /**
     * @description Converts all characters in the string to uppercase using locale-specific casing rules
     * @param opt the casing option for locale-specific conversion (Turkish, Azerbaijani, Lithuanian, or Other)
     * @returns a new string with all characters converted to uppercase according to the specified locale rules
     */
    @!APILevel[
        since: "22"
    ]
    func toUpper(opt: CasingOption): String
    
    /**
     * @description Removes leading and trailing whitespace characters from the string
     * @returns a new string with leading and trailing whitespace removed
     */
    @!APILevel[
        since: "22"
    ]
    func trim(): String
    
    /**
     * @description Removes trailing whitespace characters from the string
     * @returns a new string with trailing whitespace removed
     */
    @!APILevel[
        since: "22"
    ]
    func trimRight(): String
    
    /**
     * @description Removes leading whitespace characters from the string
     * @returns a new string with leading whitespace removed
     */
    @!APILevel[
        since: "22"
    ]
    func trimLeft(): String
    
    /**
     * @description Removes leading whitespace characters from the string
     * @returns a new string with leading whitespace removed
     */
    @!APILevel[
        since: "22"
    ]
    func trimStart(): String
    
    /**
     * @description Removes trailing whitespace characters from the string
     * @returns a new string with trailing whitespace removed
     */
    @!APILevel[
        since: "22"
    ]
    func trimEnd(): String
}

extend String <: UnicodeStringExtension {
    /**
     * @description Determines if the string is empty or contains only whitespace characters
     * @returns true if the string is blank (empty or only whitespace), false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public func isBlank(): Bool
    
    /**
     * @description Converts all characters in the string to lowercase
     * @returns a new string with all characters converted to lowercase
     */
    @!APILevel[
        since: "22"
    ]
    public func toLower(): String
    
    /**
     * @description Converts all characters in the string to uppercase
     * @returns a new string with all characters converted to uppercase
     */
    @!APILevel[
        since: "22"
    ]
    public func toUpper(): String
    
    /**
     * @description Converts all characters in the string to titlecase
     * @returns a new string with all characters converted to titlecase
     */
    @!APILevel[
        since: "22"
    ]
    public func toTitle(): String
    
    /**
     * @description Converts all characters in the string to lowercase using locale-specific casing rules
     * @param opt the casing option for locale-specific conversion (Turkish, Azerbaijani, Lithuanian, or Other)
     * @returns a new string with all characters converted to lowercase according to the specified locale rules
     * @throws IllegalArgumentException when encountering invalid UTF-8 encoding
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toLower(opt: CasingOption): String
    
    /**
     * @description Converts all characters in the string to uppercase using locale-specific casing rules
     * @param opt the casing option for locale-specific conversion (Turkish, Azerbaijani, Lithuanian, or Other)
     * @returns a new string with all characters converted to uppercase according to the specified locale rules
     * @throws IllegalArgumentException when encountering invalid UTF-8 encoding
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUpper(opt: CasingOption): String
    
    /**
     * @description Converts all characters in the string to titlecase using locale-specific casing rules
     * @param opt the casing option for locale-specific conversion (Turkish, Azerbaijani, Lithuanian, or Other)
     * @returns a new string with all characters converted to titlecase according to the specified locale rules
     * @throws IllegalArgumentException when encountering invalid UTF-8 encoding
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTitle(opt: CasingOption): String
    
    /**
     * @description Removes leading and trailing whitespace characters from the string
     * @returns a new string with leading and trailing whitespace removed
     */
    @!APILevel[
        since: "22"
    ]
    public func trim(): String
    
    /**
     * @description Removes leading whitespace characters from the string
     * @returns a new string with leading whitespace removed    
     */
    @!APILevel[
        since: "22"
    ]
    public func trimLeft(): String
    
    /**
     * @description Removes trailing whitespace characters from the string
     * @returns a new string with trailing whitespace removed    
     */
    @!APILevel[
        since: "22"
    ]
    public func trimRight(): String
    
    /**
     * @description Removes leading whitespace characters from the string
     * @returns a new string with leading whitespace removed
     */
    @!APILevel[
        since: "22"
    ]
    public func trimStart(): String
    
    /**
     * @description Removes trailing whitespace characters from the string
     * @returns a new string with trailing whitespace removed
     */
    @!APILevel[
        since: "22"
    ]
    public func trimEnd(): String
}

