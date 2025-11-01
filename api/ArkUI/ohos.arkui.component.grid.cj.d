package ohos.arkui.component.grid

import ohos.arkui.component.common.*
import ohos.arkui.component.scroll.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*
import std.convert.*

/**
 * Defines Grid Component.
 * It is recommended to use LazyForEach or Repeat to generate child components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Grid <: ScrollableCommonMethodComponent<Grid> & GridAttribute {
/**
 * Grid is returned when the parameter is transferred.
 *
 * @param { ?Scroller } [scroller] - Scroller controller bound to the grid for controlling scrolling.
 * @param { ()->Unit } [child] - The child component to be displayed in the grid, typically LazyForEach or Repeat.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(scroller!: ?Scroller = Option.None, child!: () -> Unit = {=>})

/**
 * This parameter specifies the number of columns in the current grid layout.
 *
 * @param { ?String } value - String specifying the number of columns and their proportional distribution,
 * for example "1fr 1fr" means two columns of equal width.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func columnsTemplate(value: ?String): This

/**
 * Lets you set the number of rows in the current grid layout,.
 *
 * @param { ?String } value - String specifying the number of rows and their proportional distribution,
 * for example "1fr 1fr" means two rows of equal height.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func rowsTemplate(value: ?String): This

/**
 * Allows you to set the spacing between columns.
 *
 * @param { ?Length } value - Spacing between adjacent columns.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func columnsGap(value: ?Length): This

/**
 * Lets you set the spacing between rows.
 *
 * @param { ?Length } value - Spacing between adjacent rows.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func rowsGap(value: ?Length): This

/**
 * Called to set number of GridItems to be preloaded (cached) in LazyForEach / Repeat.
 *
 * @param { ?Int32 } count - Number of grid items to preload beyond the visible area.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func cachedCount(count: ?Int32): This

/**
 * Called to set number of GridItems to be preloaded (cached) in LazyForEach / Repeat.
 *
 * @param { ?Int32 } count - Number of grid items to preload beyond the visible area.
 * @param { ?Bool } show - Whether to display cached items when clip is disabled.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func cachedCount(count: ?Int32, show: ?Bool): This
}

/**
 * Defines Grid attributes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface GridAttribute <: ScrollableCommonMethod<GridAttribute> {
/**
 * This parameter specifies the number of columns in the current grid layout.
 *
 * @param { ?String } value - String specifying the number of columns and their proportional distribution.
 * @returns { GridAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func columnsTemplate(value: ?String): GridAttribute

/**
 * Lets you set the number of rows in the current grid layout.
 *
 * @param { ?String } value - String specifying the number of rows and their proportional distribution.
 * @returns { GridAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func rowsTemplate(value: ?String): GridAttribute

/**
 * Allows you to set the spacing between columns.
 *
 * @param { ?Length } value - Spacing between adjacent columns.
 * @returns { GridAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func columnsGap(value: ?Length): GridAttribute

/**
 * Lets you set the spacing between rows.
 *
 * @param { ?Length } value - Spacing between adjacent rows.
 * @returns { GridAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func rowsGap(value: ?Length): GridAttribute

/**
 * Called to set number of GridItems to be preloaded (cached) in LazyForEach / Repeat.
 *
 * @param { ?Int32 } count - Number of grid items to preload beyond the visible area.
 * @returns { GridAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func cachedCount(count: ?Int32): GridAttribute

/**
 * Called to set number of GridItems to be preloaded (cached) in LazyForEach / Repeat.
 *
 * @param { ?Int32 } count - Number of grid items to preload beyond the visible area.
 * @param { ?Bool } show - Whether to display cached items when clip is disabled.
 * @returns { GridAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func cachedCount(count: ?Int32, show: ?Bool): GridAttribute
}