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

package ohos.arkui.component.common
import ohos.ark_interop.JSInteropType
import ohos.hilog.HilogChannel

import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import std.convert.*
import std.deriving.Derive
import ohos.multimedia.image.PixelMap
import std.math.*
import ohos.hi_trace_meter.*
import ohos.arkui.shape.*
import std.regex.*
internal import ohos.labels.APILevel
internal import ohos.base.*
internal import ohos.ffi.*
internal import std.collection.*
internal import ohos.resource.*

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class EventTarget {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var area: Area
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(area: Area)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Area {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var width: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var height: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var position: Position
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var globalPosition: Position
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        width: Length,
        height: Length,
        position: Position,
        globalPosition: Position
    )
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Position {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(x!: Length = 0, y!: Length = 0)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class MotionPathOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var path: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var from: Float64 = 0.0
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var to: Float64 = 1.0
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var rotatable: Bool = false
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        path!: String,
        from!: Float64 = 0.0,
        to!: Float64 = 1.0,
        rotatable!: Bool = false
    )
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SharedTransitionOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var duration: Int32 = 1000
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var curve: Curve = Curve.Linear
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var delay: Int32 = 0
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var motionPath: MotionPathOptions = MotionPathOptions(path: "")
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var zIndex: Int32 = 0
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var effectType: SharedTransitionEffectType = SharedTransitionEffectType.Exchange
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        duration!: Int32 = 1000,
        curve!: Curve = Curve.Linear,
        delay!: Int32 = 0,
        motionPath!: MotionPathOptions = MotionPathOptions(path: ""),
        zIndex!: Int32 = 0,
        effectType!: SharedTransitionEffectType = SharedTransitionEffectType.Exchange
    )
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AnimateParam {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var duration: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var tempo: Float32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var curve: Curve
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var delay: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var iterations: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var playMode: PlayMode
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var onFinish: Option<() -> Unit>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var finishCallbackType: FinishCallbackType
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var expectedFrameRateRange: Option<ExpectedFrameRateRange>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        duration!: Int32 = 1000,
        tempo!: Float32 = 1.0,
        curve!: Curve = Curve.EaseInOut,
        delay!: Int32 = 0,
        iterations!: Int32 = 1,
        playMode!: PlayMode = PlayMode.Normal,
        onFinish!: Option<() -> Unit> = Option.None,
        finishCallbackType!: FinishCallbackType = FinishCallbackType.Removed,
        expectedFrameRateRange!: Option<ExpectedFrameRateRange> = Option.None
    )
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class HorizontalAlignment {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var anchor: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var align: HorizontalAlign
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(anchor: String, align: HorizontalAlign)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class VerticalAlignment {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var anchor: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var align: VerticalAlign
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(anchor: String, align: VerticalAlign)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Bias {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var horizontal: Float32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var vertical: Float32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(horizontal!: Float32 = 0.5, vertical!: Float32 = 0.5)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Fonts {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var size: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var weight: FontWeight
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var family: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var style: FontStyle
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(size!: Length = 16.fp, weight!: FontWeight = FontWeight.Normal, family!: ResourceStr = "HarmonyOS Sans",
        style!: FontStyle = FontStyle.Normal)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class BorderRadiuses {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var topLeft: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var topRight: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var bottomLeft: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var bottomRight: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(topLeft!: Length = 0.vp, topRight!: Length = 0.vp, bottomLeft!: Length = 0.vp,
        bottomRight!: Length = 0.vp)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Margin {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(top!: Length = 0.vp, right!: Length = 0.vp, bottom!: Length = 0.vp, left!: Length = 0.vp)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ShadowOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var radius: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var shadowType: ShadowType
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var color: ResourceColor
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offsetX: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offsetY: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var fill: Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        radius!: Float64,
        shadowType!: ShadowType = ShadowType.Color,
        color!: ResourceColor = Color.Black,
        offsetX!: Float64 = 0.0,
        offsetY!: Float64 = 0.0,
        fill!: Bool = false
    )
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Offset {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var dx: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var dy: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(dx: Length, dy: Length)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ExpectedFrameRateRange {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var min: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var max: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var expected: Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        min!: Int32,
        max!: Int32,
        expected!: Int32
    )
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AlignRuleOption {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var left: ?HorizontalAlignment
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var right: ?HorizontalAlignment
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var middle: ?HorizontalAlignment
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var top: ?VerticalAlignment
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var bottom: ?VerticalAlignment
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var center: ?VerticalAlignment
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var bias: Bias
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(left!: ?HorizontalAlignment = None, right!: ?HorizontalAlignment = None,
        middle!: ?HorizontalAlignment = None, top!: ?VerticalAlignment = None,
        bottom!: ?VerticalAlignment = None, center!: ?VerticalAlignment = None,
        bias!: Bias = Bias()
    )
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class EdgeStyles {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var top: BorderStyle
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var right: BorderStyle
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var bottom: BorderStyle
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var left: BorderStyle
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        top!: BorderStyle = BorderStyle.Solid,
        right!: BorderStyle = BorderStyle.Solid,
        bottom!: BorderStyle = BorderStyle.Solid,
        left!: BorderStyle = BorderStyle.Solid
    )
}

@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class MultiShadowOptions {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var radius: Length = 20.vp
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offsetX: Length = 5.vp
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offsetY: Length = 5.vp
}

@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PickerTextStyle {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var color: ?ResourceColor
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var font: ?Font
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(color!: ?ResourceColor = None, font!: ?Font = None)
}

@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Font {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var size: ?Length
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var weight: ?FontWeight
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var family: ?ResourceStr
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var style: ?FontStyle
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(size!: ?Length = None, weight!: ?FontWeight = None, family!: ?ResourceStr = None, style!: ?FontStyle = None)
}

/**
* TextContentControllerBase
*
* @relation declare abstract class TextContentControllerBase
*/
public interface TextContentControllerBase {
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface UINodeBase {
    func initial(): Unit
    
    func update(): Unit
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func getInspectorByKey(id: String): String

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func getInspectorTree(): String

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func sendEventByKey(id: String, action: IntNative, params: String): Bool

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func sendTouchEvent(event: TouchObject): Bool

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func sendKeyEvent(event: KeyEvent): Bool

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func sendMouseEvent(event: MouseEvent): Bool

 {
    Left |
    Right |
    ...
}

 {
    
    
    
}

 {
    Normal |
    Number |
    Email |
    Password |
    PhoneNumber |
    ...
}

 {
    
    
    
}

 {
    Go |
    Search |
    Send |
    Next |
    Done |
    Previous |
    NewLine |
    ...
}

 {
    
    
    
}

 {
    Row |
    Column |
    RowReverse |
    ColumnReverse |
    ...
}

 {
    
    
    
}

 {
    NoWrap |
    Wrap |
    WrapReverse |
    ...
}

 {
    
    
    
}

 {
    Start |
    Center |
    End |
    SpaceBetween |
    SpaceAround |
    SpaceEvenly |
    ...
}

 {
    
    
    
}

 {
    Auto |
    Start |
    Center |
    End |
    Stretch |
    Baseline |
    ...
}

 {
    
    
    
}

 {
    Checkbox |
    Switch |
    Button |
    ...
}

 {
    
    
    
}

 {
    Normal |
    Italic |
    ...
}

 {
    
    
    
}

 {
    TopStart |
    Top |
    TopEnd |
    Start |
    Center |
    End |
    BottomStart |
    Bottom |
    BottomEnd |
    ...
}

 {
    
    
    
}

 {
    Start |
    Center |
    End |
    ...
}

 {
    
    
    
}

 {
    Top |
    Center |
    Bottom |
    ...
}

 {
    
    
    
}

 {
    Normal |
    Bold |
    Bolder |
    Lighter |
    Medium |
    Regular |
    W100 |
    W200 |
    W300 |
    W400 |
    W500 |
    W600 |
    W700 |
    W800 |
    W900 |
    ...
}

 {
    
    
    
}

 {
    Start |
    End |
    ...
}

 {
    
    
    
}

 {
    Fixed |
    Scrollable |
    ...
}

 {
    
    
    
}

 {
    Color |
    Blur |
    ...
}

 {
    
    
    
}

 {
    None |
    Underline |
    Overline |
    LineThrough |
    ...
}

 {
    
    
    
}

 {
    Start |
    Center |
    End |
    ...
}

 {
    
    
    
}

 {
    Clip |
    Ellipsis |
    None |
    ...
}

 {
    
    
    
}

 {
    Normal |
    BreakAll |
    BreakWord |
    ...
}

 {
    
    
    
}

 {
    NoRepeat |
    X |
    Y |
    XY |
    ...
}

 {
    
    
    
}

 {
    Contain |
    Cover |
    Auto |
    ...
}

 {
    
    
    
}

 {
    OuterDefaultXS |
    OuterDefaultSM |
    OuterDefaultMD |
    OuterDefaultLG |
    OuterFloatingSM |
    OuterFloatingMD |
    ...
}

 {
    
    
    
}

 {
    Normal |
    LowerCase |
    UpperCase |
    ...
}

 {
    
    
    
}

 {
    Solid |
    Dashed |
    Dotted |
    ...
}

 {
    
    
    
}

 {
    Fill |
    Contain |
    Cover |
    Auto |
    None |
    ScaleDown |
    ...
}

 {
    
    
    
}

 {
    Ltr |
    Rtl |
    Auto |
    ...
}

 {
    
    
    
}

 {
    Vertical |
    Horizontal |
    ...
}

 {
    
    
    
}

 {
    Vertical |
    Horizontal |
    ...
}

 {
    
    
    
}

 {
    Begin |
    Moving |
    End |
    Click |
    ...
}

 {
    
    
    
}

 {
    OutSet |
    InSet |
    ...
}

 {
    
    
    
}

 {
    None |
    High |
    Medium |
    Low |
    ...
}

 {
    
    
    
}

 {
    Off |
    Auto |
    On |
    ...
}

 {
    
    
    
}

 {
    Visible |
    Hidden |
    None |
    ...
}

 {
    
    
    
}

 {
    Butt |
    Round |
    Square |
    ...
}

 {
    
    
    
}

 {
    Linear |
    Ring |
    Eclipse |
    ScaleRing |
    Capsule |
    ...
}

 {
    
    
    
}

 {
    Original |
    Template |
    ...
}

 {
    
    
    
}

 {
    Push |
    Replace |
    Back |
    ...
}

 {
    
    
    
}

 {
    Stretch |
    ...
}

 {
    
    
    
}

 {
    Linear |
    Ease |
    EaseIn |
    EaseOut |
    EaseInOut |
    FastOutSlowIn |
    LinearOutSlowIn |
    FastOutLinearIn |
    ExtremeDeceleration |
    Sharp |
    Rhythm |
    Smooth |
    Friction |
    ...
}

 {
    
    
    
}

 {
    Spring |
    Fade |
    None |
    ...
}

 {
    
    
    
}

 {
    Top |
    Start |
    Bottom |
    End |
    ...
}

 {
    
    
    
}

 {
    Left |
    Right |
    Top |
    Bottom |
    TopLeft |
    TopRight |
    BottomLeft |
    BottomRight |
    LeftTop |
    LeftBottom |
    RightTop |
    RightBottom |
    None |
    ...
}

 {
    
    
    
}

 {
    Miter |
    Round |
    Bevel |
    ...
}

 {
    
    
    
}

 {
    Left |
    Right |
    Center |
    Start |
    End |
    ...
}

 {
    
    
    
}

 {
    Alphabetic |
    Ideographic |
    Top |
    Bottom |
    Middle |
    Hanging |
    ...
}

 {
    
    
    
}

 {
    SourceOver |
    SourceAtop |
    SourceIn |
    SourceOut |
    DestinationOver |
    DestinationAtop |
    DestinationIn |
    DestinationOut |
    Lighter |
    Copy |
    Xor |
    ...
}

 {
    
    
    
}

 {
    Low |
    Medium |
    High |
    ...
}

 {
    
    
    
}

 {
    Normal |
    IgnoreInternal |
    ...
}

 {
    
    
    
}

 {
    Horizontal |
    Vertical |
    All |
    ...
}

 {
    
    
    
}

 {
    None |
    Left |
    Right |
    Horizontal |
    Up |
    Down |
    Vertical |
    All |
     |
    ...
    
    
    
}

 {
    
    
    
}

 {
}

 {
    Sequence |
    Parallel |
    Exclusive |
    ...
}

 {
    
    
    
}

 {
    Vertical |
    Horizontal |
    ...
}

 {
    
    
    
}

 {
    RightClick |
    LongPress |
    ...
}

 {
    
    
    
}

 {
    None |
    InApp |
    LocalDevice |
    ...
}

 {
    
    
    
}

 {
    Down |
    Up |
    Move |
    Cancel |
    Unknown |
    ...
}

 {
    
    
    
}

 {
    Embed |
    Overlay |
    Auto |
    ...
}

 {
    
    
    
}

 {
    Start |
    End |
    ...
}

 {
    
    
    
}

 {
    Unknown |
    Mouse |
    TouchScreen |
    ...
}

 {
    
    
    
}

 {
    None |
    Left |
    Right |
    Middle |
    Back |
    Forward |
    ...
}

 {
    
    
    
}

 {
    None |
    Press |
    Release |
    Move |
    Hover |
    ...
}

 {
    
    
    
}

 {
    Unknown |
    Keyboard |
    ...
}

 {
    
    
    
}

 {
    Unknown |
    Down |
    Up |
    ...
}

 {
    
    
    
}

 {
    Ctrl |
    Shift |
    Alt |
    ...
}

 {
    
    
    
}

 {
    Esc |
    F1 |
    F2 |
    F3 |
    F4 |
    F5 |
    F6 |
    F7 |
    F8 |
    F9 |
    F10 |
    F11 |
    F12 |
    Tab |
    ...
}

 {
    
    
    
}

 {
    Circle |
    Line |
    ...
}

 {
    
    
    
}

 {
    Normal |
    Disabled |
    Waiting |
    Skip |
    ...
}

 {
    
    
    
}

 {
    Inactive |
    Drag |
    OverDrag |
    Refresh |
    Done |
    ...
}

 {
    
    
    
}

 {
    PreviousKeyframe |
    NextKeyframe |
    ClosestKeyframe |
    Accurate |
    ...
}

 {
    
    
    
}

 {
    SpeedForward075X |
    SpeedForward100X |
    SpeedForward125X |
    SpeedForward175X |
    SpeedForward200X |
    ...
}

 {
    
    
    
}

 {
    All |
    Part |
    None |
    ...
}

 {
    
    
    
}

 {
    Initial |
    Running |
    Paused |
    Stopped |
    ...
}

 {
    
    
    
}

 {
    None |
    Forwards |
    Backwards |
    Both |
    ...
}

 {
    
    
    
}

 {
    Spring |
    None |
    ...
}

 {
    
    
    
}

 {
    Static |
    Exchange |
    ...
}

 {
    
    
    
}

 {
    Idle |
    Scrolling |
    Fling |
    ...
}

 {
    
    
    
}

 {
    Start |
    Center |
    End |
    ...
}

 {
    
    
    
}

 {
    None |
    Header |
    Footer |
    ...
}

 {
    
    
    
}

 {
    Text |
    Image |
    Mixed |
    ...
}

 {
    
    
    
}

 {
    Top |
    Center |
    Bottom |
    Baseline |
    ...
}

 {
    
    
    
}

 {
    Backward |
    Forward |
    ...
}

 {
    
    
    
}

 {
    All |
    Compatible |
    None |
    ...
}

 {
    
    
    
}

 {
    Normal |
    Reverse |
    Alternate |
    AlternateReverse |
    ...
}

 {
    
    
    
}

 {
    Left |
    Top |
    Right |
    Bottom |
    LeftTop |
    LeftBottom |
    RightTop |
    RightBottom |
    None |
    ...
}

 {
    
    
    
}

 {
    Center |
    Top |
    Bottom |
    Left |
    Right |
    TopLeft |
    TopRight |
    BottomLeft |
    BottomRight |
    ResizeFill |
    ResizeContain |
    ResizeContainTopLeft |
    ResizeContainBottomRight |
    ResizeCover |
    ResizeCoverTopLeft |
    ResizeCoverBottomRight |
    ...
}

 {
    
    
    
}

 {
    Top |
    Center |
    Bottom |
    Default |
    TopStart |
    TopEnd |
    CenterStart |
    CenterEnd |
    BottomStart |
    BottomEnd |
    ...
}

 {
    
    
    
}

 {
    Left |
    Right |
    Top |
    Bottom |
    ...
}

 {
    
    
    
}

 {
    System |
    Cutout |
    Keyboard |
    ...
}

 {
    
    
    
}

 {
    Top |
    Bottom |
    Start |
    End |
    ...
}

 {
    
    
    
}

 {
    Invert |
    ...
}

 {
    
    
    
}

 {
    SelfOnly |
    SelfFirst |
    ParentFirst |
    Parallel |
    ...
}

 {
    
    
    
}

 {
    System |
    Light |
    Dark |
    ...
}

 {
    
    
    
}

 {
    Default |
    Average |
    ...
}

 {
    
    
    
}

 {
    Small |
    Normal |
    ...
}

 {
    
    
    
}

 {
    FitContent |
    FitTrigger |
    ...
}

 {
    
    
    
}

 {
    End |
    Start |
    ...
}

 {
    
    
    
}

 {
    Start |
    Center |
    End |
    ...
}

 {
    
    
    
}

 {
    Off |
    On |
    Auto |
    ...
}

 {
    
    
    
}

 {
    Unknown |
    Finger |
    Pen |
    Mouse |
    Touchpad |
    Joystick |
    ...
}

 {
    
    
    
}

 {
    Repeat |
    RepeatX |
    RepeatY |
    NoRepeat |
    Clamp |
    Mirror |
    ...
}

 {
    
    
    
}

 {
    Drag |
    Fling |
    EdgeEffect |
    OtherUserInput |
    ScrollBar |
    ScrollBarFling |
    Scroller |
    ScrollerAnimation |
    ...
}

 {
    
    
    
}

 {
    UserName |
    Password |
    NewPassword |
    FullStreetAddress |
    HouseNumber |
    DistrictAddress |
    CityAddress |
    ProvinceAddress |
    CountryAddress |
    PersonFullName |
    PersonLastName |
    PersonFirstName |
    PhoneNumber |
    PhoneCountryCode |
    FullPhoneNumber |
    EmailAddress |
    BankCardNumber |
    IdCardNumber |
    Nickname |
    DetailInfoWithoutStreet |
    FormatAddress |
    ...
}

 {
    
    
    
}

 {
    Default |
    Hide |
    Show |
    ...
}

 {
    
    
    
}

 {
    Solid |
    Double |
    Dotted |
    Dashed |
    Wavy |
    ...
}

 {
    
    
    
}

 {
    Greedy |
    HighQuality |
    Balanced |
    ...
}

 {
    
    
    
}

 {
    Default |
    Inline |
    ...
}

 {
    
    
    
}

 {
    Circle |
    RoundedSquare |
    ...
}

 {
    
    
    
}

 {
    MaxLinesFirst |
    MinFontSizeFirst |
    LayoutConstraintFirst |
    ...
}

 {
    
    
    
}

 {
    Start |
    Center |
    End |
    ...
}

 {
    
    
    
}

 {
    MainOnly |
    MainWithSub |
    ...
}

 {
    
    
    
}

 {
    Default |
    Highlight |
    ...
}

 {
    
    
    
}

 {
    Default |
    Px |
    ...
}

 {
    
    
    
}

 {
    Inherit |
    Ltr |
    Rtl |
    ...
}

 {
    
    
    
}

 {
    EvenOdd |
    NonZero |
    ...
}

 {
    
    
    
}

 {
    Png |
    Jpeg |
    Webp |
    ...
}

 {
    
    
    
}

 {
    Removed |
    Logically |
    ...
}

 {
    
    
    
}

 {
    Thin |
    Regular |
    Thick |
    BackgroundThin |
    BackgroundRegular |
    BackgroundThick |
    BackgroundUltraThick |
    None |
    ComponentUltraThin |
    ComponentThin |
    ComponentRegular |
    ComponentThick |
    ComponentUltraThick |
    ...
}

 {
    
    
    
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum DismissReason {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PressBack |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TouchOutside |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    CloseButton |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SlideDown |
    ...
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextInputStyle {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Default |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Inline |
    ...
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextAreaType {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Normal |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Number |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PhoneNumber |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Email |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    NumberDecimal |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Url |
    ...
}

@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TouchObject {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var touchType: TouchType
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var id: Int32
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var screenX: Float64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var screenY: Float64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Float64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Float64
    
    public init(touchType: TouchType, id: Int32, screenX: Float64, screenY: Float64, x: Float64, y: Float64)
}

@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ClickEvent {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Float64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Float64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var timestamp: Int64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var source: SourceType
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var target: EventTarget
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var windowX: Float64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var windowY: Float64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var displayX: Float64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var displayY: Float64
}

@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DragInfo {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var extraParams: String
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var touchPoint: Position
}

@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DragItemInfo {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var pixelMap: PixelMap = PixelMap(0)
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var builder: CustomBuilder = {=>}
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var extraInfo: String
    
    public init(pixelMap: PixelMap, builder: CustomBuilder, extraInfo: String)
}

@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class MouseEvent {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var timestamp: Int64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var screenX: Float64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var screenY: Float64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Float64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Float64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var button: MouseButton
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var action: MouseAction
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(timestamp: Int64, screenX: Float64, screenY: Float64, x: Float64, y: Float64, button: MouseButton,
        action: MouseAction)
}

@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TouchEvent {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var eventType: TouchType
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var touches: Array<TouchObject>
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var changedTouches: Array<TouchObject>
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var timestamp: Int64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var target: EventTarget
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var source: SourceType
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func stopPropagation(): Unit
}

@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class KeyEvent {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var keyText: String
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var keyType: KeyType
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var keyCode: Int32
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var keySource: KeySource
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var metaKey: Int32
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var deviceId: Int64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var timestamp: Int64
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(keyText: String, keyType: KeyType, keyCode: Int32, keySource: KeySource, metaKey: Int32,
        deviceId: Int64, timestamp: Int64)
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func stopPropagation(): Unit
}

@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
abstract sealed class InteractableView <: RemoteData {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onClick(event: (ClickEvent) -> Unit): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onAppear(event: () -> Unit): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDisAppear(event: () -> Unit): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onTouch(event: (TouchEvent) -> Unit): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onHover(event: (Bool) -> Unit): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onAreaChange(event: (Area, Area) -> Unit): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onVisibleAreaChange(raitos: Array<Float64>, event: (Bool, Float64) -> Unit): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onMouse(event: (MouseEvent) -> Unit): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onKeyEvent(event: (KeyEvent) -> Unit): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onFocus(event: () -> Unit): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onBlur(event: () -> Unit): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDragStart(event: (DragInfo) -> DragItemInfo): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDragStart(event: (DragInfo) -> CustomBuilder): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDragStart(event: (DragInfo) -> Unit): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDragEnter(event: (DragInfo) -> Unit): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDragMove(event: (DragInfo) -> Unit): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDragLeave(event: (DragInfo) -> Unit): This
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDrop(event: (DragInfo) -> Unit): This
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TranslateOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var z: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(x!: Length = 0.0.vp, y!: Length = 0.0.vp, z!: Length = 0.0.vp)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ScaleOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Float32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Float32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var z: Float32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var centerX: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var centerY: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(x!: Float32 = 1.0, y!: Float32 = 1.0, z!: Float32 = 1.0, centerX!: Length = 50.percent,
        centerY!: Length = 50.percent)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RotateOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var angle: Float32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Float32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Float32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var z: Float32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var centerX: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var centerY: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var centerZ: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var perspective: Float32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(angle: Float32, x!: Float32 = 0.0, y!: Float32 = 0.0, z!: Float32 = 0.0, centerX!: Length = 50.percent,
        centerY!: Length = 50.percent, centerZ!: Length = 0, perspective!: Float32 = 0.0)
}

 {
    Top |
    Bottom |
    Start |
    End |
    ...
}

 {
    
    
    
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TransitionEffect <: RemoteDataLite {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func opacity(alpha: Float64): TransitionEffect
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func translate(options: TranslateOptions): TransitionEffect
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func scale(options: ScaleOptions): TransitionEffect
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func rotate(options: RotateOptions): TransitionEffect
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func move(edge: TransitionEdge): TransitionEffect
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func asymmetric(appear: TransitionEffect, disappear: TransitionEffect): TransitionEffect
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func combine(transitionEffect: TransitionEffect): TransitionEffect
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func animation(value: AnimateParam): TransitionEffect
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static let IDENTITY: TransitionEffect = unsafe {
        TransitionEffect(FfiOHOSAceFrameworkTransitionEffectIdentity())
    }
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static let OPACITY: TransitionEffect = TransitionEffect.opacity(0.0)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static let SLIDE: TransitionEffect = 
        TransitionEffect.asymmetric(TransitionEffect.move(TransitionEdge.Start),
            TransitionEffect.move(TransitionEdge.End))
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static let SLIDE_SWITCH: TransitionEffect = unsafe {
        TransitionEffect(FfiOHOSAceFrameworkTransitionEffectSlideSwitch())
    }
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public const MAX_CHANNEL_VALUE: UInt8 = 0xff

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public const MAX_ALPHA_VALUE: Float32 = 1.0

public type CustomBuilder = () -> Unit

public type TransitionFinishCallback = (Bool) -> Unit

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class ViewBase <: InteractableView & UINodeBase {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func width(value: Option<Length>): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func height(value: Option<Length>): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func size(width!: Length, height!: Length): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func padding(value: Length): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func padding(top!: Length = 0.vp, right!: Length = 0.vp, bottom!: Length = 0.vp, left!: Length = 0.vp): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func margin(value: Length): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func margin(top!: Length = 0.vp, right!: Length = 0.vp, bottom!: Length = 0.vp, left!: Length = 0.vp): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func layoutWeight(value: Int32): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func constraintSize(minWidth!: Length = 0.vp, maxWidth!: Length = (Float64.Inf).vp,
        minHeight!: Length = 0.vp, maxHeight!: Length = (Float64.Inf).vp): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func align(value: Alignment): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func direction(value: Direction): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func position(x!: Length, y!: Length): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func markAnchor(x!: Length, y!: Length): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func offset(x!: Length, y!: Length): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func alignRules(value: AlignRuleOption): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func aspectRatio(value: Float64): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func displayPriority(value: Int32): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func flexBasis(value: Length): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func flexGrow(value: Float64): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func flexGrow(value: Int64): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func flexShrink(value: Float64): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func flexShrink(value: Int64): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func alignSelf(value: ItemAlign): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func responseRegion(value: Rectangle): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func responseRegion(value: Array<Rectangle>): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func border(width!: Length, color!: ResourceColor = Color.Black, radius!: Length = 0.vp,
        style!: BorderStyle = BorderStyle.Solid): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func borderWidth(value: Length): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func borderWidth(value: EdgeWidths): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func borderColor(value: ResourceColor): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func borderRadius(topLeft!: Length = 0.vp, topRight!: Length = 0.vp, bottomLeft!: Length = 0.vp,
        bottomRight!: Length = 0.vp): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func borderRadius(value: Length): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func borderStyle(value: BorderStyle): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func foregroundBlurStyle(value: BlurStyle): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func foregroundBlurStyle(value: BlurStyle, options: ForegroundBlurStyleOptions): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func foregroundColor(value: ColoringStrategy): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func foregroundColor(value: ResourceColor): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func backgroundColor(value: ResourceColor): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func backgroundImage(src: ResourceStr): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func backgroundImage(src: ResourceStr, repeat: ImageRepeat): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func backgroundImageSize(value: ImageSize): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func backgroundImageSize(width!: Length = 0.vp, height!: Length = 0.vp): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func backgroundImagePosition(value: Alignment): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func backgroundImagePosition(x!: Length = 0.vp, y!: Length = 0.vp): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func scale(x!: Float32 = 1.0, y!: Float32 = 1.0, z!: Float32 = 1.0, centerX!: Length = 50.percent,
        centerY!: Length = 50.percent): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func opacity(value: Float64): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func rotate(x!: Float32 = 0.0, y!: Float32 = 0.0, z!: Float32 = 1.0, angle!: Float32 = 0.0,
        centerX!: Length = 50.percent, centerY!: Length = 50.percent): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func translate(x!: Length = 0.vp, y!: Length = 0.vp, z!: Length = 0.vp): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func enabled(value: Bool): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func sharedTransition(id: String, options!: SharedTransitionOptions = SharedTransitionOptions()): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func geometryTransition(id: String, followWithoutTransition!: Bool = false): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func blur(value: Float64): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func colorBlend(value: ResourceColor): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func backdropBlur(value: Float64): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func shadow(radius!: Float64, color!: ResourceColor = Color(0x666666), offsetX!: Float64 = 0.0,
        offsetY!: Float64 = 0.0): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func grayscale(value: Float64): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func brightness(value: Float64): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func saturate(value: Float64): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func contrast(value: Float64): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func invert(value: Float64): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func invert(low!: Float64, high!: Float64, threshold!: Float64, thresholdRange!: Float64): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func sepia(value: Float64): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func hueRotate(value: Float32): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func zIndex(value: Int32): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func visibility(value: Visibility): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func clip(value: Bool): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func clipShape(value: BaseShape): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func maskShape(value: BaseShape): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func overlay(value!: String, align!: Alignment = Alignment.Center,
        offset!: OverlayOffset = OverlayOffset(x: 0.0, y: 0.0)): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bindPopup(show: Bool, popup: PopupOptions): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bindPopup(show: Bool, popup: CustomPopupOptions): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bindMenu(content: Array<MenuElement>): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bindMenu(builder!: CustomBuilder): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bindContextMenu(builder!: CustomBuilder, responseType!: ResponseType,
        options!: ContextMenuOptions = ContextMenuOptions()): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func linearGradient(angle!: ?Float64 = None, direction!: GradientDirection = GradientDirection.Bottom,
        colors!: Array<(ResourceColor, Float64)> = [(Color.Transparent, 0.0)], repeating!: Bool = false): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func sweepGradient(center: (Length, Length), start!: Float64 = 0.0, end!: Float64 = 0.0,
        rotation!: Float64 = 0.0, colors!: Array<(ResourceColor, Float64)> = [(Color.Transparent, 0.0)],
        repeating!: Bool = false): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func radialGradient(center: (Length, Length), radius: Length, colors: Array<(ResourceColor, Float64)>,
        repeating!: Bool = false): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func keyboardShortcut(value: FunctionKey, keys: Array<ModifierKey>): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func keyboardShortcut(value: String, keys: Array<ModifierKey>): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func keyboardShortcut(value: FunctionKey, keys: Array<ModifierKey>, action: () -> Unit): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func keyboardShortcut(value: String, keys: Array<ModifierKey>, action: () -> Unit): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func key(value: String): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func renderFit(fitMode: RenderFit): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func id(value: String): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func expandSafeArea(types!: ?Array<SafeAreaType> = None, edges!: ?Array<SafeAreaEdge> = None): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bindContentCover(isShow: Bool, builder: CustomBuilder,
        options!: ContentCoverOptions = ContentCoverOptions()): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func animationStart(value: AnimateParam): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func animationEnd(): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func transition(value: TransitionEffect): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func transition(value: TransitionEffect, onFinish: ?TransitionFinishCallback): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func focusable(value: Bool): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func tabIndex(index: Int32): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func defaultFocus(value: Bool): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func groupDefaultFocus(value: Bool): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func focusOnTouch(value: Bool): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public open func initial(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public open func update(): Unit
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bindSheet(isShow: Bool, builder: CustomBuilder, options!: SheetOptions = SheetOptions()): This
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func dragPreview(value: String): This
}

 {
    Default |
    None |
    Alpha |
    ...
}

 {
    
    
    
}

 {
    Medium |
    Large |
    FitContent |
    ...
}

 {
    
    
    
}

 {
    Bottom |
    Center |
    Popup |
    ...
}

 {
    
    
    
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class BlurOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var grayscale: VArray<Float32, $2>
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(grayscale: VArray<Float32, $2>)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ForegroundBlurStyleOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var colorMode: ThemeColorMode = ThemeColorMode.System
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var adaptiveColor: AdaptiveColor = AdaptiveColor.Default
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var blurOptions: BlurOptions = BlurOptions([0.0, 0.0])
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var scale: Float32 = 1.0
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        colorMode!: ThemeColorMode = ThemeColorMode.System,
        adaptiveColor!: AdaptiveColor = AdaptiveColor.Default,
        blurOptions!: BlurOptions = BlurOptions([0.0, 0.0]),
        scale!: Float32 = 1.0
    )
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PopupButton {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: String, action!: () -> Unit)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PopupStateChangeParam {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var isVisible: Bool
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value: Bool)
}

@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PopupOptions {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var message: String = ""
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var primaryButton: PopupButton = PopupButton(value: "", action: {=>})
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var secondaryButton: PopupButton = PopupButton(value: "", action: {=>})
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var onStateChange: ?(PopupStateChangeParam) -> Unit = Option.None
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var messageOptions: PopupMessageOptions = PopupMessageOptions()
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowOffset: Length = 0.vp
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var showInSubWindow: Bool = false
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var mask: ResourceColor = Color(0x1000000)
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var targetSpace: Length = 0.vp
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var placement: Placement = Placement.BottomLeft
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offset: Position = Position(x: 0.0,y: 0.0)
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var enableArrow: Bool = true
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var popupColor: ResourceColor = Color(0x1000000)
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var autoCancel: Bool = true
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var width: Length = 0.vp
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowPointPosition: Option<ArrowPointPosition> = None
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowWidth: Length = 16.0.vp
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowHeight: Length = 8.0.vp
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var radius: Length = 20.0.vp
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var shadow: ShadowStyle = ShadowStyle.OuterDefaultMD
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var backgroundBlurStyle: BlurStyle = BlurStyle.ComponentUltraThick
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var transition: ?TransitionEffect = Option.None
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var onWillDismiss: ?(DismissPopupAction) -> Unit = None
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var followTransformOfTarget: Bool = false
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        message!: String,
        primaryButton!: PopupButton = PopupButton(value: "", action: {=>}),
        secondaryButton!: PopupButton = PopupButton(value: "", action: {=>}),
        onStateChange!: Option<(PopupStateChangeParam) -> Unit> = Option.None,
        arrowOffset!: Length = 0.vp,
        showInSubWindow!: Bool,
        messageOptions!: PopupMessageOptions = PopupMessageOptions(),
        mask!: Color = Color(0x1000000),
        targetSpace!: Length = 0.vp,
        placement!: Placement = Placement.BottomLeft,
        offset!: Position = Position(x:0.0, y: 0.0),
        enableArrow!: Bool = true,
        popupColor!: Color = Color(0x1000000),
        autoCancel!: Bool = true,
        width!: Length = 0.vp,
        arrowPointPosition!: ?ArrowPointPosition = None,
        arrowWidth!: Length = 16.vp,
        arrowHeight!: Length = 8.vp,
        radius!: Length = 20.vp,
        shadow!: ShadowStyle = ShadowStyle.OuterDefaultMD,
        backgroundBlurStyle!: BlurStyle = BlurStyle.ComponentUltraThick,
        transition!: ?TransitionEffect = Option.None,
        onWillDismiss!: Option<(DismissPopupAction) -> Unit> = None,
        followTransformOfTarget!: Bool = false
    )
}

/**
* Defines the menu element.
*
* @relation declare interface MenuElement
*/
public class MenuElement {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: ResourceStr, action!: () -> Unit)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CustomPopupOptions {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var builder: CustomBuilder = {=>}
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var placement: Placement = Placement.Bottom
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var maskColor: ResourceColor = Color(0x1000000)
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var backgroundColor: Color = Color(0x1000000)
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var enableArrow: Bool = true
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var autoCancel: Bool = true
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var onStateChange: Option<(PopupStateChangeParam) -> Unit> = Option.None
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var popupColor: ?Color = None
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowOffset: Length = 0.vp
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var showInSubWindow: Bool = false
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var mask: ?Color = None
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var targetSpace: Length = 0.vp
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offset: Position = Position(x: 0.0, y: 0.0)
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var width: Length = 0.vp
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowPointPosition: Option<ArrowPointPosition> = None
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowWidth: Length = 16.vp
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowHeight: Length = 8.vp
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var radius: Length = 20.vp
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var shadow: ShadowStyle = ShadowStyle.OuterDefaultMD
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var backgroundBlurStyle: BlurStyle = BlurStyle.ComponentUltraThick
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var focusable: Bool = false
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var transition: Option<TransitionEffect> = Option.None
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var onWillDismiss: Option<(DismissPopupAction) -> Unit> = None
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var followTransformOfTarget: Bool = false
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        builder!: () -> Unit,
        placement!: Placement = Placement.Bottom,
        maskColor!: Color = Color(0x1000000),
        popupColor!: Color = Color(0x1000000),
        enableArrow!: Bool = true,
        autoCancel!: Bool = true,
        onStateChange!: Option<(PopupStateChangeParam) -> Unit> = Option.None,
        showInSubWindow!: Bool, // 5.1 start
        backgroundColor!: Color = Color(0x1000000),
        arrowOffset!: Length = 0.vp,
        mask!: ?Color = None,
        targetSpace!: Length = 0.vp,
        offset!: Position = Position(x: 0.0, y: 0.0),
        width!: Length = 0.vp,
        arrowPointPosition!: ?ArrowPointPosition = None,
        arrowWidth!: Length = 16.vp,
        arrowHeight!: Length = 16.vp,
        radius!: Length = 20.vp,
        shadow!: ShadowStyle = ShadowStyle.OuterDefaultMD,
        backgroundBlurStyle!: BlurStyle = BlurStyle.ComponentUltraThick,
        focusable!: Bool = false,
        transition!: Option<TransitionEffect> = Option.None,
        onWillDismiss!: Option<(DismissPopupAction) -> Unit> = None,
        followTransformOfTarget!: Bool = false
    )
}

@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PopupMessageOptions {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var textColor: ResourceColor
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var font: Font
    
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(textColor!: ResourceColor = Color(0x000000), font!: Font = Font())
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class OverlayOffset {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Float64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(x!: Float64 = 0.0, y!: Float64 = 0.0)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class EdgeWidths {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var top: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var right: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var bottom: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var left: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(top!: Length = 0.vp, right!: Length = 0.vp, bottom!: Length = 0.vp, left!: Length = 0.vp)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class BindOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(backgroundColor!: ?ResourceColor = Option.None, onAppear!: ?() -> Unit = Option.None,
        onDisappear!: ?() -> Unit = Option.None, onWillAppear!: ?() -> Unit = Option.None,
        onWillDisappear!: ?() -> Unit = Option.None)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ContentCoverOptions <: BindOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        modalTransition!: ModalTransition = ModalTransition.Default,
        onWillDismiss!: ?(DismissContentCoverAction) -> Unit = Option.None,
        transition!: ?TransitionEffect = Option.None,
        backgroundColor!: ?ResourceColor = Option.None,
        onAppear!: ?() -> Unit = Option.None,
        onDisappear!: ?() -> Unit = Option.None,
        onWillAppear!: ?() -> Unit = Option.None,
        onWillDisappear!: ?() -> Unit = Option.None
    )
}

@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SheetDismiss {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func dismiss(): Unit
}

@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SpringBackAction {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func springBack()
}

 {
    Overlay |
    Embedded |
    ...
}

 {
    
    
    
}

 {
    FollowDetent |
    Continuous |
    ...
}

 {
    
    
    
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SheetOptions <: BindOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        backgroundColor!: Option<ResourceColor> = Color.White,
        onAppear!: Option<() -> Unit> = Option.None,
        onDisappear!: Option<() -> Unit> = Option.None,
        onWillAppear!: Option<() -> Unit> = Option.None,
        onWillDisappear!: Option<() -> Unit> = Option.None,
        height!: Option<SheetSize> = Option.None,
        detents!: Option<Array<SheetSize>> = Option.None,
        preferType!: Option<SheetType> = Option.None,
        showClose!: Option<Bool> = Option.None,
        dragBar!: Option<Bool> = Option.None,
        blurStyle!: Option<BlurStyle> = Option.None,
        maskColor!: Option<Color> = Option.None,
        title!: Option<() -> Unit> = Option.None,
        enableOutsideInteractive!: Option<Bool> = Option.None,
        shouldDismiss!: Option<(SheetDismiss) -> Unit> = Option.None,
        onWillDismiss!: Option<(DismissSheetAction) -> Unit> = Option.None,
        onWillSpringBackWhenDismiss!: Option<(SpringBackAction) -> Unit> = Option.None,
        onHeightDidChange!: Option<(Float32) -> Unit> = Option.None,
        onDetentsDidChange!: Option<(Float32) -> Unit> = Option.None,
        onWidthDidChange!: Option<(Float32) -> Unit> = Option.None,
        onTypeDidChange!: Option<(Float32) -> Unit> = Option.None,
        borderWidth!: Option<Length> = 0.vp,
        borderColor!: Option<Color> = Color.Black,
        borderStyle!: Option<EdgeStyles> = EdgeStyles(),
        width!: Option<Length> = Option.None,
        shadow!: Option<ShadowOptions> = Option.None,
        mode!: Option<SheetMode> = SheetMode.Overlay,
        scrollSizeMode!: Option<ScrollSizeMode> = ScrollSizeMode.FollowDetent
    )
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Rectangle {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var width: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var height: Length
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(x!: Length = 0.vp, y!: Length = 0.vp, width!: Length = 100.percent, height!: Length = 100.percent)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DismissPopupAction {
    public let reason: DismissReason
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func dismiss(): Unit
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ContextMenuOptions {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offset: Position = Position(x: 0.0, y: 0.0)
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var placement: Option<Placement> = Option.None
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var enableArrow: Bool = false
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowOffset: Length = 0.vp
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var preview: ?CustomBuilder = Option.None
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var previewAnimationOptions: ?ContextMenuAnimationOptions = None
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var onAppear: ?() -> Unit = None
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var onDisappear: ?() -> Unit = None
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var aboutToAppear: ?() -> Unit = None
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var aboutToDisappear: ?() -> Unit = None
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var backgroundColor: ResourceColor = Color.Transparent
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var backgroundBlurStyle: BlurStyle = BlurStyle.ComponentUltraThick
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var transition: ?TransitionEffect = None
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        offset!: Position = Position(),
        placement!: Option<Placement> = Option.None,
        enableArrow!: Bool = false,
        arrowOffset!: Length = 0.vp,
        preview!: Option<() -> Unit> = Option.None,
        onAppear!: ?() -> Unit = None,
        onDisappear!: ?() -> Unit = None,
        aboutToAppear!: ?() -> Unit = None,
        aboutToDisappear!: ?() -> Unit = None,
        backgroundColor!: ResourceColor = Color.Transparent,
        backgroundBlurStyle!: BlurStyle = BlurStyle.ComponentUltraThick,
        transition!: ?TransitionEffect = None,
        borderRadius!: ?BorderRadiuses = None,
        layoutRegionMargin!: ?Margin = None
    )
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DismissContentCoverAction {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public let reason: DismissReason
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func dismiss(): Unit
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ContextMenuAnimationOptions {
    public var scale: ?VArray<Float64, $2> = None
    
    public var transition: ?TransitionEffect = None
    
    public var hoverScale: ?VArray<Float64, $2> = None
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(scale!: ?VArray<Float64, $2> = None, transition!: ?TransitionEffect = None,
        hoverScale!: ?VArray<Float64, $2> = None)
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DismissSheetAction {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var reason: DismissReason
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func dismiss(): Unit
}

extend FunctionKey <: CombinationKeyType {
}

extend String <: CombinationKeyType {
}

@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public abstract class ContainerBase <: ViewBase {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public open override func initial()
}

