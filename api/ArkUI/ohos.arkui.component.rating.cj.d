package ohos.arkui.component.rating

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * Defines Rating Component.
 * A component that allows users to rate by clicking or sliding stars, commonly used for product ratings or feedback collection.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Rating <: CommonMethodComponent<Rating> & RatingAttribute {
/**
 * Initializes a Rating component with optional initial rating value and indicator mode.
 *
 * @param { ?Float64 } rating - Current rating value.
 * @param { ?Bool } [indicator] - Whether the rating component is used as indicator (read-only mode).
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(rating!: ?Float64, indicator!: ?Bool = None)

/**
 * Set when the total number of stars.
 * 
 * @param { ?Int32 } value - Number of stars.
 * @returns { This } Returns the Rating instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func stars(value: ?Int32): This

/**
 * Set the step size of the operation rating value..
 *
 * @param { ?Float64 } value - Step size for rating changes.
 * @returns { This } Returns the Rating instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func stepSize(value: ?Float64): This

/**
 * Configures custom images for the rating stars.
 *
 * @param { ?ResourceStr } backgroundUri - Background URI option for unselected stars.
 * @param { ?ResourceStr } foregroundUri - Foreground URI option for selected stars.
 * @param { ?ResourceStr } [secondaryUri] - Secondary URI option for partially selected stars.
 * @returns { This } Returns the Rating instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func starStyle(backgroundUri!: ?ResourceStr, foregroundUri!: ?ResourceStr, secondaryUri!: ?ResourceStr = None): This

/**
 * Called when the star rating of the operation scoring bar changes.
 *
 * @param { ?(Float64) -> Unit } callback - Callback function when rating changes.
 * The parameter is the new rating value.
 * @returns { This } Returns the Rating instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onChange(callback: ?(Float64) -> Unit): This
}

/**
 * Defines the Rating component attributes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface RatingAttribute <: CommonMethod<RatingAttribute> {
/**
 * Set when the total number of stars.
 * 
 * @param { ?Int32 } value - Number of stars.
 * @returns { RatingAttribute } Returns the rating attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func stars(value: ?Int32): RatingAttribute

/**
 * Set the step size of the operation rating value.
 *
 * @param { ?Float64 } value - Step size for rating changes.
 * @returns { RatingAttribute } Returns the rating attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func stepSize(value: ?Float64): RatingAttribute

/**
 * Configures custom images for the rating stars.
 *
 * @param { ?ResourceStr } backgroundUri - Background URI option for unselected stars.
 * @param { ?ResourceStr } foregroundUri - Foreground URI option for selected stars.
 * @param { ?ResourceStr } secondaryUri - Secondary URI option for partially selected stars.
 * @returns { RatingAttribute } Returns the rating attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func starStyle(backgroundUri!: ?ResourceStr, foregroundUri!: ?ResourceStr, secondaryUri!: ?ResourceStr): RatingAttribute

/**
 * Called when the star rating of the operation scoring bar changes.
 *
 * @param { ?(Float64) -> Unit } callback - Callback function when rating changes.
 * The parameter is the new rating value.
 * @returns { RatingAttribute } Returns the rating attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onChange(callback: ?(Float64) -> Unit): RatingAttribute
}