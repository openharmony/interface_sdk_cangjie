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

package ohos.arkui.component.grid_col
import ohos.arkui.component.common.*
import ohos.base.*
import ohos.labels.APILevel


/**
* Defines the option in number unit of grid-container child component.
*
* @relation interface GridColColumnOption
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class GridColColumnOption {
    /**
    * Grid Col Column Option xs
    *
    * @type { Int32 }
    * @relation xs?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var xs: Int32 = 12
    
    /**
    * Grid Col Column Option sm
    *
    * @type { Int32 }
    * @relation sm?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var sm: Int32 = 12
    
    /**
    * Grid Col Column Option md
    *
    * @type { Int32 }
    * @relation md?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var md: Int32 = 12
    
    /**
    * Grid Col Column Option lg
    *
    * @type { Int32 }
    * @relation lg?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var lg: Int32 = 12
    
    /**
    * Grid Col Column Option xl
    *
    * @type { Int32 }
    * @relation xl?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var xl: Int32 = 12
    
    /**
    * Grid Col Column Option xxl
    *
    * @type { Int32 }
    * @relation xxl?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var xxl: Int32 = 12
    
    /**
    * Defines the constructor of GridColColumnOption.
    *
    * @param { Int32 } xs
    * @param { Int32 } sm
    * @param { Int32 } md
    * @param { Int32 } lg
    * @param { Int32 } xl
    * @param { Int32 } xxl
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        xs!: Int32 = 12,
        sm!: Int32 = 12,
        md!: Int32 = 12,
        lg!: Int32 = 12,
        xl!: Int32 = 12,
        xxl!: Int32 = 12
    )
    
    /**
    * Defines the option in number unit of grid-container child component.
    *
    * @param { Int32 } value
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value: Int32)
}


/**
* Defines GridCol Component.
*
* @relation const GridCol: GridColInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class GridCol <: ContainerBase {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(span!: Int32 = 1, offset!: Int32 = 0, order!: Int32 = 0, child!: () -> Unit = {=>})
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        span!: GridColColumnOption,
        offset!: GridColColumnOption,
        order!: GridColColumnOption,
        child!: () -> Unit = {=>}
    )
    
    /**
    * Sets the span of current gird-container item.
    *
    * @param { Int32 } value
    * @returns { GridCol }
    * @relation span(value: number | GridColColumnOption): GridColAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func span(value: Int32): This
    
    /**
    * Sets the span of current gird-container item.
    *
    * @param { GridColColumnOption } value
    * @returns { GridCol }
    * @relation span(value: number | GridColColumnOption): GridColAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func span(value: GridColColumnOption): This
    
    /**
    * Sets the offset of current gird-container item.
    *
    * @param { Int32 } value
    * @returns { GridCol }
    * @relation gridColOffset(value: number | GridColColumnOption): GridColAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func gridColOffset(value: Int32): This
    
    /**
    * Sets the offset of current gird-container item.
    *
    * @param { GridColColumnOption } value
    * @returns { GridCol }
    * @relation gridColOffset(value: number | GridColColumnOption): GridColAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func gridColOffset(value: GridColColumnOption): This
    
    /**
    * Sets the order of current gird-container item.
    *
    * @param { Int32 } value
    * @returns { GridCol }
    * @relation order(value: number | GridColColumnOption): GridColAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func order(value: Int32): This
    
    /**
    * Sets the order of current gird-container item.
    *
    * @param { GridColColumnOption } value
    * @returns { GridCol }
    * @relation order(value: number | GridColColumnOption): GridColAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func order(value: GridColColumnOption): This
}


