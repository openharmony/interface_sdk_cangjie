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

package ohos.arkui.component.web
import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.resource.*
import ohos.labels.APILevel
import ohos.web.webview.*
import std.collection.ArrayList





@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class OnPageBeginEvent {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var url: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(url: String)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class OnPageEndEvent {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var url: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(url: String)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class OnLoadInterceptEvent {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var data: WebResourceRequest
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(data: WebResourceRequest)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class Header {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var headerKey: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var headerValue: String
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class WebResourceRequest {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getRequestHeader(): Array<Header>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getRequestUrl(): String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func isMainFrame(): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func isRedirect(): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func isRequestGesture(): Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getRequestMethod(): String
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class OnPermissionRequestEvent {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var request: PermissionRequest
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(request: PermissionRequest)
}

@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class PermissionRequest {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func deny(): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getOrigin(): String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getAccessibleResource(): Array<String>
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func grant(resources: Array<String>): Unit
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class Web <: ViewBase {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(
        src!: ResourceStr,
        controller!: WebviewController
    )
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func fileAccess(fileAccess: Bool): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func domStorageAccess(domStorageAccess: Bool): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func imageAccess(imageAccess: Bool): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func onlineImageAccess(onlineImageAccess: Bool): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func mixedMode(mixedMode: MixedMode): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func zoomAccess(zoomAccess: Bool): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func geolocationAccess(geolocationAccess: Bool): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func verticalScrollBarAccess(verticalScrollBar: Bool): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func nestedScroll(
        scrollForward!: NestedScrollMode,
        scrollBackward!: NestedScrollMode
    ): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func onLoadIntercept(callback: Callback<OnLoadInterceptEvent, Bool>): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func onPageBegin(callback: Callback<OnPageBeginEvent, Unit>): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func onPageEnd(callback: Callback<OnPageEndEvent, Unit>): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func javaScriptProxy(funcList!: Array<(String) -> String>, name!: String, methodList!: Array<String>,
        controller!: WebviewController): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func darkMode(mode: WebDarkMode): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func forceDarkAccess(access: Bool): This
}

