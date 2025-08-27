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

package ohos.arkui.component.video
import ohos.arkui.component.common.*
import ohos.base.*
import ohos.ffi.*
import ohos.resource.*
import ohos.labels.APILevel
import std.convert.*
import ohos.arkui.component.util.*


/**
* Defines the video controller.
*
* @relation interface PreparedInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PreparedInfo {
    /**
    * The duration of the current video, in seconds.
    * Anonymous Object Rectification.
    *
    * @type { Int32 }
    * @relation duration: number
    */
    public var duration: Int32
}


/**
* Playback information of the video.
*
* @relation interface PlaybackInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PlaybackInfo {
    /**
    * The duration of the current video, in seconds.
    * Anonymous Object Rectification.
    *
    * @type { Int32 }
    * @relation time: number
    */
    public var time: Int32
}


/**
* Fullscreen information of the video.
*
* @relation interface FullscreenInfo
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class FullscreenInfo {
    /**
    * The flag whether play in full screen.
    * Anonymous Object Rectification.
    *
    * @type { Bool }
    * @relation fullscreen: boolean
    */
    public var fullscreen: Bool
}


/**
* Defines the video controller.
*
* @relation class VideoController
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class VideoController <: RemoteDataLite {
    /**
    * constructor.
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
    * Provides events to play.
    *
    * @relation start(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func start(): Unit
    
    /**
    * Provides a pause event for playback.
    *
    * @relation pause(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func pause(): Unit
    
    /**
    * Provides an event to stop playback.
    *
    * @relation stop(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func stop(): Unit
    
    /**
    * Provide the progress method of video playback.
    *
    * @param { Int32 } value
    * @param { SeekMode } seekMode
    * @relation setCurrentTime(value: number, seekMode: SeekMode): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setCurrentTime(value: Int32, seekMode: SeekMode): Unit
    
    /**
    * Provides a full screen playback method.
    *
    * @param { Bool } value
    * @relation requestFullscreen(value: boolean): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func requestFullscreen(value: Bool): Unit
    
    /**
    * Provides a method to exit full screen playback.
    *
    * @relation exitFullscreen(): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func exitFullscreen(): Unit
}


/**
* Defines Video Component.
*
* @relation const Video: VideoInterface
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Video <: ViewBase {
    /**
    * Set the value.
    *
    * @param { ResourceStr } src
    * @param { PlaybackSpeed } currentProgressRate
    * @param { ResourceStr } previewUri
    * @param { VideoController } controller
    * @returns { Video }
    * @relation (value: VideoOptions): VideoAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        src!: ResourceStr = "",
        currentProgressRate!: PlaybackSpeed = Speed_Forward_1_00_X,
        previewUri!: ResourceStr = "",
        controller!: VideoController = VideoController()
    )
    
    /**
    * Called when judging whether the video is muted.
    *
    * @param { Bool } value
    * @returns { This }
    * @relation muted(value: boolean): VideoAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func muted(value: Bool): This
    
    /**
    * Called when judging whether the video is played automatically.
    *
    * @param { Bool } value
    * @returns { This }
    * @relation autoPlay(value: boolean): VideoAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func autoPlay(value: Bool): This
    
    /**
    * Called when judging whether the control bar is displayed.
    *
    * @param { Bool } value
    * @returns { This }
    * @relation controls(value: boolean): VideoAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func controls(value: Bool): This
    
    /**
    * Called when determining the zoom type of the video source.
    *
    * @param { ImageFit } value
    * @returns { This }
    * @relation objectFit(value: ImageFit): VideoAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func objectFit(value: ImageFit): This
    
    /**
    * Called when judging whether the video is played circular.
    *
    * @param { Bool } value
    * @returns { This }
    * @relation loop(value: boolean): VideoAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func loop(value: Bool): This
    
    /**
    * Called when the video is played.
    * Anonymous Object Rectification.
    *
    * @param { VoidCallback } event
    * @returns { This }
    * @relation onStart(event: VoidCallback): VideoAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onStart(event: VoidCallback): This
    
    /**
    * Called when the video is paused.
    * Anonymous Object Rectification.
    *
    * @param { VoidCallback } event
    * @returns { This }
    * @relation onPause(event: VoidCallback): VideoAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onPause(event: VoidCallback): This
    
    /**
    * Called when the video playback ends.
    * Anonymous Object Rectification.
    *
    * @param { VoidCallback } event
    * @returns { This }
    * @relation onFinish(event: VoidCallback): VideoAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onFinish(event: () -> Unit): This
    
    /**
    * Called when playback fails.
    *
    * @param { VoidCallback } event
    * @returns { This}
    * @relation onError(event: VoidCallback): VideoAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onError(event: VoidCallback): This
    
    /**
    * Called when the video preparation is complete.
    * Anonymous Object Rectification.
    *
    * @param { Callback<PreparedInfo, Unit> } callback
    * @returns { This}
    * @relation onPrepared(callback: Callback<PreparedInfo>): VideoAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onPrepared(callback: Callback<PreparedInfo, Unit>): This
    
    /**
    * Called when the time information is reported when the progress bar process is operated.
    * Anonymous Object Rectification.
    *
    * @param { Callback<PlaybackInfo, Unit> } callback
    * @returns { This}
    * @relation onSeeking(callback: Callback<PlaybackInfo>): VideoAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onSeeking(callback: Callback<PlaybackInfo, Unit>): This
    
    /**
    * Called when the playback time information is reported after the operation progress bar is completed.
    * Anonymous Object Rectification.
    *
    * @param { Callback<PlaybackInfo, Unit> } callback
    * @returns { This }
    * @relation onSeeked(callback: Callback<PlaybackInfo>): VideoAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onSeeked(callback: Callback<PlaybackInfo, Unit>): This
    
    /**
    * Called when the playback progress changes.
    * Anonymous Object Rectification.
    *
    * @param { Callback<PlaybackInfo, Unit> } callback
    * @returns { This }
    * @relation onUpdate(callback: Callback<PlaybackInfo>): VideoAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onUpdate(callback: Callback<PlaybackInfo, Unit>): This
    
    /**
    * Called when the video enters and exits the full screen.
    * Anonymous Object Rectification.
    *
    * @param { Callback<FullscreenInfo, Unit> } callback
    * @returns { This }
    * @relation onFullscreenChange(callback: Callback<FullscreenInfo>): VideoAttribute
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onFullscreenChange(callback: Callback<FullscreenInfo, Unit>): This
}


