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

package ohos.app.ability.ui_ability
import ohos.ffi.*
import std.collection.*
import ohos.labels.*

import ohos.business_exception.BusinessException
import ohos.app.ability.configuration.*
import ohos.bundle.bundle_manager.*
import ohos.app.ability.want.*
import ohos.window.*
import std.sync.*
import ohos.ability.ability_result.*
import ohos.app.ability.dialog_request.*
import ohos.business_exception.{BusinessException, AsyncCallback}
import ohos.rpc.*
import ohos.app.ability.BaseContext
import ohos.app.ability.context_constant.*
import ohos.resource_manager.*
import ohos.application.event_hub.*
import ohos.ark_interop.*
import ohos.ark_interop_helper.*
import ohos.hilog.*
import ohos.app.ability.ability_constant.*
import ohos.base.FFIVectorString
import ohos.encoding.json.*
import ohos.ability.connect_options.*
import ohos.app.ability.open_link_options.*
import ohos.app.ability.start_options.*
import ohos.base.{ VectorInt32Handle, FFIVectorString, }
import ohos.multimedia.image.*

/**
* The class of an ability.
*
* @relation declare class Ability
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
]
abstract sealed class Ability <: FFIData {
    /**
    * register Ability
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public static func registerCreator(name: String, creator: () -> Ability): Unit
}


/**
* The context of an abilityStage. It allows access to abilityStage-specific resources.
*
* @relation declare class AbilityStageContext extends Context
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class AbilityStageContext <: Context {
    /**
    * Indicates configuration information about an module.
    *
    * @relation currentHapModuleInfo: HapModuleInfo
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var currentHapModuleInfo: HapModuleInfo
}


/**
* The ApplicationContext module, inherited from Context, provides application-level context capabilities, including
* APIs for registering and unregistering the lifecycle of application components.
*
* @relation declare class ApplicationContext extends Context
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class ApplicationContext <: Context {
}


/**
* The Context module, inherited frome BaseContext, provides context for abilities or applications, including
* access to application-specific resources.
*
* @relation declare class Context extends BaseContext
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public open class Context <: BaseContext {
    /**
    * Object for resource management.
    *
    * @relation resourceManager: resmgr.ResourceManager
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public prop resourceManager: ResourceManager
    
    /**
    * Application information.
    *
    * @relation applicationInfo: ApplicationInfo
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public prop applicationInfo: ApplicationInfo
    
    /**
    * File directory.
    *
    * @relation filesDir: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public prop filesDir: String
    
    /**
    * Encryption level of the directory.
    *
    * @relation area: contextConstant.AreaMode
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public mut prop area: AreaMode
}


/**
* extend Context for cangjie object to arkts object
*/
extend Context <: SystemObjectInteropTypeToJS {
    /**
    * convert cangjie object ot arkts object
    *
    * @throws { IllegalArgumentException } - The type is not supported.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func toJSValue(context: JSContext): JSValue
}

/**
* create cangjie object from arkts object
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public func createUIAbilityContextFromJSValue(context: JSContext, input: JSValue): UIAbilityContext


/**
* create cangjie object from arkts object
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public func createAbilityStageContextFromJSValue(context: JSContext, input: JSValue): AbilityStageContext


/**
* create cangjie object from arkts object
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public func createApplicationContextFromJSValue(context: JSContext, input: JSValue): ApplicationContext


/**
* create cangjie object from arkts object
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public func createContextFromJSValue(context: JSContext, input: JSValue): Context


/**
* interface for cangjie object to arkts object 
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public interface SystemObjectInteropTypeToJS {
    /**
    * convert cangjie object ot arkts object
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    func toJSValue(context: JSContext): JSValue
}





/**
* UIAbility is an application component that has the UI.
* The UIAbility module, inherited from Ability, provides lifecycle callbacks such as component creation, destruction,
* and foreground/background switching.
*
* @relation declare class UIAbility extends Ability
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
]
public open class UIAbility <: Ability {
    /**
    * Parameters for starting the UIAbility.
    *
    * @relation launchWant: Want
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public mut prop launchWant: Want
    
    /**
    * Latest Want received through onCreate or onNewWant when the UIAbility is started for multiple times.
    *
    * @relation lastRequestWant: Want
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public mut prop lastRequestWant: Want
    
    /**
    * Context of the UIAbility.
    *
    * @relation context: UIAbilityContext
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public mut prop context: UIAbilityContext
    
    /**
    * Called to initialize the service logic when a UIAbility instance in the completely closed state is created.
    * In other words, a UIAbility instance enters this lifecycle callback from a cold start. This API returns the
    * result synchronously and does not support asynchronous callback.
    *
    * @relation onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public open func onCreate(want: Want, launchParam: LaunchParam): Unit
    
    /**
    * Called to clear resources when this UIAbility is destroyed.
    * This API returns the result synchronously or uses a promise to return the result.
    * After the onDestroy() lifecycle callback is executed, the application may exit. Consequently,
    * the asynchronous function (for example, asynchronously writing data to the database) in onDestroy() may fail to be
    * executed. You can use the asynchronous lifecycle to ensure that the subsequent lifecycle continues only after the
    * asynchronous function in onDestroy() finishes the execution.
    *
    * @relation onDestroy(): void | Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public open func onDestroy(): Unit
    
    /**
    * Called when a WindowStage is created for this UIAbility.
    *
    * @relation onWindowStageCreate(windowStage: window.WindowStage): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public open func onWindowStageCreate(windowStage: WindowStage): Unit
    
    /**
    * Called when the WindowStage is destroyed for this UIAbility.
    *
    * @relation onWindowStageDestroy(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public open func onWindowStageDestroy(): Unit
    
    /**
    * Triggered when the application transitions from the background to the foreground.
    * It is called between onWillForeground and onDidForeground.
    * It can be used to request system resources required, for example, requesting location services when the
    * application transitions to the foreground.
    * This API returns the result synchronously and does not support asynchronous callback.
    *
    * @relation onForeground(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public open func onForeground(): Unit
    
    /**
    * Triggered when the application transitions from the foreground to the background.
    * It is called between onWillBackground and onDidBackground.
    * It can be used to release resources when the UI is no longer visible, for example, stopping location services. 
    * 
    * @relation onBackground(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public open func onBackground(): Unit
    
    /**
    * Called when a UIAbility instance that has undergone the following states is started again:
    * started in the foreground, running in the foreground, and switched to the background.
    *
    * The triggering of the onNewWant lifecycle of a UIAbility instance indicates that this launch is a hot launch.
    * Note that a hot launch does not necessarily trigger the onNewWant lifecycle.
    *
    * If you need to prevent the onNewWant lifecycle from being triggered in specific scenarios,
    * you must call the {@link UIAbilityContext.setOnNewWantSkipScenarios} interface to suppress its callback.
    *
    * @relation onNewWant(want: Want, launchParam: AbilityConstant.LaunchParam): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.AbilityCore"
    ]
    public open func onNewWant(want: Want, launchParam: LaunchParam): Unit
}






/**
* The context of an ability. It allows access to ability-specific resources.
*
* @relation declare class UIAbilityContext extends Context
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public open class UIAbilityContext <: Context {
    /**
    * Starts a new ability. If the caller application is in foreground, you can use this method to start ability;
    * If the caller application is in the background, you need to apply for permission:ohos.permission.START_ABILITIES_FROM_BACKGROUND.
    * If the target ability is visible, you can start the target ability; If the target ability is invisible,
    * you need to apply for permission:ohos.permission.START_INVISIBLE_ABILITY to start target invisible ability.
    * If the target ability is in cross-device, you need to apply for permission:ohos.permission.DISTRIBUTED_DATASYNC.
    *
    * @throws { BusinessException } 201 - The application does not have permission to call the interface.
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types.
    * @throws { BusinessException } 801 - Capability not support.
    * @throws { BusinessException } 16000001 - The specified ability does not exist.
    * @throws { BusinessException } 16000002 - Incorrect ability type.
    * @throws { BusinessException } 16000004 - Cannot start an invisible component.
    * @throws { BusinessException } 16000005 - The specified process does not have the permission.
    * @throws { BusinessException } 16000006 - Cross-user operations are not allowed.
    * @throws { BusinessException } 16000008 - The crowdtesting application expires.
    * @throws { BusinessException } 16000009 - An ability cannot be started or stopped in Wukong mode.
    * @throws { BusinessException } 16000010 - The call with the continuation and prepare continuation flag is forbidden.
    * @throws { BusinessException } 16000011 - The context does not exist.
    * @throws { BusinessException } 16000012 - The application is controlled.
    * @throws { BusinessException } 16000013 - The application is controlled by EDM.
    * @throws { BusinessException } 16000018 - Redirection to a third-party application is not allowed in API version greater than 11.
    * @throws { BusinessException } 16000019 - No matching ability is found.
    * @throws { BusinessException } 16000050 - Internal error.
    * @throws { BusinessException } 16000053 - The ability is not on the top of the UI.
    * @throws { BusinessException } 16000055 - Installation-free timed out.
    * @throws { BusinessException } 16000067 - The StartOptions check failed.
    * @throws { BusinessException } 16000068 - The ability is already running.
    * @throws { BusinessException } 16000071 - App clone is not supported.
    * @throws { BusinessException } 16000072 - App clone or multi-instance is not supported.
    * @throws { BusinessException } 16000073 - The app clone index is invalid.
    * @throws { BusinessException } 16000076 - The app instance key is invalid.
    * @throws { BusinessException } 16000077 - The number of app instances reaches the limit.
    * @throws { BusinessException } 16000078 - The multi-instance is not supported.
    * @throws { BusinessException } 16000079 - The APP_INSTANCE_KEY cannot be specified.
    * @throws { BusinessException } 16000080 - Creating a new instance is not supported.
    * @throws { BusinessException } 16200001 - The caller has been released.
    * @throws { BusinessException } 16300003 - The target application is not the current application.
    * @relation startAbility(want: Want, options?: StartOptions): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func startAbility(want: Want, options!: ?StartOptions = None): Unit
    
    /**
    * Destroys this Page ability.
    *
    * @throws { BusinessException } 16000009 - An ability cannot be started or stopped in Wukong mode.
    * @throws { BusinessException } 16000011 - The context does not exist.
    * @throws { BusinessException } 16000050 - Internal error.
    * @relation terminateSelf(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func terminateSelf(): Unit
    
    /**
    * Destroys the Page ability while returning the specified result code and data to the caller.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types.
    * @throws { BusinessException } 16000009 - An ability cannot be started or stopped in Wukong mode.
    * @throws { BusinessException } 16000011 - The context does not exist.
    * @throws { BusinessException } 16000050 - Internal error.
    * @relation terminateSelfWithResult(parameter: AbilityResult): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func terminateSelfWithResult(parameter: AbilityResult): Unit
    
    /**
    * Check to see ability is in terminating state.
    *
    * @throws { BusinessException } 16000011 - The context does not exist.
    * @relation isTerminating(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func isTerminating(): Bool
    
    /**
    * Starts an ability and returns the execution result when the ability is destroyed. If the caller application is in foreground,
    * you can use this method to start ability; If the caller application is in the background,
    * you need to apply for permission:ohos.permission.START_ABILITIES_FROM_BACKGROUND.
    * If the target ability is visible, you can start the target ability; If the target ability is invisible,
    * you need to apply for permission:ohos.permission.START_INVISIBLE_ABILITY to start target invisible ability.
    * If the target ability is in cross-device, you need to apply for permission:ohos.permission.DISTRIBUTED_DATASYNC.
    *
    * @throws { BusinessException } 201 - The application does not have permission to call the interface.
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types.
    * @throws { BusinessException } 16000001 - The specified ability does not exist.
    * @throws { BusinessException } 16000002 - Incorrect ability type.
    * @throws { BusinessException } 16000004 - Cannot start an invisible component.
    * @throws { BusinessException } 16000005 - The specified process does not have the permission.
    * @throws { BusinessException } 16000006 - Cross-user operations are not allowed.
    * @throws { BusinessException } 16000008 - The crowdtesting application expires.
    * @throws { BusinessException } 16000009 - An ability cannot be started or stopped in Wukong mode.
    * @throws { BusinessException } 16000010 - The call with the continuation and prepare continuation flag is forbidden.
    * @throws { BusinessException } 16000011 - The context does not exist.
    * @throws { BusinessException } 16000012 - The application is controlled.
    * @throws { BusinessException } 16000013 - The application is controlled by EDM.
    * @throws { BusinessException } 16000018 - Redirection to a third-party application is not allowed in API version greater than 11.
    * @throws { BusinessException } 16000019 - No matching ability is found.
    * @throws { BusinessException } 16000050 - Internal error.
    * @throws { BusinessException } 16000053 - The ability is not on the top of the UI.
    * @throws { BusinessException } 16000055 - Installation-free timed out.
    * @throws { BusinessException } 16000071 - App clone is not supported.
    * @throws { BusinessException } 16000072 - App clone or multi-instance is not supported.
    * @throws { BusinessException } 16000073 - The app clone index is invalid.
    * @throws { BusinessException } 16000076 - The app instance key is invalid.
    * @throws { BusinessException } 16000077 - The number of app instances reaches the limit.
    * @throws { BusinessException } 16000078 - The multi-instance is not supported.
    * @throws { BusinessException } 16000079 - The APP_INSTANCE_KEY cannot be specified.
    * @throws { BusinessException } 16000080 - Creating a new instance is not supported.
    * @throws { BusinessException } 16200001 - The caller has been released.
    * @relation startAbilityForResult(want: Want, callback: AsyncCallback<AbilityResult>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func startAbilityForResult(want: Want, callback: AsyncCallback<AbilityResult>): Unit
    
    /**
    * Starts an ability and returns the execution result when the ability is destroyed. If the caller application is in foreground,
    * you can use this method to start ability; If the caller application is in the background,
    * you need to apply for permission:ohos.permission.START_ABILITIES_FROM_BACKGROUND.
    * If the target ability is visible, you can start the target ability; If the target ability is invisible,
    * you need to apply for permission:ohos.permission.START_INVISIBLE_ABILITY to start target invisible ability.
    * If the target ability is in cross-device, you need to apply for permission:ohos.permission.DISTRIBUTED_DATASYNC.
    *
    * @throws { BusinessException } 201 - The application does not have permission to call the interface.
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types.
    * @throws { BusinessException } 16000001 - The specified ability does not exist.
    * @throws { BusinessException } 16000004 - Cannot start an invisible component.
    * @throws { BusinessException } 16000005 - The specified process does not have the permission.
    * @throws { BusinessException } 16000006 - Cross-user operations are not allowed.
    * @throws { BusinessException } 16000008 - The crowdtesting application expires.
    * @throws { BusinessException } 16000009 - An ability cannot be started or stopped in Wukong mode.
    * @throws { BusinessException } 16000011 - The context does not exist.
    * @throws { BusinessException } 16000012 - The application is controlled.
    * @throws { BusinessException } 16000013 - The application is controlled by EDM.
    * @throws { BusinessException } 16000018 - Redirection to a third-party application is not allowed in API version greater than 11.
    * @throws { BusinessException } 16000019 - No matching ability is found.
    * @throws { BusinessException } 16000050 - Internal error.
    * @throws { BusinessException } 16000053 - The ability is not on the top of the UI.
    * @throws { BusinessException } 16000055 - Installation-free timed out.
    * @throws { BusinessException } 16000071 - App clone is not supported.
    * @throws { BusinessException } 16000072 - App clone or multi-instance is not supported.
    * @throws { BusinessException } 16000073 - The app clone index is invalid.
    * @throws { BusinessException } 16000076 - The app instance key is invalid.
    * @throws { BusinessException } 16000077 - The number of app instances reaches the limit.
    * @throws { BusinessException } 16000078 - The multi-instance is not supported.
    * @throws { BusinessException } 16000079 - The APP_INSTANCE_KEY cannot be specified.
    * @throws { BusinessException } 16000080 - Creating a new instance is not supported.
    * @throws { BusinessException } 16200001 - The caller has been released.
    * @relation startAbilityForResult(want: Want, options: StartOptions, callback: AsyncCallback<AbilityResult>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func startAbilityForResult(want: Want, options: StartOptions, callback: AsyncCallback<AbilityResult>): Unit
    
    /**
    * Starts a service extension ability that supports modal dialog. If the caller application is in foreground,
    * you can use this method to start service extension ability; If the caller application is in the background,
    * you need to apply for permission:ohos.permission.START_ABILITIES_FROM_BACKGROUND.
    * If the target service extension ability is visible, you can start the target service extension ability;
    * If the target service extension ability is invisible,
    * you need to apply for permission:ohos.permission.START_INVISIBLE_ABILITY to start target invisible service extension ability.
    *
    * @throws { BusinessException } 201 - The application does not have permission to call the interface.
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types.
    * @throws { BusinessException } 16000001 - The specified ability does not exist.
    * @throws { BusinessException } 16000002 - Incorrect ability type.
    * @throws { BusinessException } 16000004 - Cannot start an invisible component.
    * @throws { BusinessException } 16000005 - The specified process does not have the permission.
    * @throws { BusinessException } 16000006 - Cross-user operations are not allowed.
    * @throws { BusinessException } 16000008 - The crowdtesting application expires.
    * @throws { BusinessException } 16000009 - An ability cannot be started or stopped in Wukong mode.
    * @throws { BusinessException } 16000010 - The call with the continuation and prepare continuation flag is forbidden.
    * @throws { BusinessException } 16000011 - The context does not exist.
    * @throws { BusinessException } 16000012 - The application is controlled.
    * @throws { BusinessException } 16000013 - The application is controlled by EDM.
    * @throws { BusinessException } 16000050 - Internal error.
    * @throws { BusinessException } 16000053 - The ability is not on the top of the UI.
    * @throws { BusinessException } 16000055 - Installation-free timed out.
    * @throws { BusinessException } 16200001 - The caller has been released.
    * @relation requestDialogService(want: Want, result: AsyncCallback<dialogRequest.RequestResult>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func requestDialogService(want: Want, result: AsyncCallback<RequestResult>): Unit
}


