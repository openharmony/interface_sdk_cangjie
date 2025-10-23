/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package std.reflect
import std.collection.*
import std.sync.*

import std.fs.*

@!APILevel[since: "22"]
public class ClassTypeInfo <: TypeInfo {
    @!APILevel[since: "22"]
    public redef static func get(qualifiedName: String): ClassTypeInfo
    
    @!APILevel[since: "22"]
    public redef static func of(a: Any): ClassTypeInfo
    
    @!APILevel[since: "22"]
    public static func of(a: Object): ClassTypeInfo
    
    @!APILevel[since: "22"]
    public redef static func of<T>(): ClassTypeInfo
    
    /**
    * Returns the collection of public constructors of type info.
    */
    @!APILevel[since: "22"]
    public prop constructors: Collection<ConstructorInfo>
    
    /**
    * Returns the collection of public instance variables of type info.
    */
    @!APILevel[since: "22"]
    public prop instanceVariables: Collection<InstanceVariableInfo>
    
    /**
    * Returns the collection of public static variables of type info.
    */
    @!APILevel[since: "22"]
    public prop staticVariables: Collection<StaticVariableInfo>
    
    /**
    * Returns the super class of type info.
    */
    @!APILevel[since: "22"]
    public prop superClass: Option<ClassTypeInfo>
    
    /**
    * Returns the collection of sealed subclasses of type info.
    */
    @!APILevel[since: "22"]
    public prop sealedSubclasses: Collection<ClassTypeInfo>
    
    /**
    * Creates a new instance of class with corresponding type for incoming args.
    *
    * @param args parameter list.
    *
    * @throw IllegalTypeException, if this class ia abstract.
    * @throw MisMatchException, if no public constructor is found to construct new instance.
    * @throw InvocationTargetException, if an exception is thrown when the constructor is called to construct the instance.
    */
    @!APILevel[since: "22"]
    public func construct(args: Array<Any>): Any
    
    /**
    * Returns true if type info is 'public', false otherwise.
    */
    @!APILevel[since: "22"]
    public func isOpen(): Bool
    
    /**
    * Returns true if type info is 'abstract', false otherwise.
    */
    @!APILevel[since: "22"]
    public func isAbstract(): Bool
    
    /**
    * Returns true if type info is 'sealed', false otherwise.
    */
    @!APILevel[since: "22"]
    public func isSealed(): Bool
    
    /**
    * Searches the type info's public constructor by incoming parameter types.
    */
    @!APILevel[since: "22"]
    public func getConstructor(parameterTypes: Array<TypeInfo>): ConstructorInfo
    
    /**
    * Searches the type info's public instance variable by incoming name.
    */
    @!APILevel[since: "22"]
    public func getInstanceVariable(name: String): InstanceVariableInfo
    
    /**
    * Searches the type info's public static variable by incoming name.
    */
    @!APILevel[since: "22"]
    public func getStaticVariable(name: String): StaticVariableInfo
}

@!APILevel[since: "22"]
public open class ReflectException <: Exception {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public init(message: String)
}

@!APILevel[since: "22"]
public class InfoNotFoundException <: ReflectException {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public init(message: String)
}

@!APILevel[since: "22"]
public class MisMatchException <: ReflectException {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public init(message: String)
}

@!APILevel[since: "22"]
public class IllegalSetException <: ReflectException {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public init(message: String)
}

@!APILevel[since: "22"]
public class IllegalTypeException <: ReflectException {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public init(message: String)
}

@!APILevel[since: "22"]
public class InvocationTargetException <: ReflectException {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public init(message: String)
}

@!APILevel[since: "22"]
public class GenericTypeInfo <: TypeInfo & Equatable<GenericTypeInfo> {
    @!APILevel[since: "22"]
    public operator func ==(that: GenericTypeInfo): Bool
}

/**
* Contains the reflective information about instance functions.
*/
@!APILevel[since: "22"]
public class InstanceFunctionInfo <: Equatable<InstanceFunctionInfo> & Hashable & ToString {
    @!APILevel[since: "22"]
    public prop genericParams: Collection<GenericTypeInfo>
    
