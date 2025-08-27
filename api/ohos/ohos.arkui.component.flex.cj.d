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

package ohos.arkui.component.flex
import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel


/**
* Defines Flex Component.
*
* @relation const Flex: FlexInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Flex <: ContainerBase {
    /**
    * Defines the constructor of Flex.
    *
    * @param { FlexDirection } direction
    * @param { FlexWrap } wrap
    * @param { FlexAlign } justifyContent
    * @param { ItemAlign } alignItems
    * @param { FlexAlign } alignContent
    * @returns { Flex }
    * @relation (value?: FlexOptions): FlexAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(direction!: FlexDirection = FlexDirection.Row, wrap!: FlexWrap = FlexWrap.NoWrap,
        justifyContent!: FlexAlign = FlexAlign.Start, alignItems!: ItemAlign = ItemAlign.Start,
        alignContent!: FlexAlign = FlexAlign.Start, child!: () -> Unit = {=>})
}


