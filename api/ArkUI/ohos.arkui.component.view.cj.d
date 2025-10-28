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

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

package ohos.arkui.component.view
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.base.*
import ohos.labels.APILevel
import std.collection.HashMap

import std.collection.ArrayList
import ohos.ffi.*
import ohos.arkui.state_management.*
import std.math.*
import ohos.arkui.component.ifcomponent.*
import ohos.arkui.component.custom_view.*
import ohos.arkui.ui_context.*
import std.sort.*
import std.collection.*
import ohos.arkui.state_management.ObservedArrayList
import ohos.hilog.*
import ohos.ark_interop.*
import ohos.arkui.component.lazy_for_each.*

/**
* CJEntry is a singleton class, it provides global functions to be accessed by native.
*
*  current usages:
*   1. pass all cj @C functions to native.
*   2. keep the application entry registered by application developer, and provide them to native
*   3. provide native methods to control lifecycle of FFIData objects
*   4. provide native method to throw CJ error
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CJEntry {
    /**
    * Get CJEntry instance.
    *
    * @return { CJEntry }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func getInstance(): CJEntry
    
    /**
    * Register entry by name.
    * @param { String } name
    * @param { () -> Bool } call
    * @return { CJEntry }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func registerEntry(name: String, call: () -> Bool): Unit
}



@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class View <: ViewBase {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func create(view: View): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func create(remoteId: Int64): View
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func createRecycle(componentCall: View, isRecycling: Bool, reuseId: String, callback: () -> Unit)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func markNeedUpdate(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func needsUpdate(): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func markStatic(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func isStatic(): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func destroy(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func syncInstanceId(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func restoreInstanceId(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func finishUpdateFunc(elmtId: Int64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getDeletedElemtIds(): ArrayList<Int64>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func deletedElmtIdsHaveBeenPurged(elmtIds: ArrayList<Int64>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func isFirstRender(): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func resetRecycleCustomNode()
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ViewBuilder {
    public ViewBuilder(public let build: () -> Unit)
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func bind(builder: (CustomView) -> ViewBuilder, thisView: CustomView)


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func bind<T1>(builder: (CustomView, ObservedProperty<T1>) -> ViewBuilder, thisView: CustomView)


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func bind<T1, T2>(
    builder: (CustomView, ObservedProperty<T1>, ObservedProperty<T2>) -> ViewBuilder,
    thisView: CustomView
)


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func bind<T1, T2, T3>(
    builder: (CustomView, ObservedProperty<T1>, ObservedProperty<T2>, ObservedProperty<T3>) -> ViewBuilder,
    thisView: CustomView
)


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class LegalCallCheck {
    public static func check(_: ViewBuilder)
    
    public static func check(_: CustomView)
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func loadNativeView(view: CustomView): Bool


type UpdateFuncNew = (Int64, Bool) -> UINodeBase
type RecycleUpdateFunc = (Int64, Bool, ?CustomView) -> UINodeBase
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public abstract class CustomView <: RemoteView & Observer {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public let nativeView: View
    
    public var isReusable: Bool = false
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(parent: Option<CustomView>, localStorage: Option<LocalStorage>)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getLocalStorage(): LocalStorage
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func declareWatch<T>(propMember: ObservedProperty<T>, callBack: () -> Unit)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func build(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public override func forceCompleteRerender(deep: Bool): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func updateElement(elmtId: Int64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func updateDirtyElements()
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func purgeDeletedElmtIds(rmElmtIds: ArrayList<Int64>)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func forEachUpdateFunction<T>(
        elmtId: Int64,
        arr: CollectionEx<T>,
        itemGenFunc!: (T, Int64) -> Unit,
        keyGeneratorFunc!: (T, Int64) -> String = {
            realData: T, idx: Int64 => match (realData) {
                case realDataStr: ToString => idx.toString() + "_" + realDataStr.toString()
                case _ => idx.toString()
            }
        }
    ): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func observeComponentCreation(compilerAssignedUpdateFunc: UpdateFuncNew): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func observeRecycleComponentCreation(name: String, recycleUpdateFunc: RecycleUpdateFunc)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public override func aboutToReuseInternal(param: ReuseParams): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public override func aboutToRecycleInternal(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func delayCompleteRerender(deep: Bool)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func flushDelayCompleteRerender()
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func resetRecycleCustomNode()
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func createRecycle(view: CustomView, isRecycling: Bool, name: String, callback: () -> Unit)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func create(view: CustomView)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func addProvideVar(value: ObservedPropertyAbstract, name: String)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func initializeConsume(name: String): ObservedPropertyAbstract
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func notifyRead(stateInfo: String): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onStateUpdate(stateInfo: String, dependentElmtIds: ArrayList<Int64>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func id(): Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func markLazyForEachProcess(groupId: String): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func resetLazyForEachProcess(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func removeChildGroupById(groupId: String): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func addChildById(id: Int64, child: CustomView): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func removeChildById(id: Int64): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setParent(parent: Option<CustomView>): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func aboutToBeDeleted(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func ifElseBranchUpdateFunction(branchId: Int32, branchFunc: () -> Unit)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getUIContext(): UIContext
}


type KeyGenFuncType<T> = (T, Int64) -> String
type ItemGenFuncType<T> = (T, Int64) -> Unit
/**
* declare ForEachAttribute
*
* @relation declare class ForEachAttribute extends DynamicNode<ForEachAttribute>
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ForEach <: UINodeBase {
    /**
    * Set the value, array, and key.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func create<T>(viewID: Int64, parentView: CustomView, dataSource: CollectionEx<T>,
        itemGeneratorFunc!: ItemGenFuncType<T>,
        keyGeneratorFunc!: KeyGenFuncType<T> = {
            realData: T, idx: Int64 => match (realData) {
                case realDataStr: ToString => realDataStr.toString()
                case _ => idx.toString()
            }
        }): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func create()
    
    @!APILevel[
        21,
        atomicservice: true,
        deprecated: 12,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(subcomponent: () -> Unit)
    
    @!APILevel[
        21,
        atomicservice: true,
        deprecated: 12,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func pop(): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        deprecated: 12,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func initial(): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        deprecated: 12,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func update(): Unit
}


public class CJPageEntry {
    public static func getInstance(): CJPageEntry
    
    public func registerHybridPage(name: String, cjPage: CustomView): Unit
    
    public func removeHybridPage(name: String): Unit
}

public open class HybridComponentBase <: SharedObject {
    public static func registerHybridComponent(compName: String, loadHandle: () -> CPointer<Unit>,
        unloadHandle: () -> Unit)
}

/**
* Enter the value to obtain the LazyForEach.
*
* @realtion interface LazyForEachInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class LazyForEach <: UINodeBase {
    /**
    * Enter the value to obtain the LazyForEach.
    *
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public LazyForEach()
    
    /**
    * Enter the value to obtain the LazyForEach.
    *
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func create<T>(viewID: Int64, parentView: CustomView, dataSource: IDataSource<T>,
        itemGeneratorFunc!: ItemGenFuncType<T>,
        keyGeneratorFunc!: KeyGenFuncType<T> = {
            _: T, idx: Int64 =>
            uniqueKey++
            return "${viewID} - ${idx} - ${uniqueKey}"
        }): LazyForEach
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func initial(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func update(): Unit
}