    /**
    * Returns the name of instance function.
    */
    @!APILevel[since: "22"]
    public prop name: String
    
    /**
    * Returns the list of parameters of instance function.
    */
    @!APILevel[since: "22"]
    public prop parameters: ReadOnlyList<ParameterInfo>
    
    /**
    * Returns the return type of instance function.
    */
    @!APILevel[since: "22"]
    public prop returnType: TypeInfo
    
    /**
    * Returns the collection of modifiers of instance function.
    */
    @!APILevel[since: "22"]
    public prop modifiers: Collection<ModifierInfo>
    
    /**
    * Returns the collection of annotations of instance function.
    */
    @!APILevel[since: "22"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Returns true if instance function is 'public', false otherwise.
    */
    @!APILevel[since: "22"]
    public func isOpen(): Bool
    
    /**
    * Returns true if instance function is 'abstract', false otherwise.
    */
    @!APILevel[since: "22"]
    public func isAbstract(): Bool
    
    /**
    * Makes a call of public instance function with incoming args for incoming instance.
    *
    * @param args parameter list.
    *
    * @throw IllegalArgumentException, if the number of input parameters is different from the number of invoked function parameters.
    * @throw IllegalTypeException, if the input parameter type does not match the required parameter type.
    * @throw InvocationTargetException, if an exception is thrown when the function is abstract.
    */
    @!APILevel[since: "22"]
    public func apply(instance: Any, args: Array<Any>): Any
    
    @!APILevel[since: "22"]
    public func apply(instance: Any, genericTypeArgs: Array<TypeInfo>, args: Array<Any>): Any
    
    /**
    * Searches the instance function's annotation by incoming name.
    */
    @!APILevel[since: "22"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[since: "22"]
    public operator func ==(that: InstanceFunctionInfo): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(that: InstanceFunctionInfo): Bool
    
    @!APILevel[since: "22"]
    public func hashCode(): Int64
    
    @!APILevel[since: "22"]
    public func toString(): String
}

/**
* Contains the reflective information about static functions.
*/
@!APILevel[since: "22"]
public class StaticFunctionInfo <: Equatable<StaticFunctionInfo> & Hashable & ToString {
    @!APILevel[since: "22"]
    public prop genericParams: Collection<GenericTypeInfo>
    
    /**
    * Returns the name of static function.
    */
    @!APILevel[since: "22"]
    public prop name: String
    
    /**
    * Returns the list of parameters of static function.
    */
    @!APILevel[since: "22"]
    public prop parameters: ReadOnlyList<ParameterInfo>
    
    /**
    * Returns the return type of static function.
    */
    @!APILevel[since: "22"]
    public prop returnType: TypeInfo
    
    /**
    * Returns the collection of modifiers of static function.
    */
    @!APILevel[since: "22"]
    public prop modifiers: Collection<ModifierInfo>
    
    /**
    * Returns the collection of annotations of static function.
    */
    @!APILevel[since: "22"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Makes a call of static function with incoming args.
    *
    * @param args parameter list.
    *
    * @throw IllegalArgumentException, if the number of input parameters is different from the number of invoked function parameters.
    * @throw IllegalTypeException, if the input parameter type does not match the required parameter type.
    */
    @!APILevel[since: "22"]
    public func apply(thisType: TypeInfo, args: Array<Any>): Any
    
    @!APILevel[since: "22"]
    public func apply(thisType: TypeInfo, genericTypeArgs: Array<TypeInfo>, args: Array<Any>): Any
    
    /**
    * Searches the static function's annotation by incoming name.
    */
    @!APILevel[since: "22"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[since: "22"]
    public operator func ==(that: StaticFunctionInfo): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(that: StaticFunctionInfo): Bool
    
    @!APILevel[since: "22"]
    public func hashCode(): Int64
    
    @!APILevel[since: "22"]
    public func toString(): String
}

/**
* Contains the reflective information about instance properties.
*/
@!APILevel[since: "22"]
public class InstancePropertyInfo <: Equatable<InstancePropertyInfo> & Hashable & ToString {
    /**
    * Returns the name of instance property.
    */
    @!APILevel[since: "22"]
    public prop name: String
    
    /**
    * Returns the return type of instance property.
    */
    @!APILevel[since: "22"]
    public prop typeInfo: TypeInfo
    
    /**
    * Returns the collection of modifiers of instance property.
    */
    @!APILevel[since: "22"]
    public prop modifiers: Collection<ModifierInfo>
    
    /**
    * Returns the collection of annotations of instance property.
    */
    @!APILevel[since: "22"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Returns true if instance property is 'public', false otherwise.
    */
    @!APILevel[since: "22"]
    public func isOpen(): Bool
    
    /**
    * Returns true if instance property is 'abstract', false otherwise.
    */
    @!APILevel[since: "22"]
    public func isAbstract(): Bool
    
    /**
    * Returns true if instance property is 'mut' and typeInfo is not struct
    */
    @!APILevel[since: "22"]
    public func isMutable(): Bool
    
    /**
    * Returns the instance property's value for incoming instance.
    */
    @!APILevel[since: "22"]
    public func getValue(instance: Any): Any
    
    /**
    * Updates the instance property's value with incoming new value for incoming instance.
    */
    @!APILevel[since: "22"]
    public func setValue(instance: Any, newValue: Any): Unit
    
    /**
    * Searches the instance property's annotation by incoming name.
    */
    @!APILevel[since: "22"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[since: "22"]
    public operator func ==(that: InstancePropertyInfo): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(that: InstancePropertyInfo): Bool
    
    @!APILevel[since: "22"]
    public func hashCode(): Int64
    
    @!APILevel[since: "22"]
    public func toString(): String
}

/**
* Contains the reflective information about static properties.
*/
@!APILevel[since: "22"]
public class StaticPropertyInfo <: Equatable<StaticPropertyInfo> & Hashable & ToString {
    /**
    * Returns the name of static property.
    */
    @!APILevel[since: "22"]
    public prop name: String
    
    /**
    * Returns the return type of static property.
    */
    @!APILevel[since: "22"]
    public prop typeInfo: TypeInfo
    
    /**
    * Returns the collection of modifiers of static property.
    */
    @!APILevel[since: "22"]
    public prop modifiers: Collection<ModifierInfo>
    
    /**
    * Returns the collection of annotations of static property.
    */
    @!APILevel[since: "22"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Returns true if static property is 'mut' and typeInfo is not struct
    */
    @!APILevel[since: "22"]
    public func isMutable(): Bool
    
    /**
    * Returns the instance property's value for incoming instance.
    */
    @!APILevel[since: "22"]
    public func getValue(): Any
    
    /**
    * Updates the instance property's value with incoming new value for incoming instance.
    */
    @!APILevel[since: "22"]
    public func setValue(newValue: Any): Unit
    
    /**
    * Searches the static property's annotation by incoming name.
    */
    @!APILevel[since: "22"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[since: "22"]
    public operator func ==(that: StaticPropertyInfo): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(that: StaticPropertyInfo): Bool
    
    @!APILevel[since: "22"]
    public func hashCode(): Int64
    
    @!APILevel[since: "22"]
    public func toString(): String
}

/**
* Contains the reflective information about constructors.
*/
@!APILevel[since: "22"]
public class ConstructorInfo <: Equatable<ConstructorInfo> & Hashable & ToString {
    /**
    * Returns the list of parameters of constructor.
    */
    @!APILevel[since: "22"]
    public prop parameters: ReadOnlyList<ParameterInfo>
    
    /**
    * Returns the collection of annotations of constructor.
    */
    @!APILevel[since: "22"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Makes a call of constructor with incoming args.
    *
    * @param args parameter list.
    *
    * @throw IllegalArgumentException, if the number of input parameters is different from the number of invoked function parameters.
    * @throw IllegalTypeException, if the input parameter type does not match the required parameter type.
    * @throw InvocationTargetException, if the constructor is abstract
    */
    @!APILevel[since: "22"]
    public func apply(args: Array<Any>): Any
    
    /**
    * Searches the constructor's annotation by incoming name.
    */
    @!APILevel[since: "22"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[since: "22"]
    public operator func ==(that: ConstructorInfo): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(that: ConstructorInfo): Bool
    
    @!APILevel[since: "22"]
    public func hashCode(): Int64
    
    @!APILevel[since: "22"]
    public func toString(): String
}

/**
* Contains the reflective information about global functions.
*/
@!APILevel[since: "22"]
public class GlobalFunctionInfo <: Equatable<GlobalFunctionInfo> & Hashable & ToString {
    @!APILevel[since: "22"]
    public prop genericParams: Collection<GenericTypeInfo>
    
    // Function name, overloaded functions have the same function name
    @!APILevel[since: "22"]
    public prop name: String
    
    /**
    * Returns the list of parameters of global function.
    */
    @!APILevel[since: "22"]
    public prop parameters: ReadOnlyList<ParameterInfo>
    
    /**
    * Returns the return type of global function.
    */
    @!APILevel[since: "22"]
    public prop returnType: TypeInfo
    
    // Annotation, when there is no data, size is 0. Note that this api does not guarantee a constant traversal order.
    @!APILevel[since: "22"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Makes a call of global function with incoming args.
    *
    * @param args parameter list.
    *
    * @throw IllegalArgumentException, if the number of input parameters is different from the number of invoked function parameters.
    * @throw IllegalTypeException, if the input parameter type does not match the required parameter type.
    * @throw InvocationTargetException, if then generic parameter check failed.
    */
    @!APILevel[since: "22"]
    public func apply(args: Array<Any>): Any
    
    @!APILevel[since: "22"]
    public func apply(genericTypeArgs: Array<TypeInfo>, args: Array<Any>): Any
    
    // Get the annotation by name, return None if not found
    @!APILevel[since: "22"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[since: "22"]
    public operator func ==(that: GlobalFunctionInfo): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(that: GlobalFunctionInfo): Bool
    
    @!APILevel[since: "22"]
    public func hashCode(): Int64
    
    @!APILevel[since: "22"]
    public func toString(): String
}

/**
* Contains reflective information about interfaces.
*/
@!APILevel[since: "22"]
public class InterfaceTypeInfo <: TypeInfo {
    @!APILevel[since: "22"]
    public redef static func get(qualifiedName: String): InterfaceTypeInfo
    
    @!APILevel[since: "22"]
    public redef static func of(a: Any): InterfaceTypeInfo
    
    @!APILevel[since: "22"]
    public redef static func of<T>(): InterfaceTypeInfo
    
    /**
    * Returns the collection of sealed subtypes of type info.
    */
    @!APILevel[since: "22"]
    public prop sealedSubtypes: Collection<TypeInfo>
    
    @!APILevel[since: "22"]
    public func isSealed(): Bool
}

/**
* Contains the reflective information about modifiers.
*/
@!APILevel[since: "22"]
public enum ModifierInfo <: Equatable<ModifierInfo> & Hashable & ToString {
    @!APILevel[since: "22"]
    Open |
    @!APILevel[since: "22"]
    Override |
    @!APILevel[since: "22"]
    Redef |
    @!APILevel[since: "22"]
    Abstract |
    @!APILevel[since: "22"]
    Sealed |
    @!APILevel[since: "22"]
    Mut |
    @!APILevel[since: "22"]
    Static
    @!APILevel[since: "22"]
    public override operator func == (that: ModifierInfo): Bool
    
    @!APILevel[since: "22"]
    public override operator func != (that: ModifierInfo): Bool
    
    @!APILevel[since: "22"]
    public func hashCode(): Int64
    
    @!APILevel[since: "22"]
    public override func toString(): String
}

/**
* Contains the reflective information about packages.
*/
@!APILevel[since: "22"]
public class PackageInfo <: Equatable<PackageInfo> & Hashable & ToString {
    // Return a specified packageInfo from the loaded dynamic module
    @!APILevel[since: "22"]
    public static func get(qualifiedName: String): PackageInfo
    
    @!APILevel[since: "22"]
    public static func load(path: String): PackageInfo
    
    // package name with prefix// returns "a.b.c" when the package name is "a.b.c"
    @!APILevel[since: "22"]
    public prop qualifiedName: String
    
    // current package name// returns "c" when the package name is "a.b.c"
    @!APILevel[since: "22"]
    public prop name: String
    
    // Get all type information of the current package
    @!APILevel[since: "22"]
    public prop typeInfos: Collection<TypeInfo>
    
    @!APILevel[since: "22"]
    public prop version: String
    
    @!APILevel[since: "22"]
    public prop subPackages: Collection<PackageInfo>
    
    @!APILevel[since: "22"]
    public prop parentPackage: PackageInfo
    
    @!APILevel[since: "22"]
    public prop rootPackage: PackageInfo
    
    @!APILevel[since: "22"]
    public func getSubPackage(qualifiedName: String): PackageInfo
    
    // Get all global variable information of the current package
    @!APILevel[since: "22"]
    public prop variables: Collection<GlobalVariableInfo>
    
    // Get all global function information of the current package
    @!APILevel[since: "22"]
    public prop functions: Collection<GlobalFunctionInfo>
    
    // lookup type information, return None if// Unable to look up the generic type
    @!APILevel[since: "22"]
    public func getTypeInfo(qualifiedTypeName: String): TypeInfo
    
    // Find the global variable, return None if not found or the type does not match
    @!APILevel[since: "22"]
    public func getVariable(name: String): GlobalVariableInfo
    
    // Find the global function, return None if not found or the type does not match// Could not find generic function
    @!APILevel[since: "22"]
    public func getFunction(name: String, parameterTypes: Array<TypeInfo>): GlobalFunctionInfo
    
    @!APILevel[since: "22"]
    public func getFunctions(name: String): Array<GlobalFunctionInfo>
    
    @!APILevel[since: "22"]
    public operator func ==(that: PackageInfo): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(that: PackageInfo): Bool
    
    @!APILevel[since: "22"]
    public func hashCode(): Int64
    
    @!APILevel[since: "22"]
    public func toString(): String
}

/**
* Contains the reflective information about parameters.
*/
@!APILevel[since: "22"]
public class ParameterInfo <: Equatable<ParameterInfo> & Hashable & ToString {
    /**
    * Returns the index of parameter.
    */
    @!APILevel[since: "22"]
    public prop index: Int64
    
    /**
    * Returns the name of parameter.
    */
    @!APILevel[since: "22"]
    public prop name: String
    
    /**
    * Returns the return type of parameter.
    */
    @!APILevel[since: "22"]
    public prop typeInfo: TypeInfo
    
    /**
    * Returns the collection of annotations of parameter.
    */
    @!APILevel[since: "22"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Searches the parameter's annotation by incoming name.
    */
    @!APILevel[since: "22"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[since: "22"]
    public operator func ==(that: ParameterInfo): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(that: ParameterInfo): Bool
    
    @!APILevel[since: "22"]
    public func hashCode(): Int64
    
    @!APILevel[since: "22"]
    public func toString(): String
}

/**
* Contains reflective information about primitive types.
*/
@!APILevel[since: "22"]
public class PrimitiveTypeInfo <: TypeInfo {
    @!APILevel[since: "22"]
    public static redef func get(qualifiedName: String): PrimitiveTypeInfo
    
    @!APILevel[since: "22"]
    public static redef func of(a: Any): PrimitiveTypeInfo
    
    @!APILevel[since: "22"]
    public static redef func of<T>(): PrimitiveTypeInfo
}

/**
* Contains reflective information about structs.
*/
@!APILevel[since: "22"]
public class StructTypeInfo <: TypeInfo {
    @!APILevel[since: "22"]
    public static redef func get(qualifiedName: String): StructTypeInfo
    
    @!APILevel[since: "22"]
    public static redef func of(a: Any): StructTypeInfo
    
    @!APILevel[since: "22"]
    public static redef func of<T>(): StructTypeInfo
    
    /**
    * Returns the collection of public constructors of type info.
    */
    @!APILevel[since: "22"]
    public prop constructors: Collection<ConstructorInfo>
    
    /**
    * Returns the collection of public instance variables of type info.
    */
    @!APILevel[since: "22"]
    public prop instanceVariables: Collection<InstanceVariableInfo>
    
    /**
    * Returns the collection of public static variables of type info.
    */
    @!APILevel[since: "22"]
    public prop staticVariables: Collection<StaticVariableInfo>
    
    /**
    * Creates a new instance struct with corresponding type for incoming args.
    *
    * @param args parameter list.
    *
    * @throw MisMatchException, if no public constructor is found to construct new instance.
    * @throw InvocationTargetException, if an exception is thrown when the constructor is called to construct the instance.
    */
    @!APILevel[since: "22"]
    public func construct(args: Array<Any>): Any
    
    /**
    * Searches the type info's public constructor by incoming parameter types.
    */
    @!APILevel[since: "22"]
    public func getConstructor(parameterTypes: Array<TypeInfo>): ConstructorInfo
    
    /**
    * Searches the type info's public instance variable by incoming name.
    */
    @!APILevel[since: "22"]
    public func getInstanceVariable(name: String): InstanceVariableInfo
    
    /**
    * Searches the type info's public static variable by incoming name.
    */
    @!APILevel[since: "22"]
    public func getStaticVariable(name: String): StaticVariableInfo
}

/**
* This file defines the `toAny` methods for each primitive type.
*/
extend Object {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend Int64 {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend IntNative {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend Int32 {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend Int16 {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend Int8 {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend UInt64 {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend UIntNative {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend UInt32 {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend UInt16 {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend UInt8 {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend Float64 {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend Float32 {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend Float16 {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend Bool {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend Rune {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend Unit {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

extend<Object> Array<Object> {
    @!APILevel[since: "22"]
    public func toAny(): Any
}

/**
* Contains the reflective information that is common for classes, interfaces, structs and primitive types.
*/
sealed abstract class TypeInfo <: Equatable<TypeInfo> & Hashable & ToString {
    /**
    * Creates the certain type info by generic type T.
    */
    @!APILevel[since: "22"]
    public static func of<T>(): TypeInfo
    
    /**
    * Creates the certain type info for incoming instance with 'Any' type.
    */
    @!APILevel[since: "22"]
    public static func of(a: Any): TypeInfo
    
    /**
    * Creates the class type info for incoming instance with 'Object' type.
    */
    @Deprecated[message: "Use 'ClassTypeInfo.get(Object)' instead."]
    @!APILevel[since: "22"]
    public static func of(a: Object): ClassTypeInfo
    
    /**
    * Searches and creates the certain type info by incoming qualified name.
    * If no corresponding type information for incoming qualified name is found, the exception is thrown.
    */
    @!APILevel[since: "22"]
    public static func get(qualifiedName: String): TypeInfo
    
    /**
    * Returns the simple name of type info.
    */
    @!APILevel[since: "22"]
    public prop name: String
    
    /**
    * Returns the qualified name of type info.
    */
    @!APILevel[since: "22"]
    public prop qualifiedName: String
    
    /**
    * Returns the collection of public instance functions of type info.
    */
    @!APILevel[since: "22"]
    public prop instanceFunctions: Collection<InstanceFunctionInfo>
    
    /**
    * Returns the list of public static functions of type info.
    */
    @!APILevel[since: "22"]
    public prop staticFunctions: Collection<StaticFunctionInfo>
    
    /**
    * Returns the collection of public instance properties of type info.
    */
    @!APILevel[since: "22"]
    public prop instanceProperties: Collection<InstancePropertyInfo>
    
    /**
    * Returns the collection of public static properties of type info.
    */
    @!APILevel[since: "22"]
    public prop staticProperties: Collection<StaticPropertyInfo>
    
    /**
    * Returns the collection of annotations of type info.
    */
    @!APILevel[since: "22"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Returns the collection of super interfaces of type info.
    */
    @!APILevel[since: "22"]
    public prop superInterfaces: Collection<InterfaceTypeInfo>
    
    /**
    * Returns the collection of modifiers of type info.
    */
    @!APILevel[since: "22"]
    public prop modifiers: Collection<ModifierInfo>
    
    /**
    * Returns true, if current type info is subtype of incoming type info, false otherwise.
    */
    @!APILevel[since: "22"]
    public func isSubtypeOf(supertype: TypeInfo): Bool
    
    /**
    * Searches the type info's public instance function by incoming name and parameter types.
    */
    @!APILevel[since: "22"]
    public func getInstanceFunction(name: String, parameterTypes: Array<TypeInfo>): InstanceFunctionInfo
    
    @!APILevel[since: "22"]
    public func getInstanceFunctions(name: String): Array<InstanceFunctionInfo>
    
    /**
    * Searches the type info's public static function by incoming name and parameter types.
    */
    @!APILevel[since: "22"]
    public func getStaticFunction(name: String, parameterTypes: Array<TypeInfo>): StaticFunctionInfo
    
    @!APILevel[since: "22"]
    public func getStaticFunctions(name: String): Array<StaticFunctionInfo>
    
    /**
    * Searches the type info's public instance property by incoming name and signature.
    */
    @!APILevel[since: "22"]
    public func getInstanceProperty(name: String): InstancePropertyInfo
    
    /**
    * Searches the type info's public static property by incoming name and signature.
    */
    @!APILevel[since: "22"]
    public func getStaticProperty(name: String): StaticPropertyInfo
    
    /**
    * Searches the type info's annotation by incoming name.
    */
    @!APILevel[since: "22"]
    public func findAnnotation<T>(): Option<T>
    
    @!APILevel[since: "22"]
    public operator func ==(that: TypeInfo): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(that: TypeInfo): Bool
    
    @!APILevel[since: "22"]
    public func hashCode(): Int64
    
    @!APILevel[since: "22"]
    public func toString(): String
}



public type Annotation = Object

/**
* Parses the input string as a TypeInfo array
*
* @param parameterTypes the parameter type part of the function type.
* It does not contain the parameter name, default value, or outermost parenthesis.
* @return TypeInfo array converted from a parameter type string.
*
* @throws IllegalArgumentException if the input string does not comply with the specifications
*/
@!APILevel[since: "22"]
public func parseParameterTypes(parameters: String): Array<TypeInfo>

/**
* Contains the reflective information about instance variables.
*/
@!APILevel[since: "22"]
public class InstanceVariableInfo <: Equatable<InstanceVariableInfo> & Hashable & ToString {
    /**
    * Returns the name of instance variable.
    */
    @!APILevel[since: "22"]
    public prop name: String
    
    /**
    * Returns the return type of instance variable.
    */
    @!APILevel[since: "22"]
    public prop typeInfo: TypeInfo
    
    /**
    * Returns the collection of modifiers of instance variable.
    */
    @!APILevel[since: "22"]
    public prop modifiers: Collection<ModifierInfo>
    
    /**
    * Returns the collection of annotations of instance variable.
    */
    @!APILevel[since: "22"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Returns true if instance variable is 'mut' and typeInfo is not struct
    */
    @!APILevel[since: "22"]
    public func isMutable(): Bool
    
    /**
    * Returns the instance variable's value for incoming instance.
    *
    * @throw IllegalTypeException, if the input instance type is different from the instance which this InstanceVariableInfo belong to.
    */
    @!APILevel[since: "22"]
    public func getValue(instance: Any): Any
    
    /**
    * Updates the instance variable's value with incoming new value for incoming instance.
    *
    * @param instance which the member variable belongs.
    * @param newValue new value to set.
    *
    * @throw IllegalSetException, if the instance variable is immutable.
    * @throw IllegalTypeException, if the input newValue type is different from the instance variable type.
    * @throw UnsupportedException, if this variable is struct
    * @throw IllegalTypeException, if the input instance type is different from the instance which this InstanceVariableInfo belong to.
    */
    @!APILevel[since: "22"]
    public func setValue(instance: Any, newValue: Any): Unit
    
    /**
    * Searches the instance variable's annotation by incoming name.
    */
    @!APILevel[since: "22"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[since: "22"]
    public operator func ==(that: InstanceVariableInfo): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(that: InstanceVariableInfo): Bool
    
    @!APILevel[since: "22"]
    public func hashCode(): Int64
    
    @!APILevel[since: "22"]
    public func toString(): String
}

/**
* Contains the reflective information about static variables.
*/
@!APILevel[since: "22"]
public class StaticVariableInfo <: Equatable<StaticVariableInfo> & Hashable & ToString {
    /**
    * Returns the name of static variable.
    */
    @!APILevel[since: "22"]
    public prop name: String
    
    /**
    * Returns the return type of static variable.
    */
    @!APILevel[since: "22"]
    public prop typeInfo: TypeInfo
    
    /**
    * Returns the collection of modifiers of static variable.
    */
    @!APILevel[since: "22"]
    public prop modifiers: Collection<ModifierInfo>
    
    /**
    * Returns the collection of annotations of static variable.
    */
    @!APILevel[since: "22"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Returns true if static variable is 'mut' and typeInfo is not struct
    */
    @!APILevel[since: "22"]
    public func isMutable(): Bool
    
    /**
    * Returns the static variable's value.
    */
    @!APILevel[since: "22"]
    public func getValue(): Any
    
    /**
    * Updates the static variable's value with incoming new value.
    *
    * @param newValue new value to set.
    *
    * @throw IllegalSetException, if the static variable is immutable.
    * @throw UnsupportedException, if this variable is struct
    * @throw IllegalTypeException, if the input newValue type is different from the static variable type.
    */
    @!APILevel[since: "22"]
    public func setValue(newValue: Any): Unit
    
    /**
    * Searches the static variable's annotation by incoming name.
    */
    @!APILevel[since: "22"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[since: "22"]
    public operator func ==(that: StaticVariableInfo): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(that: StaticVariableInfo): Bool
    
    @!APILevel[since: "22"]
    public func hashCode(): Int64
    
    @!APILevel[since: "22"]
    public func toString(): String
}

/**
* Contains the reflective information about global variables.
*/
@!APILevel[since: "22"]
public class GlobalVariableInfo <: Equatable<GlobalVariableInfo> & Hashable & ToString {
    /**
    * Returns the name of global variable.
    */
    @!APILevel[since: "22"]
    public prop name: String
    
    // variable type
    @!APILevel[since: "22"]
    public prop typeInfo: TypeInfo
    
    // Annotation, when there is no data, size is 0. Note that this api does not guarantee a constant traversal order.
    @!APILevel[since: "22"]
    public prop annotations: Collection<Annotation>
    
    // Whether it is a variable modified by var and typeInfo is not struct. Calling setValue on a variable modified by let will throw an exception.
    @!APILevel[since: "22"]
    public func isMutable(): Bool
    
    // get variable value
    @!APILevel[since: "22"]
    public func getValue(): Any
    
    /**
    * Updates the global variable's value with incoming new value.
    *
    * @param newValue new value to set.
    *
    * @throw IllegalSetException, if the global variable is immutable.
    * @throw IllegalTypeException, if the input newValue type is different from the global variable type.
    */
    @!APILevel[since: "22"]
    public func setValue(newValue: Any): Unit
    
    /**
    * Searches the global variable's annotation by incoming name.
    */
    @!APILevel[since: "22"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[since: "22"]
    public operator func ==(that: GlobalVariableInfo): Bool
    
    @!APILevel[since: "22"]
    public operator func !=(that: GlobalVariableInfo): Bool
    
    @!APILevel[since: "22"]
    public func hashCode(): Int64
    
    @!APILevel[since: "22"]
    public func toString(): String
}

