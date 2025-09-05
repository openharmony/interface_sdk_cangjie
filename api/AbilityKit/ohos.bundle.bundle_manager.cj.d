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

package ohos.bundle.bundle_manager
import ohos.labels.*
import ohos.skill.*
import ohos.metadata.*

import ohos.resource.*
import ohos.ffi.*
import ohos.business_exception.BusinessException
import std.sync.*
import std.collection.*
public import ohos.skill.*
public import ohos.metadata.*
public import ohos.element_name.*
import ohos.business_exception.{BusinessException, getUniversalErrorMsg, ERR_PARAMETER_ERROR}

/**
* Obtains configuration information about an ability
*
* @relation export interface AbilityInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class AbilityInfo {
    /**
    * Indicates the name of the bundle containing the ability
    *
    * @relation readonly bundleName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let bundleName: String
    
    /**
    * Indicates the module name of the package to which the capability belongs
    *
    * @relation readonly moduleName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let moduleName: String
    
    /**
    * Ability simplified class name
    *
    * @relation readonly name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let name: String
    
    /**
    * Indicates the label of the ability
    *
    * @relation readonly label: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let label: String
    
    /**
    * Indicates the label id of the ability
    *
    * @relation readonly labelId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let labelId: Int32
    
    /**
    * Indicates the ability
    *
    * @relation readonly description: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let description: String
    
    /**
    * Indicates the description id of the ability
    *
    * @relation readonly descriptionId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let descriptionId: Int32
    
    /**
    * Indicates the icon of the ability
    *
    * @relation readonly icon: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let icon: String
    
    /**
    * Indicates the icon id of the ability
    *
    * @relation readonly iconId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let iconId: Int32
    
    /**
    * Process of ability, if user do not set it, the value equal application process
    *
    * @relation readonly process: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let process: String
    
    /**
    * Indicates whether this ability can be called by other abilities
    *
    * @relation readonly exported: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let exported: Bool
    
    /**
    * Enumerates ability display orientations
    *
    * @relation readonly orientation: bundleManager.DisplayOrientation
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let orientation: DisplayOrientation
    
    /**
    * Enumerates ability launch type
    *
    * @relation readonly launchType: bundleManager.LaunchType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let launchType: LaunchType
    
    /**
    * The permissions that others need to launch this ability
    *
    * @relation readonly permissions: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let permissions: Array<String>
    
    /**
    * The device types that this ability can run on
    *
    * @relation readonly deviceTypes: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let deviceTypes: Array<String>
    
    /**
    * Obtains configuration information about an application
    *
    * @relation readonly applicationInfo: ApplicationInfo
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let applicationInfo: ApplicationInfo
    
    /**
    * Indicates the metadata of ability
    *
    * @relation readonly metadata: Array<Metadata>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let metadata: Array<Metadata>
    
    /**
    * Indicates whether the ability is enabled
    *
    * @relation readonly enabled: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let enabled: Bool
    
    /**
    * Indicates which window mode is supported
    *
    * @relation readonly supportWindowModes: Array<bundleManager.SupportWindowMode>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let supportWindowModes: Array<SupportWindowMode>
    
    /**
    * Indicates window size
    *
    * @relation readonly windowSize: WindowSize
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let windowSize: WindowSize
    
    /**
    * Indicates whether to hide the application icon from the dock area
    *
    * @relation readonly excludeFromDock: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let excludeFromDock: Bool
    
    /**
    * Indicates skills of the ability
    *
    * @relation readonly skills: Array<Skill>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let skills: Array<Skill>
    
    /**
    * Indicates the appIndex of application, only work in clone app mode
    *
    * @relation readonly appIndex: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appIndex: Int32
}


/**
* Indicates the window size.
*
* @relation export interface WindowSize
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class WindowSize {
    /**
    * Indicates maximum ratio of width over height of window under free window status.
    *
    * @relation readonly maxWindowRatio: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let maxWindowRatio: Float64
    
    /**
    * Indicates minimum ratio of width over height of window under free window status.
    *
    * @relation readonly minWindowRatio: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let minWindowRatio: Float64
    
    /**
    * Indicates maximum width of window under free window status.
    *
    * @relation readonly maxWindowWidth: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let maxWindowWidth: UInt32
    
    /**
    * Indicates minimum width of window under free window status.
    *
    * @relation readonly minWindowWidth: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let minWindowWidth: UInt32
    
    /**
    * Indicates maximum height of window under free window status.
    *
    * @relation readonly maxWindowHeight: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let maxWindowHeight: UInt32
    
    /**
    * Indicates minimum height of window under free window status.
    *
    * @relation readonly minWindowHeight: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let minWindowHeight: UInt32
}


/**
* Obtains configuration information about an application
*
* @relation export interface ApplicationInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class ApplicationInfo {
    /**
    * Indicates the application name, which is the same as bundleName
    *
    * @relation readonly name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let name: String
    
    /**
    * Description of application
    *
    * @relation readonly description: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let description: String
    
    /**
    * Indicates the description id of the application
    *
    * @relation readonly descriptionId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let descriptionId: Int32
    
    /**
    * Indicates whether or not this application may be instantiated
    *
    * @relation readonly enabled: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let enabled: Bool
    
    /**
    * Indicates the label of the application
    *
    * @relation readonly label: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let label: String
    
    /**
    * Indicates the label id of the application
    *
    * @relation readonly labelId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let labelId: Int32
    
    /**
    * Indicates the icon of the application
    *
    * @relation readonly icon: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let icon: String
    
    /**
    * Indicates the icon id of the application
    *
    * @relation readonly iconId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let iconId: Int32
    
    /**
    * Process of application, if user do not set it ,the value equal bundleName
    *
    * @relation readonly process: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let process: String
    
    /**
    * Indicates the permissions required for accessing the application.
    *
    * @relation readonly permissions: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let permissions: Array<String>
    
    /**
    * Indicates the application source code path
    *
    * @relation readonly codePath: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let codePath: String
    
    /**
    * Indicates the metadata of the application
    *
    * @relation readonly metadataArray: Array<ModuleMetadata>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let metadataArray: Array<ModuleMetadata>
    
    /**
    * Indicates whether or not this application may be removable
    *
    * @relation readonly removable: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let removable: Bool
    
    /**
    * Indicates the access token of the application
    *
    * @relation readonly accessTokenId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let accessTokenId: UInt32
    
    /**
    * Indicates the uid of the application
    *
    * @relation readonly uid: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let uid: Int32
    
    /**
    * Indicates icon resource of the application
    *
    * @relation readonly iconResource: Resource
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let iconResource: AppResource
    
    /**
    * Indicates label resource of the application
    *
    * @relation readonly labelResource: Resource
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let labelResource: AppResource
    
    /**
    * Indicates description resource of the application
    *
    * @relation readonly descriptionResource: Resource
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let descriptionResource: AppResource
    
    /**
    * Indicates the appDistributionType of the application
    *
    * @relation readonly appDistributionType: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appDistributionType: String
    
    /**
    * Indicates the appProvisionType of the application
    *
    * @relation readonly appProvisionType: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appProvisionType: String
    
    /**
    * Indicates whether the application is a system application
    *
    * @relation readonly systemApp: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let systemApp: Bool
    
    /**
    * Indicates the type of application is APP or atomicService.
    *
    * @relation readonly bundleType: bundleManager.BundleType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let bundleType: BundleType
    
    /**
    * Indicates whether the application is in debug mode.
    *
    * @relation readonly debug: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let debug: Bool
    
    /**
    * Indicates whether the application data is unclearable, that is, whether the application data cannot be cleared.
    *
    * @relation readonly dataUnclearable: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let dataUnclearable: Bool
    
    /**
    * Indicates whether the application enables cloud file sync.
    *
    * @relation readonly cloudFileSyncEnabled: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let cloudFileSyncEnabled: Bool
    
    /**
    * Indicates native library path.
    *
    * @relation readonly nativeLibraryPath: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let nativeLibraryPath: String
    
    /**
    * Indicates the MultiAppMode object of the bundle
    *
    * @relation readonly multiAppMode: MultiAppMode
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let multiAppMode: MultiAppMode
    
    /**
    * Indicates the index of the bundle
    *
    * @relation readonly appIndex: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appIndex: Int32
    
    /**
    * Indicates sources to install the app
    *
    * @relation readonly installSource: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let installSource: String
    
    /**
    * Indicates the release type of the app
    *
    * @relation readonly releaseType: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let releaseType: String
}


/**
* Indicates the ModuleMetadata
*
* @relation export interface ModuleMetadata
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class ModuleMetadata {
    /**
    * Indicates the name of this hap module
    *
    * @relation readonly moduleName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let moduleName: String
    
    /**
    * Indicates the metadata of this hap module
    *
    * @relation readonly metadata: Array<Metadata>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let metadata: Array<Metadata>
}


/**
* Indicates MultiAppMode
*
* @relation export interface MultiAppMode
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class MultiAppMode {
    /**
    * Indicates the multiAppModeType of the bundle
    *
    * @relation readonly multiAppModeType: bundleManager.MultiAppModeType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let multiAppModeType: MultiAppModeType
    
    /**
    * Indicates the max count of the bundle
    *
    * @relation readonly maxCount: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let maxCount: Int32
}


/**
* Used to query the enumeration value of bundleInfo. Multiple values can be passed in the form.
* Multiple value input, such as GET_BUNDLE_INFO_DEFAULT | GET_BUNDLE_INFO_WITH_APPLICATION.
*
* @relation enum BundleFlag
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class BundleFlag {
    /**
    * Used to obtain the default bundleInfo. The obtained bundleInfo does not contain information of
    * signatureInfo, applicationInfo, hapModuleInfo, ability, extensionAbility and permission.
    *
    * @relation GET_BUNDLE_INFO_DEFAULT = 0x00000000
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_DEFAULT: Int32 = 0x00000000
    
    /**
    * Used to obtain the bundleInfo containing applicationInfo. The obtained bundleInfo does not
    * contain the information of signatureInfo, hapModuleInfo, ability, extensionAbility and permission.
    *
    * @relation GET_BUNDLE_INFO_WITH_APPLICATION = 0x00000001
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_APPLICATION: Int32 = 0x00000001
    
    /**
    * Used to obtain the bundleInfo containing hapModuleInfo. The obtained bundleInfo does not
    * contain the information of signatureInfo, applicationInfo, ability, extensionAbility and permission.
    *
    * @relation GET_BUNDLE_INFO_WITH_HAP_MODULE = 0x00000002
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_HAP_MODULE: Int32 = 0x00000002
    
    /**
    * Used to obtain the bundleInfo containing ability. The obtained bundleInfo does not
    * contain the information of signatureInfo, applicationInfo, extensionAbility and permission.
    * It can't be used alone, it needs to be used with GET_BUNDLE_INFO_WITH_HAP_MODULE.
    * such as GET_BUNDLE_INFO_WITH_ABILITY | GET_BUNDLE_INFO_WITH_HAP_MODULE.
    *
    * @relation GET_BUNDLE_INFO_WITH_ABILITY = 0x00000004
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_ABILITY: Int32 = 0x00000004
    
    /**
    * Used to obtain the bundleInfo containing extensionAbility. The obtained bundleInfo does not
    * contain the information of signatureInfo, applicationInfo, ability and permission.
    * It can't be used alone, it needs to be used with GET_BUNDLE_INFO_WITH_HAP_MODULE,
    * such as GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | GET_BUNDLE_INFO_WITH_HAP_MODULE.
    *
    * @relation GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY = 0x00000008
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY: Int32 = 0x00000008
    
    /**
    * Used to obtain the bundleInfo containing permission. The obtained bundleInfo does not
    * contain the information of signatureInfo, applicationInfo, hapModuleInfo, extensionAbility and ability.
    *
    * @relation GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION = 0x00000010
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_REQUESTED_PERMISSION: Int32 = 0x00000010
    
    /**
    * Used to obtain the metadata contained in applicationInfo, moduleInfo and abilityInfo.
    * It can't be used alone, it needs to be used with GET_BUNDLE_INFO_WITH_APPLICATION,
    * GET_BUNDLE_INFO_WITH_HAP_MODULE, GET_BUNDLE_INFO_WITH_ABILITY, GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY,
    * such as GET_BUNDLE_INFO_WITH_APPLICATION | GET_BUNDLE_INFO_WITH_METADATA
    * or GET_BUNDLE_INFO_WITH_HAP_MODULE | GET_BUNDLE_INFO_WITH_ABILITY | GET_BUNDLE_INFO_WITH_METADATA
    * or GET_BUNDLE_INFO_WITH_HAP_MODULE | GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | GET_BUNDLE_INFO_WITH_METADATA.
    *
    * @relation GET_BUNDLE_INFO_WITH_METADATA = 0x00000020
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_METADATA: Int32 = 0x00000020
    
    /**
    * Used to obtain the default bundleInfo containing disabled application and ability.
    * The obtained bundleInfo does not contain information of signatureInfo, applicationInfo,
    * hapModuleInfo, ability, extensionAbility and permission.
    *
    * @relation GET_BUNDLE_INFO_WITH_DISABLE = 0x00000040
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_DISABLE: Int32 = 0x00000040
    
    /**
    * Used to obtain the bundleInfo containing signatureInfo. The obtained bundleInfo does not
    * contain the information of applicationInfo, hapModuleInfo, extensionAbility, ability and permission.
    *
    * @relation GET_BUNDLE_INFO_WITH_SIGNATURE_INFO = 0x00000080
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_SIGNATURE_INFO: Int32 = 0x00000080
    
    /**
    * Used to obtain the bundleInfo containing menu configuration in hapModuleInfo.
    * The obtained bundleInfo does not contain the information of applicationInfo, extensionAbility, ability and permission.
    * It can't be used alone, it needs to be used with GET_BUNDLE_INFO_WITH_HAP_MODULE,
    * such as GET_BUNDLE_INFO_WITH_MENU | GET_BUNDLE_INFO_WITH_HAP_MODULE
    *
    * @relation GET_BUNDLE_INFO_WITH_MENU = 0x00000100
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_MENU: Int32 = 0x00000100
    
    /**
    * Used to obtain the bundleInfo containing router map configuration in hapModuleInfo.
    * The obtained bundleInfo does not contain the information of applicationInfo, extensionAbility, ability and permission.
    * It can't be used alone, it needs to be used with GET_BUNDLE_INFO_WITH_HAP_MODULE,
    * such as GET_BUNDLE_INFO_WITH_ROUTER_MAP | GET_BUNDLE_INFO_WITH_HAP_MODULE
    *
    * @relation GET_BUNDLE_INFO_WITH_ROUTER_MAP = 0x00000200
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_ROUTER_MAP: Int32 = 0x00000200
    
    /**
    * Used to obtain the skillInfo contained in abilityInfo and extensionInfo.
    * It can't be used alone, it needs to be used with GET_BUNDLE_INFO_WITH_HAP_MODULE,
    * GET_BUNDLE_INFO_WITH_ABILITY, GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY,
    * such as GET_BUNDLE_INFO_WITH_SKILL | GET_BUNDLE_INFO_WITH_HAP_MODULE | GET_BUNDLE_INFO_WITH_ABILITY
    * or GET_BUNDLE_INFO_WITH_SKILL | GET_BUNDLE_INFO_WITH_HAP_MODULE | GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY
    *
    * @relation GET_BUNDLE_INFO_WITH_SKILL = 0x00000800
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static const GET_BUNDLE_INFO_WITH_SKILL: Int32 = 0x00000800
}


/**
* Obtains configuration information about a bundle
*
* @relation export interface BundleInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class BundleInfo {
    /**
    * Indicates the name of this bundle
    *
    * @relation readonly name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let name: String
    
    /**
    * Indicates the bundle vendor
    *
    * @relation readonly vendor: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let vendor: String
    
    /**
    * Indicates the version code of the bundle
    *
    * @relation readonly versionCode: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let versionCode: UInt32
    
    /**
    * Indicates the version name of the bundle
    *
    * @relation readonly versionName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let versionName: String
    
    /**
    * Indicates the **minimum ** version compatible with the bundle
    *
    * @relation readonly minCompatibleVersionCode: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let minCompatibleVersionCode: UInt32
    
    /**
    * Indicates the target version number of the bundle
    *
    * @relation readonly targetVersion: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let targetVersion: UInt32
    
    /**
    * Obtains configuration information about an application
    *
    * @relation readonly appInfo: ApplicationInfo
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appInfo: ApplicationInfo
    
    /**
    * Obtains configuration information about a module
    *
    * @relation readonly hapModulesInfo: Array<HapModuleInfo>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let hapModulesInfo: Array<HapModuleInfo>
    
    /**
    * Indicates the required permissions details defined in the bundle
    *
    * @relation readonly reqPermissionDetails: Array<ReqPermissionDetail>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let reqPermissionDetails: Array<ReqPermissionDetail>
    
    /**
    * Indicates the grant state of required permissions
    *
    * @relation readonly permissionGrantStates: Array<bundleManager.PermissionGrantState>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let permissionGrantStates: Array<PermissionGrantState>
    
    /**
    * Indicates the SignatureInfo of the bundle
    *
    * @relation readonly signatureInfo: SignatureInfo
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let signatureInfo: SignatureInfo
    
    /**
    * Indicates the hap install time
    *
    * @relation readonly installTime: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let installTime: Int64
    
    /**
    * Indicates the hap update time
    *
    * @relation readonly updateTime: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let updateTime: Int64
    
    /**
    * Indicates the router information of the application
    *
    * @relation readonly routerMap: Array<RouterItem>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let routerMap: Array<RouterItem>
    
    /**
    * Indicates the appIndex of application, only work in appClone mode
    *
    * @relation readonly appIndex: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appIndex: Int32
}


/**
* Indicates the required permissions details defined in configuration file
*
* @relation export interface ReqPermissionDetail
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class ReqPermissionDetail {
    /**
    * Indicates the name of this required permissions
    *
    * @relation name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var name: String
    
    /**
    * Indicates the module name which the request permission belongs
    *
    * @relation moduleName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var moduleName: String
    
    /**
    * Indicates the reason of this required permissions
    *
    * @relation reason: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var reason: String
    
    /**
    * Indicates the reason id of this required permissions
    *
    * @relation reasonId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var reasonId: Int32
    
    /**
    * Indicates the used scene of this required permissions
    *
    * @relation usedScene: UsedScene
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var usedScene: UsedScene
}


/**
* The scene which is used
*
* @relation export interface UsedScene
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class UsedScene {
    /**
    * Indicates the abilities that need the permission
    *
    * @relation abilities: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var abilities: Array<String>
    
    /**
    * Indicates the time when the permission is used
    *
    * @relation when: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var when: String
}


/**
* Indicates SignatureInfo
*
* @relation export interface SignatureInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class SignatureInfo {
    /**
    * Indicates the ID of the application to which this bundle belongs
    * The application ID uniquely identifies an application. It is determined by the bundle name and signature
    *
    * @relation readonly appId: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appId: String
    
    /**
    * Indicates the fingerprint of the certificate
    * @relation readonly fingerprint: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let fingerprint: String
    
    /**
    * Globally unique identifier of an application, which is allocated by the cloud.
    * AppIdentifier does not change along the application lifecycle, including version updates, certificate changes,
    * public and private key changes, and application transfer.
    *
    * @relation readonly appIdentifier: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appIdentifier: String
}


/**
* This module is used to obtain package information of various applications installed on the current device.
*
* @relation declare namespace bundleManager
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class BundleManager {
    /**
    * Obtains own bundleInfo.
    *
    * @param { Int32 } bundleFlags - Indicates the flag used to specify information contained in the BundleInfo objects that will be returned.
    * @returns { BundleInfo } The result of getting the bundle info.
    *
    * @relation function getBundleInfoForSelfSync(bundleFlags: number): BundleInfo
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static func getBundleInfoForSelf(bundleFlags: Int32): BundleInfo
    
    /**
    * Obtains the profile designated by metadata name,
    * extensionAbilityName and moduleName from the current application.
    *
    * @param { String } moduleName - Indicates the moduleName of the application.
    * @param { String } extensionAbilityName - Indicates the extensionAbilityName of the application.
    * @param { String } metadataName - Indicates the name of metadata in ability.
    * @returns { Array<String> } Returns string in json-format of the corresponding config file.
    * @throws { BusinessException } 401 - Input parameters check failed.
    * @throws { BusinessException } 17700002 - The specified moduleName is not existed.
    * @throws { BusinessException } 17700003 - The specified extensionAbilityName not existed.
    * @throws { BusinessException } 17700024 - Failed to get the profile because there is no profile in the HAP.
    * @throws { BusinessException } 17700026 - The specified bundle is disabled.
    * @relation function getProfileByExtensionAbilitySync(moduleName: string, extensionAbilityName: string, metadataName?: string): Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static func getProfileByExtensionAbility(moduleName: String, extensionAbilityName: String,
        metadataName!: String = ""): Array<String>
    
    /**
    * Obtains the profile designated by metadata name, abilityName and moduleName from the current application.
    *
    * @param { String } moduleName - Indicates the moduleName of the application.
    * @param { String } abilityName - Indicates the abilityName of the application.
    * @param { String } metadataName - Indicates the name of metadata in ability.
    * @returns { Array<String> } Returns string in json-format of the corresponding config file.
    * @throws { BusinessException } 401 - Input parameters check failed.
    * @throws { BusinessException } 17700002 - The specified moduleName is not existed.
    * @throws { BusinessException } 17700003 - The specified abilityName is not existed.
    * @throws { BusinessException } 17700024 - Failed to get the profile because there is no profile in the HAP.
    * @throws { BusinessException } 17700026 - The specified bundle is disabled.
    * @throws { BusinessException } 17700029 - The specified ability is disabled.
    * @relation function getProfileByAbilitySync(moduleName: string, abilityName: string, metadataName?: string): Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static func getProfileByAbility(moduleName: String, abilityName: String, metadataName!: String = ""): Array<String>
    
    /**
    * Check whether the link can be opened.
    *
    * @param { String } link - Indicates the link to be opened.
    * @returns { Bool } Returns true if the link can be opened; returns false otherwise.
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types.
    * @throws { BusinessException } 17700055 - The specified link is invalid.
    * @throws { BusinessException } 17700056 - The scheme of the specified link is not in the querySchemes.
    * @relation function canOpenLink(link: string): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public static func canOpenLink(link: String): Bool
}


/**
* Indicates bundle type
*
* @relation export enum BundleType
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public enum BundleType {
    /**
    * Indicates app
    *
    * @relation APP = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    App |
    /**
    * Indicates atomic service
    *
    * @relation ATOMIC_SERVICE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AtomicService |
    ...
}


/**
* PermissionGrantState
*
* @relation export enum PermissionGrantState
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public enum PermissionGrantState {
    /**
    * PERMISSION_DENIED
    *
    * @relation PERMISSION_DENIED = -1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    PermissionDenied |
    /**
    * PERMISSION_GRANTED
    *
    * @relation PERMISSION_GRANTED = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    PermissionGranted |
    ...
}


/**
* Display orientation
*
* @relation export enum DisplayOrientation
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public enum DisplayOrientation {
    /**
    * Indicates that the system automatically determines the display orientation
    *
    * @relation UNSPECIFIED = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Unspecified |
    /**
    * Indicates the landscape orientation
    *
    * @relation LANDSCAPE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Landscape |
    /**
    * Indicates the portrait orientation
    *
    * @relation PORTRAIT = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Portrait |
    /**
    * Indicates the page ability orientation is the same as that of the nearest ability in the stack
    *
    * @relation FOLLOW_RECENT = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    FollowRecent |
    /**
    * Indicates the inverted landscape orientation
    *
    * @relation LANDSCAPE_INVERTED = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    LandscapeInverted |
    /**
    * Indicates the inverted portrait orientation
    *
    * @relation PORTRAIT_INVERTED = 5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    PortraitInverted |
    /**
    * Indicates the orientation can be auto-rotated
    *
    * @relation AUTO_ROTATION = 6
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AutoRotation |
    /**
    * Indicates the landscape orientation rotated with sensor
    *
    * @relation AUTO_ROTATION_LANDSCAPE = 7
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AutoRotationLandscape |
    /**
    * Indicates the portrait orientation rotated with sensor
    *
    * @relation AUTO_ROTATION_PORTRAIT = 8
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AutoRotationPortrait |
    /**
    * Indicates the sensor restricted mode
    *
    * @relation AUTO_ROTATION_RESTRICTED = 9
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AutoRotationRestricted |
    /**
    * Indicates the sensor landscape restricted mode
    *
    * @relation AUTO_ROTATION_LANDSCAPE_RESTRICTED = 10
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AutoRotationLandscapeRestricted |
    /**
    * Indicates the sensor portrait restricted mode
    *
    * @relation AUTO_ROTATION_PORTRAIT_RESTRICTED = 11
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AutoRotationPortraitRestricted |
    /**
    * Indicates the locked orientation mode
    *
    * @relation LOCKED = 12
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Locked |
    /**
    * Indicates the system automatically determines the sensor restricted mode
    *
    * @relation AUTO_ROTATION_UNSPECIFIED = 13
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AutoRotationUnspecified |
    /**
    * Indicates the orientation follow the desktop rotate mode
    *
    * @relation FOLLOW_DESKTOP = 14
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    FollowDesktop |
    ...
}


/**
* Support window mode
*
* @relation export enum SupportWindowMode
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public enum SupportWindowMode {
    /**
    * Indicates supported window mode of full screen mode
    *
    * @relation FULL_SCREEN = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    FullScreen |
    /**
    * Indicates supported window mode of split mode
    *
    * @relation SPLIT = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Split |
    /**
    * Indicates supported window mode of floating mode
    *
    * @relation FLOATING = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Floating |
    ...
}


/**
* Launch type
*
* @relation export enum LaunchType
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public enum LaunchType {
    /**
    * Indicates that the ability has only one instance
    *
    * @relation SINGLETON = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Singleton |
    /**
    * Indicates that the ability can have multiple instances
    *
    * @relation MULTITON = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Multiton |
    /**
    * Indicates that the ability can have specified instances
    *
    * @relation SPECIFIED = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Specified |
    ...
}


/**
* This enumeration value is used to identify various types of extension ability
*
* @relation export enum ExtensionAbilityType
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public enum ExtensionAbilityType {
    /**
    * Indicates extension info with type of form
    *
    * @relation FORM = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Form |
    /**
    * Indicates extension info with type of work schedule
    *
    * @relation WORK_SCHEDULER = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    WorkScheduler |
    /**
    * Indicates extension info with type of input method
    *
    * @relation INPUT_METHOD = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    InputMethod |
    /**
    * Indicates extension info with type of service
    *
    * @relation SERVICE = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Service |
    /**
    * Indicates extension info with type of accessibility
    *
    * @relation ACCESSIBILITY = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Accessibility |
    /**
    * Indicates extension info with type of dataShare
    *
    * @relation DATA_SHARE = 5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    DataShare |
    /**
    * Indicates extension info with type of filesShare
    *
    * @relation FILE_SHARE = 6
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    FileShare |
    /**
    * Indicates extension info with type of staticSubscriber
    *
    * @relation STATIC_SUBSCRIBER = 7
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    StaticSubscriber |
    /**
    * Indicates extension info with type of wallpaper
    *
    * @relation WALLPAPER = 8
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Wallpaper |
    /**
    * Indicates extension info with type of backup
    *
    * @relation BACKUP = 9
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Backup |
    /**
    * Indicates extension info with type of window
    *
    * @relation WINDOW = 10
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Window |
    /**
    * Indicates extension info with type of enterprise admin
    *
    * @relation ENTERPRISE_ADMIN = 11
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    EnterpriseAdmin |
    /**
    * Indicates extension info with type of thumbnail
    *
    * @relation THUMBNAIL = 13
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Thumbnail |
    /**
    * Indicates extension info with type of preview
    *
    * @relation PREVIEW = 14
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Preview |
    /**
    * Indicates extension info with type of print
    *
    * @relation PRINT = 15
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Print |
    /**
    * Indicates extension info with type of share
    *
    * @relation SHARE = 16
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Share |
    /**
    * Indicates extension info with type of push
    *
    * @relation PUSH = 17
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Push |
    /**
    * Indicates extension info with type of driver
    *
    * @relation DRIVER = 18
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Driver |
    /**
    * Indicates extension info with type of action
    *
    * @relation ACTION = 19
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Action |
    /**
    * Indicates extension info with type of ads service
    *
    * @relation ADS_SERVICE = 20
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AdsService |
    /**
    * Indicates extension info with type of embedded UI
    *
    * @relation EMBEDDED_UI = 21
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    EmbeddedUi |
    /**
    * Indicates extension info with type of insight intent UI
    *
    * @relation INSIGHT_INTENT_UI = 22
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    InsightIntentUi |
    /**
    * Indicates extension info with type of unspecified
    *
    * @relation UNSPECIFIED = 255
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Unspecified |
    ...
}


/**
* Indicates module type
*
* @relation export enum ModuleType
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public enum ModuleType {
    /**
    * Indicates entry type
    *
    * @relation ENTRY = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Entry |
    /**
    * Indicates feature type
    *
    * @relation FEATURE = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Feature |
    /**
    * Indicates shared type
    *
    * @relation SHARED = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Shared |
    ...
}


/**
* This enumeration value is used to identify various types of extension ability
*
* @relation export enum MultiAppModeType
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public enum MultiAppModeType {
    /**
    * Indicates multi app mode with type of unspecified
    *
    * @relation UNSPECIFIED = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    Unspecified |
    /**
    * Indicates multi app mode with type of multiInstance
    *
    * @relation MULTI_INSTANCE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    MultiInstance |
    /**
    * Indicates multi app mode with type of appClone
    *
    * @relation APP_CLONE = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    AppClone |
    ...
}


/**
* The constant for application type.
*
* @relation export enum ApplicationType
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
]
public enum ApplicationType {
    /**
    * Default browser identifier.
    *
    * @relation BROWSER = 'Web Browser'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Browser |
    /**
    * Default image identifier.
    *
    * @relation IMAGE = 'Image Gallery'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Image |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Audio |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Video |
    /**
    * Default PDF identifier.
    *
    * @relation PDF = 'PDF Viewer'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Pdf |
    /**
    * Default Default word identifier.
    *
    * @relation WORD = 'Word Viewer'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Word |
    /**
    * Default excel identifier.
    *
    * @relation EXCEL = 'Excel Viewer'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Excel |
    /**
    * Default PPT identifier.
    *
    * @relation PPT = 'PPT Viewer'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Ppt |
    /**
    * Default email identifier.
    *
    * @relation EMAIL = 'Email'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    Email |
    ...
    /**
    * Default email identifier.
    *
    * @relation get the corresponding mapping value
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    public func getValue(): String
}


/**
* Default application manager.
*
* @relation declare namespace defaultAppManager
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
]
public class DefaultAppManager {
    /**
    * Query whether the caller is default application based on type.
    *
    * @throws { BusinessException } 401 - Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types.
    * @throws { BusinessException } 801 - Capability not supported.
    *
    * @relation function isDefaultApplicationSync(type: string): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.DefaultApp"
    ]
    public static func isDefaultApplication(appType: String): Bool
}


/**
* Extension information about a bundle
*
* @relation export interface ExtensionAbilityInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class ExtensionAbilityInfo {
    /**
    * Indicates the name of the bundle
    *
    * @relation readonly bundleName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let bundleName: String
    
    /**
    * Indicates the name of the module
    *
    * @relation readonly moduleName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let moduleName: String
    
    /**
    * Indicates the name of the extension ability info
    *
    * @relation readonly name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let name: String
    
    /**
    * Indicates the label id of the extension ability info
    *
    * @relation readonly labelId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let labelId: Int32
    
    /**
    * Indicates the description id of the extension ability info
    *
    * @relation readonly descriptionId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let descriptionId: Int32
    
    /**
    * Indicates the icon id of the extension ability info
    *
    * @relation readonly iconId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let iconId: Int32
    
    /**
    * Indicates whether this ability can be called by other abilities
    *
    * @relation readonly exported: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let exported: Bool
    
    /**
    * Enumerates types of the extension ability info
    *
    * @relation readonly extensionAbilityType: bundleManager.ExtensionAbilityType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let extensionAbilityType: ExtensionAbilityType
    
    /**
    * The permissions that others need to use this extension ability info
    *
    * @relation readonly permissions: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let permissions: Array<String>
    
    /**
    * Obtains configuration information about an application
    *
    * @relation readonly applicationInfo: ApplicationInfo
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let applicationInfo: ApplicationInfo
    
    /**
    * Indicates the metadata of bundle
    *
    * @relation readonly metadata: Array<Metadata>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let metadata: Array<Metadata>
    
    /**
    * Indicates the src language to express extension ability info
    *
    * @relation readonly enabled: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let enabled: Bool
    
    /**
    * Indicates the read permission extension ability info
    *
    * @relation readonly readPermission: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let readPermission: String
    
    /**
    * Indicates the write permission of extension ability info
    *
    * @relation readonly writePermission: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let writePermission: String
    
    /**
    * Indicates type name of the extension ability.
    *
    * @relation readonly extensionAbilityTypeName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let extensionAbilityTypeName: String
    
    /**
    * Indicates skills of the extension ability
    *
    * @relation readonly skills: Array<Skill>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let skills: Array<Skill>
    
    /**
    * Indicates the appIndex of extension ability, only work in clone app mode
    *
    * @relation readonly appIndex: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let appIndex: Int32
}


/**
* Obtains configuration information about a hap module.
*
* @relation export interface HapModuleInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class HapModuleInfo {
    /**
    * Indicates the name of this hap module
    *
    * @relation readonly name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let name: String
    
    /**
    * Indicates the icon of this hap module
    *
    * @relation readonly icon: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let icon: String
    
    /**
    * Indicates the icon id of this hap module
    *
    * @relation readonly iconId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let iconId: Int32
    
    /**
    * Indicates the label of this hap module
    *
    * @relation readonly label: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let label: String
    
    /**
    * Indicates the label id of this hap module
    *
    * @relation readonly labelId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let labelId: Int32
    
    /**
    * Describes the hap module
    *
    * @relation readonly description: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let description: String
    
    /**
    * Indicates the description of this hap module
    *
    * @relation readonly descriptionId: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let descriptionId: Int32
    
    /**
    * Indicates main elementName of the hap module
    *
    * @relation readonly mainElementName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let mainElementName: String
    
    /**
    * Obtains configuration information about abilities
    *
    * @relation readonly abilitiesInfo: Array<AbilityInfo>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let abilitiesInfo: Array<AbilityInfo>
    
    /**
    * Obtains configuration information about extension abilities
    *
    * @relation readonly extensionAbilitiesInfo: Array<ExtensionAbilityInfo>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let extensionAbilitiesInfo: Array<ExtensionAbilityInfo>
    
    /**
    * Indicates the metadata of ability
    *
    * @relation readonly metadata: Array<Metadata>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let metadata: Array<Metadata>
    
    /**
    * The device types that this hap module can run on
    *
    * @relation readonly deviceTypes: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let deviceTypes: Array<String>
    
    /**
    * Indicates whether free installation of the hap module is supported
    *
    * @relation readonly installationFree: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let installationFree: Bool
    
    /**
    * Indicates the hash value of the hap module
    *
    * @relation readonly hashValue: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let hashValue: String
    
    /**
    * Indicates the type of the module
    *
    * @relation readonly type: bundleManager.ModuleType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let moduleType: ModuleType
    
    /**
    * Indicates the preload module
    *
    * @relation readonly preloads: Array<PreloadItem>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let preloads: Array<PreloadItem>
    
    /**
    * Indicates the dependency module that this module depends on
    *
    * @relation readonly dependencies: Array<Dependency>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let dependencies: Array<Dependency>
    
    /**
    * Indicates the menu configuration
    *
    * @relation readonly fileContextMenuConfig: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let fileContextMenuConfig: String
    
    /**
    * Indicates the router information of the module
    *
    * @relation readonly routerMap: Array<RouterItem>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let routerMap: Array<RouterItem>
    
    /**
    * Indicates the code path
    *
    * @relation readonly codePath: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let codePath: String
    
    /**
    * Indicates native library path.
    *
    * @relation readonly nativeLibraryPath: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let nativeLibraryPath: String
}


/**
* Indicates the data item defined in router item
*
* @relation export interface DataItem
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class DataItem {
    /**
    * Indicates the key of the custom data item
    *
    * @relation readonly key: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let key: String
    
    /**
    * Indicates the value of the custom data item
    *
    * @relation readonly value: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let value: String
}


/**
* Indicates the dependency
*
* @relation export interface Dependency
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class Dependency {
    /**
    * Indicates the bundle name of the dependency
    *
    * @relation readonly bundleName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let bundleName: String
    
    /**
    * Indicates the module name
    *
    * @relation readonly moduleName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let moduleName: String
    
    /**
    * Indicates the version code of the dependency
    *
    * @relation readonly versionCode: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let versionCode: UInt32
}


/**
* Indicates the preloadItem
*
* @relation export interface PreloadItem
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class PreloadItem {
    /**
    * Indicates the module name need preload
    *
    * @relation readonly moduleName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let moduleName: String
}


/**
* Indicates the router item
*
* @relation export interface RouterItem
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class RouterItem {
    /**
    * Indicates the name of the module to which the current page belongs
    *
    * @relation readonly name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let name: String
    
    /**
    * Indicates the file path of the current page within the module
    *
    * @relation readonly pageSourceFile: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let pageSourceFile: String
    
    /**
    * Indicates the name of the function @Builder decorated
    *
    * @relation readonly buildFunction: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let buildFunction: String
    
    /**
    * Indicates the data
    *
    * @relation readonly data: Array<DataItem>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let data: Array<DataItem>
    
    /**
    * Indicates the json string of custom data
    *
    * @relation readonly customData: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public let customData: String
}


