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
import std.collection.ArrayList
import std.deriving.Derive
import std.sync.Mutex
import ohos.ffi.*
import ohos.hilog.*
import ohos.base.*

// import ohos.ability.*
import ohos.labels.*
import std.collection.HashMap

public type Permissions = String

type StageContext = CPointer<Unit>
@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.AccessToken"
]
public enum GrantStatus {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.AccessToken"
    ]
    PERMISSION_DENIED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.AccessToken"
    ]
    PERMISSION_GRANTED |
    ...
}



@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.AccessToken"
]
public class PermissionRequestResult {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public var permissions: Array<String>
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public var authResults: Array<Int32>
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public var dialogShownResults: ?Array<Bool> = None
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public init(
        permissions: Array<String>,
        authResults: Array<Int32>
    )
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.AccessToken"
]
public class AbilityAccessCtrl {
    /**
    * Obtains the AtManager instance.
    *
    * @returns { AtManager } returns the instance of the AtManager.
    * @syscap SystemCapability.Security.AccessToken
    * @bref createAtManager(): AtManager
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public static func createAtManager(): AtManager
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
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
    *
    * @bref requestPermissionsFromUser(context: Context,
    *       permissionList: Array<Permissions>) : Promise<PermissionRequestResult>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public func requestPermissionsFromUser(context: StageContext, permissionList: Array<Permissions>,
        callback: AsyncCallback<PermissionRequestResult>): Unit
    
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
    * @bref checkAccessTokenSync(tokenID: number, permissionName: Permissions): GrantStatus
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public func checkAccessToken(tokenID: UInt32, permissionName: Permissions): GrantStatus
}


