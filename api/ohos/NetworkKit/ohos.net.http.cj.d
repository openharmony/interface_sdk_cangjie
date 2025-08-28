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
import ohos.business_exception.*
import ohos.callback_invoke.*
import ohos.ffi.*
import ohos.hilog.*
import std.collection.*
import ohos.labels.*

import ohos.net.connection.HttpProxy
import std.deriving.Derive
import ohos.net.connection.CHttpProxy

/**
* Creates an HTTP request task.
* @returns { HttpRequest } the HttpRequest of the createHttp.
* @relation createHttp(): HttpRequest
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public func createHttp(): HttpRequest


/**
* Creates a default {@code HttpResponseCache} object to store the responses of HTTP access requests.
* @param { UInt32 } cacheSize - the size of cache(max value is 10MB), default is 10*1024*1024(10MB).
* @returns { HttpResponseCache } the HttpResponseCache of the createHttpResponseCache.
* @relation createHttpResponseCache(cacheSize?: number): HttpResponseCache
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public func createHttpResponseCache(cacheSize!: UInt32 = MAX_CACHE_SIZE): HttpResponseCache


/**
* Defines an HTTP request task. Before invoking APIs provided by HttpRequest,
* you must call createHttp() to create an HttpRequestTask object.
* @relation export interface HttpRequest
*/
@!APILevel[
    21,
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
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 2300001 - Unsupported protocol.
    * @throws { BusinessException } 2300003 - URL using bad/illegal format or missing URL.
    * @throws { BusinessException } 2300005 - Couldn't resolve proxy name.
    * @throws { BusinessException } 2300006 - Couldn't resolve host name.
    * @throws { BusinessException } 2300007 - Couldn't connect to server.
    * @throws { BusinessException } 2300008 - Weird server reply.
    * @throws { BusinessException } 2300009 - Access denied to remote resource.
    * @throws { BusinessException } 2300016 - Error in the HTTP2 framing layer.
    * @throws { BusinessException } 2300018 - Transferred a partial file.
    * @throws { BusinessException } 2300023 - Failed writing received data to disk/application.
    * @throws { BusinessException } 2300025 - Upload failed.
    * @throws { BusinessException } 2300026 - Failed to open/read local data from file/application.
    * @throws { BusinessException } 2300027 - Out of memory.
    * @throws { BusinessException } 2300028 - Timeout was reached.
    * @throws { BusinessException } 2300047 - Number of redirects hit maximum amount.
    * @throws { BusinessException } 2300052 - Server returned nothing (no headers, no data).
    * @throws { BusinessException } 2300055 - Failed sending data to the peer.
    * @throws { BusinessException } 2300056 - Failure when receiving data from the peer.
    * @throws { BusinessException } 2300058 - Problem with the local SSL certificate.
    * @throws { BusinessException } 2300059 - Couldn't use specified SSL cipher.
    * @throws { BusinessException } 2300060 - SSL peer certificate or SSH remote key was not OK.
    * @throws { BusinessException } 2300061 - Unrecognized or bad HTTP Content or Transfer-Encoding.
    * @throws { BusinessException } 2300063 - Maximum file size exceeded.
    * @throws { BusinessException } 2300070 - Disk full or allocation exceeded.
    * @throws { BusinessException } 2300073 - Remote file already exists.
    * @throws { BusinessException } 2300077 - Problem with the SSL CA cert (path? access rights?).
    * @throws { BusinessException } 2300078 - Remote file not found.
    * @throws { BusinessException } 2300094 - An authentication function returned an error.
    * @throws { BusinessException } 2300999 - Unknown Other Error.
    * @relation request(url: string, options: HttpRequestOptions, callback: AsyncCallback<HttpResponse>): void
    */
    @!APILevel[
        21,
        permission: "ohos.permission.INTERNET",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func request(url: String, options: HttpRequestOptions, callback: AsyncCallback<HttpResponse>): Unit
    
    /**
    * Initiates an HTTP request to a given URL.
    * @permission ohos.permission.INTERNET
    * @param { String } url - URL for initiating an HTTP request.
    * @param { HttpRequestOptions } options - Optional parameters {@link HttpRequestOptions}.
    * @param { HttpResponse } callback - the callback of request.
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 2300001 - Unsupported protocol.
    * @throws { BusinessException } 2300003 - URL using bad/illegal format or missing URL.
    * @throws { BusinessException } 2300005 - Couldn't resolve proxy name.
    * @throws { BusinessException } 2300006 - Couldn't resolve host name.
    * @throws { BusinessException } 2300007 - Couldn't connect to server.
    * @throws { BusinessException } 2300008 - Weird server reply.
    * @throws { BusinessException } 2300009 - Access denied to remote resource.
    * @throws { BusinessException } 2300016 - Error in the HTTP2 framing layer.
    * @throws { BusinessException } 2300018 - Transferred a partial file.
    * @throws { BusinessException } 2300023 - Failed writing received data to disk/application.
    * @throws { BusinessException } 2300025 - Upload failed.
    * @throws { BusinessException } 2300026 - Failed to open/read local data from file/application.
    * @throws { BusinessException } 2300027 - Out of memory.
    * @throws { BusinessException } 2300028 - Timeout was reached.
    * @throws { BusinessException } 2300047 - Number of redirects hit maximum amount.
    * @throws { BusinessException } 2300052 - Server returned nothing (no headers, no data).
    * @throws { BusinessException } 2300055 - Failed sending data to the peer.
    * @throws { BusinessException } 2300056 - Failure when receiving data from the peer.
    * @throws { BusinessException } 2300058 - Problem with the local SSL certificate.
    * @throws { BusinessException } 2300059 - Couldn't use specified SSL cipher.
    * @throws { BusinessException } 2300060 - SSL peer certificate or SSH remote key was not OK.
    * @throws { BusinessException } 2300061 - Unrecognized or bad HTTP Content or Transfer-Encoding.
    * @throws { BusinessException } 2300063 - Maximum file size exceeded.
    * @throws { BusinessException } 2300070 - Disk full or allocation exceeded.
    * @throws { BusinessException } 2300073 - Remote file already exists.
    * @throws { BusinessException } 2300077 - Problem with the SSL CA cert (path? access rights?).
    * @throws { BusinessException } 2300078 - Remote file not found.
    * @throws { BusinessException } 2300094 - An authentication function returned an error.
    * @throws { BusinessException } 2300999 - Unknown Other Error.
    * @relation request(url: string, callback: AsyncCallback<HttpResponse>): void
    */
    @!APILevel[
        21,
        permission: "ohos.permission.INTERNET",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func request(url: String, callback: AsyncCallback<HttpResponse>): Unit
    
    /**
    * Destroys an HTTP request.
    * @relation destroy(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func destroy(): Unit
    
    /**
    * Initiates an HTTP request to a given URL, applicable to scenarios where http response supports streaming.
    * @permission ohos.permission.INTERNET
    * @param { String } url - URL for initiating an HTTP request.
    * @param { HttpRequestOptions } options - Optional parameters {@link HttpRequestOptions}.
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 2300001 - Unsupported protocol.
    * @throws { BusinessException } 2300003 - URL using bad/illegal format or missing URL.
    * @throws { BusinessException } 2300005 - Couldn't resolve proxy name.
    * @throws { BusinessException } 2300006 - Couldn't resolve host name.
    * @throws { BusinessException } 2300007 - Couldn't connect to server.
    * @throws { BusinessException } 2300008 - Weird server reply.
    * @throws { BusinessException } 2300009 - Access denied to remote resource.
    * @throws { BusinessException } 2300016 - Error in the HTTP2 framing layer.
    * @throws { BusinessException } 2300018 - Transferred a partial file.
    * @throws { BusinessException } 2300023 - Failed writing received data to disk/application.
    * @throws { BusinessException } 2300025 - Upload failed.
    * @throws { BusinessException } 2300026 - Failed to open/read local data from file/application.
    * @throws { BusinessException } 2300027 - Out of memory.
    * @throws { BusinessException } 2300028 - Timeout was reached.
    * @throws { BusinessException } 2300047 - Number of redirects hit maximum amount.
    * @throws { BusinessException } 2300052 - Server returned nothing (no headers, no data).
    * @throws { BusinessException } 2300055 - Failed sending data to the peer.
    * @throws { BusinessException } 2300056 - Failure when receiving data from the peer.
    * @throws { BusinessException } 2300058 - Problem with the local SSL certificate.
    * @throws { BusinessException } 2300059 - Couldn't use specified SSL cipher.
    * @throws { BusinessException } 2300060 - SSL peer certificate or SSH remote key was not OK.
    * @throws { BusinessException } 2300061 - Unrecognized or bad HTTP Content or Transfer-Encoding.
    * @throws { BusinessException } 2300063 - Maximum file size exceeded.
    * @throws { BusinessException } 2300070 - Disk full or allocation exceeded.
    * @throws { BusinessException } 2300073 - Remote file already exists.
    * @throws { BusinessException } 2300077 - Problem with the SSL CA cert (path? access rights?).
    * @throws { BusinessException } 2300078 - Remote file not found.
    * @throws { BusinessException } 2300094 - An authentication function returned an error.
    * @throws { BusinessException } 2300999 - Unknown Other Error.
    * @relation requestInStream(url: string, options: HttpRequestOptions, callback: AsyncCallback<number>): void
    */
    @!APILevel[
        21,
        permission: "ohos.permission.INTERNET",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func requestInStream(url: String, options: HttpRequestOptions, callback: AsyncCallback<UInt32>): Unit
    
    /**
    * Initiates an HTTP request to a given URL, applicable to scenarios where http response supports streaming.
    * @permission ohos.permission.INTERNET
    * @param { String } url - URL for initiating an HTTP request.
    * @param { HttpRequestOptions } options - Optional parameters {@link HttpRequestOptions}.
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } 201 - Permission denied.
    * @throws { BusinessException } 2300001 - Unsupported protocol.
    * @throws { BusinessException } 2300003 - URL using bad/illegal format or missing URL.
    * @throws { BusinessException } 2300005 - Couldn't resolve proxy name.
    * @throws { BusinessException } 2300006 - Couldn't resolve host name.
    * @throws { BusinessException } 2300007 - Couldn't connect to server.
    * @throws { BusinessException } 2300008 - Weird server reply.
    * @throws { BusinessException } 2300009 - Access denied to remote resource.
    * @throws { BusinessException } 2300016 - Error in the HTTP2 framing layer.
    * @throws { BusinessException } 2300018 - Transferred a partial file.
    * @throws { BusinessException } 2300023 - Failed writing received data to disk/application.
    * @throws { BusinessException } 2300025 - Upload failed.
    * @throws { BusinessException } 2300026 - Failed to open/read local data from file/application.
    * @throws { BusinessException } 2300027 - Out of memory.
    * @throws { BusinessException } 2300028 - Timeout was reached.
    * @throws { BusinessException } 2300047 - Number of redirects hit maximum amount.
    * @throws { BusinessException } 2300052 - Server returned nothing (no headers, no data).
    * @throws { BusinessException } 2300055 - Failed sending data to the peer.
    * @throws { BusinessException } 2300056 - Failure when receiving data from the peer.
    * @throws { BusinessException } 2300058 - Problem with the local SSL certificate.
    * @throws { BusinessException } 2300059 - Couldn't use specified SSL cipher.
    * @throws { BusinessException } 2300060 - SSL peer certificate or SSH remote key was not OK.
    * @throws { BusinessException } 2300061 - Unrecognized or bad HTTP Content or Transfer-Encoding.
    * @throws { BusinessException } 2300063 - Maximum file size exceeded.
    * @throws { BusinessException } 2300070 - Disk full or allocation exceeded.
    * @throws { BusinessException } 2300073 - Remote file already exists.
    * @throws { BusinessException } 2300077 - Problem with the SSL CA cert (path? access rights?).
    * @throws { BusinessException } 2300078 - Remote file not found.
    * @throws { BusinessException } 2300094 - An authentication function returned an error.
    * @throws { BusinessException } 2300999 - Unknown Other Error.
    * @relation requestInStream(url: string, callback: AsyncCallback<number>): void
    */
    @!APILevel[
        21,
        permission: "ohos.permission.INTERNET",
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func requestInStream(url: String, callback: AsyncCallback<UInt32>): Unit
    
    /**
    * Registers an observer for HTTP Response Header events.
    * @param { (HashMap<String, String>) -> Unit } callback - the callback used to return the result.
    * @throws { IllegalArgumentException } The parameter check failed.
    * @relation on(type: "headersReceive", callback: Callback<Object>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func on(event: HttpRequestEvent, callback: Callback1Argument<HashMap<String, String>>): Unit
    
    /**
    * Registers a one-time observer for HTTP Response Header events.
    * @param { (HashMap<String, String>) -> Unit } callback - the callback used to return the result.
    * @throws { IllegalArgumentException } The parameter check failed.
    * @relation once(type: "headersReceive", callback: Callback<Object>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func once(event: HttpRequestEvent, callback: Callback1Argument<HashMap<String, String>>): Unit
    
    /**
    * Registers an observer for receiving HTTP Response data events continuously.
    * @param { callback: (Array<Byte>) -> Unit } callback - the callback used to return the result.
    * @throws { IllegalArgumentException } The parameter check failed.
    * @relation on(type: "dataReceive", callback: Callback<ArrayBuffer>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func on(event: HttpRequestEvent, callback: Callback1Argument<Array<Byte>>): Unit
    
    /**
    * Registers an observer for receiving HTTP Response data ends events.
    * @param { () -> Unit } callback - the callback used to return the result.
    * @throws { IllegalArgumentException } The parameter check failed.
    * @relation on(type: "dataEnd", callback: Callback<void>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func on(event: HttpRequestEvent, callback: Callback0Argument): Unit
    
    /**
    * Registers an observer for progress of receiving HTTP Response data events.
    * @param { (DataReceiveProgressInfo) -> Unit } callback - the callback used to return the result.
    * @throws { IllegalArgumentException } The parameter check failed.
    * @relation on(type: 'dataReceiveProgress', callback: Callback<DataReceiveProgressInfo>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func on(event: HttpRequestEvent, callback: Callback1Argument<DataReceiveProgressInfo>): Unit
    
    /**
    * Registers an observer for progress of sendSize HTTP Response data events.
    * @param { (DataSendProgressInfo) -> Unit } callback - the callback of on.
    * @throws { IllegalArgumentException } The parameter check failed.
    * @relation on(type: 'dataSendProgress', callback: Callback<DataSendProgressInfo>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func on(event: HttpRequestEvent, callback: Callback1Argument<DataSendProgressInfo>): Unit
    
    /**
    * Unregisters the observer for HttpRequest.
    * @throws { IllegalArgumentException } The parameter check failed.
    * @relation off(type: "headersReceive", callback?: Callback<Object>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func off(event: HttpRequestEvent, callback!: ?CallbackObject = None): Unit
}


/**
* Defines an object that stores the response to an HTTP request.
* @relation export interface HttpResponseCache
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class HttpResponseCache {
    /**
    * Writes data in the cache to the file system so that all the cached data can be accessed in the next HTTP request.
    * @returns { Unit } The promise returned by the flush.
    * @relation flush(callback: AsyncCallback<void>): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func flush(): Unit
    
    /**
    * Disables a cache and deletes the data in it.
    * @returns { Unit } The promise returned by the delete.
    * @relation delete(): Promise<void>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func delete(): Unit
}


/**
* http request event type.
*/
@Derive[Equatable, Hashable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public enum HttpRequestEvent {
    /**
    * headersReceive
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    HeadersReceive |
    /**
    * dataReceive
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    DataReceive |
    /**
    * dataEnd
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    DataEnd |
    /**
    * dataReceiveProgress
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    DataReceiveProgress |
    /**
    * dataSendProgress
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    DataSendProgress |
    ...
}



/**
* Defines an HTTP request method.
* @relation export enum RequestMethod
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public enum RequestMethod {
    /**
    * OPTIONS method.
    * @relation OPTIONS = "OPTIONS"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Options |
    /**
    * GET method.
    * @relation GET = "GET"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Get |
    /**
    * HEAD method.
    * @relation HEAD = "HEAD"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Head |
    /**
    * POST method.
    * @relation POST = "POST"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Post |
    /**
    * PUT method.
    * @relation PUT = "PUT"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Put |
    /**
    * DELETE method.
    * @relation DELETE = "DELETE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Delete |
    /**
    * TRACE method.
    * @relation TRACE = "TRACE"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Trace |
    /**
    * CONNECT method.
    * @relation CONNECT = "CONNECT"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Connect |
    ...
}


/**
* Supported protocols.
* @relation export enum HttpProtocol
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public enum HttpProtocol {
    /**
    * Protocol http1.1
    * @relation HTTP1_1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Http1_1 |
    /**
    * Protocol http2
    * @relation HTTP2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Http2 |
    /**
    * Protocol http3 for https only.
    * @relation HTTP3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Http3 |
    ...
}


/**
* Indicates the type of the returned data.
* @relation export enum HttpDataType
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public enum HttpDataType {
    /**
    * The returned type is string.
    * @relation STRING
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    StringValue |
    /**
    * The returned type is ArrayBuffer.
    * @relation ARRAY_BUFFER
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    ArrayBuffer |
    ...
}


/**
* Indicates the type of http data.
* @relation string | Object | ArrayBuffer
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public enum HttpData {
    /**
    * The returned type is string.
    * @relation STRING
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    StringData(String) |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    ArrayData(Array<Byte>) |
    ...
}


/**
* Enum for proxy using
*/
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
    NotUse |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    UseDefault |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    UseSpecified(HttpProxy) |
    ...
}


/**
* Enum for certificate types
* @relation export enum CertType
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public enum CertType {
    /**
    * PEM format certificate
    * @relation PEM
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Pem |
    /**
    * DER format certificate
    * @relation DER
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Der |
    /**
    * P12 format certificate
    * @relation P12
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    P12 |
    ...
}


/**
* Specifies the type and value range of the optional parameters in the HTTP request.
* @relation export interface HttpRequestOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class HttpRequestOptions {
    /**
    * Request method,default is GET.
    * @relation method?: RequestMethod
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var method: RequestMethod
    
    /**
    * Additional data of the request.
    * extraData can be a string or an Object (API 6) or an ArrayBuffer(API 8).
    * @relation extraData?: string | Object | ArrayBuffer
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var extraData: HttpData
    
    /**
    * Data type to be returned. If this parameter is set, the system preferentially returns the specified type.
    * @relation expectDataType?: HttpDataType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var expectDataType: ?HttpDataType
    
    /**
    * default is true
    * @relation usingCache?: boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var usingCache: Bool
    
    /**
    * [1, 1000], default is 1.
    * @relation priority?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var priority: UInt32
    
    /**
    * HTTP request header. default is 'content-type': 'application/json'
    * @relation header?: Object
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var header: HashMap<String, String>
    
    /**
    * Read timeout period. The default value is 60,000, in ms.
    * @relation readTimeout?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var readTimeout: UInt32
    
    /**
    * Connection timeout interval. The default value is 60,000, in ms.
    * @relation connectTimeout?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var connectTimeout: UInt32
    
    /**
    * default is automatically specified by the system.
    * @relation usingProtocol?: HttpProtocol
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var usingProtocol: ?HttpProtocol
    
    /**
    * If this parameter is set as type of boolean, the system will use default proxy or not use proxy.
    * If this parameter is set as type of HttpProxy, the system will use the specified HttpProxy.
    * @relation usingProxy?: boolean | HttpProxy
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var usingProxy: UsingProxy
    
    /**
    * If this parameter is set, the system will use ca path specified by user, or else use preset ca by the system.
    * @relation caPath?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var caPath: String
    
    /**
    * Used to set to uploading or downloading the start bytes. The default value is 0.
    * HTTP standard (RFC 7233 section 3.1) allows servers to ignore range requests.
    * For HTTP PUT uploads this option should not be used, since it may conflict with other options.
    * @relation resumeFrom?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var resumeFrom: Int64
    
    /**
    * Used to set to uploading or downloading the end bytes. Translate to the end if not set.
    * HTTP standard (RFC 7233 section 3.1) allows servers to ignore range requests.
    * For HTTP PUT uploads this option should not be used, since it may conflict with other options.
    * @relation resumeTo?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var resumeTo: Int64
    
    /**
    * Support the application to pass in client certificates, allowing the server to verify the client's identity.
    * @relation clientCert?: ClientCert
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var clientCert: ClientCert
    
    /**
    * If this parameter is set, incoming DNS resolution server URL for the DoH server to use for name resolving.
    * The parameter must be URL-encoded in the following format: "https://host:port/path".
    * It MUST specify an HTTPS URL.
    * @relation dnsOverHttps?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var dnsOverHttps: String
    
    /**
    * If this parameter is set, use the specified DNS server for DNS resolution.
    * Multiple DNS resolution servers can be set up, with a maximum of 3 servers.
    * Only take the first three if there are more than three.
    * @relation dnsServers?: Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var dnsServers: Array<String>
    
    /**
    * The maximum limit of the response body. The default value is 5 * 1024 * 1024, in Byte.
    * The maximum value is 100 * 1024 *1024, in Byte.
    * @relation maxLimit?: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var maxLimit: UInt32
    
    /**
    * The data fields which is supported by the HTTP protocol to post
    * forms and by the SMTP and IMAP protocols to provide
    * the email data to send/upload.
    * @relation multiFormDataList?: Array<MultiFormData>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var multiFormDataList: Array<MultiFormData>
    
    /**
    * init the HttpRequestOptions
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public init(method!: RequestMethod = RequestMethod.Get, extraData!: HttpData = HttpData.StringData(""),
        expectDataType!: ?HttpDataType = None, usingCache!: Bool = true, priority!: UInt32 = 1, 
        header!: HashMap<String, String> = HashMap<String, String>(), readTimeout!: UInt32 = 60000, 
        connectTimeout!: UInt32 = 60000, usingProtocol!: ?HttpProtocol = None,
        usingProxy!: UsingProxy = UsingProxy.UseDefault, caPath!: String = "", resumeFrom!: Int64 = 0, 
        resumeTo!: Int64 = 0, clientCert!: ClientCert = ClientCert("",""), dnsOverHttps!: String = "",
        dnsServers!: Array<String> = Array<String>(), maxLimit!: UInt32 = 5 * 1024 * 1024, 
        multiFormDataList!: Array<MultiFormData> = Array<MultiFormData>())
}


/**
* Defines the response to an HTTP request.
* @relation export interface HttpResponse 
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class HttpResponse {
    /**
    * result can be a string (API 6) or an ArrayBuffer(API 8). Object is deprecated from API 8.
    * @relation result: string | Object | ArrayBuffer
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var result: HttpData
    
    /**
    * If the resultType is string, you can get result directly.
    * If the resultType is Object, you can get result such as this: result['key'].
    * If the resultType is ArrayBuffer, you can use ArrayBuffer to create the binary objects.
    * @relation resultType: HttpDataType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var resultType: HttpDataType
    
    /**
    * Server status code.
    * @relation responseCode: ResponseCode | number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var responseCode: UInt32
    
    /**
    * All headers in the response from the server.
    * @relation header: Object
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var header: HashMap<String, String>
    
    /**
    * Cookies returned by the server.
    * @relation cookies: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var cookies: String
    
    /**
    * The time taken of various stages of HTTP request.
    * @relation performanceTiming: PerformanceTiming
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var performanceTiming: PerformanceTiming
}


/**
* Counting the time taken of various stages of HTTP request.
* @relation export interface PerformanceTiming
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class PerformanceTiming {
    /**
    * Time taken from startup to DNS resolution completion, in milliseconds.
    * @relation dnsTiming: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var dnsTiming: Float64
    
    /**
    * Time taken from startup to TCP connection completion, in milliseconds.
    * @relation tcpTiming: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var tcpTiming: Float64
    
    /**
    * Time taken from startup to TLS connection completion, in milliseconds.
    * @relation tlsTiming: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var tlsTiming: Float64
    
    /**
    * Time taken from startup to start sending the first byte, in milliseconds.
    * @relation firstSendTiming: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var firstSendTiming: Float64
    
    /**
    * Time taken from startup to receiving the first byte, in milliseconds.
    * @relation firstReceiveTiming: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var firstReceiveTiming: Float64
    
    /**
    * Time taken from startup to the completion of the request, in milliseconds.
    * @relation totalFinishTiming: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var totalFinishTiming: Float64
    
    /**
    * Time taken from startup to completion of all redirection steps, in milliseconds.
    * @relation redirectTiming: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var redirectTiming: Float64
    
    /**
    * Time taken from HTTP request to header completion, in milliseconds.
    * @relation responseHeaderTiming: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var responseHeaderTiming: Float64
    
    /**
    * Time taken from HTTP Request to body completion, in milliseconds.
    * @relation responseBodyTiming: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var responseBodyTiming: Float64
    
    /**
    * Time taken from HTTP Request to callback to the application, in milliseconds.
    * @relation totalTiming: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var totalTiming: Float64
}


/**
* This interface is used to obtain the progress information of file upload or download.
* @relation export interface DataReceiveProgressInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class DataReceiveProgressInfo {
    /**
    * Number of data bytes received.
    * @relation receiveSize: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var receiveSize: Int64
    
    /**
    * Total number of bytes to receive.
    * @relation totalSize: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var totalSize: Int64
}


/**
* This interface is used to monitor the progress of sending data.
* @relation export interface DataSendProgressInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class DataSendProgressInfo {
    /**
    * Used to specify the data size to be sent.
    * @relation sendSize: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var sendSize: Int64
    
    /**
    * Total number of bytes to receive.
    * @relation totalSize: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var totalSize: Int64
}


/**
* The clientCert field of the client certificate, which includes 4 attributes:
* client certificate (cert), client certificate type (certType), certificate private key (key), and passphrase (keyPassword).
* @relation export interface ClientCert
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class ClientCert {
    /**
    * The path to the client certificate file.
    * @relation certPath: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var certPath: String
    
    /**
    * The path of the client certificate private key file.
    * @relation keyPath: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var keyPath: String
    
    /**
    * The type of the client certificate.
    * @relation certType?: CertType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var certType: CertType
    
    /**
    * Password required to use the client certificate private key.
    * @relation keyPassword?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var keyPassword: String
    
    /**
    * init the ClientCert
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public init(certPath: String, keyPath: String, certType!: CertType = CertType.Pem, keyPassword!: String = "")
}


/**
* Represents the properties of a form object.
* @relation export interface MultiFormData
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Communication.NetStack"
]
public class MultiFormData {
    /**
    * MIME name for the data field.
    * @relation name: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var name: String
    
    /**
    * Content type of the data field.
    * @relation contentType: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var contentType: String
    
    /**
    * Remote file name for the data field.
    * @relation remoteFileName?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var remoteFileName: String
    
    /**
    * This parameter sets a mime part's body content from memory data.
    * @relation data?: string | Object | ArrayBuffer
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var data: HttpData
    
    /**
    * This parameter sets a mime part's body content from the file's contents.
    * This is an alternative to curl_mime_data for setting data to a mime part.
    * If data is empty, filePath must be set.
    * If data has a value, filePath does not take effect.
    * @relation filePath?: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var filePath: String
    
    /**
    * init the MultiFormData
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public init(name: String, contentType: String,  remoteFileName!: String = "",
        data!: HttpData = HttpData.StringData(""), filePath!: String = "")
}


