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

package ohos.telephony.call
import ohos.app.ability.ui_ability.*
import ohos.app.ability.want.*
import ohos.encoding.json.*
import ohos.ffi.*
import ohos.labels.*
import ohos.business_exception.BusinessException
import std.collection.*

import ohos.hilog.*
import ohos.business_exception.getUniversalErrorMsg
import std.deriving.Derive

/**
* Provides methods related to call management.
*
* @relation declare namespace call
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Telephony.CallManager"
]
public class Call {
    /**
    * Formats a phone number into an E.164 representation.
    *
    * @throws { BusinessException } 8300001 - Invalid parameter value.
    * @throws { BusinessException } 8300002 - Operation failed. Cannot connect to service.
    * @throws { BusinessException } 8300003 - System internal error.
    * @throws { BusinessException } 8300999 - Unknown error code.
    * @relation function formatPhoneNumberToE164(phoneNumber: string, countryCode: string): Promise<string>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public static func formatPhoneNumberToE164(phoneNumber: String, countryCode: String): String
    
    /**
    * Go to the dial screen and the called number is displayed.
    *
    * @throws { BusinessException } 8300001 - Invalid parameter value.
    * @throws { BusinessException } 8300002 - Operation failed. Cannot connect to service.
    * @throws { BusinessException } 8300003 - System internal error.
    * @throws { BusinessException } 8300999 - Unknown error code.
    * @relation function makeCall(phoneNumber: string): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Contacts"
    ]
    public static func makeCall(phoneNumber: String): Unit
    
    /**
    * Go to the dial screen and the called number is displayed.
    *
    * @throws { BusinessException } 8300001 - Invalid parameter value.
    * @throws { BusinessException } 8300002 - Operation failed. Cannot connect to service.
    * @throws { BusinessException } 8300003 - System internal error.
    * @throws { BusinessException } 8300999 - Unknown error code.
    * @relation function makeCall(context: Context, phoneNumber: string): Promise<void>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Applications.Contacts"
    ]
    public static func makeCall(context: UIAbilityContext, phoneNumber: String): Unit
    
    /**
    * Checks whether a phone number is on the emergency number list.
    *
    * @throws { BusinessException } 8300001 - Invalid parameter value.
    * @throws { BusinessException } 8300002 - Operation failed. Cannot connect to service.
    * @throws { BusinessException } 8300003 - System internal error.
    * @throws { BusinessException } 8300999 - Unknown error code.
    * @relation function isEmergencyPhoneNumber(phoneNumber: string, options?: EmergencyNumberOptions): Promise<boolean>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public static func isEmergencyPhoneNumber(phoneNumber: String, options!: EmergencyNumberOptions = EmergencyNumberOptions(slotId: 0)): Bool
    
    /**
    * Checks whether a call is ongoing.
    *
    * @relation function hasCallSync(): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public static func hasCall(): Bool
    
    /**
    * Obtains the call state.
    *
    * @relation function getCallStateSync(): CallState
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public static func getCallState(): CallState
    
    /**
    * Checks whether a device supports voice calls.
    *
    * @relation function hasVoiceCapability(): boolean
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public static func hasVoiceCapability(): Bool
    
    /**
    * Formats a phone number according to the Chinese Telephone Code Plan. Before the formatting,
    * a phone number is in the format of country code (if any) + 3-digit service provider code
    * + 4-digit area code + 4-digit subscriber number. After the formatting,
    * each part is separated by a space.
    *
    * @throws { BusinessException } 8300001 - Invalid parameter value.
    * @throws { BusinessException } 8300002 - Operation failed. Cannot connect to service.
    * @throws { BusinessException } 8300003 - System internal error.
    * @throws { BusinessException } 8300999 - Unknown error code.
    * @relation function formatPhoneNumber(phoneNumber: string, options?: NumberFormatOptions): Promise<string>
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public static func formatPhoneNumber(
        phoneNumber: String,
        options!: NumberFormatOptions = NumberFormatOptions()
    ): String
}


/**
* Indicates the option for determining if a number is an emergency number for specified slot.
*
* @relation export interface EmergencyNumberOptions
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Telephony.CallManager"
]
public class EmergencyNumberOptions {
    /**
    * Indicates the card slot index number, ranging from 0 to the
    * maximum card slot index number supported by the device.
    *
    * @relation slotId?: number
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public var slotId: Int32
    
    /**
    * EmergencyNumberOptions constructor.
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public init(slotId!: Int32 = 0)
}


/**
* Indicates the states of call.
*
* @relation export enum CallState
*/
@Derive[ToString, Equatable]
@!APILevel[
    22,
    syscap: "SystemCapability.Telephony.CallManager"
]
public enum CallState {
    /**
    * Indicates an invalid state, which is used when the call state fails to be obtained.
    *
    * @relation CALL_STATE_UNKNOWN = -1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    CallStateUnknown |
    /**
    * Indicates that there is no ongoing call.
    *
    * @relation CALL_STATE_IDLE = 0
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    CallStateIdle |
    /**
    * Indicates that an incoming call is ringing or waiting.
    *
    * @relation CALL_STATE_RINGING = 1
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    CallStateRinging |
    /**
    * Indicates that a least one call is in the dialing, active, or hold state, and there is no new
    * incoming call ringing or waiting.
    *
    * @relation CALL_STATE_OFFHOOK = 2
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    CallStateOffhook |
    /**
    * Indicates that call is answered
    *
    * @relation CALL_STATE_ANSWERED = 3
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    CallStateAnswered |
    ...
}



/**
* Indicates the option for number formatting.
*
* @relation export interface NumberFormatOptions
*/
@!APILevel[
    22,
    syscap: "SystemCapability.Telephony.CallManager"
]
public class NumberFormatOptions {
    /**
    * Indicates the country code.
    *
    * @relation countryCode?: string
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public var countryCode: String
    
    /**
    * NumberFormatOptions constructor
    */
    @!APILevel[
        22,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public init(countryCode!: String = "CN")
}


