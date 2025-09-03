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
import ohos.ffi.*

import ohos.labels.*
import ohos.business_exception.*
import ohos.hilog.*
import std.collection.*
import std.convert.Parsable
import ohos.encoding.json.*
import std.convert.*
import std.sync.*
import ohos.app.ability.ability_delegator_registry.*
import ohos.app.ability.ui_ability.*
import ohos.bundle.bundle_manager.ApplicationInfo
import ohos.callback_invoke.*
import std.deriving.*

/**
* The unified facade of UiTest framework,can be used to find Component,trigger keyEvents,perform
* coordinates-based UI actions,capture screen and so on.
*
* @relation declare class Driver
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class Driver {
    /**
    * Create an Driver object.
    *
    * @throws { BusinessException } 17000001 - Initialization failed.
    * @relation static create(): Driver
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public static func create(): Driver
    
    /**
    * Delay with specified duration.
    *
    * @param { Int32 } duration - the delay duration in milliseconds, not less than 0.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation delayMs(duration: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func delayMs(duration: Int32): Unit
    
    /**
    * Find the first matched Component on current UI.
    *
    * @returns { ?Component } the first matched Component or undefined.
    * @relation findComponent(on: On): Promise<Component|null>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func findComponent(on: On): ?Component
    
    /**
    * Find all the matched Components on current UI.
    *
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation findComponents(on: On): Promise<Array<Component>|null>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func findComponents(on: On): ?Array<Component>
    
    /**
    * Find the first matched UiWindow window.
    *
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation findWindow(filter: WindowFilter): Promise<UiWindow|null>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func findWindow(filter: WindowFilter): ?UiWindow
    
    /**
    * Find the first matched Component on current UI during the time given.
    *
    * @param { Int32 } time - duration of finding in milliseconds, not less than 0.
    * @returns { ?Component } the first matched Component or undefined.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation waitForComponent(on: On, time: number): Promise<Component|null>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func waitForComponent(on: On, time: Int32): ?Component
    
    /**
    * Assert t the matched Components exists on current UI;if not,assertError will be raised.
    *
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 17000003 - Assertion failed.
    * @relation assertComponentExist(on: On): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func assertComponentExist(on: On): Unit
    
    /**
    * Press the BACK key.
    *
    * @relation pressBack(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func pressBack(): Unit
    
    /**
    * Press the specified key.
    *
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation triggerKey(keyCode: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func triggerKey(keyCode: Int32): Unit
    
    /**
    * Press two or three key combinations
    *
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation triggerCombineKeys(key0: number, key1: number, key2?: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func triggerCombineKeys(key0: Int32, key1: Int32, key2!: Int32 = 0): Unit
    
    /**
    * Click on the specified location on the screen.
    *
    * @param { Int32 } x - the x-coordinate, not less than 0.
    * @param { Int32 } y - the y-coordinate, not less than 0.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation click(x: number, y: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func click(x: Int32, y: Int32): Unit
    
    /**
    * DoubleClick on the specified location on the screen.
    *
    * @param { Int32 } x - the x-coordinate, not less than 0.
    * @param { Int32 } y - the y-coordinate, not less than 0.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation doubleClick(x: number, y: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func doubleClick(x: Int32, y: Int32): Unit
    
    /**
    * LongClick on the specified location on the screen.
    *
    * @param { Int32 } x - the x-coordinate, not less than 0.
    * @param { Int32 } y - the y-coordinate, not less than 0.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation longClick(x: number, y: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func longClick(x: Int32, y: Int32): Unit
    
    /**
    * Swipe on the screen between the specified points.
    *
    * @param { Int32 } startx - the x-coordinate of the starting point, not less than 0.
    * @param { Int32 } starty - the y-coordinate of the starting point, not less than 0.
    * @param { Int32 } endx - the x-coordinate of the ending point, not less than 0.
    * @param { Int32 } endy - the y-coordinate of the ending point, not less than 0.
    * @param { Int32 } speed - the speed of swipe(pixels per second),ranges from 200 to 40000.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation swipe(startx: number, starty: number, endx: number, endy: number, speed?: number): Promise<void>
    */
    @!APILevel[
        21,
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
    
    /**
    * Drag on the screen between the specified points.
    *
    * @param { Int32 } startx - the x-coordinate of the starting point, not less than 0.
    * @param { Int32 } starty - the y-coordinate of the starting point, not less than 0.
    * @param { Int32 } endx - the x-coordinate of the ending point, not less than 0.
    * @param { Int32 } endy - the y-coordinate of the ending point, not less than 0.
    * @param { Int32 } [speed] the speed of drag(pixels per second),ranges from 200 to 40000.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation drag(startx: number, starty: number, endx: number, endy: number, speed?: number): Promise<void>
    */
    @!APILevel[
        21,
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
    
    /**
    * Capture current screen and save as picture which PNG format.
    *
    * @param { String } savePath - the path where to store the picture, must be in the application sandbox directory.
    * @returns { Bool } true if screen-capturing and file-storing are completed successfully,false otherwise.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation screenCap(savePath: string): Promise<boolean>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func screenCap(savePath: String): Bool
    
    /**
    * Set the rotation of the device display.
    *
    * @param { DisplayRotation } rotation - the target rotation to set.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation setDisplayRotation(rotation: DisplayRotation): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func setDisplayRotation(rotation: DisplayRotation): Unit
    
    /**
    * Get the rotation of the device display.
    *
    * @returns { DisplayRotation } the current display rotation.
    * @relation getDisplayRotation(): Promise<DisplayRotation>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getDisplayRotation(): DisplayRotation
    
    /**
    * Enable/disable the rotation of device display.
    *
    * @param { Bool } enabled - enable the rotation or not.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation setDisplayRotationEnabled(enabled: boolean): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func setDisplayRotationEnabled(enabled: Bool): Unit
    
    /**
    * Get the size of the device display.
    *
    * @returns { Point } the size of the device display.
    * @relation getDisplaySize(): Promise<Point>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getDisplaySize(): Point
    
    /**
    * Get the density of the device display.
    *
    * @returns { Point } the density of the device display.
    * @relation getDisplayDensity(): Promise<Point>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getDisplayDensity(): Point
    
    /**
    * Wake up the device display.
    *
    * @relation wakeUpDisplay(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func wakeUpDisplay(): Unit
    
    /**
    * Press the home key.
    *
    * @relation pressHome(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func pressHome(): Unit
    
    /**
    * Wait for the UI become idle.
    *
    * @param { Int32 } idleTime - the threshold of UI idle time, in millisecond, not less than 0.
    * @param { Int32 } timeout - the maximum time to wait for idle, in millisecond, not less than 0.
    * @returns { Bool } true if wait for idle succeed in the timeout, false otherwise.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation waitForIdle(idleTime: number, timeout: number): Promise<boolean>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func waitForIdle(idleTime: Int32, timeout: Int32): Bool
    
    /**
    * Inject multi-pointer action on the device display.
    *
    * @param { PointerMatrix } pointers - the two-dimensional array of pointers to inject.
    * @param { Int32 } [speed] - the speed of swipe(pixels per second),ranges from 200 to 40000. Set it default 600 if out of range or null or undefined.
    * @returns { Bool } true if the operation finished, false
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation injectMultiPointerAction(pointers: PointerMatrix, speed?: number): Promise<boolean>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func injectMultiPointerAction(pointers: PointerMatrix, speed!: Int32 = 600): Bool
    
    /**
    * Inject fling on the device display.
    *
    * @param { Point } from - the coordinate point where the finger touches the screen.
    * @param { Point } to - the coordinate point where the finger leaves the screen.
    * @param { Int32 } stepLen - the length of each step, in pixels.
    * @param { Int32 } speed - the speed of fling(pixels per second),ranges from 200 to 40000.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation fling(from: Point, to: Point, stepLen: number, speed: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func fling(from: Point, to: Point, stepLen: Int32, speed: Int32): Unit
    
    /**
    * Inject fling on the device display.
    *
    * @param { UiDirection } direction - the direction of this action.
    * @param { Int32 } speed - the speed of fling (pixels per second), default is 600.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation fling(direction: UiDirection, speed: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func fling(direction: UiDirection, speed: Int32): Unit
    
    /**
    * Capture the specified area of current screen and save as picture which PNG format.
    *
    * @param { String } savePath - the path where to store the picture, must be in the application sandbox directory.
    * @param { Rect } [rect] - the specified area of current screen, default to full screen.
    * @returns { Bool } true if screen-capturing and file-storing are completed successfully, false otherwise.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation screenCapture(savePath: string, rect?: Rect): Promise<boolean>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func screenCapture(savePath: String, rect!: Rect = Rect(0,0,0,0)): Bool
    
    /**
    * Click on the specified location on the screen with the specified mouse button, and press the specified key simultaneously if necessary.
    *
    * @param { Point } p - the coordinate of the specified location.
    * @param { MouseButton } btnId - the button of Mouse.
    * @param { Int32 } key1 - the first keyCode,set default is 0.
    * @param { Int32 } key2 - the second keyCode,set idefault is 0.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation mouseClick(p: Point, btnId: MouseButton, key1?: number, key2?: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func mouseClick(p: Point, btnId: MouseButton, key1!: Int32 = 0, key2!: Int32 = 0): Unit
    
    /**
    * Move the mouse cursor to the specified location.
    *
    * @param { Point } p - the coordinate of the specified location.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation mouseMoveTo(p: Point): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func mouseMoveTo(p: Point): Unit
    
    /**
    * Create an UIEventObserver object.
    *
    * @returns { UIEventObserver } the UIEventObserver object.
    * @relation createUIEventObserver(): UIEventObserver
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func createUIEventObserver(): UIEventObserver
    
    /**
    * The mouse wheel scrolls the specified cell at the specified position, and press the specified key simultaneously if necessary.
    *
    * @param { Point } p - the coordinate of the specified location.
    * @param { Bool } down - whether the mouse wheel rolls down.
    * @param { Int32 } d - the number of cells that the mouse wheel scrolls, each cell will make the target point shift 120 pixels.
    * @param { Int32 } key1 - the first keyCode, default is 0.
    * @param { Int32 } key2 - the second keyCode, default is 0.
    * @param { Int32 } speed - The Speed of mouse wheel rolls(cells per second),ranges from 1 to 500, default is 20.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation mouseScroll(p: Point, down: boolean, d: number, key1?: number, key2?: number, speed?: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func mouseScroll(p: Point, down: Bool, d: Int32, key1!: Int32 = 0, key2!: Int32 = 0, speed!: Int32 = 20): Unit
    
    /**
    * Double click on the specified location on the screen with the specified mouse button, and press the specified key simultaneously if necessary.
    *
    * @param { Point } p - the coordinate of the specified location.
    * @param { MouseButton } btnId - the button of Mouse.
    * @param { Int32 } key1 - the first keyCode, default is 0.
    * @param { Int32 } key2 - the second keyCode, default is 0.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation mouseDoubleClick(p: Point, btnId: MouseButton, key1?: number, key2?: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func mouseDoubleClick(p: Point, btnId: MouseButton, key1!: Int32 = 0, key2!: Int32 = 0): Unit
    
    /**
    * Long click on the specified location on the screen with the specified mouse button, and press the specified key simultaneously if necessary.
    *
    * @param { Point } p - the coordinate of the specified location.
    * @param { MouseButton } btnId - the button of Mouse.
    * @param { Int32 } key1 - the first keyCode, default is 0.
    * @param { Int32 } key2 - the second keyCode, default is 0.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation mouseLongClick(p: Point, btnId: MouseButton, key1?: number, key2?: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func mouseLongClick(p: Point, btnId: MouseButton, key1!: Int32 = 0, key2!: Int32 = 0): Unit
    
    /**
    * Swipe on the screen between the specified points with mouse.
    *
    * @param { Point } from - the starting point.
    * @param { Point } to - the ending point.
    * @param { Int32 } speed - speed of swipe (pixels per second),the value ranges from 200 to 40000, default is 600.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation mouseMoveWithTrack(from: Point, to: Point, speed?: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func mouseMoveWithTrack(from: Point, to: Point, speed!: Int32 = 600): Unit
    
    /**
    * Hold down the left mouse button and drag on the screen between the specified points.
    *
    * @param { Point } from - the starting point.
    * @param { Point } to - the ending point.
    * @param { Int32 } speed - speed of swipe (pixels per second),the value ranges from 200 to 40000, default is 600.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation mouseDrag(from: Point, to: Point, speed?: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func mouseDrag(from: Point, to: Point, speed!: Int32 = 600): Unit
    
    /**
    * Inject text on the specified location.
    *
    * @param { Point } p - the coordinate of the specified location.
    * @param { String } text - the text to inject.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation inputText(p: Point, text: string): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func inputText(p: Point, text: String): Unit
}


/**
* Represents a two-dimensional array of pointers on the device display, it's used to build a
* multi-finger trace which can be injected with UiDriver.
*
* @relation declare class PointerMatrix
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class PointerMatrix {
    /**
    * Create an PointerMatrix object.
    *
    * @param { Int32 } fingers - The number of fingers, ranges from 1 to 10.
    * @param { Int32 } steps - The number of steps of each finger trace, ranges from 1 to 1000.
    * @returns { PointerMatrix } the PointerMatrix object.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation static create(fingers: number, steps: number): PointerMatrix
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public static func create(fingers: Int32, steps: Int32): PointerMatrix
    
    /**
    * Set the point value of an element in the PointerMatrix.
    *
    * @param { Int32 } finger - the index of target finger to set.
    * @param { Int32 } step - the index of target step to set.
    * @param { Point } point - the coordinate of target step to set.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation setPoint(finger: number, step: number, point: Point): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func setPoint(finger: Int32, step: Int32, point: Point): Unit
}


/**
* Represents a window of the ohos application,user can perform operations or query attributes on it.
*
* @relation declare class UiWindow
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class UiWindow {
    /**
    * Get the bundle name of this UiWindow.
    *
    * @returns { String } the bundle name.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation getBundleName(): Promise<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getBundleName(): String
    
    /**
    * Get the bounds rect of this UiWindow.
    *
    * @returns { Rect } the bounds rect object.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation getBounds(): Promise<Rect>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getBounds(): Rect
    
    /**
    * Get the title of this UiWindow.
    *
    * @returns { String } the title value.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation getTitle(): Promise<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getTitle(): String
    
    /**
    * Get the window mode of this UiWindow.
    *
    * @returns { WindowMode } the WindowMode object
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation getWindowMode(): Promise<WindowMode>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getWindowMode(): WindowMode
    
    /**
    * Get the focused status of this UiWindow.
    *
    * @returns { Bool } the focused status
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation isFocused(): Promise<boolean>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isFocused(): Bool
    
    /**
    * Set the focused status of this UiWindow.
    *
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation focus(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func focus(): Unit
    
    /**
    * Move this UiWindow to the specified points.
    *
    * @param { Int32 } x - the x coordinate of destination, not less than 0.
    * @param { Int32 } y - the y coordinate of destination, not less than 0.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @throws { BusinessException } 17000005 - This operation is not supported.
    * @relation moveTo(x: number, y: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func moveTo(x: Int32, y: Int32): Unit
    
    /**
    * Resize this UiWindow to the specified size for the specified direction.
    *
    * @param { Int32 } wide - the expected wide of the window after resizing.
    * @param { Int32 } height - the expected height of the window after resizing.
    * @param { ResizeDirection } direction - the expected direction of the window after resizing.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @throws { BusinessException } 17000005 - This operation is not supported.
    * @relation resize(wide: number, height: number, direction: ResizeDirection): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func resize(wide: Int32, height: Int32, direction: ResizeDirection): Unit
    
    /**
    * Change this UiWindow into split screen mode.
    *
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @throws { BusinessException } 17000005 - This operation is not supported.
    * @relation split(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func split(): Unit
    
    /**
    * Maximize this UiWindow.
    *
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @throws { BusinessException } 17000005 - This operation is not supported.
    * @relation maximize(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func maximize(): Unit
    
    /**
    * Minimize this UiWindow.
    *
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @throws { BusinessException } 17000005 - This operation is not supported.
    * @relation minimize(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func minimize(): Unit
    
    /**
    * Resume this UiWindow.
    *
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @throws { BusinessException } 17000005 - This operation is not supported.
    * @relation resume(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func resume(): Unit
    
    /**
    * Close this UiWindow.
    *
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @throws { BusinessException } 17000005 - This operation is not supported.
    * @relation close(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func close(): Unit
    
    /**
    * Get the active status of this UiWindow.
    *
    * @returns { Bool } the active status.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation isActive(): Promise<boolean>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isActive(): Bool
}


/**
* Describes the attribute requirements for the target Components.
*
* @relation declare class On
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class On {
    /**
    * On constructor
    *
    */
    @!APILevel[
        21,
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
    * @relation text(txt: string, pattern?: MatchPattern): On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func text(txt: String, pattern!: MatchPattern = MatchPattern.Equals): On
    
    /**
    * Specifies the id of the target Component.
    *
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation id(id: string): On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func id(id: String): On
    
    /**
    * Specifies the type of the target Component.
    *
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation type(tp: string): On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func onType(tp: String): On
    
    /**
    * Specifies the description for the target Component.
    *
    * @param { MatchPattern } pattern - the MatchPattern of description value. The default value is EQUALS.
    * @throws { IllegalArgumentException } - if the input parameters are invalid.
    * @relation description(val: string, pattern?: MatchPattern): On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func description(val: String, pattern!: MatchPattern = MatchPattern.Equals): On
    
    /**
    * Specifies the clickable attribute of the target component.
    *
    * @param { Bool } b - Clickable status of the target component. The default value is true.
    *                     true: clickable; false: not clickable.
    * @returns { On } On object that matches the clickable attribute of the target component.
    * @relation clickable(b?: boolean): On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func clickable(b!: Bool = true): On
    
    /**
    * Specifies the longClickable status of the target Component.
    *
    * @param { Bool } b - the longClickable status. The default value is true.
    * @returns { On } this {@link On} object.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed.
    * @relation longClickable(b?: boolean): On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func longClickable(b!: Bool = true): On
    
    /**
    * Specifies the scrollable status of the target Component.
    *
    * @param { Bool } b - the scrollable status. The default value is true.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed.
    * @relation scrollable(b?: boolean): On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func scrollable(b!: Bool = true): On
    
    /**
    * Specifies the enabled status of the target Component.
    *
    * @param { Bool } b - the enabled status. The default value is true.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed.
    * @relation enabled(b?: boolean): On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func enabled(b!: Bool = true): On
    
    /**
    * Specifies the focused status of the target Component.
    *
    * @param { Bool } b - the focused status. The default value is true.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed.
    * @relation focused(b?: boolean): On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func focused(b!: Bool = true): On
    
    /**
    * Specifies the selected status of the target Component.
    *
    * @param { Bool } b the - selected status. The default value is true.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed.
    * @relation selected(b?: boolean): On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func selected(b!: Bool = true): On
    
    /**
    * Specifies the checked status of the target Component.
    *
    * @param { Bool } b - the checked status. The default value is true.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed.
    * @relation checked(b?: boolean): On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func checked(b!: Bool = true): On
    
    /**
    * Specifies the checkable status of the target Component.
    *
    * @param { Bool } b - the checkable status. The default value is true.
    * @throws { IllegalArgumentException } - Parameter error. 1. Incorrect parameter types; 2. Parameter verification failed.
    * @relation checkable(b?: boolean): On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func checkable(b!: Bool = true): On
    
    /**
    * Requires that the target Component which is before another Component that specified by the given On
    * object,used to locate Component relatively.
    *
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation isBefore(on: On): On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isBefore(on: On): On
    
    /**
    * Requires that the target Component which is after another Component that specified by the given On
    * object,used to locate Component relatively.
    *
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation isAfter(on: On): On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isAfter(on: On): On
    
    /**
    * Requires that the target Component which is inside of another Component that specified by the given On
    * object,used to locate Component relatively.
    *
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation within(on: On): On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func within(on: On): On
    
    /**
    * Specifies the bundleName of the application which the window that the target Component is located belongs.
    *
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation inWindow(bundleName: string): On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func inWindow(bundleName: String): On
}


/**
* The type of func once.
*
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public enum OnceType {
    /**
    * oastShow
    * 
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    ToastShow |
    /**
    * DialogShow
    * 
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    DialogShow |
    ...
}



/**
* Observer to monitor UI events.
* 
* @relation declare interface UIEventObserver
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class UIEventObserver {
    /**
    * Listen for toast show once
    * 
    * @param { OnceType } onceType - the type of func once.
    * @param { Callback<UIElementInfo> } callback - function, returns the monitored UIElementInfo.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @relation once(type: 'toastShow', callback: Callback<UIElementInfo>): void
    * @relation once(type: 'dialogShow', callback: Callback<UIElementInfo>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func once(onceType: OnceType, callback: Callback<UIElementInfo>): Unit
}


/**
* Represents a Component of the ohos application,user can perform operations or query attributes on it.
*
* @relation declare class Component 
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class Component {
    /**
    * Click this Component.
    *
    * @relation click(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func click(): Unit
    
    /**
    * Double click this Component.
    *
    * @returns { Unit }
    * @relation doubleClick(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func doubleClick(): Unit
    
    /**
    * Long click this Component.
    *
    * @returns { Unit }
    * @relation longClick(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func longClick(): Unit
    
    /**
    * Get the id attribute value.
    *
    * @relation getId(): Promise<number>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getId(): String
    
    /**
    * Get the text attribute value.
    *
    * @returns { String } the text value.
    * @relation getText(): Promise<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getText(): String
    
    /**
    * Get the type name.
    *
    * @returns { String } the type name.
    * @relation getType(): Promise<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getType(): String
    
    /**
    * Get the bounds rect of this Component.
    *
    * @returns { Rect } the bounds rect object.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation getBounds(): Promise<Rect>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getBounds(): Rect
    
    /**
    * Get the boundsCenter of this Component.
    *
    * @returns { Point } the boundsCenter object.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation getBoundsCenter(): Promise<Point>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getBoundsCenter(): Point
    
    /**
    * Get the clickable status of this Component.
    *
    * @returns { Bool } the clickable status.
    * @relation isClickable(): Promise<boolean>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isClickable(): Bool
    
    /**
    * Get the clickable status of this Component.
    *
    * @returns { Bool } the clickable status.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation isLongClickable(): Promise<boolean>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isLongClickable(): Bool
    
    /**
    * Get the checked status of this Component.
    *
    * @returns { Bool } the checked status.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation isChecked(): Promise<boolean>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isChecked(): Bool
    
    /**
    * Get the checkable status of this Component.
    *
    * @returns { Bool } the checkable status.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation isCheckable(): Promise<boolean>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isCheckable(): Bool
    
    /**
    * Get the scrollable status of this Component.
    *
    * @returns { Bool } the scrollable status.
    * @relation isScrollable(): Promise<boolean>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isScrollable(): Bool
    
    /**
    * Get the enabled status of this Component.
    *
    * @returns { Bool } the enabled status.
    * @relation isEnabled(): Promise<boolean>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isEnabled(): Bool
    
    /**
    * Get the focused status of this Component.
    *
    * @returns { Bool } the focused status.
    * @relation isFocused(): Promise<boolean>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isFocused(): Bool
    
    /**
    * Get the selected status of this Component.
    *
    * @returns { Bool } the selected status.
    * @relation isSelected(): Promise<boolean>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func isSelected(): Bool
    
    /**
    * Inject text to this Component,applicable to TextInput.
    *
    * @param { String } text The text to inject.
    * @relation inputText(text: string): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func inputText(text: String): Unit
    
    /**
    * Clear text of this Component,applicable to TextInput.
    *
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation clearText(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func clearText(): Unit
    
    /**
    * Scroll on this Componentto find matched Component,applicable to scrollable one.
    *
    * @param { On } on - the attribute requirements of the target Component.
    * @returns { ?Component } the found result,or undefined if not found.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation scrollSearch(on: On): Promise<Component|null>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func scrollSearch(on: On): ?Component
    
    /**
    * Scroll on this Component to the top,applicable to scrollable one.
    *
    * @param { Int64 } speed - the speed of swipe(pixels per second),ranges from 200 to 40000. The default value is 600.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation scrollToTop(speed?: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func scrollToTop(speed!: Int64 = 600): Unit
    
    /**
    * Scroll on this Component to the bottom,applicable to scrollable one.
    *
    * @param { Int64 } speed - the speed of swipe(pixels per second),ranges from 200 to 40000. The default value is 600.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation scrollToBottom(speed?: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func scrollToBottom(speed!: Int64 = 600): Unit
    
    /**
    * Drag this Component to the bounds rect of target Component.
    *
    * @param { Component } target - the target Component.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation dragTo(target: Component): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func dragTo(target: Component): Unit
    
    /**
    * Pinch enlarge this Component to the target scale.
    *
    * @param { Float32 } scale - the scale of the pinch enlarge this Component's size, ranges greater than 1.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation pinchOut(scale: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func pinchOut(scale: Float32): Unit
    
    /**
    * Pinch shrink this Component to the target scale.
    *
    * @param { Float32 } scale - the scale of the pinch shrink this Component's size, ranges from 0 to 1.
    * @throws { IllegalArgumentException } - Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation pinchIn(scale: number): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func pinchIn(scale: Float32): Unit
    
    /**
    * Get the description attribute value.
    *
    * @returns { String } the description value.
    * @throws { BusinessException } 17000004 - The window or component is invisible or destroyed.
    * @relation getDescription(): Promise<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public func getDescription(): String
}


/**
* Enumerates the string value match pattern.
*
* @relation declare enum MatchPattern
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public enum MatchPattern {
    /**
    * Equals to a string.
    * 
    * @relation EQUALS = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Equals |
    /**
    * Contains a substring.
    * 
    * @relation CONTAINS = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Contains |
    /**
    * StartsWith a substring.
    * 
    * @relation STARTS_WITH = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    StartsWith |
    /**
    * EndsWith a substring.
    * 
    * @relation ENDS_WITH = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    EndsWith |
    ...
}


/**
* Enumerates the rotation of the device display.
*
* @relation declare enum DisplayRotation
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public enum DisplayRotation {
    /**
    * Device display does not rotate to display vertically.
    * 
    * @relation ROTATION_0 = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Rotation0 |
    /**
    * Device display rotates 90 degrees clockwise to display horizontally.
    * 
    * @relation ROTATION_90 = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Rotation90 |
    /**
    * Device display rotates clockwise 180 degrees to display vertically in reverse.
    * 
    * @relation ROTATION_180 = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Rotation180 |
    /**
    * Device display rotates 270 degrees clockwise to display horizontally in reverse.
    * 
    * @relation ROTATION_270 = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Rotation270 |
    ...
}


/**
* Enumerates the window mode of the tested window.
*
* @relation declare enum WindowMode
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public enum WindowMode {
    /**
    * The test window is a full screen window.
    * 
    * @relation FULLSCREEN = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Fullscreen |
    /**
    * The test window is the first window in the split screen state.
    * 
    * @relation PRIMARY = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Primary |
    /**
    * The test window is the second window in the split screen state.
    * 
    * @relation SECONDARY = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Secondary |
    /**
    * The test window is a floating window.
    * 
    * @relation FLOATING = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Floating |
    ...
}


/**
* Enumerates the resize direction for the window.
*
* @relation declare enum ResizeDirection
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public enum ResizeDirection {
    /**
    * Left.
    * 
    * @relation LEFT = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Left |
    /**
    * Right.
    * 
    * @relation RIGHT = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Right |
    /**
    * Up.
    * 
    * @relation UP = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Up |
    /**
    * Down.
    * 
    * @relation DOWN = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Down |
    /**
    * Upper left.
    * 
    * @relation LEFT_UP = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    LeftUp |
    /**
    * Lower left.
    * 
    * @relation LEFT_DOWN = 5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    LeftDown |
    /**
    * Upper right.
    * 
    * @relation RIGHT_UP = 6
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    RightUp |
    /**
    * Lower right.
    * 
    * @relation RIGHT_DOWN = 7
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    RightDown |
    ...
}


/**
* Enumerates the direction for the UI operation .
*
* @relation declare enum UiDirection
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public enum UiDirection {
    /**
    * Left.
    * 
    * @relation LEFT = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Left |
    /**
    * Right.
    * 
    * @relation RIGHT = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Right |
    /**
    * Up.
    * 
    * @relation UP = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Up |
    /**
    * Down.
    * 
    * @relation DOWN = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    Down |
    ...
}


/**
* Enumerates the id of the button on the mouse.
*
* @relation declare enum MouseButton
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public enum MouseButton {
    /**
    * Left button of the mouse.
    * 
    * @relation MOUSE_BUTTON_LEFT = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    MouseButtonLeft |
    /**
    * Right button of the mouse.
    * 
    * @relation MOUSE_BUTTON_RIGHT = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    MouseButtonRight |
    /**
    * Middle button of the mouse.
    * 
    * @relation MOUSE_BUTTON_MIDDLE = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    MouseButtonMiddle |
    ...
}


/**
* Represents the point on the device screen.
*
* @relation declare interface Point
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class Point {
    /**
    * The x-coordinate of the coordinate point.
    *
    * @relation x: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var x: Int32
    
    /**
    * The y-coordinate of the coordinate point.
    *
    * @relation y: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var y: Int32
    
    /**
    * The displayId to which the coordinate point belongs, default is the displayId of the main scrren.
    *
    * @relation displayId?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var displayId: ?Int32
    
    /**
    * Point constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public init(x: Int32, y: Int32, displayId!: ?Int32 = None)
}


/**
* Represents the information of an UI element, can be a component or window.
*
* @relation declare interface UIElementInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class UIElementInfo {
    /**
    * The bundle name of the host application.
    *
    * @relation readonly bundleName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public let bundleName: String
    
    /**
    * The component type, set it as 'window' if it's a window.
    *
    * @relation readonly type: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public let componentType: String
    
    /**
    * The text of component, set it as window's title if it's a window.
    *
    * @relation readonly text: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public let text: String
}


/**
* Represents filer condition to get the window.
*
* @relation declare interface WindowFilter
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class WindowFilter {
    /**
    * The package name of the application which the window belongs to.
    * 
    * @relation bundleName?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var bundleName: ?String
    
    /**
    * The title of the window.
    * 
    * @relation title?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var title: ?String
    
    /**
    * The focal state of the window.
    * 
    * @relation focused?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var focused: ?Bool
    
    /**
    * The active state of the window.
    * 
    * @relation actived?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var active: ?Bool
    
    /**
    * Find the window in the specified ID display. By default, it searches all displays.
    * 
    * @relation displayId?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var displayId: ?Int32
    
    /**
    * WindowFilter constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public init(bundleName!: ?String = None, title!: ?String = None, focused!: ?Bool = None, active!: ?Bool = None, displayId!: ?Int32 = None)
}


/**
* Represents the rectangle area on the device screen.
*
* @relation declare interface Rect
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Test.UiTest"
]
public class Rect {
    /**
    * The x-coordinate of the top left corner of the rectangle.
    * 
    * @relation left: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var left: Int32
    
    /**
    * The y-coordinate of the top left corner of the rectangle.
    * 
    * @relation top: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var top: Int32
    
    /**
    * The x-coordinate at the bottom right corner of the rectangle.
    * 
    * @relation right: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var right: Int32
    
    /**
    * The y-coordinate at the bottom right corner of the rectangle.
    * 
    * @relation bottom: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var bottom: Int32
    
    /**
    * The displayId to which the rect belongs, default is the displayId of the main screen.
    * 
    * @relation displayId?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public var displayId: ?Int32
    
    /**
    * Rect constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Test.UiTest"
    ]
    public init(left: Int32, top: Int32, right: Int32, bottom: Int32, displayId!: ?Int32 = None)
}


