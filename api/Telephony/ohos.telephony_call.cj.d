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

package ohos.telephony_call
import ohos.ffi.*
import ohos.hilog.*
import std.collection.*
import ohos.labels.*
import ohos.base.*

import ohos.ability.*
import ohos.encoding.json.*

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Telephony.CallManager"
]
public enum EmergencyNumberOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    SLOT_ID_ONE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    SLOT_ID_TWO |
    ...
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Telephony.CallManager"
]
public enum CallState {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    CALL_STATE_UNKNOWN |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    CALL_STATE_IDLE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    CALL_STATE_RINGING |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    CALL_STATE_OFFHOOK |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public func getValue(): Int32
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Telephony.CallManager"
]
public class NumberFormatOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public let countryCode: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public init(countryCode: String)
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Telephony.CallManager"
]
public class TelephonyCall {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public static func formatPhoneNumberToE164(phoneNumber: String, countryCode: String): String
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public static func makeCall(phoneNumber: String): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public static func makeCall(context: UIAbilityContext, phoneNumber: String): Unit
    
    /**
    * @brief  isEmergencyPhoneNumber(phoneNumber: string, options: EmergencyNumberOptions,
    *  callback: AsyncCallback<boolean>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public static func isEmergencyPhoneNumber(phoneNumber: String, options: EmergencyNumberOptions): Bool
    
    /**
    * @brief  isEmergencyPhoneNumber(phoneNumber: string, callback: AsyncCallback<boolean>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public static func isEmergencyPhoneNumber(phoneNumber: String): Bool
    
    /**
    * @brief  hasCallSync(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public static func hasCall(): Bool
    
    /**
    * @brief  getCallStateSync(): CallState
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public static func getCallState(): CallState
    
    /**
    * @brief  hasVoiceCapability(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public static func hasVoiceCapability(): Bool
    
    /**
    * @brief  formatPhoneNumber(phoneNumber: string, callback: AsyncCallback<string>): void
    * @brief  formatPhoneNumber(phoneNumber: string, options: NumberFormatOptions,
    *  callback: AsyncCallback<string>): void
    * @brief  formatPhoneNumber(phoneNumber: string, options?: NumberFormatOptions): Promise<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Telephony.CallManager"
    ]
    public static func formatPhoneNumber(
        phoneNumber: String,
        options!: NumberFormatOptions = NumberFormatOptions("CN")
    ): String
}


