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

package ohos.business_exception
import std.collection.HashMap
import ohos.labels.APILevel


/**
* Defines the exception interface.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true
]
public open class BusinessException <: Exception {
    /**
    * Defines the basic error code.
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public let code: Int32
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true
    ]
    public init(code: Int32, msg: String)
    
    /**
    * Translate the exception to String.
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true
    ]
    public open func toString(): String
}


/**
* Defines the error interface.
*/
@!APILevel[
    21,
    stagemodelonly: true
]
public class BusinessError<T> <: BusinessException {
    /**
    * Defines the additional information for business
    */
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public var data: T
    
    @!APILevel[
        21,
        stagemodelonly: true
    ]
    public init (data: T, code: Int32, msg: String)
}


public type AsyncCallback<T> = (Option<BusinessException>, Option<T>) -> Unit

