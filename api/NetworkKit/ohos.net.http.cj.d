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

package ohos.net.http
import ohos.base.*
import ohos.ffi.*
import ohos.hilog.*
import ohos.net.connection.{HttpProxy, CHttpProxy}
import std.collection.*
import ohos.encoding.json.*
import ohos.labels.*


/**
* Creates an HTTP request task.
* @returns { HttpRequest } the HttpRequest of the createHttp.
* @syscap SystemCapability.Communication.NetStack
* @crossplatform
* @atomicservice
* @brief createHttp(): HttpRequest;
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public func createHttp(): HttpRequest


/**
* Creates a default {@code HttpResponseCache} object to store the responses of HTTP access requests.
* @param { UInt32 } cacheSize - the size of cache(max value is 10MB), default is 10*1024*1024(10MB).
* @returns { HttpResponseCache } the HttpResponseCache of the createHttpResponseCache.
* @syscap SystemCapability.Communication.NetStack
* @crossplatform
* @atomicservice
* @brief createHttpResponseCache(cacheSize?: number): HttpResponseCache;
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public func createHttpResponseCache(cacheSize!: UInt32 = MAX_CACHE_SIZE): HttpResponseCache


/**
* Defines an HTTP request task. Before invoking APIs provided by HttpRequest,
* you must call createHttp() to create an HttpRequestTask object.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class HttpRequest {
    /**
    * Initiates an HTTP request to a given URL.
    * @permission ohos.permission.INTERNET
    * @param { String } url - URL for initiating an HTTP request.
    * @param { HttpRequestOptions } options - Optional parameters {@link HttpRequestOptions}.
    * @param { HttpResponse } callback - the callback of request.
    * @throws { BusinessError } 401 - Parameter error.
    * @throws { BusinessError } 201 - Permission denied.
    * @throws { BusinessError } 2300001 - Unsupported protocol.
    * @throws { BusinessError } 2300003 - URL using bad/illegal format or missing URL.
    * @throws { BusinessError } 2300005 - Couldn't resolve proxy name.
    * @throws { BusinessError } 2300006 - Couldn't resolve host name.
    * @throws { BusinessError } 2300007 - Couldn't connect to server.
    * @throws { BusinessError } 2300008 - Weird server reply.
    * @throws { BusinessError } 2300009 - Access denied to remote resource.
    * @throws { BusinessError } 2300016 - Error in the HTTP2 framing layer.
    * @throws { BusinessError } 2300018 - Transferred a partial file.
    * @throws { BusinessError } 2300023 - Failed writing received data to disk/application.
    * @throws { BusinessError } 2300025 - Upload failed.
    * @throws { BusinessError } 2300026 - Failed to open/read local data from file/application.
    * @throws { BusinessError } 2300027 - Out of memory.
    * @throws { BusinessError } 2300028 - Timeout was reached.
    * @throws { BusinessError } 2300047 - Number of redirects hit maximum amount.
    * @throws { BusinessError } 2300052 - Server returned nothing (no headers, no data).
    * @throws { BusinessError } 2300055 - Failed sending data to the peer.
    * @throws { BusinessError } 2300056 - Failure when receiving data from the peer.
    * @throws { BusinessError } 2300058 - Problem with the local SSL certificate.
    * @throws { BusinessError } 2300059 - Couldn't use specified SSL cipher.
    * @throws { BusinessError } 2300060 - SSL peer certificate or SSH remote key was not OK.
    * @throws { BusinessError } 2300061 - Unrecognized or bad HTTP Content or Transfer-Encoding.
    * @throws { BusinessError } 2300063 - Maximum file size exceeded.
    * @throws { BusinessError } 2300070 - Disk full or allocation exceeded.
    * @throws { BusinessError } 2300073 - Remote file already exists.
    * @throws { BusinessError } 2300077 - Problem with the SSL CA cert (path? access rights?).
    * @throws { BusinessError } 2300078 - Remote file not found.
    * @throws { BusinessError } 2300094 - An authentication function returned an error.
    * @throws { BusinessError } 2300999 - Unknown Other Error.
    * @syscap SystemCapability.Communication.NetStack
    * @crossplatform
    * @atomicservice
    * @brief request(url: string, options?: HttpRequestOptions): Promise<HttpResponse>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        permission: "ohos.permission.INTERNET",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func request(url: String, callback: (?BusinessException, ?HttpResponse) -> Unit,
        options!: ?HttpRequestOptions = None): Unit
    
    /**
    * Destroys an HTTP request.
    * @syscap SystemCapability.Communication.NetStack
    * @crossplatform
    * @atomicservice
    * @brief destroy(): void;
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func destroy(): Unit
    
    /**
    * Initiates an HTTP request to a given URL, applicable to scenarios where http response supports streaming.
    * @permission ohos.permission.INTERNET
    * @param { String } url - URL for initiating an HTTP request.
    * @param { HttpRequestOptions } options - Optional parameters {@link HttpRequestOptions}.
    * @returns { UInt32 } the promise returned by the function.
    * @throws { BusinessError } 401 - Parameter error.
    * @throws { BusinessError } 201 - Permission denied.
    * @throws { BusinessError } 2300001 - Unsupported protocol.
    * @throws { BusinessError } 2300003 - URL using bad/illegal format or missing URL.
    * @throws { BusinessError } 2300005 - Couldn't resolve proxy name.
    * @throws { BusinessError } 2300006 - Couldn't resolve host name.
    * @throws { BusinessError } 2300007 - Couldn't connect to server.
    * @throws { BusinessError } 2300008 - Weird server reply.
    * @throws { BusinessError } 2300009 - Access denied to remote resource.
    * @throws { BusinessError } 2300016 - Error in the HTTP2 framing layer.
    * @throws { BusinessError } 2300018 - Transferred a partial file.
    * @throws { BusinessError } 2300023 - Failed writing received data to disk/application.
    * @throws { BusinessError } 2300025 - Upload failed.
    * @throws { BusinessError } 2300026 - Failed to open/read local data from file/application.
    * @throws { BusinessError } 2300027 - Out of memory.
    * @throws { BusinessError } 2300028 - Timeout was reached.
    * @throws { BusinessError } 2300047 - Number of redirects hit maximum amount.
    * @throws { BusinessError } 2300052 - Server returned nothing (no headers, no data).
    * @throws { BusinessError } 2300055 - Failed sending data to the peer.
    * @throws { BusinessError } 2300056 - Failure when receiving data from the peer.
    * @throws { BusinessError } 2300058 - Problem with the local SSL certificate.
    * @throws { BusinessError } 2300059 - Couldn't use specified SSL cipher.
    * @throws { BusinessError } 2300060 - SSL peer certificate or SSH remote key was not OK.
    * @throws { BusinessError } 2300061 - Unrecognized or bad HTTP Content or Transfer-Encoding.
    * @throws { BusinessError } 2300063 - Maximum file size exceeded.
    * @throws { BusinessError } 2300070 - Disk full or allocation exceeded.
    * @throws { BusinessError } 2300073 - Remote file already exists.
    * @throws { BusinessError } 2300077 - Problem with the SSL CA cert (path? access rights?).
    * @throws { BusinessError } 2300078 - Remote file not found.
    * @throws { BusinessError } 2300094 - An authentication function returned an error.
    * @throws { BusinessError } 2300999 - Unknown Other Error.
    * @syscap SystemCapability.Communication.NetStack
    * @brief requestInStream(url: string, options?: HttpRequestOptions): Promise<number>;
    */
    @!APILevel[
        21,
        atomicservice: true,
        permission: "ohos.permission.INTERNET",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func requestInStream(url: String, callback: (?BusinessException, ?UInt32) -> Unit,
        options!: ?HttpRequestOptions = None): Unit
    
    /**
    * Registers an observer for HTTP Response Header events.
    * @param { (HashMap<String, String>) -> Unit } callback - the callback used to return the result.
    * @syscap SystemCapability.Communication.NetStack
    * @crossplatform
    * @atomicservice
    * @brief on(type: "headersReceive", callback: Callback<Object>): void;
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func onHeadersReceive(callback: (HashMap<String, String>) -> Unit): Unit
    
    /**
    * Unregisters the observer for HTTP Response Header events.
    * !! remove specific callback is not supported !!
    * @syscap SystemCapability.Communication.NetStack
    * @crossplatform
    * @atomicservice
    * @brief off(type: "headersReceive", callback?: Callback<Object>): void;
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func offHeadersReceive(): Unit
    
    /**
    * Registers a one-time observer for HTTP Response Header events.
    * @param { (HashMap<String, String>) -> Unit } callback - the callback used to return the result.
    * @syscap SystemCapability.Communication.NetStack
    * @crossplatform
    * @brief once(type: "headersReceive", callback: Callback<Object>): void;
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func onceHeadersReceive(callback: (HashMap<String, String>) -> Unit): Unit
    
    /**
    * Registers an observer for receiving HTTP Response data events continuously.
    * @param { callback: (Array<Byte>) -> Unit } callback - the callback used to return the result.
    * @syscap SystemCapability.Communication.NetStack
    * @brief on(type: "dataReceive", callback: Callback<ArrayBuffer>): void;
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func onDataReceive(callback: (Array<Byte>) -> Unit): Unit
    
    /**
    * Unregisters an observer for receiving HTTP Response data events continuously.
    * !! remove specific callback is not supported !!
    * @syscap SystemCapability.Communication.NetStack
    * @brief off(type: "dataReceive", callback?: Callback<ArrayBuffer>): void;
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func offDataReceive(): Unit
    
    /**
    * Registers an observer for receiving HTTP Response data ends events.
    * @param { () -> Unit } callback - the callback used to return the result.
    * @syscap SystemCapability.Communication.NetStack
    * @brief on(type: "dataEnd", callback: Callback<void>): void;
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func onDataEnd(callback: () -> Unit): Unit
    
    /**
    * Unregisters an observer for receiving HTTP Response data ends events.
    * !! remove specific callback is not supported !!
    * @syscap SystemCapability.Communication.NetStack
    * @brief off(type: "dataEnd", callback?: Callback<void>): void;
    */
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func offDataEnd(): Unit
    
    /**
    * Registers an observer for progress of receiving HTTP Response data events.
    * @param { (DataReceiveProgressInfo) -> Unit } callback - the callback used to return the result.
    * @syscap SystemCapability.Communication.NetStack
    * @brief on(type: 'dataReceiveProgress', callback: Callback<DataReceiveProgressInfo>): void;
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func onDataReceiveProgress(callback: (DataReceiveProgressInfo) -> Unit): Unit
    
    /**
    * Unregisters an observer for progress of receiving HTTP Response data events.
    * !! remove specific callback is not supported !!
    * @syscap SystemCapability.Communication.NetStack
    * @brief off(type: 'dataReceiveProgress', callback?: Callback<DataReceiveProgressInfo>): void;
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func offDataReceiveProgress(): Unit
    
    /**
    * Registers an observer for progress of sendSize HTTP Response data events.
    * @param { (DataSendProgressInfo) -> Unit } callback - the callback of on.
    * @syscap SystemCapability.Communication.NetStack
    * @brief on(type: 'dataSendProgress', callback: Callback<DataSendProgressInfo>): void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func onDataSendProgress(callback: (DataSendProgressInfo) -> Unit): Unit
    
    /**
    * Unregisters an observer for progress of sendSize HTTP Response data events.
    * !! remove specific callback is not supported !!
    * @syscap SystemCapability.Communication.NetStack
    * @brief off(type: 'dataSendProgress', callback?: Callback<DataSendProgressInfo>): void
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func offDataSendProgress(): Unit
}


/**
* Defines an object that stores the response to an HTTP request.
* @interface HttpResponseCache
* @syscap SystemCapability.Communication.NetStack
* @crossplatform
* @atomicservice
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class HttpResponseCache {
    /**
    * Writes data in the cache to the file system so that all the cached data can be accessed in the next HTTP
    * request.
    * @returns { Unit } The promise returned by the flush.
    * @syscap SystemCapability.Communication.NetStack
    * @crossplatform
    * @atomicservice
    * @since 11
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func flush(): Unit
    
    /**
    * Disables a cache and deletes the data in it.
    * @returns { Unit } The promise returned by the delete.
    * @syscap SystemCapability.Communication.NetStack
    * @crossplatform
    * @atomicservice
    * @brief delete(): Promise<void>;
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func delete(): Unit
}


/**
* Defines an HTTP request method.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public enum RequestMethod {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    OPTIONS |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    GET |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    HEAD |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    POST |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    PUT |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    DELETE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    TRACE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    CONNECT |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func getValue(): String
}


/**
* Enumerates the response codes for an HTTP request.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public enum ResponseCode {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    OK |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    CREATED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    ACCEPTED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    NOT_AUTHORITATIVE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    NO_CONTENT |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    RESET |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    PARTIAL |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    MULT_CHOICE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    MOVED_PERM |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    MOVED_TEMP |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    SEE_OTHER |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    NOT_MODIFIED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    USE_PROXY |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    BAD_REQUEST |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    UNAUTHORIZED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    PAYMENT_REQUIRED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    FORBIDDEN |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    NOT_FOUND |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    BAD_METHOD |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    NOT_ACCEPTABLE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    PROXY_AUTH |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    CLIENT_TIMEOUT |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    CONFLICT |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    GONE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    LENGTH_REQUIRED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    PRECON_FAILED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    ENTITY_TOO_LARGE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    REQ_TOO_LONG |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    UNSUPPORTED_TYPE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    REQUESTED_RANGE_NOT_SATISFIABLE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    EXPECTATION_FAILED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    TEAPOT |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    MISDIRECTED_REQUEST |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    UNPROCESSABLE_ENTITY |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    LOCKED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    FAILED_DEPENDENCY |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    TOO_EARLY |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    UPGRADE_REQUIRED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    PRECONDITION_REQUIRED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    TOO_MANY_REQUESTS |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    REQUEST_HEADER_FIELDS_TOO_LARGE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    UNAVAILABLE_FOR_LEGAL_REASONS |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    INTERNAL_ERROR |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    NOT_IMPLEMENTED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    BAD_GATEWAY |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    UNAVAILABLE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    GATEWAY_TIMEOUT |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    VERSION |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    VARIANT_ALSO_NEGOTIATES |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    INSUFFICIENT_STORAGE |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    LOOP_DETECTED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    NOT_EXTENDED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    NETWORK_AUTHENTICATION_REQUIRED |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func getValue(): UInt32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public static func parse(code: UInt32): ResponseCode
}


/**
* Supported protocols.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public enum HttpProtocol {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    HTTP1_1 |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    HTTP2 |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    HTTP3 |
    ...
}


/**
* Indicates the type of the returned data.
* 3 is not set
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public enum HttpDataType {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    STRING |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    ARRAY_BUFFER |
    ...
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public enum HttpData <: ToString {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    STRING_DATA(String) |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    ARRAY_DATA(Array<Byte>) |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func toString(): String
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public enum UsingProxy {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    NOT_USE |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    USE_DEFAULT |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    USE_SPECIFIED(HttpProxy) |
    ...
}


@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public enum CertType {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    PEM |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    DER |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    P12 |
    ...
}


/**
* Specifies the type and value range of the optional parameters in the HTTP request.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class HttpRequestOptions {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public HttpRequestOptions(
        //default GET
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let method!: RequestMethod = RequestMethod.GET,

        //Additional data of the request.
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let extraData!: ?HttpData = None,

        // Data type to be returned. If this parameter is set, the system preferentially returns the specified type.
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let expectDataType!: ?HttpDataType = None,

        // default true
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let usingCache!: Bool = true,

        // default 1
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let priority!: UInt32 = 1,

        // default is 'content-type': 'application/json'
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let header!: ?HashMap<String, String> = None,

        // The default value is 60,000, in ms.
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let readTimeout!: UInt32 = 60000,

        // The default value is 60,000, in ms.
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let connectTimeout!: UInt32 = 60000,

        // default is automatically specified by the system.
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let usingProtocol!: ?HttpProtocol = None,

        // If this parameter is set as type of boolean, the system will use default proxy or not use proxy.
        // If this parameter is set as type of HttpProxy, the system will use the specified HttpProxy.
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let usingProxy!: UsingProxy = USE_DEFAULT,

        // If this parameter is set, the system will use ca path specified by user,
        // or else use preset ca by the system.
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let caPath!: ?String = None,

        // Used to set to uploading or downloading the start bytes. The default value is 0.
        // HTTP standard (RFC 7233 section 3.1) allows servers to ignore range requests.
        // For HTTP PUT uploads this option should not be used, since it may conflict with other options.
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let resumeFrom!: ?Int64 = None,

        // Used to set to uploading or downloading the end bytes. Translate to the end if not set.
        // HTTP standard (RFC 7233 section 3.1) allows servers to ignore range requests.
        // For HTTP PUT uploads this option should not be used, since it may conflict with other options.
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let resumeTo!: ?Int64 = None,

        // Support the application to pass in client certificates, allowing the server to verify the client's identity.
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let clientCert!: ?ClientCert = None,

        // If this parameter is set, incoming DNS resolution server URL for the DoH server to use for name resolving.
        // The parameter must be URL-encoded in the following format: "https://host:port/path".
        // It MUST specify an HTTPS URL.
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let dnsOverHttps!: ?String = None,

        // If this parameter is set, use the specified DNS server for DNS resolution.
        // Multiple DNS resolution servers can be set up, with a maximum of 3 servers.
        // Only take the first three if there are more than three.
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let dnsServers!: ?Array<String> = None,

        // The maximum limit of the response body. The default value is 5 * 1024 * 1024, in Byte.
        // The maximum value is 100 * 1024 *1024, in Byte.
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let maxLimit!: UInt32 = 5 * 1024 * 1024,

        // The data fields which is supported by the HTTP protocol to post
        // forms and by the SMTP and IMAP protocols to provide
        // the email data to send/upload.
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let multiFormDataList!: ?Array<MultiFormData> = None
    )
}


/**
* Defines the response to an HTTP request.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class HttpResponse <: ToString {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func toString(): String
}


/**
* Counting the time taken of various stages of HTTP request.
*/
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class PerformanceTiming <: ToString {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func toString(): String
}


/**
* This interface is used to obtain the progress information of file upload or download.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class DataReceiveProgressInfo {
}


/**
* This interface is used to monitor the progress of sending data.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class DataSendProgressInfo {
}


/**
* The clientCert field of the client certificate, which includes 4 attributes:
* client certificate (cert), client certificate type (certType), certificate private key (key),
* and passphrase (keyPassword).
*/
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class ClientCert {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public ClientCert(
        // The path to the client certificate file.
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let certPath: String,

        // The path of the client certificate private key file.
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let keyPath: String,

        // The type of the client certificate.
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let certType!: CertType = CertType.PEM,

        // Password required to use the client certificate private key.
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let keyPassword!: ?String = None
    )
}


/**
* Represents the properties of a form object.
*/
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class MultiFormData {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public MultiFormData(
        // MIME name for the data field.
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let name: String,

        // Content type of the data field.
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let contentType: String,

        // Remote file name for the data field.
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let remoteFileName!: ?String = None,

        // This parameter sets a mime part's body content from memory data.
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let data!: ?HttpData = None,

        // This parameter sets a mime part's body content from the file's contents.
        // This is an alternative to curl_mime_data for setting data to a mime part.
        // If data is empty, filePath must be set.
        // If data has a value, filePath does not take effect.
        @!APILevel[
            21,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Communication.NetStack"
        ]
        public let filePath!: ?String = None
    )
}


