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

package ohos.arkui.component.grid_row
import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import std.deriving.Derive


/**
* Defines the direction of grid-container component.
*
* @relation enum GridRowDirection
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum GridRowDirection {
    /**
    * The elements in the grid component are arranged in rows
    *
    * @relation Row
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Row |
    /**
    * The elements in the grid component are arranged in reverse order of rows
    *
    * @relation RowReverse
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RowReverse |
    ...
}



/**
* Defines the breakpoint reference of grid-container component.
*
* @relation enum BreakpointsReference
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum BreakpointsReference {
    /**
    * Respond to breakpoint changes according to window width
    *
    * @relation WindowSize
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    WindowSize |
    /**
    * Respond to breakpoint changes according to component width
    *
    * @relation ComponentSize
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ComponentSize |
    ...
}



/**
* Defines the option in length unit of grid-row component.
*
* @relation interface GridRowSizeOption
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class GridRowSizeOption {
    /**
    * Grid Row Size Option xs, select xs gutter size based on gridRow current breakpoint
    *
    * @type { Length }
    * @relation xs?: Length
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var xs: Length
    
    /**
    * Grid Row Size Option sm, select sm gutter size based on gridRow current breakpoint
    *
    * @type { Length }
    * @relation sm?: Length
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var sm: Length
    
    /**
    * Grid Row Size Option md, select md gutter size based on gridRow current breakpoint
    *
    * @type { Length }
    * @relation md?: Length
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var md: Length
    
    /**
    * Grid Row Size Option lg, select lg gutter size based on gridRow current breakpoint
    *
    * @type { Length }
    * @relation lg?: Length
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var lg: Length
    
    /**
    * Grid Row Size Option xl, select xl gutter size based on gridRow current breakpoint
    *
    * @type { Length }
    * @relation xl?: Length
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var xl: Length
    
    /**
    * Grid Row Size Option xxl, select xxl gutter size based on gridRow current breakpoint
    *
    * @type { Length }
    * @relation xxl?: Length
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var xxl: Length
    
    /**
    * Defines the constructor of GridRowSizeOption.
    *
    * @param { ?Length } xs
    * @param { ?Length } sm
    * @param { ?Length } md
    * @param { ?Length } lg
    * @param { ?Length } xl
    * @param { ?Length } xxl
    * @returns { GridRowSizeOption }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        xs!: Length = 0.vp,
        sm!: Length = 0.vp,
        md!: Length = 0.vp,
        lg!: Length = 0.vp,
        xl!: Length = 0.vp,
        xxl!: Length = 0.vp
    )
    
    /**
    * Defines the constructor of GridRowSizeOption.
    *
    * @param { ?Length } value
    * @returns { GridRowSizeOption }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: Length = 0.vp)
}


/**
* Defines the option in number unit of grid-container component.
*
* @relation interface GridRowColumnOption
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class GridRowColumnOption {
    /**
    * Grid Row Column Option xs, select xs column num based on gridRow current breakpoint
    *
    * @type { Int32 }
    * @relation xs?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var xs: Int32 = 2
    
    /**
    * Grid Row Column Option sm, select sm column num based on gridRow current breakpoint
    *
    * @type { Int32 }
    * @relation sm?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var sm: Int32 = 4
    
    /**
    * Grid Row Column Option md, select md column num based on gridRow current breakpoint
    *
    * @type { Int32 }
    * @relation md?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var md: Int32 = 8
    
    /**
    * Grid Row Column Option lg, select lg column num based on gridRow current breakpoint
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
    * Grid Row Column Option xl, select xl column num based on gridRow current breakpoint
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
    * Grid Row Column Option xxl, select xxl column num based on gridRow current breakpoint
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
    * Defines the constructor of GridRowColumnOption.
    *
    * @param { Int32 } xs
    * @param { Int32 } sm
    * @param { Int32 } md
    * @param { Int32 } lg
    * @param { Int32 } xl
    * @param { Int32 } xxl
    * @returns { GridRowColumnOption }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        xs!: Int32 = 2,
        sm!: Int32 = 4,
        md!: Int32 = 8,
        lg!: Int32 = 12,
        xl!: Int32 = 12,
        xxl!: Int32 = 12
    )
    
    /**
    * Defines the constructor of GridRowColumnOption.
    *
    * @param { Int32 } value
    * @returns { GridRowColumnOption }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value: Int32)
}


/**
* Defines the gutter of grid-row component.
*
* @relation interface GutterOption
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class GutterOption {
    /**
    * Defines the constructor of GutterOption.
    *
    * @param { Length } x
    * @param { Length } y
    * @returns { GridRowColumnOption }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(x!: Length, y!: Length)
    
    /**
    * Defines the constructor of GutterOption.
    *
    * @param { GridRowSizeOption } x
    * @param { GridRowSizeOption } y
    * @returns { GridRowColumnOption }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(x!: GridRowSizeOption, y!: GridRowSizeOption)
}


/**
* Defines the breakpoints of grid-row component.
*
* @relation interface BreakPoints
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class BreakPoints {
    /**
    * Breakpoint array
    *
    * @type { ?Array<string> }
    * @relation value?: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var value: Array<Length> = [320.vp, 600.vp, 840.vp]
    
    /**
    * Set breakpoint reference
    *
    * @type { ?Array<string> }
    * @relation value?: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var reference: BreakpointsReference = BreakpointsReference.WindowSize
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: Array<Length> = [320.vp, 600.vp, 840.vp],
        reference!: BreakpointsReference = BreakpointsReference.WindowSize
    )
}


/**
* Defines GridRow Component.
*
* @relation const GridRow: GridRowInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class GridRow <: ContainerBase {
    /**
    * Defines the constructor of GridRow.
    * 
    * @param { Int32 } columns
    * @param { Length } gutter
    * @param { BreakPoints } breakpoints
    * @param { GridRowDirection } direction
    * @param { () -> Unit } child
    * @returns { GridRow }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        columns!: Int32 = 12,
        gutter!: Length = 0.vp,
        breakpoints!: BreakPoints = BreakPoints(),
        direction!: GridRowDirection = GridRowDirection.Row,
        child!: () -> Unit = {=>}
    )
    
    /**
    * Defines the constructor of GridRow.
    * 
    * @param { GridRowColumnOption } columns
    * @param { Length } gutter
    * @param { BreakPoints } breakpoints
    * @param { GridRowDirection } direction
    * @param { () -> Unit } child
    * @returns { GridRow }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        columns!: GridRowColumnOption,
        gutter!: Length = 0.vp,
        breakpoints!: BreakPoints = BreakPoints(),
        direction!: GridRowDirection = GridRowDirection.Row,
        child!: () -> Unit = {=>}
    )
    
    /**
    * Defines the constructor of GridRow.
    * 
    * @param { Int32 } columns
    * @param { GutterOption } gutter
    * @param { BreakPoints } breakpoints
    * @param { GridRowDirection } direction
    * @param { () -> Unit } child
    * @returns { GridRow }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        columns!: Int32 = 12,
        gutter!: GutterOption,
        breakpoints!: BreakPoints = BreakPoints(),
        direction!: GridRowDirection = GridRowDirection.Row,
        child!: () -> Unit = {=>}
    )
    
    /**
    * Defines the constructor of GridRow.
    * 
    * @param { GridRowColumnOption } columns
    * @param { GutterOption } gutter
    * @param { BreakPoints } breakpoints
    * @param { GridRowDirection } direction
    * @param { () -> Unit } child
    * @returns { GridRow }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        columns!: GridRowColumnOption,
        gutter!: GutterOption,
        breakpoints!: BreakPoints = BreakPoints(),
        direction!: GridRowDirection = GridRowDirection.Row,
        child!: () -> Unit = {=>})
    
    /**
    * Cross axis alignment of each line in GridRow.
    *
    * @param { ItemAlign } value - element alignment
    * @returns { GridRow }
    * @relation alignItems(value: ItemAlign): GridRowAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func alignItems(value: ItemAlign): This
    
    /**
    * Callback triggered when the breakpoint changes, breakpoints value can be xs, sm, md, lg, xl, xxl
    *
    * @param { function } callback
    * @returns { GridRow }
    * @relation onBreakpointChange(callback: (breakpoints: string) => void): GridRowAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onBreakpointChange(callback: (String) -> Unit): This
}


