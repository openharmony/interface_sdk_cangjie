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

package ohos.telephony.call

import ohos.app.ability.ui_ability.*
import ohos.app.ability.want.*
import ohos.business_exception.BusinessException
import ohos.labels.*

/**
 * Provides methods related to call management.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Telephony.CallManager"
]
public class Call {
    /**
     * Formats a phone number into an E.164 representation.
     *
     * @param { String } phoneNumber - Indicates the phone number to format.
     * @param { String } countryCode - Indicates a two-digit country code defined in ISO 3166-1.
     * @returns { String } Returns an E.164 number. Returns an empty string if the input phone number is invalid.
     * @throws { BusinessException } 8300001 - Invalid parameter value.
     * @throws { BusinessException } 8300002 - Operation failed. Cannot connect to service.
     * @throws { BusinessException } 8300003 - System internal error.
     * @throws { BusinessException } 8300999 - Unknown error code.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager",
        throwexception: true,
        workerthread: true
    ]
    public static func formatPhoneNumberToE164(phoneNumber: String, countryCode: String): String

    /**
     * Go to the dial screen and the called number is displayed.
     *
     * @param { String } phoneNumber - Indicates the called number.
     * @throws { BusinessException } 8300001 - Invalid parameter value.
     * @throws { BusinessException } 8300002 - Operation failed. Cannot connect to service.
     * @throws { BusinessException } 8300003 - System internal error.
     * @throws { BusinessException } 8300999 - Unknown error code.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Contacts",
        throwexception: true,
        workerthread: true
    ]
    public static func makeCall(phoneNumber: String): Unit

    /**
     * Go to the dial screen and the called number is displayed.
     *
     * @param { UIAbilityContext } context - Indicates the context.
     * @param { String } phoneNumber - Indicates the called number.
     * @throws { BusinessException } 8300001 - Invalid parameter value.
     * @throws { BusinessException } 8300002 - Operation failed. Cannot connect to service.
     * @throws { BusinessException } 8300003 - System internal error.
     * @throws { BusinessException } 8300999 - Unknown error code.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Applications.Contacts",
        throwexception: true,
        workerthread: true
    ]
    public static func makeCall(context: UIAbilityContext, phoneNumber: String): Unit

    /**
     * Checks whether a phone number is on the emergency number list.
     *
     * @param { String } phoneNumber - Indicates the phone number to check.
     * @param { EmergencyNumberOptions } options - Indicates the additional information for emergency numbers.
     * @returns { Bool } Returns true if the phone number is on the emergency number list. Returns false otherwise.
     * @throws { BusinessException } 8300001 - Invalid parameter value.
     * @throws { BusinessException } 8300002 - Operation failed. Cannot connect to service.
     * @throws { BusinessException } 8300003 - System internal error.
     * @throws { BusinessException } 8300999 - Unknown error code.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager",
        throwexception: true,
        workerthread: true
    ]
    public static func isEmergencyPhoneNumber(phoneNumber: String,
        options!: EmergencyNumberOptions = EmergencyNumberOptions(slotId: 0)): Bool

    /**
     * Checks whether a call is ongoing.
     *
     * @returns { Bool } Returns true if at least one call is not in the CALL_STATE_IDLE state; returns false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager",
        workerthread: true
    ]
    public static func hasCall(): Bool

    /**
     * Obtains the call state.
     *
     * If an incoming call is ringing or waiting, the system returns CALL_STATE_RINGING.
     * If at least one call is in the active, hold, or dialing state, the system returns CALL_STATE_OFFHOOK.
     * In other cases, the system returns CALL_STATE_IDLE.
     *
     * @returns { CallState } Returns the call state.
     * @throws { BusinessException } 8300001 - Parameter error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager",
        throwexception: true,
        workerthread: true
    ]
    public static func getCallState(): CallState

    /**
     * Checks whether a device supports voice calls.
     *
     * The system checks whether the device has the capability to initiate a circuit switching (CS) or IP multimedia
     * subsystem domain (IMS) call on a telephone service network. If the device supports only packet switching
     * (even if the device supports OTT calls), false is returned.
     *
     * @returns { Bool } Returns true if the device supports voice calls; returns false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public static func hasVoiceCapability(): Bool

    /**
     * Formats a phone number according to the Chinese Telephone Code Plan. Before the formatting,
     * a phone number is in the format of country code (if any) + 3-digit service provider code
     * + 4-digit area code + 4-digit subscriber number. After the formatting,
     * each part is separated by a space.
     *
     * @param { String } phoneNumber - Indicates the phone number to format.
     * @param { NumberFormatOptions } options - Indicates the country code option.
     * @returns { String } Returns the phone number after being formatted. Returns an empty string if the input phone number is invalid.
     * @throws { BusinessException } 8300001 - Invalid parameter value.
     * @throws { BusinessException } 8300002 - Operation failed. Cannot connect to service.
     * @throws { BusinessException } 8300003 - System internal error.
     * @throws { BusinessException } 8300999 - Unknown error code.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager",
        throwexception: true,
        workerthread: true
    ]
    public static func formatPhoneNumber(
        phoneNumber: String,
        options!: NumberFormatOptions = NumberFormatOptions()
    ): String
}

/**
 * Indicates the option for determining if a number is an emergency number for specified slot.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Telephony.CallManager"
]
public class EmergencyNumberOptions {
    /**
     * Indicates the card slot index number, ranging from 0 to the
     * maximum card slot index number supported by the device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public var slotId: Int32

    /**
     * EmergencyNumberOptions constructor.
     *
     * @param { Int32 } [slotId] - Indicates the card slot index number, ranging from 0 to the
     * maximum card slot index number supported by the device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public init(slotId!: Int32 = 0)
}

/**
 * Indicates the states of call.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Telephony.CallManager"
]
public enum CallState {
    
    /**
     * Indicates an invalid state, which is used when the call state fails to be obtained.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    CallStateUnknown
    | 
    
    /**
     * Indicates that there is no ongoing call.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    CallStateIdle
    | 
    
    /**
     * Indicates that an incoming call is ringing or waiting.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    CallStateRinging
    | 
    
    /**
     * Indicates that a least one call is in the dialing, active, or hold state, and there is no new
     * incoming call ringing or waiting.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    CallStateOffhook
    | 
    
    /**
     * Indicates that call is answered
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    CallStateAnswered
    | ...
}


extend CallState <: ToString {
    
    /**
     * Converts the CallState to its string representation.
     * @returns { String } A string representation of the CallState.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public func toString(): String
}


extend CallState <: Equatable<CallState> {
    
    /**
     * Compares this CallState with another for equality.
     * @param { CallState } other - The CallState to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public operator func ==(other: CallState): Bool
    
    /**
     * Compares this CallState with another for inequality.
     * @param { CallState } other - The CallState to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public operator func !=(other: CallState): Bool
}

/**
 * Indicates the option for number formatting.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Telephony.CallManager"
]
public class NumberFormatOptions {
    /**
     * Indicates the country code.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public var countryCode: String

    /**
     * NumberFormatOptions constructor
     *
     * @param { String } [countryCode] - Indicates the country code.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public init(countryCode!: String = "CN")
}