/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package ohos.arkui.state_management
import ohos.base.*
import ohos.labels.APILevel
import std.collection.*

import ohos.ffi.*
import ohos.hilog.*
import ohos.ark_interop.*
import std.collection.ArrayList

/**
* AppStorage singleton is sub-class of see LocalStorage for
* UI state of app-wide access and same life cycle as the app.
*
* @relation declare class AppStorage
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AppStorage {
    /**
    * Create and return a two-way sync ("link") to named property
    *
    * @param { String } propName - name of source property in AppStorage
    * @returns { ?ObservedProperty<T> } instance of ObservedProperty<T>, return 'None' if named property does not already exist in AppStorage
    * @relation static link<T>(propName: string): SubscribedAbstractProperty<T>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func link<T>(propName: String): ?ObservedProperty<T>
    
    /**
    * Like see @link(), but will create and initialize a new source property in AppStorage if missing
    * Same as see LocalStorage.setAndLink()
    *
    * @param { String } propName - name of source property in AppStorage
    * @param { T } defaultValue - value to be used for initializing new property in AppStorage
    *        default value must be of type T, can be None.
    * @returns { ObservedProperty<T> } instance of ObservedProperty<T>.
    * @relation static setAndLink<T>(propName: string, defaultValue: T): SubscribedAbstractProperty<T>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func setAndLink<T>(propName: String, defaultValue: T): ObservedProperty<T>
    
    /**
    * Create and return a one-way sync ('prop') to named property
    *
    * @param { String } propName - name of source property in AppStorage
    * @returns { ?ObservedProperty<T> } instance of ObservedProperty<T>, return None if named property does not already exist in AppStorage.
    * @relation static prop<T>(propName: string): SubscribedAbstractProperty<T>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func `prop`<T>(propName: String): ?ObservedProperty<T>
    
    /**
    *
    * Like prop(), will create and initialize a new source property in AppStorage if missing
    * Same as see LocalStorage.setAndProp()
    *
    * @param { String } propName - name of source property in AppStorage
    * @param { T } defaultValue - value to be used for initializing new property in AppStorage.
    *        default value must be of type T, can be None.
    * @returns { ObservedProperty<T> } instance of  ObservedProperty<T>
    *           return None if named property does not exist in AppStorage.
    * @relation static setAndProp<T>(propName: string, defaultValue: T): SubscribedAbstractProperty<T>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func setAndProp<T>(propName: String, defaultValue: T): ObservedProperty<T>
    
    /**
    * Checks if AppStorage has a property with given name
    * returns true if property with given name exists
    * same as ES6 Map.prototype.has()
    * Same as see LocalStorage.has()
    *
    * @param { String } propName - searched property
    * @returns { Bool } true if property with such name exists in AppStorage
    * @relation static has(propName: string): boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func has(propName: String): Bool
    
    /**
    * Same as see LocalStorage.get()
    * Obtain the value of property with given name, returns undefined if the property does not exist in AppStorage.
    *
    * @param { String } propName
    * @returns { ?T } property value of type T if found or None
    * @relation static get<T>(propName: string): T | undefined;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func get<T>(propName: String): ?T
    
    /**
    * Set value of given property in AppStorage
    * Method sets nothing and returns false if property with this name does not exist in AppStorage
    * newValue can be undefined or null from API 12.
    * Same as see LocalStorage.set()
    *
    * @param { String } propName
    * @param { T } newValue - must be of type T
    * @returns { Bool } true on success, i.e. when above conditions are satisfied, otherwise false
    * @relation static set<T>(propName: string, newValue: T): boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func set<T>(propName: String, newValue: T): Bool
    
    /**
    * Set value of given property, if it exists, see set() .
    * Add property if no property with given name in AppStorage, and initialize with given value.
    * newValue can be undefined or null from API 12
    * see LocalStorage.setOrCreate()
    *
    * @param { String } propName
    * @param { T } newValue - must be of type T
    * @relation static setOrCreate<T>(propName: string, newValue: T): void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func setOrCreate<T>(propName: String, newValue: T): Unit
    
    /**
    * Delete property with given name from AppStorage
    * Use with caution:
    * Before deleting a prop from AppStorage all its subscribers need to
    * unsubscribe from the property.
    * This method fails and returns false if given property still has subscribers
    * Another reason for failing is unknown property name.
    * Developer advise:
    * Subscribers to a property in AppStorage are created with see link(), see prop()
    * and also via @StorageLink and @StorageProp state variable decorators.
    * That means as long as their is a @Component instance that uses such decorated variable
    * or a sync relationship with a SubscribedAbstractProperty variable the property can not
    * (and also should not!) be deleted from AppStorage.
    * Same as see LocalStorage.delete()
    *
    * @param { String } propName
    * @returns { Bool } false if method failed
    * @relation static delete(propName: string): boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func delete(propName: String): Bool
    
    /**
    * Provide names of all properties in AppStorage
    * same as ES6 Map.prototype.keys()
    * Same as see LocalStorage.keys()
    *
    * @returns {  EquatableCollection<String> } return a Map Iterator
    * @relation static keys(): IterableIterator<string>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func keys(): EquatableCollection<String>
    
    /**
    * Method returns the number of properties currently in AppStorage
    *
    * @returns { Int64 } Returns the number of properties currently in AppStorage
    * @relation static size(): number;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func size(): Int64
    
    /**
    * Delete all properties from the AppStorage.
    * Precondition is that there are no subscribers, see Delete().
    *
    * @returns { boolean } false and deletes no properties if there is any property that still has subscribers.
    * @relation static clear(): boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func clear(): Bool
}


/**
* Defines the ColorMode of device.
*
* @relation declare enum ColorMode
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ColorMode {
    /**
    * Light mode.
    *
    * @relation LIGHT = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Light |
    /**
    * Dark mode.
    *
    * @relation DARK
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Dark |
    ...
}


/**
* Defines the LayoutDirection of device.
*
* @relation declare enum LayoutDirection
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum LayoutDirection {
    /**
    * Elements are laid out from left to right.
    *
    * @relation LTR
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Ltr |
    /**
    * Elements are laid out from right to left.
    *
    * @relation RTL
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Rtl |
    /**
    * Elements are laid out from auto.
    *
    * @relation Auto
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Auto |
    ...
}


/**
* Defines the Environment interface.
*
* @relation declare class Environment
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Environment {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func aboutToBeDeleted(): Unit
    
    /**
    * returns an Array<string> of all environment property keys
    *
    * @returns { Array<string> } all environment property keys
    * @relation static keys(): Array<string>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func keys(): Array<String>
    
    /**
    * Creates a new property in AppStorage. The UI framework implementation takes care of updating
    * its value whenever the named device environment property changes. Recommended use is at app startup.
    * The function call fails and returns false if a property with given name exists in AppStorage already.
    * It is wrong API use to access a property with given name in AppStorage before calling Environment.envProp.
    *
    * @param { String } key - environment property
    * @param { T } value - is the default value if cannot get the environment property value
    * @returns { Bool } false if method failed
    * @relation static envProp<S>(key: string, value: S): boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func envProp<T>(key: String, defaultValue: T): Bool
}


/**
* LocalStorage
* Class implements a Map of ObservableObjectBase UI state variables.
* Instances can be created to manage UI state within a limited "local"
* access, and life cycle as defined by the app.
* AppStorage singleton is sub-class of LocalStorage for
* UI state of app-wide access and same life cycle as the app.
*
* @relation declare class LocalStorage
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class LocalStorage {
    /**
    * Construct new instance of LocalStorage
    * initialize with all properties and their values that Object.keys(params) returns
    * Property values must not be undefined.
    *
    * @relation constructor(initializingProperties?: Object)
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func aboutToBeDeleted(): Bool
    
    /**
    * Check if LocalStorage has a property with given name
    * return true if property with given name exists
    * same as ES6 Map.prototype.has()
    *
    * @param { String } propName - searched property
    * @returns { Bool } true if property with such name exists in LocalStorage
    * @relation has(propName: string): boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func has(propName: String): Bool
    
    /**
    * Provide names of all properties in LocalStorage
    * same as ES6 Map.prototype.keys()
    *
    * @returns { EquatableCollection<String> }
    * @relation keys(): IterableIterator<string>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func keys(): EquatableCollection<String>
    
    /**
    * Returns number of properties in LocalStorage
    * same as Map.prototype.size()
    *
    * @returns { Int64 } return number of properties
    * @relation size(): number;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func size(): Int64
    
    /**
    * Returns value of given property
    * return undefined if no property with this name
    *
    * @param { String } propName
    * @returns { ?T } property value if found
    * @relation get<T>(propName: string): T | undefined;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func get<T>(propName: String): ?T
    
    /**
    * Set value of given property in LocalStorage
    * Method sets nothing and returns false if property with this name does not exist in LocalStorage
    * newValue can be undefined or null from API 12.
    *
    * @param { String } propName
    * @param { T } newValue - must be of type T
    * @returns { Bool } true on success
    * @relation set<T>(propName: string, newValue: T): boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func set<T>(propName: String, newValue: T): Bool
    
    /**
    * Set value of given property, if it exists, see set() .
    * Add property if no property with given name and initialize with given value.
    * newValue can be undefined or null from API 12
    *
    * @param { String } propName
    * @param { T } newValue - must be of type T, can be undefined or null
    * @returns { boolean } true on success, i.e. when above conditions are satisfied, otherwise false
    * @relation setOrCreate<T>(propName: string, newValue: T): boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setOrCreate<T>(propName: String, newValue: T): Bool
    
    /**
    * Create and return a two-way sync "(link") to named property
    *
    * @param { String } propName - name of source property in LocalStorage
    * @returns { ObservedProperty<T> } instance of  ObservedProperty<T>
    * @relation link<T>(propName: string): SubscribedAbstractProperty<T>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func link<T>(propName: String): ?ObservedProperty<T>
    
    /**
    * Like see link(), but will create and initialize a new source property in LocalStorage if missing
    *
    * @param { String } propName - name of source property in LocalStorage
    * @param { T } defaultValue - value to be used for initializing new property in LocalStorage
    *        default value must be of type T.
    * @returns { ObservedProperty<T> } instance of  ObservedProperty<T>
    *          Apps can use SDK functions of base class ObservedProperty<T>
    * @relation setAndLink<T>(propName: string, defaultValue: T): SubscribedAbstractProperty<T>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setAndLink<T>(propName: String, defaultValue: T): ObservedProperty<T>
    
    /**
    * Create and return a one-way sync ('prop') to named property
    *
    * @param { String } propName - name of source property in LocalStorage
    * @returns { ObservedProperty<T> } instance of  ObservedProperty<T>
    * @relation  prop<S>(propName: string): SubscribedAbstractProperty<S>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func `prop`<T>(propName: String): ?ObservedProperty<T>
    
    /**
    * Like see prop(), will create and initialize a new source property in LocalStorage if missing
    *
    * @param { String } propName - name of source property in LocalStorage
    * @param { T } defaultValue - value to be used for initializing new property in LocalStorage.
    *         Default value must be of type T.
    * @returns { ObservedProperty<T> } instance of  ObservedProperty<T>
    * @relation  prop<S>(propName: string): SubscribedAbstractProperty<S>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setAndProp<T>(propName: String, defaultValue: T): ObservedProperty<T>
    
    /**
    * Delete property from StorageBase
    * Use with caution:
    * Before deleting a prop from LocalStorage all its subscribers need to
    * unsubscribe from the property.
    * This method fails and returns false if given property still has subscribers
    * Another reason for failing is unknown property.
    * Developer advise:
    * Subscribers are created with see link(), see prop()
    * and also via @LocalStorageLink and @LocalStorageProp state variable decorators.
    * That means as long as their is a @Component instance that uses such decorated variable
    * or a sync relationship with a SubscribedAbstractProperty variable the property can nit
    * (and also should not!) be deleted from LocalStorage.
    *
    * @param { String } propName
    * @returns { Bool } false if method failed
    * @relation delete(propName: string): boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func delete(propName: String): Bool
    
    /**
    * Delete all properties from the LocalStorage instance
    * Precondition is that there are no subscribers.
    * method returns false and deletes no properties if there is any property
    * that still has subscribers
    *
    * @returns { Bool }
    * @relation clear(): boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func clear(): Bool
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    form: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class LocalStorageInterOp {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func getOrCreate(): LocalStorageInterOp
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func aboutToBeDeleted(): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func has(propName: String): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func keys()
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func size(): Int64
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func get<T>(propName: String): T where T <: JSInteropType<T>
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func set<T>(propName: String, value: T): Bool where T <: JSInteropType<T>
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setOrCreate<T>(propName: String, value: T): Bool where T <: JSInteropType<T>
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func link<T>(propName: String): ObservedProperty<T> where T <: JSInteropType<T>
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setAndLink<T>(propName: String, value: T): ObservedProperty<T> where T <: JSInteropType<T>
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func `prop`<T>(propName: String): ObservedProperty<T> where T <: JSInteropType<T>
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setAndProp<T>(propName: String, value: T): ObservedProperty<T> where T <: JSInteropType<T>
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func delete(propName: String): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        form: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func clear(): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func hasChanged(context: JSContext, callInfo: JSCallInfo): JSValue
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class Observable {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func subscribe(observer: Observer): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func unsubscribe(observer: Observer): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func isSubscribed(observer: Observer): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func numberOfSubscribers(): Int64
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func unsubscribeAll(): Unit
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ObservedArrayList<T> <: ObservedComplexAbstract {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(initValue: ArrayList<T>)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(initValue: Array<T>)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func subscribeInner(observer: Observer): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func unsubscribeInner(observer: Observer): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func get(): ArrayList<T>
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func set(newValue: ArrayList<T>): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func set(newValue: Array<T>): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func set(newValue: ObservedComplexAbstract): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func [](index: Int64): T
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func [](index: Int64, value!: T): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop size: Int64
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func isEmpty(): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func clone(): ObservedArrayList<T>
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func clear(): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func append(element: T): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func appendAll(elements: Collection<T>): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func insert(index: Int64, element: T): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func insertAll(index: Int64, elements: Collection<T>): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func prepend(element: T): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func prependAll(elements: Collection<T>): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func remove(index: Int64): T
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func remove(range: Range<Int64>): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func removeIf(predicate: (T) -> Bool): Unit
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public abstract class ObservedComplexAbstract <: Observable {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func subscribeInner(observer: Observer): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func unsubscribeInner(observer: Observer): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func set(v: ObservedComplexAbstract): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func inheritObservers(newObservers: ArrayList<Observer>)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setDependentElementIds(dependentElementIds: ArrayList<Int64>)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getInfo(): String
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setInfo(info: String)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getPropsInfo(): ArrayList<String>
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func addPropsInfo(info: String): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func notifyChanges()
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public abstract class ObservedObject <: ObservedComplexAbstract {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func addPublishVar(publishVar: ObservedPropertyAbstract)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getPublishVar(): ArrayList<ObservedPropertyAbstract>
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func subscribeInner(observer: Observer): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func unsubscribeInner(observer: Observer): Unit
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class ObservedProperty<T> <: ObservedPropertyAbstract {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(info: String, initValue: T)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func get(): T
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getInner(): T
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public open func set(newValue: T): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func subscribeEx(observer: Observer)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func unsubscribeEx(observer: Observer)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func createProp(info: String): ObservedProperty<T>
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public abstract class ObservedPropertyAbstract <: Observable {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(info: String)
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getInfo(): String
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func subscribeEx(observer: Observer): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func unsubscribeEx(observer: Observer): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func notifyChanges()
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func purgeDependencyOnElmtId(rmElmtId: Int64): Unit
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface Observer {
    func onStateUpdate(info: String, dependentElmtIds: ArrayList<Int64>): Unit
    
    // Full update
    func onStateUpdate(info: String): Unit
    
    func notifyRead(info: String): Unit
    
    func id(): Int64
    
    func aboutToBeDeleted(): Unit
}


/**
* Defines the PersistentStorage interface.
*
* @relation declare class PersistentStorage
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PersistentStorage <: Observer {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onStateUpdate(_: String, _: ArrayList<Int64>): Unit
    
    // Full update
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onStateUpdate(_: String): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func notifyRead(_: String): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func id(): Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func aboutToBeDeleted(): Unit
    
    /**
    * Called when a persistence property is stored.
    *
    * @param { String } key
    * @param { T } defaultValue
    * @relation static PersistProp<T>(key: string, defaultValue: T): void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func persistProp<T>(key: String, defaultValue: T): Unit
    
    /**
    * Persist given AppStorage properties with given names.
    * If a property does not exist in AppStorage, add it and initialize it with given value
    * works as persistProp for multiple properties.
    *
    * @param { Array<(String, T)> } key
    * @relation static persistProps(props: PersistPropsOptions[]): void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func persistProps<T>(props: Array<(String, T)>): Unit
    
    /**
    * Reverse of persistProp
    *
    * @param { String } key - no longer persist the property named key
    * @relation static deleteProp(key: string): void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func deleteProp(key: String): Unit
    
    /**
    * Inform persisted AppStorage property names
    *
    * @returns { Array<string> } array of AppStorage keys
    * @relation  static keys(): Array<string>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func keys(): Array<String>
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SubscriberManager {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func getInstance(): SubscriberManager
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func makeId(): Int64
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func has(id: Int64): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func get(id: Int64): Option<Observer>
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func delete(value: Observer): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func add(value: Observer): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func sizeOfManager(): Int64
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func dumpSubscriberInfo(): Unit
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ViewStackProcessor {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func AllocateNewElmetIdForNextComponent(): Int64
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func StartGetAccessRecordingFor(elmtId: Int64): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func GetElmtIdToAccountFor(): Int64
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func StopGetAccessRecording(): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func ImplicitPopBeforeContinue(): Unit
}


