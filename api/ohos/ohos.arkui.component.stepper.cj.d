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

package ohos.arkui.component.stepper
import ohos.arkui.component.common.*
import ohos.ffi.*
import ohos.base.*
import ohos.labels.APILevel


/**
* Defines Stepper Component.
*
* @relation const Stepper: StepperInterface;
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Stepper <: ContainerBase {
    /**
    * Defines Stepper Component instance.
    *
    * @param { UInt32 = 0 } index
    * @param { () -> Unit } child
    * @returns { This }
    * @relation (value?: StepperOptions): StepperAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(index!: UInt32 = 0, child!: () -> Unit = {=>})
    
    /**
    * Callback when the finish label is clicked.
    *
    * @param { () -> Unit } callback
    * @returns { This }
    * @relation onFinish(callback: () => void): StepperAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onFinish(callback: () -> Unit): This
    
    /**
    * Callback when the skip label is clicked.
    *
    * @param { () -> Unit } callback
    * @returns { This }
    * @relation onSkip(callback: () => void): StepperAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onSkip(callback: () -> Unit): This
    
    /**
    * Callback when the change label is clicked.
    *
    * @param { (UInt32, UInt32) -> Unit } callback
    * @returns { This }
    * @relation onChange(callback: (prevIndex: number, index: number) => void): StepperAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(callback: (UInt32, UInt32) -> Unit): This
    
    /**
    * Callback when the next label is clicked.
    *
    * @param { (UInt32, UInt32) -> Unit } callback
    * @returns { This }
    * @relation onNext(callback: (index: number, pendingIndex: number) => void): StepperAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onNext(callback: (UInt32, UInt32) -> Unit): This
    
    /**
    * Callback when the previous label is clicked.
    *
    * @param { (UInt32, UInt32) -> Unit } callback
    * @returns { This }
    * @relation onPrevious(callback: (index: number, pendingIndex: number) => void): StepperAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onPrevious(callback: (UInt32, UInt32) -> Unit): This
}


