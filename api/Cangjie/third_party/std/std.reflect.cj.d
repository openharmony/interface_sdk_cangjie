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

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ClassTypeInfo <: TypeInfo {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public redef static func get(qualifiedName: String): ClassTypeInfo
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public redef static func of(a: Any): ClassTypeInfo
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public static func of(a: Object): ClassTypeInfo
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public redef static func of<T>(): ClassTypeInfo
    
    /**
    * Returns the collection of public constructors of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop constructors: Collection<ConstructorInfo>
    
    /**
    * Returns the collection of public instance variables of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop instanceVariables: Collection<InstanceVariableInfo>
    
    /**
    * Returns the collection of public static variables of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop staticVariables: Collection<StaticVariableInfo>
    
    /**
    * Returns the super class of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop superClass: Option<ClassTypeInfo>
    
    /**
    * Returns the collection of sealed subclasses of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
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
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func construct(args: Array<Any>): Any
    
    /**
    * Returns true if type info is 'public', false otherwise.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isOpen(): Bool
    
    /**
    * Returns true if type info is 'abstract', false otherwise.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAbstract(): Bool
    
    /**
    * Returns true if type info is 'sealed', false otherwise.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isSealed(): Bool
    
    /**
    * Searches the type info's public constructor by incoming parameter types.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getConstructor(parameterTypes: Array<TypeInfo>): ConstructorInfo
    
    /**
    * Searches the type info's public instance variable by incoming name.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getInstanceVariable(name: String): InstanceVariableInfo
    
    /**
    * Searches the type info's public static variable by incoming name.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getStaticVariable(name: String): StaticVariableInfo
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public open class ReflectException <: Exception {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class InfoNotFoundException <: ReflectException {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class MisMatchException <: ReflectException {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class IllegalSetException <: ReflectException {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class IllegalTypeException <: ReflectException {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class InvocationTargetException <: ReflectException {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class GenericTypeInfo <: TypeInfo & Equatable<GenericTypeInfo> {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: GenericTypeInfo): Bool
}

/**
* Contains the reflective information about instance functions.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class InstanceFunctionInfo <: Equatable<InstanceFunctionInfo> & Hashable & ToString {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop genericParams: Collection<GenericTypeInfo>
    
    /**
    * Returns the name of instance function.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    /**
    * Returns the list of parameters of instance function.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop parameters: ReadOnlyList<ParameterInfo>
    
    /**
    * Returns the return type of instance function.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop returnType: TypeInfo
    
    /**
    * Returns the collection of modifiers of instance function.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop modifiers: Collection<ModifierInfo>
    
    /**
    * Returns the collection of annotations of instance function.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Returns true if instance function is 'public', false otherwise.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isOpen(): Bool
    
    /**
    * Returns true if instance function is 'abstract', false otherwise.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
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
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func apply(instance: Any, args: Array<Any>): Any
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func apply(instance: Any, genericTypeArgs: Array<TypeInfo>, args: Array<Any>): Any
    
    /**
    * Searches the instance function's annotation by incoming name.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: InstanceFunctionInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(that: InstanceFunctionInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

/**
* Contains the reflective information about static functions.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class StaticFunctionInfo <: Equatable<StaticFunctionInfo> & Hashable & ToString {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop genericParams: Collection<GenericTypeInfo>
    
    /**
    * Returns the name of static function.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    /**
    * Returns the list of parameters of static function.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop parameters: ReadOnlyList<ParameterInfo>
    
    /**
    * Returns the return type of static function.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop returnType: TypeInfo
    
    /**
    * Returns the collection of modifiers of static function.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop modifiers: Collection<ModifierInfo>
    
    /**
    * Returns the collection of annotations of static function.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Makes a call of static function with incoming args.
    *
    * @param args parameter list.
    *
    * @throw IllegalArgumentException, if the number of input parameters is different from the number of invoked function parameters.
    * @throw IllegalTypeException, if the input parameter type does not match the required parameter type.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func apply(thisType: TypeInfo, args: Array<Any>): Any
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func apply(thisType: TypeInfo, genericTypeArgs: Array<TypeInfo>, args: Array<Any>): Any
    
    /**
    * Searches the static function's annotation by incoming name.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: StaticFunctionInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(that: StaticFunctionInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

/**
* Contains the reflective information about instance properties.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class InstancePropertyInfo <: Equatable<InstancePropertyInfo> & Hashable & ToString {
    /**
    * Returns the name of instance property.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    /**
    * Returns the return type of instance property.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop typeInfo: TypeInfo
    
    /**
    * Returns the collection of modifiers of instance property.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop modifiers: Collection<ModifierInfo>
    
    /**
    * Returns the collection of annotations of instance property.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Returns true if instance property is 'public', false otherwise.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isOpen(): Bool
    
    /**
    * Returns true if instance property is 'abstract', false otherwise.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isAbstract(): Bool
    
    /**
    * Returns true if instance property is 'mut' and typeInfo is not struct
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isMutable(): Bool
    
    /**
    * Returns the instance property's value for incoming instance.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getValue(instance: Any): Any
    
    /**
    * Updates the instance property's value with incoming new value for incoming instance.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func setValue(instance: Any, newValue: Any): Unit
    
    /**
    * Searches the instance property's annotation by incoming name.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: InstancePropertyInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(that: InstancePropertyInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

/**
* Contains the reflective information about static properties.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class StaticPropertyInfo <: Equatable<StaticPropertyInfo> & Hashable & ToString {
    /**
    * Returns the name of static property.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    /**
    * Returns the return type of static property.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop typeInfo: TypeInfo
    
    /**
    * Returns the collection of modifiers of static property.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop modifiers: Collection<ModifierInfo>
    
    /**
    * Returns the collection of annotations of static property.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Returns true if static property is 'mut' and typeInfo is not struct
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isMutable(): Bool
    
    /**
    * Returns the instance property's value for incoming instance.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getValue(): Any
    
    /**
    * Updates the instance property's value with incoming new value for incoming instance.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func setValue(newValue: Any): Unit
    
    /**
    * Searches the static property's annotation by incoming name.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: StaticPropertyInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(that: StaticPropertyInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

/**
* Contains the reflective information about constructors.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ConstructorInfo <: Equatable<ConstructorInfo> & Hashable & ToString {
    /**
    * Returns the list of parameters of constructor.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop parameters: ReadOnlyList<ParameterInfo>
    
    /**
    * Returns the collection of annotations of constructor.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
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
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func apply(args: Array<Any>): Any
    
    /**
    * Searches the constructor's annotation by incoming name.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: ConstructorInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(that: ConstructorInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

/**
* Contains the reflective information about global functions.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class GlobalFunctionInfo <: Equatable<GlobalFunctionInfo> & Hashable & ToString {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop genericParams: Collection<GenericTypeInfo>
    
    // Function name, overloaded functions have the same function name
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    /**
    * Returns the list of parameters of global function.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop parameters: ReadOnlyList<ParameterInfo>
    
    /**
    * Returns the return type of global function.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop returnType: TypeInfo
    
    // Annotation, when there is no data, size is 0. Note that this api does not guarantee a constant traversal order.
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
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
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func apply(args: Array<Any>): Any
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func apply(genericTypeArgs: Array<TypeInfo>, args: Array<Any>): Any
    
    // Get the annotation by name, return None if not found
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: GlobalFunctionInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(that: GlobalFunctionInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

/**
* Contains reflective information about interfaces.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class InterfaceTypeInfo <: TypeInfo {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public redef static func get(qualifiedName: String): InterfaceTypeInfo
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public redef static func of(a: Any): InterfaceTypeInfo
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public redef static func of<T>(): InterfaceTypeInfo
    
    /**
    * Returns the collection of sealed subtypes of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop sealedSubtypes: Collection<TypeInfo>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isSealed(): Bool
}

/**
* Contains the reflective information about modifiers.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public enum ModifierInfo <: Equatable<ModifierInfo> & Hashable & ToString {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    Open |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    Override |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    Redef |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    Abstract |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    Sealed |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    Mut |
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    Static
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public override operator func == (that: ModifierInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public override operator func != (that: ModifierInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public override func toString(): String
}

/**
* Contains the reflective information about packages.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class PackageInfo <: Equatable<PackageInfo> & Hashable & ToString {
    // Return a specified packageInfo from the loaded dynamic module
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public static func get(qualifiedName: String): PackageInfo
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public static func load(path: String): PackageInfo
    
    // package name with prefix// returns "a.b.c" when the package name is "a.b.c"
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop qualifiedName: String
    
    // current package name// returns "c" when the package name is "a.b.c"
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    // Get all type information of the current package
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop typeInfos: Collection<TypeInfo>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop version: String
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop subPackages: Collection<PackageInfo>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop parentPackage: PackageInfo
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop rootPackage: PackageInfo
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getSubPackage(qualifiedName: String): PackageInfo
    
    // Get all global variable information of the current package
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop variables: Collection<GlobalVariableInfo>
    
    // Get all global function information of the current package
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop functions: Collection<GlobalFunctionInfo>
    
    // lookup type information, return None if// Unable to look up the generic type
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getTypeInfo(qualifiedTypeName: String): TypeInfo
    
    // Find the global variable, return None if not found or the type does not match
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getVariable(name: String): GlobalVariableInfo
    
    // Find the global function, return None if not found or the type does not match// Could not find generic function
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getFunction(name: String, parameterTypes: Array<TypeInfo>): GlobalFunctionInfo
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getFunctions(name: String): Array<GlobalFunctionInfo>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: PackageInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(that: PackageInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

/**
* Contains the reflective information about parameters.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class ParameterInfo <: Equatable<ParameterInfo> & Hashable & ToString {
    /**
    * Returns the index of parameter.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop index: Int64
    
    /**
    * Returns the name of parameter.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    /**
    * Returns the return type of parameter.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop typeInfo: TypeInfo
    
    /**
    * Returns the collection of annotations of parameter.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Searches the parameter's annotation by incoming name.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: ParameterInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(that: ParameterInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

/**
* Contains reflective information about primitive types.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class PrimitiveTypeInfo <: TypeInfo {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public static redef func get(qualifiedName: String): PrimitiveTypeInfo
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public static redef func of(a: Any): PrimitiveTypeInfo
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public static redef func of<T>(): PrimitiveTypeInfo
}

/**
* Contains reflective information about structs.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class StructTypeInfo <: TypeInfo {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public static redef func get(qualifiedName: String): StructTypeInfo
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public static redef func of(a: Any): StructTypeInfo
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public static redef func of<T>(): StructTypeInfo
    
    /**
    * Returns the collection of public constructors of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop constructors: Collection<ConstructorInfo>
    
    /**
    * Returns the collection of public instance variables of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop instanceVariables: Collection<InstanceVariableInfo>
    
    /**
    * Returns the collection of public static variables of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop staticVariables: Collection<StaticVariableInfo>
    
    /**
    * Creates a new instance struct with corresponding type for incoming args.
    *
    * @param args parameter list.
    *
    * @throw MisMatchException, if no public constructor is found to construct new instance.
    * @throw InvocationTargetException, if an exception is thrown when the constructor is called to construct the instance.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func construct(args: Array<Any>): Any
    
    /**
    * Searches the type info's public constructor by incoming parameter types.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getConstructor(parameterTypes: Array<TypeInfo>): ConstructorInfo
    
    /**
    * Searches the type info's public instance variable by incoming name.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getInstanceVariable(name: String): InstanceVariableInfo
    
    /**
    * Searches the type info's public static variable by incoming name.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getStaticVariable(name: String): StaticVariableInfo
}

/**
* This file defines the `toAny` methods for each primitive type.
*/
extend Object {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend Int64 {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend IntNative {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend Int32 {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend Int16 {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend Int8 {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend UInt64 {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend UIntNative {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend UInt32 {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend UInt16 {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend UInt8 {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend Float64 {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend Float32 {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend Float16 {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend Bool {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend Rune {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend Unit {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

extend<Object> Array<Object> {
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toAny(): Any
}

/**
* Contains the reflective information that is common for classes, interfaces, structs and primitive types.
*/
sealed abstract class TypeInfo <: Equatable<TypeInfo> & Hashable & ToString {
    /**
    * Creates the certain type info by generic type T.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public static func of<T>(): TypeInfo
    
    /**
    * Creates the certain type info for incoming instance with 'Any' type.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public static func of(a: Any): TypeInfo
    
    /**
    * Creates the class type info for incoming instance with 'Object' type.
    */
    @Deprecated[message: "Use 'ClassTypeInfo.get(Object)' instead."]
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public static func of(a: Object): ClassTypeInfo
    
    /**
    * Searches and creates the certain type info by incoming qualified name.
    * If no corresponding type information for incoming qualified name is found, the exception is thrown.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public static func get(qualifiedName: String): TypeInfo
    
    /**
    * Returns the simple name of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    /**
    * Returns the qualified name of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop qualifiedName: String
    
    /**
    * Returns the collection of public instance functions of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop instanceFunctions: Collection<InstanceFunctionInfo>
    
    /**
    * Returns the list of public static functions of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop staticFunctions: Collection<StaticFunctionInfo>
    
    /**
    * Returns the collection of public instance properties of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop instanceProperties: Collection<InstancePropertyInfo>
    
    /**
    * Returns the collection of public static properties of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop staticProperties: Collection<StaticPropertyInfo>
    
    /**
    * Returns the collection of annotations of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Returns the collection of super interfaces of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop superInterfaces: Collection<InterfaceTypeInfo>
    
    /**
    * Returns the collection of modifiers of type info.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop modifiers: Collection<ModifierInfo>
    
    /**
    * Returns true, if current type info is subtype of incoming type info, false otherwise.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isSubtypeOf(supertype: TypeInfo): Bool
    
    /**
    * Searches the type info's public instance function by incoming name and parameter types.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getInstanceFunction(name: String, parameterTypes: Array<TypeInfo>): InstanceFunctionInfo
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getInstanceFunctions(name: String): Array<InstanceFunctionInfo>
    
    /**
    * Searches the type info's public static function by incoming name and parameter types.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getStaticFunction(name: String, parameterTypes: Array<TypeInfo>): StaticFunctionInfo
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getStaticFunctions(name: String): Array<StaticFunctionInfo>
    
    /**
    * Searches the type info's public instance property by incoming name and signature.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getInstanceProperty(name: String): InstancePropertyInfo
    
    /**
    * Searches the type info's public static property by incoming name and signature.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getStaticProperty(name: String): StaticPropertyInfo
    
    /**
    * Searches the type info's annotation by incoming name.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func findAnnotation<T>(): Option<T>
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: TypeInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(that: TypeInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
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
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public func parseParameterTypes(parameters: String): Array<TypeInfo>

/**
* Contains the reflective information about instance variables.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class InstanceVariableInfo <: Equatable<InstanceVariableInfo> & Hashable & ToString {
    /**
    * Returns the name of instance variable.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    /**
    * Returns the return type of instance variable.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop typeInfo: TypeInfo
    
    /**
    * Returns the collection of modifiers of instance variable.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop modifiers: Collection<ModifierInfo>
    
    /**
    * Returns the collection of annotations of instance variable.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Returns true if instance variable is 'mut' and typeInfo is not struct
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isMutable(): Bool
    
    /**
    * Returns the instance variable's value for incoming instance.
    *
    * @throw IllegalTypeException, if the input instance type is different from the instance which this InstanceVariableInfo belong to.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
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
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func setValue(instance: Any, newValue: Any): Unit
    
    /**
    * Searches the instance variable's annotation by incoming name.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: InstanceVariableInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(that: InstanceVariableInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

/**
* Contains the reflective information about static variables.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class StaticVariableInfo <: Equatable<StaticVariableInfo> & Hashable & ToString {
    /**
    * Returns the name of static variable.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    /**
    * Returns the return type of static variable.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop typeInfo: TypeInfo
    
    /**
    * Returns the collection of modifiers of static variable.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop modifiers: Collection<ModifierInfo>
    
    /**
    * Returns the collection of annotations of static variable.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop annotations: Collection<Annotation>
    
    /**
    * Returns true if static variable is 'mut' and typeInfo is not struct
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isMutable(): Bool
    
    /**
    * Returns the static variable's value.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
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
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func setValue(newValue: Any): Unit
    
    /**
    * Searches the static variable's annotation by incoming name.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: StaticVariableInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(that: StaticVariableInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

/**
* Contains the reflective information about global variables.
*/
@!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
public class GlobalVariableInfo <: Equatable<GlobalVariableInfo> & Hashable & ToString {
    /**
    * Returns the name of global variable.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    // variable type
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop typeInfo: TypeInfo
    
    // Annotation, when there is no data, size is 0. Note that this api does not guarantee a constant traversal order.
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public prop annotations: Collection<Annotation>
    
    // Whether it is a variable modified by var and typeInfo is not struct. Calling setValue on a variable modified by let will throw an exception.
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func isMutable(): Bool
    
    // get variable value
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func getValue(): Any
    
    /**
    * Updates the global variable's value with incoming new value.
    *
    * @param newValue new value to set.
    *
    * @throw IllegalSetException, if the global variable is immutable.
    * @throw IllegalTypeException, if the input newValue type is different from the global variable type.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func setValue(newValue: Any): Unit
    
    /**
    * Searches the global variable's annotation by incoming name.
    */
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func findAnnotation<T>(): Option<T> where T <: Annotation
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: GlobalVariableInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(that: GlobalVariableInfo): Bool
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func hashCode(): Int64
    
    @!APILevel[21, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

