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

package ohos.arkui.component.rating
import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*


/**
* Defines Rating Component.
* 
* @relation declare const Rating: RatingInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Rating <: ViewBase {
    /**
    * Create a Rating.
    *
    * @params { Float64 } rating
    * @params { Bool } indicator
    * @returns { This }
    * @relation (options?: RatingOptions): RatingAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(rating!: Float64, indicator!: Bool = false)
    
    /**
    * Called when the total number of stars is set.
    * 
    * @param { Int32 } starCount
    * @returns { This }
    * @relation stars(value: number): RatingAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func stars(starCount: Int32): This
    
    /**
    * Called when the step size of the operation rating.
    *
    * @param { Float64 } size
    * @returns { This }
    * @relation stepSize(value: number): RatingAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func stepSize(size: Float64): This
    
    /**
    * Called when a picture is set.
    *
    * @param { ResourceStr } backgroundUri - Background URI option.
    * @param { ResourceStr } foregroundUri - Foreground URI option.
    * @param { ResourceStr } secondaryUri - Secondary URI option.
    * @returns { This }
    * @relation starStyle(options: StarStyleOptions): RatingAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func starStyle(backgroundUri!: ResourceStr, foregroundUri!: ResourceStr, secondaryUri!: ResourceStr = backgroundUri): This
    
    /**
    * Called when the star rating of the operation scoring bar changes.
    *
    * @param { (Float64) -> Unit } callback
    * @returns { This }
    * @relation onChange(callback: (value: number) => void): RatingAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(callback: (Float64) -> Unit): This
}


