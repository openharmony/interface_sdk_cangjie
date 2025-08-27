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

package ohos.arkui.component.animate
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel


/**
* Defining animation function
*
* @param { AnimateParam } value - parameters for animation.
* @param { VoidCallback } event - the closure base on which, the system will create animation automatically
* @relation animateTo(value: AnimateParam, event: () => void): void
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func animateTo(value: AnimateParam, event: VoidCallback): Unit


