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

package ohos.request.agent
import std.collection.*
import std.regex.*
import std.sync.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.*


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public enum Action <: ToString {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    DOWNLOAD |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    UPLOAD |
    ...
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public func toString(): String
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public enum Mode <: ToString {
    @!APILevel[
        21,
        atomicservice: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    BACKGROUND |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    FOREGROUND |
    ...
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public func toString(): String
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public enum Network <: ToString {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    ANY |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    WIFI |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    CELLULAR |
    ...
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public func toString(): String
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public enum BroadcastEvent {
    COMPLETE |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public prop value: String
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public class FileSpec {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public FileSpec(
        /*
         * A relative path string, like "./xxx/yyy/zzz.html", "xxx/yyy/zzz.html", in the caller's cache directory.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var path!: String,

        /*
         * The MIME type of the file.
         * The default is obtained by the suffix of the filename.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var mimeType!: ?String = None,

        /*
         * The filename, the default is obtained by path.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var filename!: ?String = None,

        /*
         * The extras for the file information.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var extras!: ?HashMap<String, String> = None
    )
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public enum FormItemValueType {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    STR(String) |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    FILE(FileSpec) |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    FILES(Array<FileSpec>) |
    ...
}


/*
* The extras for the file information.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public class FormItem {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public FormItem(
        /*
         * The item's name.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var name!: String,

        /*
         * The item's value.
         * @type { String  FileSpec  | Array<FileSpec>  |}
         * @throws { BusinessError } 401 - Parameter error.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var value!: FormItemValueType
    )
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public enum ConfigDataType {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    STR(String) |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    FORMITEMS(Array<FormItem>) |
    ...
}


/*
* The configurations for a task.
* Using a flexible configuration for clear upload and download functions.
* If without emphasis, an option is for any task.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public class Config {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public Config(
        /*
         * The task action, upload or download.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var action!: Action,
        /*
         * The task action, upload or download.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var url!: String,
        /*
         * The title for a task, give a meaningful title please.
         * The maximum length is 256 characters.
         * The default is upload or download, consistent with its action.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var title!: ?String = None,
        /*
         * The details for a task.
         * The maximum length is 1024 characters.
         * The default is empty string.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var description!: ?String = None,
        /*
         * Indicates task's mode.
         * The default is BACKGROUND.
         * For frontend task, it has callbacks.
         * For background task, it has notifications and fallback.
         * The cross-platform default is FOREGROUND.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var mode!: ?Mode = None,
        /*
         * The solution choice when path already exists during download.
         * Currently support:
         * true, rewrite the existed file.
         * false, go to fail.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var overwrite!: Bool = false,
        /*
         * The HTTP standard method for upload or download: GET/POST/PUT.
         * Case insensitive.
         * For upload, use PUT/POST, the default is PUT.
         * For download, use GET/POST, the default is GET.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var method!: ?String = None,
        /*
         * The HTTP headers.
         * For upload request, the `Content-Type` is forced to `multipart/form-data`.
         * For download request, the default `Content-Type` is `application/json`.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var headers!: ?HashMap<String, String> = None,
        /*
         * The arguments, it can be any text, uses json usually.
         * For download, it can be raw string, the default is empty string.
         * For upload, it can be form items, the default is a empty form.
         * there must be one `FileSpec` item at least or will be a parameter error.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var data!: ?ConfigDataType = None,
        /*
         * The path to save the downloaded file, the default is "./".
         * Currently support:
         * 1: relative path, like "./xxx/yyy/zzz.html", "xxx/yyy/zzz.html", under caller's cache folder.
         * 2: uri path, like "datashare://bundle/xxx/yyy/zzz.html", the data provider must allow the caller's access.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var saveas!: ?String = None,
        /*
         * The network.
         * The default is Network.ANY
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var network!: Network = Network.ANY,
        /*
         * Allows work in metered network or not.
         * The default is false.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var metered!: Bool = false,
        /*
         * Allows work in roaming network or not.
         * The default is true.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var roaming!: Bool = true,
        /*
         * Enable automatic retry or not for the background task.
         * The frontend task is always fast-fail.
         */
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var retry!: Bool = true,
        /*
         * Allows redirect or not.
         * The default is true.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var redirect!: Bool = true,
        /*
         * The index of paths for a task.
         * Usually used for a continuous job.
         * The default is 0.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var index!: UInt32 = 0,
        /*
         * The start point of a file.
         * Usually used for a continuous job.
         * It will set the "Range" header in download.
         * It will start read at the point in upload.
         * The default is 0.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var begins!: Int64 = 0,
        /*
         * The end point of a file.
         * Usually used for a continuous job.
         * It will set The "Range" header in download.
         * It will end read at the point in upload.
         * The default is -1 indicating the end of the data for upload or download.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var ends!: Int64 = -1,
        /*
         * The policy of the progress notification for background task.
         * If false: only completed or failed notification, the default.
         * If true, emits every progress, completed or failed notifications.
         */
        @!APILevel[
            21,
            atomicservice: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var gauge!: Bool = false,
        /*
         * Breaks when fail to fetch filesize before upload/download or not.
         * Uses filesize for a precise gauge.
         * The default is false, set size as -1 indicating the case.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var precise!: Bool = false,
        /*
         * For in-application layer isolation.
         * If given:
         *   the minimum is 8 bytes.
         *   the maximum is 2048 bytes.
         * Creates a task with token, then must provide it during normal query.
         * So saves the token carefully, it can not be retrieved by query.
         * Or leave it empty.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var token!: ?String = None,
        /*
         * The priority of this task.
         * Front-end tasks have higher priority than back-end tasks.
         * In tasks of the same mode, the smaller the number, the higher the priority.
         * The default is 0.
         */
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var priority!: UInt32 = 0,
        /*
         * The extras for the configuration.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var extras!: ?HashMap<String, String> = None
    )
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public enum State <: ToString {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    INITIALIZED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    WAITING |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    RUNNING |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    RETRYING |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    PAUSED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    STOPPED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    COMPLETED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    FAILED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    REMOVED |
    ...
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public func toString(): String
}


/*
* The progress data structure.
* Upload allows multiple files per upload task.
* Only one file in a download task.
* So using a unified data structure for progress.
* Generally:
* 1: sum(sizes) is total files size of the task.
* 2: float(processed)/sizes[counter] is the progress for the current processing file.
* 3: float(sum(sizes[:index])+processed)/sum(sizes) is the summary progress for a task.
* If fetch file size in failure, the size of the file in sizes will be set as -1.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public class Progress {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public Progress(
        /*
         * The current state of the task.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public let state!: State,
        /*
         * The current processing file index in a task.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public let index!: UInt32,
        /*
         * The processed data size for the current file in a task.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public let processed!: Int64,
        /*
         * The sizes of files in a task.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public let sizes!: Array<Int64>,
        /*
         * The extras for an interaction.
         * Such as headers and body of response from server.
         * But when the Content-Disposition header responded, the body will be into the uri of its attachment only, the body here is empty.
         * {"headers": {"key": v}, "body": "contents"}.
         * The "body" field is not supported in cross-platform scenarios.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public let extras!: HashMap<String, String>
    )
}


/**
* The HTTP response.
*
* @interface HttpResponseMessage
* @syscap SystemCapability.Request.FileTransferAgent
* @atomicservice
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public class HttpResponseMessage {
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public enum Faults <: ToString {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    OTHERS |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    DISCONNECTED |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    TIMEOUT |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    PROTOCOL |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    FSIO |
    ...
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public func toString(): String
}


/*
* The filter data structure.
* Used for search, given fields works as **LOGICAL AND**.
* Invalid value may cause a parameter error.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public class Filter {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public Filter(
        /*
         * Specify the package name of an application.
         * Only for advanced search, common search will be fixed to the caller.
         * A "*" means any bundle.
         * Hide this for inner system use.
         */
        var bundle!: ?String = None,
        /*
         * Specify the end Unix timestamp.
         * The default is the moment of calling.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var before!: ?Int64 = None,
        /*
         * Specify the start Unix timestamp.
         * The default is "`before` - 24 hours".
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var after!: ?Int64 = None,
        /*
         * Specify the state of tasks.
         * The default is any state.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var state!: ?State = None,
        /*
         * Specify the action of tasks, "upload" or "download", case insensitive.
         * The default is upload and download.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var action!: ?Action = None,
        /*
         * Specify task's mode.
         * The default is FOREGROUND and BACKGROUND.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public var mode!: ?Mode = None
    )
}


/*
* The task information data structure for query results.
* Provides common query and advanced query, visible range of fields is different.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public class TaskInfo {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let uid: ?String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let bundle: ?String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let saveas: ?String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let url: ?String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let data: ?ConfigDataType
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let tid: String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let title: String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let description: String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let action: Action
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let mode: Mode
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let priority: UInt32
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let mimeType: String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let progress: Progress
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let gauge: Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let ctime: UInt64
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let mtime: UInt64
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let retry: Bool
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let tries: UInt32
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let faults: ?Faults
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let reason: String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public let extras: ?HashMap<String, String>
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public init(
        uid!: ?String = None,
        bundle!: ?String = None,
        saveas!: ?String = None,
        url!: ?String = None,
        data!: ?ConfigDataType = None,
        tid!: String,
        title!: String,
        description!: String,
        action!: Action,
        mode!: Mode,
        priority!: UInt32,
        mimeType!: String,
        progress!: Progress,
        gauge!: Bool,
        ctime!: UInt64,
        mtime!: UInt64,
        retry!: Bool,
        tries!: UInt32,
        reason!: String,
        faults!: ?Faults,
        extras!: ?HashMap<String, String>
    )
}


/*
* The task entry.
* New task' status is "initialized" and enqueue.
* Can `start` a initialized task.
* Can `pause` a waiting/running/retrying background task.
* Can `resume` a paused background task.
* Can `stop` a running/waiting/retrying task and dequeue it.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public class Task {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public Task(
        /*
         * The task id, unique on system.
         * Generated automatically by system.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public let tid: String,
        /*
         * The configurations for the task.
         */
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Request.FileTransferAgent"
        ]
        public let config: Config
    )
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public func on(event: String, callback: Callback1Argument<HttpResponseMessage>): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public func on(event: String, callback: Callback1Argument<Progress>): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public func off(event: String, callback!: ?CallbackObject = None): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        permission: "ohos.permission.INTERNET",
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public func start(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public func pause(): Unit
    
    @!APILevel[
        21,
        permission: "ohos.permission.INTERNET",
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public func resume(): Unit
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Request.FileTransferAgent"
    ]
    public func stop(): Unit
}


type StageContext = CPointer<Unit>
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    permission: "ohos.permission.INTERNET",
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public func create(context: StageContext, config: Config): Task


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public func remove(id: String): Unit


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public func getTask(context: StageContext, id: String, token!: ?String = None): Task


@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public func show(id: String): TaskInfo


@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public func touch(id: String, token: String): TaskInfo


@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public func search(): Array<String>


@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Request.FileTransferAgent"
]
public func search(filter: Filter): Array<String>


