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

package ohos.webview
import ohos.labels.*
import ohos.ffi.*
import ohos.base.*
import std.collection.*

import ohos.hilog.*
import ohos.image.*
import std.deriving.*
import ohos.ui_resource.*
import ohos.resource_manager.AppResource

@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class BackForwardList <: RemoteDataLite {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public prop currentIndex: Int32
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
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
    * @syscap SystemCapability.Web.Webview.Core
    * @brief getItemAtIndex(index: number): HistoryItem
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getItemAtIndex(index: Int32): HistoryItem
}


/**
* Provides methods for managing the web cookies.
*
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
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
    * @brief static fetchCookieSync(url: string, incognito?: boolean): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
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
    * @brief static configCookieSync(url: string, value: string, incognito?: boolean): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func configCookie(url: String, value: String, incognito!: Bool = false): Unit
    
    /**
    * Set whether the instance should send and accept cookies.
    * By default this is set to be true.
    *
    * @param { Bool } accept - Whether the instance should send and accept cookies.
    * @brief static putAcceptCookieEnabled(accept: boolean): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func putAcceptCookieEnabled(accept: Bool): Unit
    
    /**
    * Get whether the instance can send and accept cookies.
    *
    * @returns { Bool } True if the instance can send and accept cookies else false.
    * @brief static isCookieAllowed(): boolean
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func isCookieAllowed(): Bool
    
    /**
    * Set whether the instance should send and accept cookies.
    * By default this is set to be true.
    *
    * @param { Bool } accept - Whether the instance should send and accept cookies.
    * @brief static putAcceptCookieEnabled(accept: boolean): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func putAcceptThirdPartyCookieEnabled(accept: Bool): Unit
    
    /**
    * Get whether the instance can send and accept thirdparty cookies.
    *
    * @returns { Bool } True if the instance can send and accept thirdparty cookies else false.
    * @brief static isThirdPartyCookieAllowed(): boolean
    */
    @!APILevel[
        21,
        atomicservice: true,
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
    * @brief static existCookie(incognito?: boolean): boolean
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func existCookie(incognito!: Bool = false): Bool
    
    /**
    * Remove all cookies.
    *
    * @param { Bool } incognito - {@code true} remove all cookies in incognito mode;
    *                                {@code false} otherwise.
    * @brief static clearAllCookiesSync(incognito?: boolean): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func clearAllCookies(incognito!: Bool = false): Unit
    
    /**
    * Delete the session cookies.
    * @brief static clearSessionCookieSync(): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func clearSessionCookie(): Unit
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class WebStorageOrigin {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public WebStorageOrigin(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        public var origin: String,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        public var quota: Int64,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        public var usage: Int64
    )
}


@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public enum SecurityLevel {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    NONE |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    SECURE |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    WARNING |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    DANGEROUS |
    ...
}



@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public enum WebHitTestType {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    EditText |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    Email |
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    Unknown |
    ...
}



@Derive[ToString, Equatable]
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public enum OfflineResourceType {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    IMAGE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    CSS |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    CLASSIC_JS |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    MODULE_JS |
    ...
}



@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class WebHeader {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public WebHeader(
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        public var headerKey: String,
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        public var headerValue: String
    )
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class CacheOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public CacheOptions(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        public var responseHeaders: Array<WebHeader>
    )
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class SnapshotInfo {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public SnapshotInfo(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        public var id!: String = "",
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        public var size!: SizeOptions = SizeOptions()
    )
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class SnapshotResult {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public SnapshotResult(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        public var id: ?String,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        public var image: ?PixelMap,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        public var status: ?Bool,
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        public var size: ?SizeOptions
    )
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class HitTestValue {
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class OfflineResourceMap {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public OfflineResourceMap(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        var urlList: Array<String>,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        var resource: Array<UInt8>,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        var responseHeaders: Array<WebHeader>,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        var _type: OfflineResourceType
    )
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class HistoryItem {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public HistoryItem(
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        public let icon: ?PixelMap,
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        public let historyUrl: String,
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        public let historyRawUrl: String,
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Web.Webview.Core"
        ]
        public let title: String
    )
}


/**
* Defines the configuration of web custom scheme, related to {@link customizeSchemes} method.
*
* @relation interface WebCustomScheme
*/
@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class WebCustomScheme {
    /**
    * Name of the custom scheme.
    *
    * @relation schemeName: string;
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var schemeName: String
    
    /**
    * Whether Cross-Origin Resource Sharing is supported.
    *
    * @relation isSupportCORS: boolean;
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var isSupportCORS: Bool = true
    
    /**
    * Whether fetch request is supported.
    *
    * @relation isSupportFetch: boolean;
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var isSupportFetch: Bool = true
    
    /**
    * If isStandard is true, the scheme will be handled as a standard scheme. The standard
    * schemes needs to comply with the URL normalization and parsing rules defined in Section 3.1 of RFC 1738,
    *
    * @relation isStandard?: boolean;
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var isStandard: Bool = true
    
    /**
    * If isLocal is true, the same security rules as those applied to the "file" URL will be
    * used to handle the scheme.
    *
    * @relation isLocal?: boolean;
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var isLocal: Bool = true
    
    /**
    * If isDisplayIsolated is true, then the scheme can only be displayed from other content
    * hosted using the same scheme.
    *
    * @relation isDisplayIsolated?: boolean;
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var isDisplayIsolated: Bool = true
    
    /**
    * If isSecure is true, the same security rules as those applied to the "https" URL will be
    * used to handle the scheme.
    *
    * @relation isSecure?: boolean;
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var isSecure: Bool = true
    
    /**
    * If isCspBypassing is true, then this scheme can bypass Content Security Policy (CSP)
    * checks. In most cases, this value should not be true when isStandard is true.
    *
    * @relation isCspBypassing?: boolean;
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var isCspBypassing: Bool = true
    
    /**
    * If isCodeCacheSupported is true, then the js of this scheme can generate code cache.
    *
    * @relation isCodeCacheSupported?: boolean;
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var isCodeCacheSupported: Bool = false
    
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(schemeName: String)
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Web.Webview.Core"
]
public class WebviewController <: RemoteDataLite {
    /**
    * A constructor used to create a WebviewController object.
    *
    * @syscap SystemCapability.Web.Webview.Core
    * @brief constructor(webTag?: string)
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init()
    
    /**
    * A constructor used to create a WebviewController object.
    *
    * @param { String } [webTag] - specified the name of the web component, Empty by default.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief constructor(webTag?: string)
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(webTag: String)
    
    /**
    * Enables debugging of web contents.
    * @param { boolean } webDebuggingAccess {@code true} enables debugging of web contents; {@code false} otherwise.
    * @throws { BusinessException } 401 - Invalid input parameter.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief static setWebDebuggingAccess(webDebuggingAccess: boolean): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func setWebDebuggingAccess(webDebuggingAccess: Bool): Unit
    
    /**
    * Loads the data or URL.
    *
    * @param { String } url - The URL to load.
    * @throws { BusinessException } 401 - Invalid input parameter.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @throws { BusinessException } 17100002 - Invalid url.
    * @throws { BusinessException } 17100003 - Invalid resource path or file type.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief loadUrl(url: string | Resource, headers?: Array<WebHeader>): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func loadUrl(url: String): Unit
    
    /**
    * Loads the data or URL.
    *
    * @param { String } url - The URL to load.
    * @param { Array<WebHeader> } [headers] - Additional HTTP request header for URL.
    * @throws { BusinessException } 401 - Invalid input parameter.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @throws { BusinessException } 17100002 - Invalid url.
    * @throws { BusinessException } 17100003 - Invalid resource path or file type.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief loadUrl(url: string | Resource, headers?: Array<WebHeader>): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func loadUrl(url: AppResource): Unit
    
    /**
    * Loads the data or URL.
    *
    * @param { String } url - The URL to load.
    * @param { Array<WebHeader> } [headers] - Additional HTTP request header for URL.
    * @throws { BusinessException } 401 - Invalid input parameter.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @throws { BusinessException } 17100002 - Invalid url.
    * @throws { BusinessException } 17100003 - Invalid resource path or file type.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief loadUrl(url: string | Resource, headers?: Array<WebHeader>): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func loadUrl(url: String, headers: Array<WebHeader>): Unit
    
    /**
    * Loads the data or URL.
    *
    * @param { String } url - The URL to load.
    * @param { Array<WebHeader> } [headers] - Additional HTTP request header for URL.
    * @throws { BusinessException } 401 - Invalid input parameter.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @throws { BusinessException } 17100002 - Invalid url.
    * @throws { BusinessException } 17100003 - Invalid resource path or file type.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief loadUrl(url: string | Resource, headers?: Array<WebHeader>): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func loadUrl(url: AppResource, headers: Array<WebHeader>): Unit
    
    /**
    * Refreshes the current URL.
    *
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief refresh(): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func refresh(): Unit
    
    /**
    * Gets the default user agent.
    * @returns { String } Return user agent information.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief getUserAgent(): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getUserAgent(): String
    
    /**
    * Checks whether the web page can go back.
    * @returns { Bool } True if the web page can go back else false.
    *                           The WebviewController must be associated with a Web component.
    * @throws { BusinessException } 17100001 - Init error.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief accessBackward(): boolean
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func accessBackward(): Bool
    
    /**
    * Set custom user agent.
    * @param { String } userAgent - User custom agent information.
    * @throws { BusinessException } 401 - Invalid input parameter.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief setCustomUserAgent(userAgent: string): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func setCustomUserAgent(userAgent: String): Unit
    
    /**
    * Get custom user agent.
    * @returns { String } Get custom User agent information.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief getCustomUserAgent(): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
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
    * @syscap SystemCapability.Web.Webview.Core
    * @brief runJavaScript(script: string, callback: AsyncCallback<string>): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
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
    * @throws { BusinessException } 401 - Invalid input parameter. Possible causes: 1.the funcs and methodList must have the same size.
    * <br>2. the funcs' size be greater than 0.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief registerJavaScriptProxy(object: object, name: string, methodList: Array<string>): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func registerJavaScriptProxy(funcs: Array<(String) -> String>, name: String, methodList: Array<String>): Unit
    
    /**
    * Gets the url of current Web page.
    * @returns { String } Return the url of the current page.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief runJavaScript(script: string, callback: AsyncCallback<string>): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getUrl(): String
    
    /**
    * Gets the original url of current Web page.
    * @returns { String } Return the original url of the current page.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief runJavaScript(script: string, callback: AsyncCallback<string>): void
    */
    @!APILevel[
        21,
        atomicservice: true,
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
    * @syscap SystemCapability.Web.Webview.Core
    * brief pageUp(top: boolean): void
    */
    @!APILevel[
        21,
        atomicservice: true,
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
    * @syscap SystemCapability.Web.Webview.Core
    * brief pageDown(bottom: boolean): void
    */
    @!APILevel[
        21,
        atomicservice: true,
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
    * @syscap SystemCapability.Web.Webview.Core
    * @brief scrollTo(x: number, y: number): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func scrollTo(x: Float32, y: Float32, duration!: Int32 = 0): Unit
    
    /**
    * Scroll by the delta position.
    *
    * @param { Float32 } deltaX - the delta x of the position.
    * @param { Float32 } deltaY - the delta y of the position.
    * @param { Int32 } duration - the scroll animation duration. Unit: millisecond.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief scrollBy(deltaX: number, deltaY: number): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func scrollBy(deltaX: Float32, deltaY: Float32, duration!: Int32 = 0): Unit
    
    /**
    * Goes forward in the history of the web page.
    *
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief forward(): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func forward(): Unit
    
    /**
    * Goes back in the history of the web page.
    *
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief backward(): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
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
    * @syscap SystemCapability.Web.Webview.Core
    * @brief backOrForward(step: number): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func backOrForward(step: Int32): Unit
    
    /**
    * Gets the content height of current Web page.
    * @returns { Int32 } Returns the page height of the current page.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief getPageHeight(): number
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getPageHeight(): Int32
    
    /**
    * Gets the title of current Web page.
    * @returns { String } Return to File Selector Title.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief getTitle(): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
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
    * @syscap SystemCapability.Web.Webview.Core
    * @brief zoom(factor: number): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
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
    * @syscap SystemCapability.Web.Webview.Core
    * @brief zoomIn(): void
    */
    @!APILevel[
        21,
        atomicservice: true,
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
    * @syscap SystemCapability.Web.Webview.Core
    * @brief zoomOut(): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func zoomOut(): Unit
    
    /**
    * Gets the hit test value of HitTest.
    * @returns { HitTestValue } Return the element information of the clicked area.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief getHitTestValue(): HitTestValue
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getHitTestValue(): HitTestValue
    
    /**
    * Clears the history in the Web.
    *
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief clearHistory(): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
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
    * @syscap SystemCapability.Web.Webview.Core
    * @brief accessStep(step: number): boolean
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func accessStep(step: Int32): Bool
    
    /**
    * Gets the type of HitTest.
    * @returns { WebHitTestType } The type of HitTest.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief getHitTest(): WebHitTestType
    */
    @!APILevel[
        21,
        atomicservice: true,
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
    * @syscap SystemCapability.Web.Webview.Core
    * @brief storeWebArchive(baseName: string, autoName: boolean, callback: AsyncCallback<string>): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func storeWebArchive(baseName: String, autoName: Bool, callback: AsyncCallback<String>): Unit
    
    /**
    * Enable the ability to check website security risks.
    * Illegal and fraudulent websites are mandatory enabled and can't be disabled by this function.
    * @param { Bool } enable - {@code true} enable check the website security risks; {@code false} otherwise.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief enableSafeBrowsing(enable: boolean): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func enableSafeBrowsing(enable: Bool): Unit
    
    /**
    * Get whether checking website security risks is enabled.
    * @returns { Bool } True if enable the ability to check website security risks else false.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief isSafeBrowsingEnabled(): boolean
    */
    @!APILevel[
        21,
        atomicservice: true,
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
    * @syscap SystemCapability.Web.Webview.Core
    * @brief getSecurityLevel(): SecurityLevel
    */
    @!APILevel[
        21,
        atomicservice: true,
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
    * @syscap SystemCapability.Web.Webview.Core
    * @brief isIncognitoMode(): boolean
    */
    @!APILevel[
        21,
        atomicservice: true,
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
    * @syscap SystemCapability.Web.Webview.Core
    * @brief removeCache(clearRom: boolean): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func removeCache(clearRom: Bool): Unit
    
    /**
    * Get back forward stack list from current webview.
    * @returns { BackForwardList } Back forward list for current webview.
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief getBackForwardEntries(): BackForwardList
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getBackForwardEntries(): BackForwardList
    
    /**
    * Stops the current load.
    *
    * @throws { BusinessException } 17100001 - Init error.
    *                           The WebviewController must be associated with a Web component.
    * @syscap SystemCapability.Web.Webview.Core
    * @brief stop(): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func stop(): Unit
}


