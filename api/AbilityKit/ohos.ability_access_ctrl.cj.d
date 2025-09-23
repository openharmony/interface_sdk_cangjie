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

package ohos.ability_access_ctrl
import ohos.app.ability.ui_ability.{UIAbilityContext, getStageContext}
import ohos.business_exception.{BusinessException, AsyncCallback}
import ohos.ffi.{ CArrString, CArrUI32, Callback1Param, freeArrCString, toArrayCString}
import std.deriving.Derive
import ohos.ffi.*
import ohos.hilog.HilogChannel
public import ohos.security.permission_request_result.*
import ohos.security.permission_request_result.*
import ohos.labels.APILevel

import ohos.business_exception.getUniversalErrorMsg
import std.collection.HashMap

public type Permissions = String


/**
* GrantStatus.
*
* @relation export enum GrantStatus
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Security.AccessToken"
]
public enum GrantStatus {
    /**
    * access_token permission check fail
    *
    * @relation PERMISSION_DENIED = -1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Security.AccessToken"
    ]
    PermissionDenied |
    /**
    * access_token permission check success
    *
    * @relation PERMISSION_GRANTED = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Security.AccessToken"
    ]
    PermissionGranted |
    ...
}



/**
* abilityAccessCtrl
*
* @relation declare namespace abilityAccessCtrl
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Security.AccessToken"
]
public class AbilityAccessCtrl {
    /**
    * Obtains the AtManager instance.
    *
    * @relation function createAtManager(): AtManager
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public static func createAtManager(): AtManager
}


/**
* Provides methods for managing access_token.
*
* @relation interface AtManager
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Security.AccessToken"
]
public class AtManager {
    /**
    * Requests certain permissions from the user.
    *
    * @param { Context } context - The context that initiates the permission request.
    * @param { Array<Permissions> } permissionList - Indicates the list of permissions to be requested. This parameter
    *                                                cannot be null or empty.
    * @param { PermissionRequestResult } requestCallback Callback for the result from requesting permissions.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 12100001 - The parameter is invalid. The context is invalid when it does not
    *                                          belong to the application itself.
    * @throws { IllegalArgumentException } - The context is invalid.
    *
    * @relation requestPermissionsFromUser(
    *             context: Context,
    *             permissionList: Array<Permissions>,
    *             requestCallback: AsyncCallback<PermissionRequestResult>
    *           ): void;
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public func requestPermissionsFromUser(context: UIAbilityContext, permissionList: Array<Permissions>,
        requestCallback: AsyncCallback<PermissionRequestResult>): Unit
    
    /**
    * Checks whether a specified application has been granted the given permission.
    * On the cross-platform,
    * this function can be used to check the permission grant status for the current application only.
    *
    * @param { UInt32 } tokenID - Token ID of the application.
    * @param { Permissions } permissionName - Name of the permission to be verified.
    * @returns { GrantStatus } Returns permission verify result.
    * @throws { BusinessException } 401 - The parameter check failed.
    * @throws { BusinessException } 12100001 - The parameter is invalid. The tokenID is 0,
    *                                          or the string size of permissionName is larger than 256.
    *
    * @relation checkAccessTokenSync(tokenID: int, permissionName: Permissions): GrantStatus
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public func checkAccessToken(tokenID: UInt32, permissionName: Permissions): GrantStatus
}


