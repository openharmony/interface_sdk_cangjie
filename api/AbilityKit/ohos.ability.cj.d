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

package ohos.ability
import std.collection.*
import ohos.base.*
import ohos.ffi.*
import ohos.rpc.*
import ohos.window.*
import ohos.encoding.json.*
import ohos.window.WindowStageNativeHandler as WindowStageHandle
import ohos.labels.*

import std.deriving.*
import ohos.bundle_manager.*
import ohos.image.*
import ohos.eventhub.*
import std.sync.*
import std.math.*
import ohos.base.BusinessException
import std.collection.HashMap
import ohos.resource_manager.*
import ohos.hilog.*



@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class LaunchParam {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var launchReason: LaunchReason = LaunchReason.UNKNOWN
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var lastExitReason: LastExitReason = LastExitReason.NORMAL
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public init(
        launchReason!: LaunchReason = LaunchReason.UNKNOWN,
        lastExitReason!: LastExitReason = LastExitReason.NORMAL
    )
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public open class UIAbility <: BaseAbility {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public prop launchWant: Want
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public prop lastRequestWant: Want
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public prop context: UIAbilityContext
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public open func onCreate(want: Want, launchParam: LaunchParam): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public open func onDestroy(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public open func onWindowStageCreate(windowStage: WindowStage): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public open func onWindowStageDestroy(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public open func onForeground(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public open func onBackground(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public open func onNewWant(want: Want, launchParams: LaunchParam): Unit
}


@Deprecated["Use UIAbility instead", since: "19"]
public type Ability = UIAbility

/**
* Type of launch reason.
*
* @stagemodelonly
* @since 9
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum LaunchReason {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    UNKNOWN |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    START_ABILITY |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    CALL |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    CONTINUATION |
    ...
}


/**
* Type of last exit reason.
*
* @stagemodelonly
* @since 9
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum LastExitReason {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    UNKNOWN |
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    ABILITY_NOT_RESPONDING |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    NORMAL |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    CPP_CRASH |
    ...
}


/**
* Type of onContinue result.
* @stagemodelonly
* @since 9
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum OnContinueResult {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    AGREE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    REJECT |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    MISMATCH |
    ...
}


/**
* Type of window mode.
* @stagemodelonly
* @since 9
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum WindowMode {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    WINDOW_MODE_UNDEFINED |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    WINDOW_MODE_FULLSCREEN |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    WINDOW_MODE_SPLIT_PRIMARY |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    WINDOW_MODE_SPLIT_SECONDARY |
    ...
}


/**
* Type of memory level.
* @stagemodelonly
* @since 9
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum MemoryLevel {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    MEMORY_LEVEL_MODERATE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    MEMORY_LEVEL_LOW |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    MEMORY_LEVEL_CRITICAL |
    ...
}






@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class OpenLinkOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public OpenLinkOptions(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Ability.AbilityRuntime.Core"
        ]
        public let appLinkingOnly!: Bool = false,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Ability.AbilityRuntime.Core"
        ]
        public let parameters!: String = ""
    )
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public open class StartOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var windowMode: WindowMode = WINDOW_MODE_UNDEFINED
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var displayId: Int32 = 0
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public init(
        windowMode!: WindowMode = WINDOW_MODE_UNDEFINED,
        displayId!: Int32 = 0
    )
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Security.AccessToken"
]
public class PermissionRequestResult {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Security.AccessToken"
    ]
    public PermissionRequestResult(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Security.AccessToken"
        ]
        public let permissions: Array<String>,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Security.AccessToken"
        ]
        public let authResults: Array<Int32>
    )
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityBase"
]
public struct AbilityResult {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public AbilityResult(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Ability.AbilityBase"
        ]
        public let resultCode: Int32,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Ability.AbilityBase"
        ]
        public let want: Want
    )
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum ResultCode {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    RESULT_OK |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    RESULT_CANCEL |
    ...
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class DialogRequestResult {
}


type StageContext = CPointer<Unit>
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public func getStageContext(abilityContext: UIAbilityContext): StageContext


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public func getNapiValue(env: CPointer<Unit>, context: StageContext): CPointer<Unit>


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public open class UIAbilityContext <: Context {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public prop filesDir: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func startAbility(want: Want): Future<Unit>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func startAbility(want: Want, options: StartOptions): Future<Unit>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func terminateSelf(): Future<Unit>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func terminateSelfWithResult(parameter: AbilityResult): Future<Unit>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func isTerminating(): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func startAbilityForResult(want: Want, callback: AsyncCallback<AbilityResult>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func startAbilityForResult(want: Want, options: StartOptions, callback: AsyncCallback<AbilityResult>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func requestDialogService(want: Want, callback: AsyncCallback<DialogRequestResult>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func requestDialogService(want: Want): Future<DialogRequestResult>
}


@Deprecated["Use UIAbilityContext instead", since: "19"]
public type AbilityContext = UIAbilityContext

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class ErrorManager {
    /**
    * Register error observer.
    *
    * @param { onType } String - "error"
    * @param { ErrorObserver } observer - The error observer.
    * @returns {Int32 } Returns the number code of the observer.
    * @throws { BusinessError } 401 - If the input parameter is not valid parameter.
    * @brief on(type: 'error', observer: ErrorObserver): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public static func on(onType: String, observer: ErrorObserver): Int32
    
    /**
    * Unregister error observer.
    *
    * @param { offType } String - "error".
    * @param { Int32 } observerId - Indicates the number code of the observer.
    * @throws { BusinessError } 401 - If the input parameter is not valid parameter.
    * @throws { BusinessError } 16000003 - Id does not exist.
    * @syscap SystemCapability.Ability.AbilityRuntime.Core
    * @brief off(type: 'error', observerId: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public static func off(offType: String, observerId: Int32): Unit
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public struct ErrorObject {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public let name: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public let message: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public let stack: Option<String>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public init(name: String, message: String, stack!: Option<String> = None)
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public struct ErrorObserver {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public let onUnhandledException: (String) -> Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public let onException: Option<(ErrorObject) -> Unit>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public init(
        onUnhandledException: (String) -> Unit,
        onException!: Option<(ErrorObject) -> Unit> = None
    )
}



@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public open class AbilityStage <: FFIData {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public static func registerCreator(moduleName: String, creator: () -> AbilityStage): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public prop context: AbilityStageContext
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public open func onCreate(): Unit
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class AbilityStageContext <: Context {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public prop currentHapModuleInfo: HapModuleInfo
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public func restartApp(): Unit


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class ApplicationContext <: Context {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func getApplicationInfo(): ApplicationInfo
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func getArea(): Int64
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
abstract sealed class BaseAbility <: FFIData {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public static func registerCreator(name: String, creator: () -> BaseAbility): Unit
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public open class Context <: RemoteData {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public let eventhub: EventHub = EventHub()
}



@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class ElementName {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public init(deviceId: String, bundleName: String, abilityName: String, moduleName: String)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public init(deviceId: String, bundleName: String, abilityName: String)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public prop deviceId: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public prop bundleName: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public prop abilityName: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public prop moduleName: String
}



@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityBase"
]
public class Want {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public init(
        deviceId!: String = "",
        bundleName!: String = "",
        abilityName!: String = "",
        moduleName!: String = "",
        flags!: UInt32 = 0,
        uri!: String = "",
        action!: String = "",
        entities!: Array<String> = [],
        `type`!: String = "",
        parameters!: String = ""
    )
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public prop deviceId: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public prop bundleName: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public prop abilityName: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public prop moduleName: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public prop flags: UInt32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public prop uri: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public prop action: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public prop entities: Array<String>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public prop `type`: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public prop parameters: String
}


@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityBase"
]
public enum Params {
    /**
    * Indicates the ability in this want can back to the current top ability even though they are not in the same
    * mission stack
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    ABILITY_BACK_TO_OTHER_MISSION_STACK |
    /**
    * Indicates the param of ability failure restart recovery identification
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    ABILITY_RECOVERY_RESTART |
    /**
    * Indicates the param of extra content title
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    CONTENT_TITLE_KEY |
    /**
    * Indicates the param of extra shared abstract
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    SHARE_ABSTRACT_KEY |
    /**
    * Indicates the param of extra shareURL
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    SHARE_URL_KEY |
    /**
    * Indicates the param of extra support continue page stack.
    * The default value of the param is true,
    * and the system will automatically flow the page stack information by default.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    SUPPORT_CONTINUE_PAGE_STACK_KEY |
    /**
    * Indicates the param of extra stop source ability on continue.
    * The default value of the param is true,
    * and the system will exit the source application by default.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    SUPPORT_CONTINUE_SOURCE_EXIT_KEY |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public func getValue(): String
}



@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityBase"
]
public enum Flags {
    /**
    * Indicates the grant to perform read operations on the URI.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    FLAG_AUTH_READ_URI_PERMISSION |
    /**
    * Indicates the grant to perform write operations on the URI.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    FLAG_AUTH_WRITE_URI_PERMISSION |
    /**
    * Indicates the grant for possible persisting on the URI.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    FLAG_AUTH_PERSISTABLE_URI_PERMISSION |
    /**
    * Install the specified ability if it's not installed.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    FLAG_INSTALL_ON_DEMAND |
    /**
    * Indicates that if implicit start ability couldn't match any application, no tip dialog will be pulled up.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    FLAG_START_WITHOUT_TIPS |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public func getValue(): UInt32
}



