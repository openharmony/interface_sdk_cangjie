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

package ohos.arkui.component.progress
import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import std.deriving.Derive


/**
* Current status of progress bar.
*
* @enum
* @relation enum ProgressStatus
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ProgressStatus {
    /**
    * Loading status.
    *
    * @relation LOADING
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Loading |
    /**
    * Processing status.
    *
    * @relation PROGRESSING
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Progressing |
    ...
}



/**
* Progress common style options.
*
* @interface CommonProgressStyleOptions
* @relation interface CommonProgressStyleOptions
*/
sealed interface CommonProgressStyleOptions {
}

/**
* Defines the ring style Options.
*
* @extends CommonProgressStyleOptions
* @interface RingStyleOptions
* @relation interface RingStyleOptions extends ScanEffectOptions, CommonProgressStyleOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RingStyleOptions <: CommonProgressStyleOptions {
    /**
    * Defines the strokeWidth property.
    *
    * @type { Length }
    * @relation strokeWidth?: Length
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var strokeWidth: Length
    
    /**
    * Enables progress shadow.
    *
    * @type { Bool }
    * @relation shadow?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var shadow: Bool
    
    /**
    * The status of progress, default is PROGRESSING. Set to LOADING status will trigger the loading animation.
    *
    * @type { ProgressStatus }
    * @relation status?: ProgressStatus
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var status: ProgressStatus
    
    /**
    * Enable smooth effect.
    *
    * @type { ?boolean }
    * @default true
    * @relation enableSmoothEffect?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var enableSmoothEffect: Bool
    
    /**
    * Enable scan effect.
    *
    * @type { ?boolean }
    * @default false
    * @relation enableScanEffect?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var enableScanEffect: Bool
    
    /**
    * Constructor the ring style Options.
    *
    * @param { Length } strokeWidth
    * @param { Bool } shadow
    * @param { ProgressStatus } status
    * @param { Bool } enableSmoothEffect
    * @param { Bool } enableScanEffect
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(strokeWidth!: Length = 4.vp, shadow!: Bool = false,
        status!: ProgressStatus = ProgressStatus.Progressing, enableSmoothEffect!: Bool = true,
        enableScanEffect!: Bool = false)
}


/**
* Defines Progress Component.
*
* @relation const Progress: ProgressInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Progress <: ViewBase {
    /**
    * Called when the progress bar is set.
    *
    * @param { Float64 } value
    * @param { Float64 } total
    * @param { ProgressType } progressType
    * @returns { Progress }
    * @relation (options: ProgressOptions): ProgressAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: Float64, total!: Float64 = 100.0, progressType!: ProgressType = ProgressType.Linear)
    
    /**
    * Called when the current progress value is set.
    *
    * @param { Float64 } value
    * @returns { This }
    * @relation value(value: number): ProgressAttribute<Type>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func value(value: Float64): This
    
    /**
    * Called when the progress bar foreground is set.
    *
    * @param { ResourceColor } value - indicates the color of the progress.
    * @returns { This } the attribute of the progress.
    * @relation color(value: ResourceColor | LinearGradient): ProgressAttribute<Type>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func color(value: ResourceColor): This
    
    /**
    * Called when the style of progress bar is set.
    *
    * @param { Length } strokeWidth
    * @param { Int32 } scaleCount
    * @param { Length } scaleWidth
    * @returns { This } the attribute of the progress.
    * @relation style(value: Style): ProgressAttribute<Type>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func style(strokeWidth!: Length = 10.vp, scaleCount!: Int32 = 120, scaleWidth!: Length = 2.vp): This
    
    /**
    * Called when the style of progress bar is set.
    *
    * @param { RingStyleOptions } value - indicates the style of the progress.
    * @returns { This } the attribute of the progress.
    * @relation style(value: LinearStyleOptions | RingStyleOptions | CapsuleStyleOptions | ProgressStyleOptions): ProgressAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func style(value: RingStyleOptions): This
}


