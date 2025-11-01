package ohos.arkui.component.stepper_item

import ohos.arkui.component.common.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * A component that represents a single step in a Stepper component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class StepperItem <: CommonMethodComponent<StepperItem> & StepperItemAttribute {
/**
 * Initializes a StepperItem component with child content.
 *
 * @param { () -> Unit } child - Builder function for StepperItem content.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(child: () -> Unit)

/**
 * The description text for the fallback text button at the bottom of the step navigator.
 *
 * @param { ?String } value - Text displayed on the previous step button.
 * @returns { This } Returns the StepperItem instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func prevLabel(value: ?String): This

/**
 * The description text for the next step text button at the bottom of the step navigator.
 *
 * @param { ?String } value - Text displayed on the next step button.
 * @returns { This } Returns the StepperItem instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func nextLabel(value: ?String): This

/**
 * Sets the display state of the Step Navigator nextLabel.
 * Configures the status of the step item, which affects its appearance and behavior.
 *
 * @param { ?ItemState } [value] - Display state of the step item.
 * @returns { This } Returns the StepperItem instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func status(value!: ?ItemState = None): This
}

/**
 * Provides methods for configuring the appearance and behavior of the StepperItem component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface StepperItemAttribute <: CommonMethod<StepperItemAttribute> {
/**
 * The description text for the fallback text button at the bottom of the step navigator.
 * Sets the label text for the previous step button.
 *
 * @param { ?String } value - Text displayed on the previous step button.
 * @returns { StepperItemAttribute } Returns the stepper item attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func prevLabel(value: ?String): StepperItemAttribute

/**
 * The description text for the next step text button at the bottom of the step navigator.
 *
 * @param { ?String } value - Text displayed on the next step button.
 * @returns { StepperItemAttribute } Returns the stepper item attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func nextLabel(value: ?String): StepperItemAttribute

/**
 * Configures the status of the step item, which affects its appearance and behavior.
 *
 * @param { ?ItemState } value - Display state of the step item.
 * @returns { StepperItemAttribute } Returns the stepper item attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func status(value!: ?ItemState): StepperItemAttribute
}