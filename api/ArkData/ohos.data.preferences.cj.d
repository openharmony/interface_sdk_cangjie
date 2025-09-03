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

package ohos.data.preferences
import ohos.labels.*
import ohos.business_exception.{ BusinessException, ERR_PARAMETER_ERROR, ERR_NOT_SUPPOERTED, getUniversalErrorMsg}
import std.collection.*

import ohos.ffi.*
import ohos.hilog.*
import ohos.app.ability.ui_ability.{UIAbilityContext, getStageContext}
import std.sync.*
import ohos.callback_invoke.{ Callback1Argument, CallbackObject}
import ohos.business_exception.{ BusinessException, ERR_PARAMETER_ERROR}

/**
* the storage type
* @relation enum StorageType
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public enum StorageType {
    /**
    * XML storage type
    * @relation XML = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    Xml |
    /**
    * GSKV storage type
    * @relation GSKV
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    Gskv |
    ...
}


/**
* Enumeration implements a collection of basic data types.
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public enum ValueType {
    /**
    * Type for Int64.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    Integer(Int64) |
    /**
    * Type for Float64.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    Double(Float64) |
    /**
    * Type for String.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    StringData(String) |
    /**
    * Type for Bool.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    BoolData(Bool) |
    /**
    * Type for Array<Bool>.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    BoolArray(Array<Bool>) |
    /**
    * Type for Float64.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    DoubleArray(Array<Float64>) |
    /**
    * Type for Array<String>.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    StringArray(Array<String>) |
    ...
}


/**
* The Max length of key.
*
* @relation const MAX_KEY_LENGTH: number
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public const MAX_KEY_LENGTH: UInt32 = 1024


/**
* The Max length of value.
*
* @relation const MAX_VALUE_LENGTH: number
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public const MAX_VALUE_LENGTH: UInt32 = 16 * 1024 * 1024


/**
* Manages preferences file configurations.
*
* @relation interface Options
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public class Options {
    /**
    * The preferences file name.
    *
    * @relation name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public var name: String
    
    /**
    * Application Group Id.
    *
    * @relation dataGroupId?: string | null | undefined
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public var dataGroupId: String
    
    /**
    * The preferences storage type.
    *
    * @relation storageType?: StorageType | null | undefined;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public var storageType: StorageType
    
    /**
    * Options constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public init(name: String, dataGroupId!: String = String.empty,
        storageType!: StorageType = StorageType.Xml)
}



/**
* Preferences change type.
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public enum PreferencesEvent {
    /**
    * change
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    PreferencesChange |
    /**
    * multiProcessChange
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    PreferencesMultiProcessChange |
    ...
}


/**
* Provides interfaces to obtain and modify preferences data.
*
* @relation interface Preferences
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
]
public class Preferences <: RemoteDataLite {
    /**
    * Obtains a {@link Preferences} instance matching a specified preferences file name.
    *
    * @param { UIAbilityContext } context - Indicates the context of application or capability.
    * @param { String } name - Indicates the preferences file name.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    * <br>1. Mandatory parameters are left unspecified; <br>2. Incorrect parameter types;
    * <br>3. Parameter verification failed.
    * @throws { BusinessException } 15500000 - Inner error.
    * @throws { IllegalArgumentException } - The context is invalid.
    *
    * @relation function getPreferences(context: Context, name: string, callback: AsyncCallback<Preferences>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public static func getPreferences(context: UIAbilityContext, name: String): Preferences
    
    /**
    * Obtains a {@link Preferences} instance matching a specified preferences file name.
    *
    * @param { UIAbilityContext } context - Indicates the context of application or capability.
    * @param { Options } options - Indicates the {@link Options} option of preferences file position.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    * <br>1. Mandatory parameters are left unspecified; <br>2. Incorrect parameter types;
    * <br>3. Parameter verification failed.
    * @throws { BusinessException } 15500000 - Inner error.
    * @throws { IllegalArgumentException } - The context is invalid.
    *
    * @relation function getPreferences(context: Context, options: Options, callback: AsyncCallback<Preferences>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public static func getPreferences(context: UIAbilityContext, options: Options): Preferences
    
    /**
    * Deletes a {@link Preferences} instance matching a specified preferences file name.
    *
    * @param { UIAbilityContext } context - Indicates the context of application or capability.
    * @param { String } name - Indicates the preferences file name.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    * <br>1. Mandatory parameters are left unspecified; <br>2. Incorrect parameter types;
    * <br>3. Parameter verification failed.
    * @throws { BusinessException } 15500000 - Inner error.
    * @throws { BusinessException } 15500010 - Failed to delete the user preferences persistence file.
    * @relation function deletePreferences(context: Context, name: string): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public static func deletePreferences(context: UIAbilityContext, name: String): Unit
    
    /**
    * Deletes a {@link Preferences} instance matching a specified preferences file name.
    *
    * @param { UIAbilityContext } context - Indicates the context of application or capability.
    * @param { Options } options - Indicates the {@link Options} option of preferences file position.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    * <br>1. Mandatory parameters are left unspecified; <br>2. Incorrect parameter types;
    * <br>3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 15500010 - Failed to delete the user preferences persistence file.
    * @throws { BusinessException } 15501001 - The operations is supported in stage mode only.
    * @throws { BusinessException } 15501002 - Invalid dataGroupId.
    * @throws { IllegalArgumentException } - The context is invalid.
    *
    * @relation function deletePreferences(context: Context, options: Options): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public static func deletePreferences(context: UIAbilityContext, options: Options): Unit
    
    /**
    * Deletes a {@link Preferences} instance matching a specified preferences file name
    * from the cache. This interface is executed synchronously.
    * <p>When deleting the {@link Preferences} instance, you must release all references
    * of the instance. In addition, do not use the instance to perform data operations. Otherwise, data inconsistency
    * will occur.
    *
    * @param { UIAbilityContext } context - Indicates the context of application or capability.
    * @param { String } name - Indicates the preferences file name.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    * <br>1. Mandatory parameters are left unspecified; <br>2. Incorrect parameter types;
    * <br>3. Parameter verification failed.
    * @throws { BusinessException } 15500000 - Inner error.
    * @relation function removePreferencesFromCacheSync(context: Context, name: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public static func removePreferencesFromCache(context: UIAbilityContext, name: String): Unit
    
    /**
    * Deletes a {@link Preferences} instance matching a specified preferences file name
    * from the cache. This interface is executed synchronously.
    * <p>When deleting the {@link Preferences} instance, you must release all references
    * of the instance. In addition, do not use the instance to perform data operations. Otherwise, data inconsistency
    * will occur.
    *
    * @param { UIAbilityContext } context - Indicates the context of application or capability.
    * @param { Options } options - Indicates the {@link Options} option of preferences file position.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    * <br>1. Mandatory parameters are left unspecified; <br>2. Incorrect parameter types;
    * <br>3. Parameter verification failed.
    * @throws { BusinessException } 801 - Capability not supported.
    * @throws { BusinessException } 15500000 - Inner error.
    * @throws { BusinessException } 15501001 - The operations is supported in stage mode only.
    * @throws { BusinessException } 15501002 - Invalid dataGroupId.
    * @throws { IllegalArgumentException } - The context is invalid.
    *
    * @relation function removePreferencesFromCacheSync(context: Context, options: Options): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public static func removePreferencesFromCache(context: UIAbilityContext, options: Options): Unit
    
    /**
    * Saves the {@link Preferences} object to the file.
    *
    * @throws { BusinessException } 401 - Parameter error. Mandatory parameters are left unspecified.
    * @throws { BusinessException } 15500000 - Inner error.
    * @relation flush(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func flush(): Unit
    
    /**
    * Clears all preferences from the {@link Preferences} object.
    * <p>You can call the {@link #flush} method to save the {@link Preferences} object to the file.
    *
    * @throws { BusinessException } 401 - Parameter error. Mandatory parameters are left unspecified.
    * @throws { BusinessException } 15500000 - Inner error.
    * @relation clear(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func clear(): Unit
    
    /**
    * Obtains the value of a preferences in the ValueType format.
    * <p>If the value is {@code null} or not in the ValueType format, the default value is returned.
    *
    * @param { String } key - Indicates the key of the preferences. It cannot be {@code null} or empty.
    * <tt>MAX_KEY_LENGTH</tt>.
    * @param { ValueType } defValue - Indicates the default value to return.
    * @returns { ValueType } The value matching the specified key if it is found;
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    * <br>1. Mandatory parameters are left unspecified; <br>2. Incorrect parameter types;
    * <br>3. Parameter verification failed.
    * @throws { BusinessException } 15500000 - Inner error.
    * @relation get(key: string, defValue: ValueType): Promise<ValueType>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func get(key: String, defValue: ValueType): ValueType
    
    /**
    * Sets an int value for the key in the {@link Preferences} object.
    *
    * @param { String } key - Indicates the key of the preferences to modify. It cannot be {@code null} or empty.
    * @param { ValueType } value - Indicates the value of the preferences.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    * <br>1. Mandatory parameters are left unspecified; <br>2. Incorrect parameter types;
    * <br>3. Parameter verification failed.
    * @throws { BusinessException } 15500000 - Inner error.
    * @relation put(key: string, value: ValueType): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func put(key: String, value: ValueType): Unit
    
    /**
    * Obtains all the keys and values of a preferences in an HashMap.
    *
    * @returns { HashMap<String, ValueType> } The values and keys in an HashMap.
    * @throws { BusinessException } 401 - Parameter error. Mandatory parameters are left unspecified.
    * @throws { BusinessException } 15500000 - Inner error.
    * @relation getAllSync(): Object;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func getAll(): HashMap<String, ValueType>
    
    /**
    * Deletes the preferences with a specified key from the {@link Preferences} object.
    *
    * @param { String } key - Indicates the key of the preferences to delete. It cannot be {@code null} or empty.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    * <br>1. Mandatory parameters are left unspecified; <br>2. Incorrect parameter types;
    * <br>3. Parameter verification failed.
    * @throws { BusinessException } 15500000 - Inner error.
    * @relation delete(key: string): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func delete(key: String): Unit
    
    /**
    * Checks whether the {@link Preferences} object contains a preferences matching a specified key.
    *
    * @param { String } key - Indicates the key of the preferences to modify. It cannot be {@code null} or empty.
    * @returns { Bool } {@code true} if the {@link Preferences} object contains
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    * <br>1. Mandatory parameters are left unspecified; <br>2. Incorrect parameter types;
    * <br>3. Parameter verification failed.
    * @throws { BusinessException } 15500000 - Inner error.
    * @relation has(key: string): Promise<boolean>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func has(key: String): Bool
    
    /**
    * Registers an observer to listen for the change of a {@link Preferences} object.
    *
    * @param { String } tp - Indicates the callback when preferences changes.
    * @param { Callback1Argument<String> } callback - Indicates the callback function.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    * <br>1. Mandatory parameters are left unspecified; <br>2. Incorrect parameter types;
    * <br>3. Parameter verification failed.
    * @throws { BusinessException } 15500000 - Inner error.
    * @relation on(type: 'change', callback: Callback<string>): void
    * @relation on(type: 'multiProcessChange', callback: Callback<string>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func on(event :PreferencesEvent, callback: Callback1Argument<String>): Unit
    
    /**
    * Unregisters an existing observer.
    *
    * @param { String } tp - Indicates the callback when preferences changes.
    * @param { Callback1Argument<String> } callback - Indicates the callback function.
    * @throws { BusinessException } 401 - Parameter error. Possible causes:
    * <br>1. Mandatory parameters are left unspecified; <br>2. Incorrect parameter types;
    * <br>3. Parameter verification failed.
    * @throws { BusinessException } 15500000 - Inner error.
    * @relation off(type: 'change', callback?: Callback<string>): void
    * @relation off(type: 'multiProcessChange', callback?: Callback<string>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.Preferences.Core"
    ]
    public func off(event :PreferencesEvent, callback!: ?Callback1Argument<String> = None): Unit
}


