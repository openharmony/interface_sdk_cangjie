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

package ohos.app.ability.ability_delegator_registry
import ohos.business_exception.{BusinessException, getUniversalErrorMsg}
import ohos.ffi.*
import ohos.app.ability.ui_ability.*
import ohos.app.ability.want.*
import ohos.app.ability.ability_stage.*
import std.deriving.*
import std.collection.HashMap
import ohos.labels.*

import ohos.hilog.*

/**
* Describes all lifecycle states of an ability.
*
* @relation export enum AbilityLifecycleState
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public enum AbilityLifecycleState {
    /**
    * Ability is in invalid state.
    *
    * @relation UNINITIALIZED = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Uninitialized |
    /**
    * Ability is in invalid state.
    *
    * @relation CREATE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Create |
    /**
    * Ability is in invalid state.
    *
    * @relation FOREGROUND = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Foreground |
    /**
    * Ability is in invalid state.
    *
    * @relation BACKGROUND = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Background |
    /**
    * Ability is in invalid state.
    *
    * @relation DESTROY = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    Destroy |
    ...
}



/**
* A global register used to store the AbilityDelegator and AbilityDelegatorArgs objects registered
* during application startup.
*
* @relation declare namespace abilityDelegatorRegistry
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class AbilityDelegatorRegistry {
    /**
    * Get the AbilityDelegator object of the application.
    *
    * @relation function getAbilityDelegator(): AbilityDelegator
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public static func getAbilityDelegator(): AbilityDelegator
    
    /**
    * Get unit test arguments stored in the AbilityDelegatorArgs object.
    *
    * @relation function getArguments(): AbilityDelegatorArgs
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public static func getArguments(): AbilityDelegatorArgs
}


/**
* A object that records the result of shell command executes.
*
* @relation export interface ShellCmdResult
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class ShellCmdResult <: RemoteDataLite {
    /**
    * shell cmd exec result.
    *
    * @relation exitCode: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public mut prop exitCode: Int32
    
    /**
    * the cmd standard result.
    *
    * @relation stdResult: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public mut prop stdResult: String
}


/**
* A global test utility interface used for adding AbilityMonitor objects and control lifecycle states of abilities.
*
* @relation export interface AbilityDelegator
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class AbilityDelegator <: RemoteDataLite {
    /**
    * Start a new ability.
    *
    * @throws { BusinessExecption } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types.
    * @throws { BusinessExecption } 16000001 - The specified ability does not exist.
    * @throws { BusinessExecption } 16000002 - Incorrect ability type.
    * @throws { BusinessExecption } 16000004 - Cannot start an invisible component.
    * @throws { BusinessExecption } 16000005 - The specified process does not have the permission.
    * @throws { BusinessExecption } 16000006 - Cross-user operations are not allowed.
    * @throws { BusinessExecption } 16000008 - The crowdtesting application expires.
    * @throws { BusinessExecption } 16000009 - An ability cannot be started or stopped in Wukong mode.
    * @throws { BusinessExecption } 16000010 - The call with the continuation and prepare continuation flag is forbidden.
    * @throws { BusinessExecption } 16000011 - The context does not exist.
    * @throws { BusinessExecption } 16000012 - The application is controlled.
    * @throws { BusinessExecption } 16000013 - The application is controlled by EDM.
    * @throws { BusinessExecption } 16000050 - Internal error.
    * @throws { BusinessExecption } 16000053 - The ability is not on the top of the UI.
    * @throws { BusinessExecption } 16000055 - Installation-free timed out.
    * @throws { BusinessExecption } 16200001 - The caller has been released.
    * @relation startAbility(want: Want): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func startAbility(want: Want): Future<Unit>
    
    /**
    * Execute the given command in the aa tools side.
    *
    * @relation executeShellCommand(cmd: string, timeoutSecs?: number): Promise<ShellCmdResult>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func executeShellCommand(cmd: String, timeoutSecs!: Int64 = 0): ShellCmdResult
    
    /**
    * Obtain the application context.
    *
    * @relation getAppContext(): Context
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func getAppContext(): Context
    
    /**
    * Finish the test and print log information to the unit testing console.
    * The total length of the log information to be printed cannot exceed 1000 characters.
    *
    * @relation finishTest(msg: string, code: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func finishTest(msg: String, code: Int64): Unit
    
    /**
    * Add an AbilityMonitor object for monitoring the lifecycle state changes of the specified ability in this process.
    *
    * @throws { BusinessExecption } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types.
    * @throws { BusinessExecption } 16000100 - Calling AddAbilityMonitor failed.
    * @relation addAbilityMonitorSync(monitor: AbilityMonitor): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func addAbilityMonitor(monitor: AbilityMonitor): Unit
    
    /**
    * Remove a specified AbilityMonitor object from the application memory.
    *
    * @throws { BusinessExecption } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types.
    * @throws { BusinessExecption } 16000100 - Calling RemoveAbilityMonitor failed.
    * @relation removeAbilityMonitorSync(monitor: AbilityMonitor): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func removeAbilityMonitor(monitor: AbilityMonitor): Unit
    
    /**
    * Wait for and returns the Ability object that matches the conditions set in the given AbilityMonitor.
    *
    * @throws { BusinessExecption } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types.
    * @throws { BusinessExecption } 16000100 - Calling WaitAbilityMonitor failed.
    * @throws { IllegalMemoryException } - Invalid Ability.
    * @relation waitAbilityMonitor(monitor: AbilityMonitor, timeout?: number): Promise<UIAbility>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func waitAbilityMonitor(monitor: AbilityMonitor, timeout!: Int64 = 5000): UIAbility
    
    /**
    * Add an AbilityStageMonitor object for monitoring the lifecycle state changes of the specified abilityStage in this process.
    *
    * @throws { BusinessExecption } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types.
    * @throws { BusinessExecption } 16000100 - Calling AddAbilityStageMonitor failed.
    * @relation addAbilityStageMonitorSync(monitor: AbilityStageMonitor): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func addAbilityStageMonitor(monitor: AbilityStageMonitor): Unit
    
    /**
    * Remove a specified AbilityStageMonitor object from the application memory.
    *
    * @throws { BusinessExecption } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types.
    * @throws { BusinessExecption } 16000100 - Calling RemoveAbilityStageMonitor failed.
    * @relation removeAbilityStageMonitorSync(monitor: AbilityStageMonitor): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func removeAbilityStageMonitor(monitor: AbilityStageMonitor): Unit
    
    /**
    * Wait for and returns the AbilityStage object that matches the conditions set in the given AbilityStageMonitor.
    *
    * @throws { BusinessExecption } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types.
    * @throws { BusinessExecption } 16000100 - Calling WaitAbilityStageMonitor failed.
    * @throws { IllegalMemoryException } - Invalid AbilityStage.
    * @relation waitAbilityStageMonitor(monitor: AbilityStageMonitor, timeout?: number): Promise<AbilityStage>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func waitAbilityStageMonitor(monitor: AbilityStageMonitor, timeout!: Int64 = 5000): AbilityStage
    
    /**
    * Prints log information to the unit testing console.
    * The total length of the log information to be printed cannot exceed 1000 characters.
    *
    * @throws { BusinessExecption } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types.
    * @relation printSync(msg: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func print(msg: String): Unit
    
    /**
    * Obtain the lifecycle state of a specified ability.
    *
    * @throws { BusinessExecption } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types.
    * @relation getAbilityState(ability: UIAbility): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func getAbilityState(ability: UIAbility): AbilityLifecycleState
    
    /**
    * Obtain the ability that is currently being displayed in this process.
    *
    * @throws { BusinessExecption } 16000100 - Calling GetCurrentTopAbility failed.
    * @throws { IllegalMemoryException } - Invalid Ability.
    * @relation getCurrentTopAbility(): Promise<UIAbility>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func getCurrentTopAbility(): UIAbility
    
    /**
    * Invoke the Ability.onForeground() callback of a specified ability without changing its lifecycle state.
    *
    * @throws { BusinessExecption } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types.
    * @throws { BusinessExecption } 16000100 - Calling DoAbilityForeground failed.
    * @relation doAbilityForeground(ability: UIAbility): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func doAbilityForeground(ability: UIAbility): Unit
    
    /**
    * Invoke the Ability.onBackground() callback of a specified ability without changing its lifecycle state.
    *
    * @throws { BusinessExecption } 401 - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types.
    * @throws { BusinessExecption } 16000100 - Calling DoAbilityBackground failed.
    * @relation doAbilityBackground(ability: UIAbility): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public func doAbilityBackground(ability: UIAbility): Unit
}


/**
* Store unit testing-related parameters, including test case names, and test runner name.
*
* @relation export interface AbilityDelegatorArgs
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class AbilityDelegatorArgs <: RemoteDataLite {
    /**
    * the bundle name of the application being tested.
    *
    * @relation bundleName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public mut prop bundleName: String
    
    /**
    * the parameters used for unit testing.
    *
    * @relation parameters: Record<string, string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public mut prop parameters: HashMap<String, String>
    
    /**
    * the class names of all test cases.
    *
    * @relation testCaseNames: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public mut prop testCaseNames: String
    
    /**
    * the class name of the test runner used to execute test cases.
    *
    * @relation testRunnerClassName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public mut prop testRunnerClassName: String
}


/**
* Provide methods for matching monitored Ability objects that meet specified conditions.
* The most recently matched Ability objects will be saved in the AbilityMonitor object.
*
* @relation export interface AbilityMonitor
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class AbilityMonitor <: FFIData {
    /**
    * The name of the ability to monitor.
    *
    * @relation abilityName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var abilityName: String
    
    /**
    * The name of the module to monitor.
    *
    * @relation moduleName?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var moduleName: String
    
    /**
    * Called back when the ability is created for initialization.
    *
    * @relation onAbilityCreate?: (ability: UIAbility) => void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var onAbilityCreate: ?(UIAbility) -> Unit
    
    /**
    * Called back when the state of the ability changes to foreground.
    *
    * @relation onAbilityForeground?: (ability: UIAbility) => void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var onAbilityForeground: ?(UIAbility) -> Unit
    
    /**
    * Called back when the state of the ability changes to background.
    *
    * @relation onAbilityBackground?: (ability: UIAbility) => void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var onAbilityBackground: ?(UIAbility) -> Unit
    
    /**
    * Called back before the ability is destroyed.
    *
    * @relation onAbilityDestroy?: (ability: UIAbility) => void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var onAbilityDestroy: ?(UIAbility) -> Unit
    
    /**
    * Called back when an ability window stage is created.
    *
    * @relation onWindowStageCreate?: (ability: UIAbility) => void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var onWindowStageCreate: ?(UIAbility) -> Unit
    
    /**
    * Called back when an ability window stage is restored.
    *
    * @relation onWindowStageRestore?: (ability: UIAbility) => void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var onWindowStageRestore: ?(UIAbility) -> Unit
    
    /**
    * Called back when an ability window stage is destroyed.
    *
    * @relation onWindowStageDestroy?: (ability: UIAbility) => void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var onWindowStageDestroy: ?(UIAbility) -> Unit
    
    /**
    * AbilityMonitor constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public init(
        abilityName: String,
        moduleName!: String = "",
        onAbilityCreate!: ?(UIAbility) -> Unit = None,
        onAbilityForeground!: ?(UIAbility) -> Unit = None,
        onAbilityBackground!: ?(UIAbility) -> Unit = None,
        onAbilityDestroy!: ?(UIAbility) -> Unit = None,
        onWindowStageCreate!: ?(UIAbility) -> Unit = None,
        onWindowStageRestore!: ?(UIAbility) -> Unit = None,
        onWindowStageDestroy!: ?(UIAbility) -> Unit = None
    )
}


/**
* Provide methods for matching monitored AbilityStage objects that meet specified conditions.
* The most recently matched AbilityStage objects will be saved in the AbilityStageMonitor object.
*
* @relation export interface AbilityStageMonitor
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Ability.AbilityRuntime.Core"
]
public class AbilityStageMonitor <: FFIData {
    /**
    * The module name of the abilityStage to monitor.
    *
    * @relation moduleName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var moduleName: String
    
    /**
    * The source path of the abilityStage to monitor.
    *
    * @relation srcEntrance: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public var srcEntrance: String
    
    /**
    * AbilityStageMonitor constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Ability.AbilityRuntime.Core"
    ]
    public init(
        moduleName: String,
        srcEntrance: String
    )
}


