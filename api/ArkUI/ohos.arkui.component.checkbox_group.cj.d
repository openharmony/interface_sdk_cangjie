package ohos.arkui.component.checkbox_group

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import std.collection.ArrayList

/**
 * Defines a CheckboxGroup callback when onChange.
 *
 * @param { CheckboxGroupResult } value - checkbox group result.
 */
public type OnCheckboxGroupChangeCallback = (CheckboxGroupResult) -> Unit

/**
 * Defines the options of CheckboxGroupResult.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CheckboxGroupResult {
/**
 * Checkbox name.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var name: Array<String>

/**
 * Set the group of status.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var status: SelectStatus


/**
 * CheckboxGroupResult constructor.
 * @param { SelectStatus } status - The selection status of the checkbox group.
 * @param { Array<String> } name - The names of the selected checkboxes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        status: SelectStatus,
        name: Array<String>
    )
}

/**
 * Defines CheckboxGroup Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CheckboxGroup <: CommonMethodComponent<CheckboxGroup> & CheckboxGroupAttribute {
/**
 * CheckboxGroup Constructor.
 *
 * @param { ?String } [group] - The group name of the checkbox group.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(group!: ?String = None)

/**
 * Set whether all checkbox is selected.
 *
 * @param { ?Bool } isAllSelected - Whether to select all checkboxes.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectAll(isAllSelected: ?Bool): This

/**
 * Set the display color of checkbox.
 *
 * @param { ?ResourceColor } value - The color to display when checkboxes are selected.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectedColor(value: ?ResourceColor): This

/**
 * Called when the selection status changes.
 *
 * @param { ?OnCheckboxGroupChangeCallback } callback - The callback function triggered when the selection status changes, with the new selection result as parameter.
 * @returns { This } The instance of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onChange(callback: ?OnCheckboxGroupChangeCallback): This
}

/**
 * Defines the CheckboxGroup component attributes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface CheckboxGroupAttribute <: CommonMethod<CheckboxGroupAttribute> {
/**
 * Set whether all checkbox is selected.
 *
 * @param { ?Bool } isAllSelected - Whether to select all checkboxes.
 * @returns { CheckboxGroupAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func selectAll(isAllSelected: ?Bool): CheckboxGroupAttribute

/**
 * Set the display color of checkbox.
 *
 * @param { ?ResourceColor } value - The color to display when checkboxes are selected.
 * @returns { CheckboxGroupAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func selectedColor(value: ?ResourceColor): CheckboxGroupAttribute

/**
 * Called when the selection status changes.
 *
 * @param { ?OnCheckboxGroupChangeCallback } callback - The callback function triggered when the selection status changes, with the new selection result as parameter.
 * @returns { CheckboxGroupAttribute } The attribute of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onChange(callback: ?OnCheckboxGroupChangeCallback): CheckboxGroupAttribute
}