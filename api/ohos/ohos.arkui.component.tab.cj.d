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

package ohos.arkui.component.tab
import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.ffi.*
import ohos.base.*
import ohos.resource.*
import ohos.labels.APILevel


/**
* Defines Tabs Component.
*
* @relation declare const Tabs: TabsInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Tabs <: ContainerBase {
    /**
    * Create a Tabs.
    *
    * @params { BarPosition } barPosition
    * @params { TabsController } controller
    * @params { Int32 } index
    * @params { () -> Unit } child
    * @returns { This }
    * @relation (options?: TabsOptions): TabsAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        barPosition!: BarPosition = BarPosition.Start,
        controller!: TabsController = TabsController(),
        index!: Int32 = -1,
        child!: () -> Unit = {=>}
    )
    
    /**
    * Called when the width of the bar graph is set.
    *
    * @param { Length } value - Width of the tab bar. If the set value is less than 0 
    * or greater than the width of the Tabs component, the default value is used.
    * @returns { This }
    * @relation barWidth(value: Length): TabsAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func barWidth(value: Length): This
    
    /**
    * Called when the height of the bar graph is set.
    *
    * @param { Length } value - Height of the tab bar. If the set value is less than 0 or
    * greater than the height of the Tabs component, the default value is used.
    * @returns { This }
    * @relation barHeight(value: Length): TabsAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func barHeight(value: Length): This
    
    /**
    * Sets whether to use vertical tabs.
    *
    * @param { Bool } value - Whether to use vertical tabs. Default value is false.
    * @returns { This }
    * @relation vertical(value: boolean): TabsAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func vertical(value: Bool): This
    
    /**
    * Sets whether the tabs are scrollable.
    *
    * @param { Bool } value - Whether the tabs are scrollable. Default value is true.
    * @returns { This }
    * @relaiton scrollable(value: boolean): TabsAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func scrollable(value: Bool): This
    
    /**
    * Sets the tab bar layout mode to BarMode.Fixed.
    *
    * @param { BarMode } value - The width of each tab is determined by equally dividing 
    * the number of tabs by the bar width (or bar height in the vertical layout).
    * @returns { This }
    * @relation barMode(value: BarMode.Fixed): TabsAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func barMode(value: BarMode): This
    
    /**
    * Sets the length of time required to complete the tab switching animation,
    * which is initiated by clicking a specific tab or by calling the changeIndex API of TabsController.
    *
    * @param { Float32 } value
    * @returns { This }
    * @relation animationDuration(value: number): TabsAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func animationDuration(value: Float32): This
    
    /**
    * Triggered when a tab is switched.
    * 
    * <p><strong>NOTE</strong>:
    * <br>This event is triggered when any of the following conditions is met:
    * 1. The swiping animation is completed, followed by tab switching.
    * 2. The Controller API is called.
    * 3. The attribute value is updated using a state variable.
    * 4. A tab is clicked.
    * </p>
    *
    * @param { Callback<Int32, Unit> } event
    * @return { This }
    * relation onChange(event: Callback<number>): TabsAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onChange(event: Callback<Int32, Unit>): This
}


/**
* Provides methods for switching tabs.
*
* @relation class TabsController
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TabsController <: RemoteDataLite {
    /**
    * TabsController constructor
    *
    * @relation constructor()
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()
    
    /**
    * Switches to the specified tab.
    *
    * @param { Int32 } value - Index of the tab. If this parameter is set to a value less than 0 
    * or greater than the maximum number, the default value 0 is used.
    * @returns { Unit }
    * @relation changeIndex(value: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func changeIndex(value: Int32): Unit
}


/**
* Defines TabContent Component.
*
* @relation declare const TabContent: TabContentInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TabContent <: ContainerBase {
    /**
    * Create a TabContent with child.
    *
    * @params { () -> Unit } child
    * returns { TabContent }
    * @relation (): TabContentAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(child: () -> Unit)
    
    /**
    * Create a TabContent.
    *
    * returns { TabContent }
    * @relation (): TabContentAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()
    
    /**
    * Sets the content displayed on the tab bar.
    * 
    * <p><strong>NOTE</strong>:
    * <br>If the content set exceeds the space provided by the tab bar, it will be clipped.
    * </p>
    *
    * @param { ResourceStr } content - Content displayed on the tab bar.
    * @returns { This }
    * @relation tabBar(options: string | Resource | CustomBuilder | TabBarOptions): TabContentAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func tabBar(content: ResourceStr): This
    
    /**
    * Sets the content displayed on the tab bar.
    * 
    * <p><strong>NOTE</strong>:
    * <br>The bottom tab style does not include an indicator.
    * <br>When an icon display error occurs, a gray blank block is displayed.
    * </p>
    *
    * @param { ResourceStr } icon - TabBar icon.
    * @param { ResourceStr } text - TabBar text.
    * @returns { This }
    * @relation tabBar(options: string | Resource | CustomBuilder | TabBarOptions): TabContentAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func tabBar(icon!: ResourceStr = "", text!: ResourceStr = ""): This
    
    /**
    * Sets the content displayed on the tab bar.
    * 
    * <p><strong>NOTE</strong>:
    * <br>If the content set exceeds the space provided by the tab bar, it will be clipped.
    * </p>
    *
    * @param { CustomBuilder } content - Content displayed on the tab bar.
    * @returns { This }
    * @relation tabBar(options: string | Resource | CustomBuilder | TabBarOptions): TabContentAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func tabBar(content: CustomBuilder): This
}


