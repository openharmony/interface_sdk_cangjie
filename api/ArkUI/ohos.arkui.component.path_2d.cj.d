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

package ohos.arkui.component.path_2d
import ohos.arkui.component.native_struct.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Path2D <: RemoteDataLite {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(path: String)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func addPath(path2D: Path2D): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func setTransform(
        scaleX: Float64,
        skewX: Float64,
        skewY: Float64,
        scaleY: Float64,
        translateX: Float64,
        translateY: Float64
    ): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func moveTo(x: Float64, y: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func lineTo(x: Float64, y: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func arc(
        x: Float64,
        y: Float64,
        radius: Float64,
        startAngle: Float64,
        endAngle: Float64,
        counterclockwise!: Bool = false
    ): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func arcTo(
        x1: Float64,
        y1: Float64,
        x2: Float64,
        y2: Float64,
        radius: Float64
    ): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func quadraticCurveTo(
        cpx: Float64,
        cpy: Float64,
        x: Float64,
        y: Float64
    ): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bezierCurveTo(
        cp1x: Float64,
        cp1y: Float64,
        cp2x: Float64,
        cp2y: Float64,
        x: Float64,
        y: Float64
    ): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func ellipse(
        x: Float64,
        y: Float64,
        radiusX: Float64,
        radiusY: Float64,
        rotation: Float64,
        startAngle: Float64,
        endAngle: Float64,
        counterclockwise!: Bool = false
    ): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func rect(x: Float64, y: Float64, width: Float64, height: Float64): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func closePath(): Unit
}

