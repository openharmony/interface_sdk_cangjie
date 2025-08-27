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

package ohos.arkui.component.row
import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel


/**
* Defines Row Component.
*
* @relation const Row: RowInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Row <: ContainerBase {
    /**
    * Defines the constructor of Row.
    *
    * @param { Length } space
    * @param { () -> Unit } child
    * @returns { Row }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(space!: Length = 0.vp, child!: () -> Unit = {=>})
    
    /**
    * Called when the vertical alignment is set.
    *
    * @param { VerticalAlign } value
    * @returns { Row }
    * @relation alignItems(value: VerticalAlign): RowAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func alignItems(value: VerticalAlign): This
    
    /**
    * Called when the horizontal alignment is set.
    *
    * @param { FlexAlign } value
    * @returns { Row }
    * @relation justifyContent(value: FlexAlign): RowAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func justifyContent(value: FlexAlign): This
}


