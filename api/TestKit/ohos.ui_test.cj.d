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

package ohos.ui_test
import ohos.labels.*
import ohos.base.*
import ohos.ffi.*
import std.convert.Parsable
import ohos.encoding.json.*
import std.convert.*
import ohos.ability_delegator_registry.*
import ohos.ability.*

import ohos.hilog.*
import std.collection.*
import std.sync.*
import ohos.bundle_manager.ApplicationInfo

@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class UITest {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public static func setup(): Unit
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class Driver {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public static func create(): Driver
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func delayMs(delayMs: Int32): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func findComponent(on: On): UIComponent
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func findComponents(on: On): Array<UIComponent>
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func findWindow(filter: WindowFilter): UiWindow
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func waitForComponent(on: On, time: Int32): UIComponent
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func assertComponentExist(on: On): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func pressBack(): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func triggerKey(keyCode: Int32): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func triggerCombineKeys(key0: Int32, key1: Int32, key2!: Option<Int32> = None): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func click(x: Int32, y: Int32): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func doubleClick(x: Int32, y: Int32): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func longClick(x: Int32, y: Int32): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func swipe(
        startx: Int32,
        starty: Int32,
        endx: Int32,
        endy: Int32,
        speed!: Int32 = 600
    ): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func drag(
        startx: Int32,
        starty: Int32,
        endx: Int32,
        endy: Int32,
        speed!: Int32 = 600
    ): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func screenCap(savePath: String): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func setDisplayRotation(rotation: DisplayRotation): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getDisplayRotation(): DisplayRotation
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func setDisplayRotationEnabled(enabled: Bool): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getDisplaySize(): Point
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getDisplayDensity(): Point
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func wakeUpDisplay(): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func pressHome(): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func waitForIdle(idleTime: Int32, timeout: Int32): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func injectMultiPointerAction(pointers: PointerMatrix, speed!: Int32 = 600): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func fling(fromP: Point, to: Point, stepLen: Int32, speed: Int32): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func fling(direction: UiDirection, speed: Int32): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func screenCapture(savePath: String, rect!: Option<Rect> = None): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func mouseClick(p: Point, btnId: MouseButton, key1!: Option<Int32> = None, key2!: Option<Int32> = None): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func mouseMoveTo(p: Point): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func createUIEventObserver(): UIEventObserver
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func mouseScroll(p: Point, down: Bool, d: Int32, key1!: Option<Int32> = None, key2!: Option<Int32> = None,
        speed!: Int32 = 20): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func mouseDoubleClick(p: Point, btnId: MouseButton, key1!: Option<Int32> = None, key2!: Option<Int32> = None): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func mouseLongClick(p: Point, btnId: MouseButton, key1!: Option<Int32> = None, key2!: Option<Int32> = None): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func mouseMoveWithTrack(fromP: Point, to: Point, speed!: Int32 = 600): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func mouseDrag(fromP: Point, to: Point, speed!: Int32 = 600): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func inputText(p: Point, text: String): Unit
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class PointerMatrix {
    /**
    * @brief  static create(fingers: number, steps: number): PointerMatrix
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public static func create(fingers: IntNative, steps: IntNative): PointerMatrix
    
    /**
    * @brief  setPoint(finger: number, step: number, point: Point): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func setPoint(fingers: IntNative, steps: IntNative, point: Point): Unit
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class UiWindow {
    /**
    * @brief  getBundleName(): Promise<string>
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getBundleName(): String
    
    /**
    * @brief  getBounds(): Promise<Rect>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getBounds(): Rect
    
    /**
    * @brief  getTitle(): Promise<string>
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getTitle(): String
    
    /**
    * @brief  getWindowMode(): Promise<WindowMode>
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getWindowMode(): WindowMode
    
    /**
    * @brief  isFocused(): Promise<boolean>
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isFocused(): Bool
    
    /**
    * @brief  focus(): Promise<void>
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func focus(): Unit
    
    /**
    * @brief  moveTo(x: number, y: number): Promise<void>
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func moveTo(x: IntNative, y: IntNative): Unit
    
    /**
    * @brief  resize(wide: number, height: number, direction: ResizeDirection): Promise<void>
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func resize(wide: IntNative, height: IntNative, direction: ResizeDirection): Unit
    
    /**
    * @brief  split(): Promise<void>
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func split(): Unit
    
    /**
    * @brief  maximize(): Promise<void>
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func maximize(): Unit
    
    /**
    * @brief  minimize(): Promise<void>
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func minimize(): Unit
    
    /**
    * @brief  resume(): Promise<void>
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func resume(): Unit
    
    /**
    * @brief  close(): Promise<void>
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func close(): Unit
    
    /**
    * @brief  isActive(): Promise<boolean>
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isActive(): Bool
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class On {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public init()
    
    /**
    * Specifies the text attribute of the target component. Multiple match patterns are supported.
    *
    * @param { String } txt - Component text, used to match the target component.
    * @param { MatchPattern } pattern - Match pattern. The default value is EQUALS.
    * @returns { On } On object that matches the text attribute of the target component.
    * @brief text(txt: string, pattern?: MatchPattern): On
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func text(txt: String, pattern!: MatchPattern = MatchPattern.EQUALS): On
    
    /**
    * Specifies the ID attribute of the target component.
    *
    * @param { String } id - Component ID.
    * @returns { On } On object that matches the ID attribute of the target component.
    * @brief id(id: string): On
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func id(id: String): On
    
    /**
    * Specifies the type attribute of the target component.
    *
    * @param { String } tp - Component type.
    * @returns { On } On object that matches the type attribute of the target component.
    * @brief type(tp: string): On
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func onType(tp: String): On
    
    /**
    * Specifies the description for the target Component.
    *
    * @param { String } val - the description value.
    * @param { MatchPattern } [pattern] - the {@link MatchPattern} of description value,set it default {@link MatchPattern.EQUALS} if null or undefined.
    * @returns { On } this {@link On} object.
    * @throws { BusinessError } 401 - if the input parameters are invalid.
    * @brief description(val: string, pattern?: MatchPattern): On
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func description(val: String, pattern!: ?MatchPattern = None): On
    
    /**
    * Specifies the clickable attribute of the target component.
    *
    * @param { Bool } b - Clickable status of the target component. The default value is true.
    *                     true: clickable; false: not clickable.
    * @returns { On } On object that matches the clickable attribute of the target component.
    * @brief clickable(b?: boolean): On
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func clickable(b!: Bool = true): On
    
    /**
    * Specifies the long-clickable attribute of the target component.
    *
    * @param { Bool } b - Long-clickable status of the target component. The default value is true.
    *                     true: long-clickable; false: not long-clickable.
    * @returns { On } On object that matches the long-clickable attribute of the target component.
    * @brief longClickable(b?: boolean): On
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func longClickable(b!: Bool = true): On
    
    /**
    * Specifies the scrollable attribute of the target component.
    *
    * @param { Bool } b - Scrollable status of the target component. The default value is true.
    *                     true: scrollable; false: not scrollable.
    * @returns { On } On object that matches the scrollable attribute of the target component.
    * @brief scrollable(b?: boolean): On
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func scrollable(b!: Bool = true): On
    
    /**
    * Specifies the enabled attribute of the target component.
    *
    * @param { Bool } b - Enabled status of the target component. The default value is true.
    *                     true: enabled; false: not enabled.
    * @returns { On } On object that matches the enabled attribute of the target component.
    * @brief enabled(b?: boolean): On
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func enabled(b!: Bool = true): On
    
    /**
    * Specifies the focused attribute of the target component.
    *
    * @param { Bool } b - Focused status of the target component. The default value is true.
    *                     true: focused; false: not focused.
    * @returns { On } On object that matches the focused attribute of the target component.
    * @brief focused(b?: boolean): On
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func focused(b!: Bool = true): On
    
    /**
    * Specifies the selected attribute of the target component.
    *
    * @param { Bool } b - Selected status of the target component. The default value is true.
    *                     true: selected; false: not selected.
    * @returns { On } On object that matches the selected attribute of the target component.
    * @brief selected(b?: boolean): On
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func selected(b!: Bool = true): On
    
    /**
    * Specifies the checked attribute of the target component.
    *
    * @param { Bool } b - Checked status of the target component. The default value is true.
    *                     true: checked; false: not checked.
    * @returns { On } On object that matches the checked attribute of the target component.
    * @brief checked(b?: boolean): On
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func checked(b!: Bool = true): On
    
    /**
    * Specifies the checkable attribute of the target component.
    *
    * @param { Bool } b - Checkable status of the target component. The default value is true.
    *                     true: checkable; false: not checkable.
    * @returns { On } On object that matches the checkable attribute of the target component.
    * @brief checkable(b?: boolean): On
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func checkable(b!: Bool = true): On
    
    /**
    * Specifies that the target component is located before the given attribute component.
    *
    * @param { On } on - Information about the attribute component.
    * @returns { On } On object.
    * @brief isBefore(on: On): On
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isBefore(on: On): On
    
    /**
    * Specifies that the target component is located after the given attribute component.
    *
    * @param { On } on - Information about the attribute component.
    * @returns { On } On object.
    * @brief isAfter(on: On): On
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isAfter(on: On): On
    
    /**
    * Specifies that the target component is located within the given attribute component.
    *
    * @param { On } on - Information about the attribute component.
    * @returns { On } On object.
    * @brief within(on: On): On
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func within(on: On): On
    
    /**
    * Specifies that the target component is located within the given application window.
    *
    * @param { String } bundleName - Bundle name of the application window.
    * @returns { On } On object.
    * @brief inWindow(bundleName: string): On
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func inWindow(bundleName: String): On
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class UIEventObserver {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func onceToastShow(callback: (UIElementInfo) -> Unit): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func onceDialogShow(callback: (UIElementInfo) -> Unit): Unit
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class UIComponent {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func click(): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func doubleClick(): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func longClick(): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getId(): String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getText(): String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getType(): String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getBounds(): Rect
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getBoundsCenter(): Point
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isClickable(): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isLongClickable(): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isChecked(): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isCheckable(): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isScrollable(): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isEnabled(): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isFocused(): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isSelected(): Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func inputText(text: String): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func clearText(): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func scrollSearch(on: On): UIComponent
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func scrollToTop(speed!: Int64 = 600): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func scrollToBottom(speed!: Int64 = 600): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func dragTo(target: UIComponent): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func pinchOut(scale: Float32): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func pinchIn(scale: Float32): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getDescription(): String
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public enum MatchPattern {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    EQUALS |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    CONTAINS |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    STARTS_WITH |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    ENDS_WITH |
    ...
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public enum DisplayRotation {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    ROTATION_0 |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    ROTATION_90 |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    ROTATION_180 |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    ROTATION_270 |
    ...
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public enum WindowMode {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    FULLSCREEN |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    PRIMARY |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    SECONDARY |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    FLOATING |
    ...
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public enum ResizeDirection {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    LEFT |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    RIGHT |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    UP |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    DOWN |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    LEFT_UP |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    LEFT_DOWN |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    RIGHT_UP |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    RIGHT_DOWN |
    ...
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public enum UiDirection {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    LEFT |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    RIGHT |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    UP |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    DOWN |
    ...
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public enum MouseButton {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    MOUSE_BUTTON_LEFT |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    MOUSE_BUTTON_RIGHT |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    MOUSE_BUTTON_MIDDLE |
    ...
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class Point {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public Point(
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Test.UiTest"
        ]
        public let x: IntNative,
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Test.UiTest"
        ]
        public let y: IntNative
    )
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class UIElementInfo {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public UIElementInfo(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Test.UiTest"
        ]
        public let bundleName: String,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Test.UiTest"
        ]
        public let componentType: String,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Test.UiTest"
        ]
        public let text: String
    )
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class WindowFilter {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public WindowFilter(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Test.UiTest"
        ]
        public let bundleName!: ?String = None,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Test.UiTest"
        ]
        public let title!: ?String = None,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Test.UiTest"
        ]
        public let focused!: ?Bool = None,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Test.UiTest"
        ]
        public let active!: ?Bool = None
    )
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class Rect {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public Rect(
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Test.UiTest"
        ]
        public let left: IntNative,
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Test.UiTest"
        ]
        public let top: IntNative,
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Test.UiTest"
        ]
        public let right: IntNative,
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Test.UiTest"
        ]
        public let bottom: IntNative
    )
}


