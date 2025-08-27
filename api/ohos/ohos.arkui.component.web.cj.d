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





/**
* Defines the triggered function at the begin of web page loading.
*
* @relation OnPageBeginEvent {url: string;}
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class OnPageBeginEvent {
    /**
    * The url of page.
    *
    * @relation url: string;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var url: String
    
    /**
    * Defines OnPageBeginEvent Component instance.
    * 
    * @param { String } url
    * @returns { This }
    * @relation init {url: string;}
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(url: String)
}


/**
* Defines the triggered function at the end of web page loading.
*
* @relation OnPageEndEvent {url: string;}
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class OnPageEndEvent {
    /**
    * The url of page.
    *
    * @relation url: string;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var url: String
    
    /**
    * Defines OnPageEndEvent Component instance.
    * 
    * @param { String } url
    * @returns { This }
    * @relation init {url: string;}
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(url: String)
}


/**
* Defines the triggered callback when the resources loading is intercepted.
*
* @relation OnLoadInterceptEvent {data: WebResourceRequest;}
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class OnLoadInterceptEvent {
    /**
    * The information of request.
    *
    * @relation data: WebResourceRequest;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var data: WebResourceRequest
    
    /**
    * Defines OnLoadInterceptEvent Component instance.
    * 
    * @param { WebResourceRequest } data
    * @returns { This }
    * @relation init {data: WebResourceRequest;}
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(data: WebResourceRequest)
}


/**
* Defines the Web's request/response header.
*
* @relation Header  { headerKey: string; headerValue: string; }
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class Header {
    /**
    * Gets the key of the request/response header.
    *
    * @relation headerKey: string;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var headerKey: String
    
    /**
    * Gets the value of the request/response header.
    *
    * @relation headerValue: String
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var headerValue: String
}


/**
* Defines the Web resource request.
*
* @relation WebResourceRequest {constructor();getRequestHeader(): Array<Header>;
* getRequestUrl(): string;isRequestGesture(): boolean;isMainFrame(): boolean;
* isRedirect(): boolean;getRequestMethod(): string;}
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class WebResourceRequest {
    /**
    * Gets request headers.
    *
    * @returns { ArrayList<Header> }
    * @relation getRequestHeader(): Array<Header>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getRequestHeader(): Array<Header>
    
    /**
    * Gets the request URL.
    *
    * @returns { String }
    * @relation getRequestUrl(): string;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getRequestUrl(): String
    
    /**
    * Check whether the request is for getting the main frame.
    *
    * @returns { Bool }
    * @relation isMainFrame(): boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func isMainFrame(): Bool
    
    /**
    * Check whether the request redirects.
    *
    * @returns { Bool }
    * @relation isRedirect(): boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func isRedirect(): Bool
    
    /**
    * Check whether the request is associated with gesture.
    *
    * @returns { Bool }
    * @relation isRequestGesture(): boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func isRequestGesture(): Bool
    
    /**
    * Get request method.
    *
    * @returns { String }
    * @relation getRequestMethod(): string;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getRequestMethod(): String
}


/**
* Defines the triggered callback when the host application that web content from the specified origin is
*     attempting to access the resources.
*
* @relation OnPermissionRequestEvent { request: PermissionRequest; }
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class OnPermissionRequestEvent {
    /**
    * Defines the onPermissionRequest callback.
    *
    * @relation request: PermissionRequest;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var request: PermissionRequest
    
    /**
    * Defines OnPermissionRequestEvent Component instance.
    * 
    * @param { PermissionRequest } request
    * @returns { This }
    * @relation init {request: PermissionRequest;}
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(request: PermissionRequest)
}


/**
* Defines the onPermissionRequest callback, related to {@link onPermissionRequest} method.
*
* @relation PermissionRequest { constructor();deny(): void;getOrigin(): string;getAccessibleResource(): Array<string>;
* grant(resources: Array<string>): void;}
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class PermissionRequest {
    /**
    * Reject the request.
    * 
    * @returns { Unit }
    * @relation deny(): void;
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func deny(): Unit
    
    /**
    * Gets the source if the webpage that attempted to access the restricted resource.
    * 
    * @returns { String }
    * @relation getOrigin(): string;
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getOrigin(): String
    
    /**
    * Obtains the list of accessible resources requested for the web page.
    * 
    * @returns { Array<String> }
    * @relation getAccessibleResource(): Array<string>;
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getAccessibleResource(): Array<String>
    
    /**
    * Grant origin access to a given resource.
    * 
    * @param { Array<string> } resources
    * @returns { Unit }
    * @relation grant(resources: Array<string>): void;
    */
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
    
    /**
    * Sets whether to enable access to the file system in the application.
    *
    * @param { Bool } fileAccess
    * @returns { This }
    * @relation fileAccess(fileAccess: boolean): WebAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func fileAccess(fileAccess: Bool): This
    
    /**
    * Sets whether to enable the DOM Storage API. By default, this feature is disabled.
    *
    * @param { Bool } domStorageAccess
    * @returns { This }
    * @relation domStorageAccess(domStorageAccess: boolean): WebAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func domStorageAccess(domStorageAccess: Bool): This
    
    /**
    * Sets whether to enable automatic image loading.
    *
    * @param { Bool } imageAccess
    * @returns { This }
    * @relation imageAccess(imageAccess: boolean): WebAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func imageAccess(imageAccess: Bool): This
    
    /**
    * Sets whether to enable access to online images through HTTP and HTTPS.
    *
    * @param { Bool } onlineImageAccess
    * @returns { This }
    * @relation onlineImageAccess(onlineImageAccess: boolean): WebAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func onlineImageAccess(onlineImageAccess: Bool): This
    
    /**
    *  Sets the behavior when a secure origin attempts to load a resource from an insecure origin.
    *  The default is MixedMode.None, meaning not allow a secure origin to load content from an insecure origin.
    *
    * @param { MixMode } mixedMode
    * @returns { This }
    * @relation mixedMode(mixedMode: MixedMode): WebAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func mixedMode(mixedMode: MixedMode): This
    
    /**
    * Sets whether the Web supports zooming using gestures.
    *
    * @param { Bool } zoomAccess
    * @returns { This }
    * @relation zoomAccess(zoomAccess: boolean): WebAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func zoomAccess(zoomAccess: Bool): This
    
    /**
    * Set whether to enable geolocation access. By default, this feature is enabled.
    * For details, see Managing Location Permissions.
    *
    * @param { Bool } geolocationAccess
    * @returns { This }
    * @relation geolocationAccess(geolocationAccess: boolean): WebAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func geolocationAccess(geolocationAccess: Bool): This
    
    /**
    * Set whether paint vertical scroll bar, including the system default scrollbar and user-defined scrollbar.
    *
    * @param { Bool } verticalScrollBar
    * @returns { This }
    * @relation verticalScrollBarAccess(verticalScrollBar: boolean): WebAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func verticalScrollBarAccess(verticalScrollBar: Bool): This
    
    /**
    * Called to setting the nested scroll options.
    *
    * @param { NestedScrollMode } scrollForward scrollBackward
    * @returns { This }
    * @relation nestedScroll(value: NestedScrollOptions | NestedScrollOptionsExt): WebAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func nestedScroll(
        scrollForward!: NestedScrollMode,
        scrollBackward!: NestedScrollMode
    ): This
    
    /**
    * Triggered when the resources loading is intercepted.
    *
    * @param { Callback<OnLoadInterceptEvent, Bool> } callback
    * @returns { This }
    * @relation onLoadIntercept(callback: Callback<OnLoadInterceptEvent, boolean>): WebAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func onLoadIntercept(callback: Callback<OnLoadInterceptEvent, Bool>): This
    
    /**
    * Called when the web page starts to be loaded.
    *
    * @param { Callback<OnPageBeginEvent, Unit> } callback
    * @returns { This }
    * @relation onPageBegin(callback: Callback<OnPageBeginEvent>): WebAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func onPageBegin(callback: Callback<OnPageBeginEvent, Unit>): This
    
    /**
    * Triggered at the end of web page loading.
    *
    * @param { Callback<OnPageEndEvent, Unit> } callback
    * @returns { This }
    * @relation onPageEnd(callback: Callback<OnPageEndEvent>): WebAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func onPageEnd(callback: Callback<OnPageEndEvent, Unit>): This
    
    /**
    * Registers the supplied ArkTS object in javaScriptProxy into this Web component.
    *
    * @param { Array<(String) -> String> } funcList
    * @param { String } name
    * @param { Array<String> } methodList
    * @param { WebviewController } controller
    * @returns { This }
    * @relation javaScriptProxy(javaScriptProxy: JavaScriptProxy): WebAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func javaScriptProxy(funcList!: Array<(String) -> String>, name!: String, methodList!: Array<String>,
        controller!: WebviewController): This
    
    /**
    * Sets the web dark mode. By default, web dark mode is disabled. When it is enabled,
    * the Web component enables the dark theme defined for web pages
    * if the theme has been defined in prefers-color-scheme of a media query,
    * and remains unchanged otherwise. To enable the forcible dark mode, use this API with forceDarkAccess.
    *
    * @param { WebDarkMode } mode
    * @returns { This }
    * @relation darkMode(mode: WebDarkMode): WebAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func darkMode(mode: WebDarkMode): This
    
    /**
    * Sets whether to enable forcible dark mode for the web page.
    * This API is applicable only when dark mode is enabled in {@link darkMode}.
    *
    * @param { Bool } access
    * @returns { This }
    * @relation forceDarkAccess(access: boolean): WebAttribute;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func forceDarkAccess(access: Bool): This
}


