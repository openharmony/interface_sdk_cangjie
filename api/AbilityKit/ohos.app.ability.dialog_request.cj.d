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

package ohos.app.ability.dialog_request
import ohos.app.ability.want.*
import ohos.labels.*

import ohos.hilog.*

/**
* The modal bullet box requests the result code.
*
* @relation export enum ResultCode
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum ResultCode {
    /**
    * The modal bullet box requests succeeded.
    *
    * @relation RESULT_OK = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    ResultOk |
    /**
    * The modal bullet box requests Failed.
    *
    * @relation RESULT_CANCEL = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    ResultCancel |
    ...
}


/**
* The result of requestDialogService with asynchronous callback.
*
* @relation export interface RequestResult
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class RequestResult {
    /**
    * The request result passed in by the user.
    *
    * @relation result: ResultCode
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var result: ResultCode
    
    /**
    * The request additional want data passed in by the user.
    *
    * @relation want?: Want
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var want: Want
}


