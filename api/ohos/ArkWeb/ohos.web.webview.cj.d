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

package ohos.web.webview
import ohos.ffi.{ RemoteDataLite, releaseFFIData}
import ohos.labels.APILevel

import ohos.business_exception.{ BusinessException, ERR_PARAMETER_ERROR}
import ohos.ffi.{ CArrString, cjArr2CArr}
import ohos.hilog.HilogChannel
import ohos.multimedia.image.PixelMap
import std.deriving.Derive
import ohos.base.ResourceStr
import ohos.labels.*
import ohos.ffi.*
import ohos.business_exception.{BusinessException, AsyncCallback, ERR_PARAMETER_ERROR}
import std.collection.HashSet
import ohos.arkui.component.util.transResourceMediaToString
import ohos.multimedia.image.*
import ohos.business_exception.{BusinessException, getUniversalErrorMsg}
import std.collection.*

/**
* Provides back and forward history list information method. related to {@link HistoryItem}.
*
* @relation interface BackForwardList
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class BackForwardList <: RemoteDataLite {
    /**
    * Current index in BackForwardList.
    *
    * @relation currentIndex: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public prop currentIndex: Int32
    
    /**
    * Size of in BackForwardList.
    *
    * @relation size: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public prop size: Int32
    
    /**
    * Get history entry at given index.
    *
    * @param { Int32 } index Index of back forward list entry.
    * @returns { HistoryItem } HistoryItem at given index in back forward list.
    * @throws { BusinessException } 401 - Invalid input parameter.
    * @relation getItemAtIndex(index: number): HistoryItem
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getItemAtIndex(index: Int32): HistoryItem
}


/**
* Provides methods for managing the web cookies.
*
* @relation class WebCookieManager
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class WebCookieManager {
    /**
    * Gets all cookies for the given URL.
    *
    * @param { String } url - The URL for which the cookies are requested.
    * @param { Bool } incognito - {@code true} gets all cookies for the given URL
    *                                in incognito mode; {@code false} otherwise.
    * @returns { string } - The cookie value for the given URL.
    * @throws { BusinessException } 401 - Invalid input parameter.
    * @throws { BusinessException } 17100002 - Invalid url.
    * @relation static fetchCookieSync(url: string, incognito?: boolean): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func fetchCookie(url: String, incognito!: Bool = false): String
    
    /**
    * Set a single cookie (key-value pair) for the given URL.
    *
    * @param { String } url - The URL for which the cookie is to be set.
    * @param { String } value - The cookie as a string, using the format of the 'Set-Cookie' HTTP response header.
    * @param { Bool } incognito - {@code true} gets all cookies for the given URL
    *                                in incognito mode; {@code false} otherwise.
    * @throws { BusinessException } 401 - Invalid input parameter.
    * @throws { BusinessException } 17100002 - Invalid url.
    * @throws { BusinessException } 17100005 - Invalid cookie value.
    * @relation static configCookieSync(url: string, value: string, incognito?: boolean): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func configCookie(url: String, value: String, incognito!: Bool = false): Unit
    
    /**
    * Set whether the instance should send and accept cookies.
    * By default this is set to be true.
    *
    * @param { Bool } accept - Whether the instance should send and accept cookies.
    * @relation static putAcceptCookieEnabled(accept: boolean): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func putAcceptCookieEnabled(accept: Bool): Unit
    
    /**
    * Get whether the instance can send and accept cookies.
    *
    * @returns { Bool } True if the instance can send and accept cookies else false.
    * @relation static isCookieAllowed(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func isCookieAllowed(): Bool
    
    /**
    * Set whether the instance should send and accept cookies.
    * By default this is set to be true.
    *
    * @param { Bool } accept - Whether the instance should send and accept cookies.
    * @relation static putAcceptThirdPartyCookieEnabled(accept: boolean): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func putAcceptThirdPartyCookieEnabled(accept: Bool): Unit
    
    /**
    * Get whether the instance can send and accept thirdparty cookies.
    *
    * @returns { Bool } True if the instance can send and accept thirdparty cookies else false.
    * @relation static isThirdPartyCookieAllowed(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func isThirdPartyCookieAllowed(): Bool
    
    /**
    * Check whether exists any cookies.
    *
    * @param { Bool } incognito - {@code true} check whether exists any cookies.
    *                                in incognito mode; {@code false} otherwise.
    * @returns { Bool } True if exists more than one cookie else false;
    * @relation static existCookie(incognito?: boolean): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func existCookie(incognito!: Bool = false): Bool
    
    /**
    * Remove all cookies.
    *
    * @param { Bool } incognito - {@code true} remove all cookies in incognito mode;
    *                                {@code false} otherwise.
    * @relation static clearAllCookiesSync(incognito?: boolean): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func clearAllCookies(incognito!: Bool = false): Unit
    
    /**
    * Delete the session cookies.
    *
    * @relation static clearSessionCookieSync(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func clearSessionCookie(): Unit
}


/**
* Defines the security level for the page.
*
* @relation enum SecurityLevel
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public enum SecurityLevel {
    /**
    * Unable to determine whether it is safe or not, the non-http/https protocol used.
    *
    * @relation NONE = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    NoneLevel |
    /**
    * Indicates the HTTPS protocol used by the page and the authentication is successful.
    *
    * @relation SECURE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    Secure |
    /**
    * The page is insecure. For example, the HTTP protocol is used or the HTTPS protocol
    * is used but use an legacy TLS version.
    *
    * @relation WARNING = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    Warning |
    /**
    * Attempted HTTPS and failed, the authentication is failed.
    *
    * @relation DANGEROUS = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    Dangerous |
    ...
}



/**
* Enum type supplied to {@link getHitTest} for indicating the cursor node HitTest.
*
* @relation enum WebHitTestType
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public enum WebHitTestType {
    /**
    * The edit text.
    *
    * @relation EditText = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    EditText |
    /**
    * The email address.
    *
    * @relation Email = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    Email |
    /**
    * Other unknown HitTest.
    *
    * @relation Unknown = 7
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    Unknown |
    ...
}



/**
* Defines the Web's request/response header.
*
* @relation interface WebHeader
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class WebHeader {
    /**
    * Gets the key of the request/response header.
    *
    * @relation headerKey: string
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
    * @relation headerValue: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var headerValue: String
    
    /**
    * WebHeader constructor.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(headerKey: String, headerValue: String)
}


/**
* Provides element information of the click area. related to {@link getLastHitTest} method.
*
* @relation interface HitTestValue
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class HitTestValue {
    /**
    * Get the hit test type.
    *
    * @relation type: WebHitTestType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var hitTestType: WebHitTestType
    
    /**
    * Get the hit test extra data.
    * If the clicked area is an image or a link, the additional parameter information is it's URL address.
    *
    * @relation extra: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var extra: String
}


/**
* Provides information for history item in BackForwardList.
*
* @relation interface HistoryItem
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class HistoryItem {
    /**
    * Pixelmap of icon.
    *
    * @relation icon: image.PixelMap
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public let icon: ?PixelMap
    
    /**
    * Url of this history item.
    *
    * @relation historyUrl: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var historyUrl: String
    
    /**
    * Original request url of this history item.
    *
    * @relation historyRawUrl: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var historyRawUrl: String
    
    /**
    * Title of this history item.
    *
    * @relation title: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var title: String
}


/**
* WebviewController can control various behaviors of Web components
* (including page navigation, declaring cycle state, JavaScript interaction and so on).
* A WebviewController object can only control one Web component,
* and methods on the Webviewcontroller (except static methods) can only be called
* after the web component is bound to the WebviewController.
*
* @relation class WebviewController
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class WebviewController <: RemoteDataLite {
    /**
    * A constructor used to create a WebviewController object.
    *
    * @param { String } [webTag] - specified the name of the web component, Empty by default.
    * @relation constructor(webTag?: string)
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(webTag!: ?String = None)
    
    /**
    * Enables debugging of web contents.
    * @param { Bool } webDebuggingAccess {@code true} enables debugging of web contents; {@code false} otherwise.
    * @throws { BusinessException } 401 - Invalid input parameter.
    * @relation static setWebDebuggingAccess(webDebuggingAccess: boolean): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func setWebDebuggingAccess(webDebuggingAccess: Bool): Unit
    
    /**
    * Loads the data or URL.
    *
    * @param { T } url - The URL to load. T should implement ResourceStr.
    * @throws { BusinessException } 401 - Invalid input parameter.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @throws { BusinessException } 17100002 - Invalid url.
    * @throws { BusinessException } 17100003 - Invalid resource path or file type.
    * @relation loadUrl(url: string | Resource, headers?: Array<WebHeader>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func loadUrl<T>(url: T, headers!: Array<WebHeader> = Array<WebHeader>()): Unit where T <: ResourceStr
    
    /**
    * Refreshes the current URL.
    *
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation refresh(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func refresh(): Unit
    
    /**
    * Gets the default user agent.
    *
    * @returns { String } Return user agent information.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation getUserAgent(): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getUserAgent(): String
    
    /**
    * Checks whether the web page can go back.
    *
    * @returns { Bool } True if the web page can go back else false.
    *                           The WebviewController must be associated with a Web component.
    * @throws { BusinessException } 17100001 - Init error.
    * @relation accessBackward(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func accessBackward(): Bool
    
    /**
    * Set custom user agent.
    *
    * @param { String } userAgent - User custom agent information.
    * @throws { BusinessException } 401 - Invalid input parameter.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation setCustomUserAgent(userAgent: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func setCustomUserAgent(userAgent: String): Unit
    
    /**
    * Get custom user agent.
    *
    * @returns { String } Get custom User agent information.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation getCustomUserAgent(): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getCustomUserAgent(): String
    
    /**
    * Loads a piece of code and execute JS code in the context of the currently displayed page.
    *
    * @param { String } script - JavaScript Script.
    * @param { AsyncCallback<String> } callback - Callbacks execute JavaScript script results.
    * @throws { BusinessException } 401 - Invalid input parameter.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation runJavaScript(script: string, callback: AsyncCallback<string>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func runJavaScript(script: String, callback: AsyncCallback<String>): Unit
    
    /**
    * Registers the JavaScript object and method list.
    *
    * @param { Array<(String) -> String>} funcs - Application side CJ funcs participating in registration.
    * @param { String } name - The name of the registered CJ funcs, which is consistent with the
    *                          object name called in the window.
    * @param { Array<String> } methodList - The method of the application side CJ funcs participating
    *                                       in the registration.
    * @throws { BusinessException } 401 - Invalid input parameter. Possible causes:
    * <br>1.the funcs and methodList must have the same size.
    * <br>2. the funcs' size be greater than 0.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation registerJavaScriptProxy(object: object, name: string, methodList: Array<string>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func registerJavaScriptProxy(funcs: Array<(String) -> String>, name: String, methodList: Array<String>): Unit
    
    /**
    * Gets the url of current Web page.
    *
    * @returns { String } Return the url of the current page.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation getUrl(): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getUrl(): String
    
    /**
    * Gets the original url of current Web page.
    *
    * @returns { String } Return the original url of the current page.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation getOriginalUrl(): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getOriginalUrl(): String
    
    /**
    * Scroll the contents of this Webview up by half the view size.
    *
    * @param { Bool } top - Whether to jump to the top of the page, if set to false,
    *                          the page content will scroll up half the size of the viewframe,
    *                          and when set to true, it will jump to the top of the page.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * relation pageUp(top: boolean): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func pageUp(top: Bool): Unit
    
    /**
    * Scroll the contents of this Webview down by half the view size.
    *
    * @param { Bool } bottom - Whether to jump to the top of the page, if set to false,
    *                             the page content will scroll up half the size of the viewframe,
    *                             and when set to true, it will jump to the top of the page.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * relation pageDown(bottom: boolean): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func pageDown(bottom: Bool): Unit
    
    /**
    * Scroll to the position.
    *
    * @param { Float32 } x - the x of the position.
    * @param { Float32 } y - the y of the position.
    * @param { Int32 } duration - the scroll animation duration. Unit: millisecond.
    * @throws { BusinessException } 401 - Invalid input parameter.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation scrollTo(x: number, y: number, duration?: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func scrollTo(x: Float32, y: Float32, duration!: ?Int32 = None): Unit
    
    /**
    * Scroll by the delta position.
    *
    * @param { Float32 } deltaX - the delta x of the position.
    * @param { Float32 } deltaY - the delta y of the position.
    * @param { Int32 } duration - the scroll animation duration. Unit: millisecond.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation scrollBy(deltaX: number, deltaY: number, duration?: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func scrollBy(deltaX: Float32, deltaY: Float32, duration!: ?Int32 = None): Unit
    
    /**
    * Goes forward in the history of the web page.
    *
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation forward(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func forward(): Unit
    
    /**
    * Goes back in the history of the web page.
    *
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation backward(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func backward(): Unit
    
    /**
    * Goes forward or back backOrForward in the history of the web page.
    *
    * @param { Int32 } step - Steps to go forward or backward.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation backOrForward(step: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func backOrForward(step: Int32): Unit
    
    /**
    * Gets the content height of current Web page.
    *
    * @returns { Int32 } Returns the page height of the current page.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation getPageHeight(): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getPageHeight(): Int32
    
    /**
    * Gets the title of current Web page.
    *
    * @returns { String } Return to File Selector Title.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation getTitle(): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getTitle(): String
    
    /**
    * Let the Web zoom by.
    *
    * @param { Int32 } factor - The zoom factor.
    * @throws { BusinessException } 401 - Invalid input parameter.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @throws { BusinessException } 17100004 - Function not enable.
    * @relation zoom(factor: number): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func zoom(factor: Float32): Unit
    
    /**
    * Let the Web zoom in.
    *
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @throws { BusinessException } 17100004 - Function not enable.
    * @relation zoomIn(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func zoomIn(): Unit
    
    /**
    * Let the Web zoom out.
    *
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @throws { BusinessException } 17100004 - Function not enable.
    * @relation zoomOut(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func zoomOut(): Unit
    
    /**
    * Gets the hit test value of HitTest.
    *
    * @returns { HitTestValue } Return the element information of the clicked area.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation getHitTestValue(): HitTestValue
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getHitTestValue(): HitTestValue
    
    /**
    * Clears the history in the Web.
    *
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation clearHistory(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func clearHistory(): Unit
    
    /**
    * Checks whether the web page can go back or forward the given number of steps.
    *
    * @param { Int32 } step - The number of steps.
    * @returns { Bool } True if the web page can go back else false.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation accessStep(step: number): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func accessStep(step: Int32): Bool
    
    /**
    * Gets the type of HitTest.
    *
    * @returns { WebHitTestType } The type of HitTest.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation getHitTest(): WebHitTestType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getHitTest(): WebHitTestType
    
    /**
    * Stores the current page as a web archive.
    *
    * @param { String } baseName - Where the generated offline webpage is stored, This value cannot be null.
    * @param { Bool } autoName - Decide whether to automatically generate the file name. If false, it is
    *                               stored by the file name of baseName. If true, the file name is
    *                               automatically generated based on the current URL and stored in the file
    *                               directory of baseName.
    * @param { AsyncCallback<String> } callback - called after the web archive has been stored. The parameter
    *                                             will either be the filename under which the file was stored,
    *                                             or empty if storing the file failed.
    * @throws { BusinessException } 401 - Invalid input parameter.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @throws { BusinessException } 17100003 - Invalid resource path or file type.
    * @relation storeWebArchive(baseName: string, autoName: boolean, callback: AsyncCallback<string>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func storeWebArchive(baseName: String, autoName: Bool, callback: AsyncCallback<String>): Unit
    
    /**
    * Enable the ability to check website security risks.
    * Illegal and fraudulent websites are mandatory enabled and can't be disabled by this function.
    *
    * @param { Bool } enable - {@code true} enable check the website security risks; {@code false} otherwise.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation enableSafeBrowsing(enable: boolean): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func enableSafeBrowsing(enable: Bool): Unit
    
    /**
    * Get whether checking website security risks is enabled.
    *
    * @returns { Bool } True if enable the ability to check website security risks else false.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation isSafeBrowsingEnabled(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func isSafeBrowsingEnabled(): Bool
    
    /**
    * Get the security level of the current page.
    *
    * @returns { SecurityLevel } the security level of current page.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation getSecurityLevel(): SecurityLevel
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getSecurityLevel(): SecurityLevel
    
    /**
    * Whether the incognito mode is set.
    *
    * @returns { Bool } {@code true} has been set the incognito mode; {@code false} otherwise.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation isIncognitoMode(): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func isIncognitoMode(): Bool
    
    /**
    * Remove resource cache in application. So this method will remove all cache for all web components in the
    * same application.
    *
    * @param { Bool } clearRom - Remove cache in both rom and ram if true. Otherwise only clear cache
    *                               in ram.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation removeCache(clearRom: boolean): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func removeCache(clearRom: Bool): Unit
    
    /**
    * Get back forward stack list from current webview.
    *
    * @returns { BackForwardList } Back forward list for current webview.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation getBackForwardEntries(): BackForwardList
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getBackForwardEntries(): BackForwardList
    
    /**
    * Stops the current load.
    *
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @relation stop(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func stop(): Unit
}


