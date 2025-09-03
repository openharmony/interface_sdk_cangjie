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

package ohos.element_name
import ohos.labels.*



/**
* Contains basic Ability information, which uniquely identifies an ability.
* You can use this class to obtain values of the fields set in an element,
* such as the device ID, bundle name, and ability name.
*
* @relation export interface ElementName
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.BundleManager.BundleFramework.Core"
]
public class ElementName {
    /**
    * Indicates device id
    *
    * @relation deviceId?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var deviceId: String
    
    /**
    * Indicates bundle name
    * 
    * @relation bundleName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var bundleName: String
    
    /**
    * Indicates ability name
    *
    * @relation abilityName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var abilityName: String
    
    /**
    * Indicates module name
    *
    * @relation moduleName?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public var moduleName: String
    
    /**
    * ElementName constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.BundleManager.BundleFramework.Core"
    ]
    public init(bundleName: String, abilityName: String, deviceId!: String = "", moduleName!: String = "")
}


