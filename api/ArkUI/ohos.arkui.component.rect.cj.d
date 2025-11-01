package ohos.arkui.component.rect

import ohos.arkui.component.common.*
import ohos.arkui.component.shape.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * A shape component that renders a rectangular graphic element with optional rounded corners.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Rect <: CommonShapeMethodComponent<Rect> & RectAttribute {
/**
 * Initializes a Rect component with optional width and height.
 *
 * @param { ?Length } [width] - Width of the rectangle.
 * @param { ?Length } [height] - Height of the rectangle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(width!: ?Length = None, height!: ?Length = None)

/**
 * Set the corner radius width.
 * Configures the horizontal radius of the rectangle's rounded corners.
 *
 * @param { ?Length } value - Radius width of the rectangle corners.
 * @returns { This } Returns the Rect instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func radiusWidth(value: ?Length): This

/**
 * Set the corner radius height.
 * Configures the vertical radius of the rectangle's rounded corners.
 *
 * @param { ?Length } value - Radius height of the rectangle corners.
 * @returns { This } Returns the Rect instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func radiusHeight(value: ?Length): This

/**
 * Set the corner radius size.
 * Configures the radius of all rectangle corners with a single value.
 *
 * @param { ?Length } value - Radius of the rectangle corners.
 * @returns { This } Returns the Rect instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func radius(value: ?Length): This

/**
 * Set the corner radius size.
 * Configures the radius of each rectangle corner with individual values.
 *
 * @param { ?Array<Length> } value - Array of radius values for rectangle corners.
 * @returns { This } Returns the Rect instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func radius(value: ?Array<Length>): This

/**
 * Set the corner radius size.
 * Configures the radius width and height of each rectangle corner with individual values.
 *
 * @param { ?Array<(Length, Length)> } value - Array of radius values (width, height) for rectangle corners.
 * @returns { This } Returns itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func radius(value: ?Array<(Length, Length)>): This
}

/**
 * Defines Rect Component.
 * Provides methods for configuring the appearance and behavior of the Rect component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface RectAttribute <: CommonShapeMethod<RectAttribute> {
/**
 * Set the corner radius width.
 * Configures the horizontal radius of the rectangle's rounded corners.
 *
 * @param { ?Length } value - Radius width of the rectangle corners.
 * @returns { RectAttribute } Returns the rect attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func radiusWidth(value: ?Length): RectAttribute

/**
 * Configures the vertical radius of the rectangle's rounded corners.
 *
 * @param { ?Length } value - Radius height of the rectangle corners.
 * @returns { RectAttribute } Returns the rect attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func radiusHeight(value: ?Length): RectAttribute

/**
 * Configures the radius of all rectangle corners with a single value.
 *
 * @param { ?Length } value - Radius of the rectangle corners.
 * @returns { RectAttribute } Returns the rect attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func radius(value: ?Length): RectAttribute

/**
 * Configures the radius of each rectangle corner with individual values.
 *
 * @param { ?Array<Length> } value - Array of radius values for rectangle corners.
 * @returns { RectAttribute } Returns the rect attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func radius(value: ?Array<Length>): RectAttribute

/**
 * Set the corner radius size.
 * Configures the radius width and height of each rectangle corner with individual values.
 *
 * @param { ?Array<(Length, Length)> } value - Array of radius values (width, height) for rectangle corners.
 * @returns { RectAttribute } Returns the rect attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func radius(value: ?Array<(Length, Length)>): RectAttribute
}