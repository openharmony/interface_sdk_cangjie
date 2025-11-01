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

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package ohos.labels

/**
 * Represents a permission value with bitwise AND and OR operations.
 */
public interface PermissionValue {
    operator func &(rhs: PermissionValue): PermissionValue
    
    operator func |(rhs: PermissionValue): PermissionValue
}

/**
 * Represents a logical AND combination of two permission values
 */
public class PermissionAnd <: PermissionValue {
    /**
     * Left-hand side permission value
     */
    public let lhs: PermissionValue
    /**
     * Right-hand side permission value
     */
    public let rhs: PermissionValue
    /**
     * Creates a new PermissionAnd instance with the given permission values
     * 
     * @param { PermissionValue } lhs - Left-hand side permission value
     * @param { PermissionValue } rhs - Right-hand side permission value
     */
    public const init(lhs: PermissionValue, rhs: PermissionValue)
    /**
     * Performs a bitwise AND operation with another permission value
     * 
     * @param { PermissionValue } rhs - Right-hand side permission value
     * @returns { PermissionValue } returns the Permission value
     */
    public operator const override func &(rhs: PermissionValue): PermissionValue
     /**
     * Performs a bitwise OR operation with another permission value
     * 
     * @param { PermissionValue } rhs - Right-hand side permission value
     * @returns { PermissionValue } returns the Permission value
     */
    public operator const override func |(rhs: PermissionValue): PermissionValue
}

/**
 * Represents a logical OR combination of two permission values
 */
public class PermissionOr <: PermissionValue {
    /**
     * Left-hand side permission value
     */
    public let lhs: PermissionValue
    /**
     * Right-hand side permission value
     */
    public let rhs: PermissionValue
    /**
     * Creates a new PermissionOr instance with the given permission values
     * 
     * @param { PermissionValue } lhs - Left-hand side permission value
     * @param { PermissionValue } rhs - Right-hand side permission value
     */
    public const init(lhs: PermissionValue, rhs: PermissionValue)
    /**
     * Performs a bitwise AND operation with another permission value
     * 
     * @param { PermissionValue } rhs - Right-hand side permission value
     * @returns { PermissionValue } returns the Permission value
     */
    public operator const override func &(rhs: PermissionValue): PermissionValue
    /**
     * Performs a bitwise OR operation with another permission value
     * 
     * @param { PermissionValue } rhs - Right-hand side permission value
     * @returns { PermissionValue } returns the Permission value
     */
    public operator const override func |(rhs: PermissionValue): PermissionValue
}

/**
 * Extension that allows String to behave as a PermissionValue
 */
extend String <: PermissionValue {
    /**
     * Performs a bitwise AND operation with another permission value
     * 
     * @param { PermissionValue } rhs - Right-hand side permission value
     * @returns { PermissionValue } returns the Permission value
     */
    public operator const func &(rhs: PermissionValue): PermissionValue
    /**
     * Performs a bitwise OR operation with another permission value
     * 
     * @param { PermissionValue } rhs - Right-hand side permission value
     * @returns { PermissionValue } returns the Permission value
     */
    public operator const func |(rhs: PermissionValue): PermissionValue
}

/**
 * Annotation class for defining API level requirements and constraints
 */
@Annotation
public class APILevel {
    /**
     * The API version since which this feature is available
     */
    public let since: String
    /**
     * Indicates if this API is for atomic service
     */
    public let atomicservice: Bool
    /**
     * Indicates if this API is cross-platform compatible
     */
    public let crossplatform: Bool
    /**
     * Deprecation information if the API is deprecated
     */
    public let deprecated: ?String
    /**
     * Indicates if this API is for form
     */
    public let form: Bool
    /**
     * Required permissions for using this API
     */
    public let permission: ?PermissionValue
    /**
     * Indicates if this API is for stage model only
     */
    public let stagemodelonly: Bool
    /**
     * System capability requirements
     */
    public let syscap: String
    /**
     * Indicates if the API throws exceptions
     */
    public let throwexception: Bool
    /**
     * Indicates if this API should run on worker thread
     */
    public let workerthread: Bool
    /**
     *  Indicates if this is a system API
     */
    public let systemapi: Bool
    /**
     * Creates a new APILevel annotation with the specified parameters
     *
     * @param { String } since - the API version since which this feature is available.
     * @param { Bool } atomicservice - indicates if this API is for atomic service.
     * @param { Bool } crossplatform - indicates if this API is cross-platform compatible.
     * @param { String } [deprecated] - indicates the information if the API is deprecated.
     * @param { Bool } form - indicates if this API is for form.
     * @param { PermissionValue } [permission] - indicates the permissions for using this API.
     * @param { String } syscap - indicates system capability requirements.
     * @param { Bool } throwexception - indicates if the API throws exceptions.
     * @param { Bool } workerthread - indicates if this API should run on worker thread.
     * @param { Bool } systemapi - indicates if this is a system API.
     */
    public const init(since!: String, atomicservice!: Bool = false, crossplatform!: Bool = false,
        deprecated!: ?String = None, form!: Bool = false, permission!: ?PermissionValue = None,
        syscap!: String = "", throwexception!: Bool = false, workerthread!: Bool = false, systemapi!: Bool = false)
}

