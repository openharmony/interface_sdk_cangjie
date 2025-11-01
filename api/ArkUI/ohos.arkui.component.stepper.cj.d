package ohos.arkui.component.stepper

import ohos.arkui.component.common.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * A component that provides step-by-step navigation for multi-step processes or wizards.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Stepper <: CommonMethodComponent<Stepper> & StepperAttribute {
/**
 * Initializes a Stepper component with optional initial index and child content.
 *
 * @param { ?UInt32 } [index] - Initial step index.
 * @param { () -> Unit } [child] - Builder function for Stepper content.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(index!: ?UInt32 = None, child!: () -> Unit = {=>})

/**
 * Callback when the finish label is clicked.
 * Triggered when the user clicks the finish button to complete all steps.
 *
 * @param { ?() -> Unit } callback - Callback function triggered when finish is clicked.
 * @returns { This } Returns the Stepper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onFinish(callback: ?() -> Unit): This

/**
 * Triggered when the user clicks the skip button to bypass the current step.
 *
 * @param { ?() -> Unit } callback - Callback function triggered when skip is clicked.
 * @returns { This } Returns the Stepper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onSkip(callback: ?() -> Unit): This

/**
 * Triggered when the step changes, either forward or backward.
 *
 * @param { ?(UInt32, UInt32) -> Unit } callback - Callback function triggered when step changes.
 * The first parameter is the index of previous step, and the second parameter is the index of current step.
 * @returns { This } Returns the Stepper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onChange(callback: ?(UInt32, UInt32) -> Unit): This

/**
 * Triggered when the user clicks the next button to proceed to the next step.
 *
 * @param { ?(UInt32, UInt32) -> Unit } callback - Callback function triggered when next is clicked.
 * The first parameter is the index of current step, and the second parameter is the index of next step.
 * @returns { This } Returns the Stepper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onNext(callback: ?(UInt32, UInt32) -> Unit): This

/**
 * Triggered when the user clicks the previous button to go back to the previous step.
 *
 * @param { ?(UInt32, UInt32) -> Unit } callback - Callback function triggered when previous is clicked.
 * The first parameter is the index of current step, and the second parameter is the index of previous step.
 * @returns { This } Returns the Stepper instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onPrevious(callback: ?(UInt32, UInt32) -> Unit): This
}

/**
 * Defines the Stepper attribute functions.
 * Provides methods for configuring the behavior of the Stepper component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface StepperAttribute <: CommonMethod<StepperAttribute> {
/**
 * Triggered when the user clicks the finish button to complete all steps.
 *
 * @param { ?() -> Unit } callback - Callback function triggered when finish is clicked.
 * @returns { StepperAttribute } Returns the stepper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onFinish(callback: ?() -> Unit): StepperAttribute

/**
 * Triggered when the user clicks the skip button to bypass the current step.
 *
 * @param { ?() -> Unit } callback - Callback function triggered when skip is clicked.
 * @returns { StepperAttribute } Returns the stepper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onSkip(callback: ?() -> Unit): StepperAttribute

/**
 * Triggered when the step changes, either forward or backward.
 *
 * @param { ?(UInt32, UInt32) -> Unit } callback - Callback function triggered when step changes.
 * The first parameter is the index of previous step, and the second parameter is the index of current step.
 * @returns { StepperAttribute } Returns the stepper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onChange(callback: ?(UInt32, UInt32) -> Unit): StepperAttribute

/**
 * Triggered when the user clicks the next button to proceed to the next step.
 *
 * @param { ?(UInt32, UInt32) -> Unit } callback - Callback function triggered when next is clicked.
 * The first parameter is the index of current step, and the second parameter is the index of next step.
 * @returns { StepperAttribute } Returns the stepper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onNext(callback: ?(UInt32, UInt32) -> Unit): StepperAttribute

/**
 * Triggered when the user clicks the previous button to go back to the previous step.
 *
 * @param { ?(UInt32, UInt32) -> Unit } callback - Callback function triggered when previous is clicked.
 * The first parameter is the index of current step, and the second parameter is the index of previous step.
 * @returns { StepperAttribute } Returns the stepper attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onPrevious(callback: ?(UInt32, UInt32) -> Unit): StepperAttribute
}