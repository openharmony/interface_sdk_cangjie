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

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file.

package ohos.app.ability.want_constant

import ohos.labels.*

/**
 * The constant for params of the want.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityBase"
]
public enum Params {
    
    /**
     * Indicates the ability in this want can back to the current top ability even though they are not in the same
     * mission stack.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    AbilityBackToOtherMissionStack
    | 
    
    /**
     * Indicates the param of ability failure restart recovery identification.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    AbilityRecoveryRestart
    | 
    
    /**
     * Indicates the param of extra content title.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    ContentTitleKey
    | 
    
    /**
     * Indicates the param of extra shared abstract
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    ShareAbstractKey
    | 
    
    /**
     * Indicates the param of extra shareURL
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    ShareUrlKey
    | 
    
    /**
     * Indicates the param of extra support continue page stack.
     * The default value of the param is true,
     * and the system will automatically flow the page stack information by default.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    SupportContinuePageStackKey
    | 
    
    /**
     * Indicates the param of extra stop source ability on continue.
     * The default value of the param is true,
     * and the system will exit the source application by default.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    SupportContinueSourceExitKey
    | ...

    
    /**
     * Get the corresponding mapping value.
     *
     * @returns { String } Returns the corresponding mapping value.
     * @throws { BusinessException } 16000050 - Internal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase",
        throwexception: true
    ]
    public func getValue(): String
}


extend Params <: ToString {
    
    /**
     * Converts the Params to its string representation.
     * @returns { String } A string representation of the Params.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public func toString(): String
}


extend Params <: Equatable<Params> {
    
    /**
     * Compares this Params with another for equality.
     * @param { Params } other - The Params to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public operator func ==(other: Params): Bool
    
    /**
     * Compares this Params with another for inequality.
     * @param { Params } other - The Params to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public operator func !=(other: Params): Bool
}

/**
 * Used to indicate how Want is handled.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Ability.AbilityBase"
]
public enum Flags {
    /**
     * Indicates the grant to perform read operations on the URI.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    FlagAuthReadUriPermission
    | 
    /**
     * Indicates the grant to perform write operations on the URI.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    FlagAuthWriteUriPermission
    | 
    /**
     * Indicates that the URI can be persisted by the callee.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    FlagAuthPersistableUriPermission
    | 
    /**
     * Install the specified ability if it's not installed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    FlagInstallOnDemand
    | 
    /**
     * Indicates that if implicit start ability couldn't match any application, no tip dialog will be pulled up.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    FlagStartWithoutTips
    | ...

    /**
     * Get the corresponding mapping value.
     *
     * @returns { UInt32 } Returns the corresponding mapping value.
     * @throws { BusinessException } 16000050 - Internal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase",
        throwexception: true
    ]
    public func getValue(): UInt32
}


extend Flags <: ToString {
    
    /**
     * Converts the Flags to its string representation.
     * @returns { String } A string representation of the Flags.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public func toString(): String
}


extend Flags <: Equatable<Flags> {
    
    /**
     * Compares this Flags with another for equality.
     * @param { Flags } other - The Flags to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public operator func ==(other: Flags): Bool
    
    /**
     * Compares this Flags with another for inequality.
     * @param { Flags } other - The Flags to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Ability.AbilityBase"
    ]
    public operator func !=(other: Flags): Bool
}
