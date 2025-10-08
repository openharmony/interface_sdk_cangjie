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

package ohos.arkui.ui_context
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.arkui.component.common.*

import ohos.business_exception.*
import ohos.animator.*
import ohos.prompt_action.*
import ohos.arkui.component.action_sheet.*
import ohos.arkui.component.alert_dialog.*
import ohos.arkui.component.native_struct.*
import ohos.font.*
import ohos.router.*
public import ohos.prompt_action.*
public import ohos.animator.*
public import ohos.font.*
public import ohos.router.*

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class MeasureOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        textContent!: String,
        fontWeight!: FontWeight = FontWeight.Normal,
        fontFamily!: String = "HarmonyOS Sans",
        constraintWidth!: ?Length = None,
        fontSize!: ?Length = 16.fp,
        lineHeight!: ?Length = None,
        baselineOffset!: ?Length = 0.0.vp,
        letterSpacing!: ?Length = None,
        textIndent!: ?Length = None,
        maxLines!: UInt32 = 0,
        textAlign!: TextAlign = TextAlign.Start,
        fontStyle!: FontStyle = FontStyle.Normal,
        overflow!: TextOverflow = TextOverflow.Clip,
        textCase!: TextCase = TextCase.Normal,
        wordBreak!: WordBreak = WordBreak.BreakWord
    )
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SizeOptions {
    public var width: Length = 0
    
    public var height: Length = 0
    
    public init(width!: Length = 0, height!: Length = 0)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PromptAction {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showToast(option: ShowToastOptions): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showDialog(option: ShowDialogOptions, callback!: ShowDialogCallBack = defaultCallback)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showActionMenu(option: ActionMenuOptions, callback!: ShowActionMenuCallBack = defaultCallback)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func openCustomDialog(options: CustomDialogOptions, callBack: (Int32) -> Unit): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func closeCustomDialog(dialogId: Int32): Unit
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class MeasureUtils {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func measureText(options: MeasureOptions): Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func measureTextSize(options: MeasureOptions): SizeOptions
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Font {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func registerFont(familyName!: ResourceStr, familySrc!: ResourceStr): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getSystemFontList(): Array<String>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getFontByName(fontName: String): ?FontInfo
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Router {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func pushUrl(url!: String, params!: String = ""): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func back(url!: ?String = None, params!: String = ""): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func back(index!: Int32, params!: String = ""): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getParams(): Option<String>
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class UIContext {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getPromptAction(): PromptAction
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getMeasureUtils(): MeasureUtils
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func createAnimator(options: AnimatorOptions): AnimatorResult
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func vp2px(value: Length): Option<Length>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func px2vp(value: Length): Option<Length>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func fp2px(value: Length): Option<Length>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func px2fp(value: Length): Option<Length>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func lpx2px(value: Length): Option<Length>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func px2lpx(value: Length): Option<Length>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getFont(): Font
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getRouter(): Router
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getContextMenuController(): ContextMenuController
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showAlertDialog(options: AlertDialogParamWithConfirm): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showAlertDialog(options: AlertDialogParamWithButtons): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showAlertDialog(options: AlertDialogParamWithOptions): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func showActionSheet(value: ActionSheetOptions): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func animateTo(value: AnimateParam, event: VoidCallback): Unit
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ContextMenuController {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func close(): Unit
}

