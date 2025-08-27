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

/**
* Defines the event target.
*
* @relation declare interface EventTarget
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class EventTarget {
    /**
    * Area information of the target element.
    *
    * @relation area: Area;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var area: Area
    
    /**
    * constructor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(area: Area)
}


/**
* Defines the area property.
*
* @relation declare interface Area
*/
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


/**
* Defines the HorizontalAlignment.
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class HorizontalAlignment {
    /*
    * ID of the component that functions as the anchor point.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var anchor: String
    
    /*
    * alignment mode relative to the anchor component.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var align: HorizontalAlign
    
    /**
    * Defines the constructor of HorizontalAlignment.
    *
    * @param { String } anchor
    * @param { HorizontalAlign } align
    * @returns { HorizontalAlignment }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(anchor: String, align: HorizontalAlign)
}


/**
* Defines the VerticalAlignment.
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class VerticalAlignment {
    /*
    * ID of the component that functions as the anchor point.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var anchor: String
    
    /*
    * alignment mode relative to the anchor component.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var align: VerticalAlign
    
    /**
    * Defines the constructor of VerticalAlignment.
    *
    * @param { String } anchor
    * @param { VerticalAlign } align
    * @returns { VerticalAlignment }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(anchor: String, align: VerticalAlign)
}


/**
* Defines the Bias.
*
* @relation interface Bias
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Bias {
    /**
    * Horizontal ratio of the Bias, it must be >= 0.
    *
    * @type { Float32 }
    * @default 0.5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var horizontal: Float32 = 0.5
    
    /**
    * Vertical ratio of the Bias, it must be >= 0.
    *
    * @type { Float32 }
    * @default 0.5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var vertical: Float32 = 0.5
    
    /**
    * Defines the constructor of Bias.
    *
    * @param { Float32 } horizontal
    * @param { Float32 } vertical
    * @returns { Bias }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(horizontal!: Float32 = 0.5, vertical!: Float32 = 0.5)
}


/**
* Defines the font used for text.
* 
* @relation declare interface Font
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Fonts {
    /**
    * font size.
    *
    * @relation size?: Length;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var size: Length
    
    /**
    * font weight.
    *
    * @relation weight?: FontWeight | number | string;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var weight: FontWeight
    
    /**
    * font family.
    *
    * @relation family?: string | Resource;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var family: String
    
    /**
    * font style.
    *
    * @relation style?: FontStyle;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var style: FontStyle
    
    /**
    * constructor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(size!: Length = 16.fp, weight!: FontWeight = FontWeight.Normal, family!: ResourceStr = "HarmonyOS Sans",
        style!: FontStyle = FontStyle.Normal)
}


/**
* Defines the border radius property.
*
*/
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


/**
* Defines the offset property.
*
*/
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


/**
* Defines the align rule options of relative container.
*
* @relation interface AlignRuleOption
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AlignRuleOption {
    /**
    * Left alignment.
    * <br>anchor: ID of the component that functions as the anchor point.
    * <br>align: alignment mode relative to the anchor component.
    *
    * @type { ?HorizontalAlignment }
    * @relation left?: { anchor: string, align: HorizontalAlign }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var left: ?HorizontalAlignment = None
    
    /**
    * Right alignment.
    * <br>anchor: ID of the component that functions as the anchor point.
    * <br>align: alignment mode relative to the anchor component.
    *
    * @type { ?HorizontalAlignment }
    * @relation right?: { anchor: string, align: HorizontalAlign }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var right: ?HorizontalAlignment = None
    
    /**
    * Horizontal center alignment.
    * <br>anchor: ID of the component that functions as the anchor point.
    * <br>align: alignment mode relative to the anchor component.
    *
    * @type { ?HorizontalAlignment }
    * @relation middle?: { anchor: string, align: HorizontalAlign }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var middle: ?HorizontalAlignment = None
    
    /**
    * Top alignment.
    * <br>anchor: ID of the component that functions as the anchor point.
    * <br>align: alignment mode relative to the anchor component.
    *
    * @type { ?VerticalAlignment }
    * @relation top?: { anchor: string, align: VerticalAlign }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var top: ?VerticalAlignment = None
    
    /**
    * Bottom alignment.
    * <br>anchor: ID of the component that functions as the anchor point.
    * <br>align: alignment mode relative to the anchor component.
    *
    * @type { ?VerticalAlignment }
    * @relation bottom?: { anchor: string, align: VerticalAlign }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var bottom: ?VerticalAlignment = None
    
    /**
    * Vertical center alignment.
    * <br>anchor: ID of the component that functions as the anchor point.
    * <br>align: alignment mode relative to the anchor component.
    *
    * @type { ?VerticalAlignment }
    * @relation center?: { anchor: string, align: VerticalAlign }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var center: ?VerticalAlignment = None
    
    /**
    * Offset of the component under the anchor constraints.
    * <br>The value is the ratio of the distance to the left/upper anchor to the total distance between anchors.
    *
    * @type { ?Bias }
    * @relation bias?: Bias
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var bias: Bias = Bias()
    
    /**
    * Defines the constructor of AlignRuleOption.
    *
    * @param { ?HorizontalAlignment } left
    * @param { ?HorizontalAlignment } right
    * @param { ?HorizontalAlignment } middle
    * @param { ?VerticalAlignment } top
    * @param { ?VerticalAlignment } bottom
    * @param { ?VerticalAlignment } center
    * @param { Bias } bias
    * @returns { AlignRuleOption }
    */
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


/**
* Defines the options of Shadow.
*
* @class MultiShadowOptions
* @relation interface MultiShadowOptions
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class MultiShadowOptions {
    /**
    * Shadow blur radius.
    * Unit: vp.
    * <p>**NOTE**:
    * <br>A value less than or equal to 0 is handled as the default value.
    * </p>
    *
    * @type { Length }
    * @default 20
    * @relation radius?: number | Resource
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var radius: Length = 20.vp
    
    /**
    * Offset on the x-axis.
    * Unit: vp.
    *
    * @type { Length }
    * @default 5
    * @relation offsetX?: number | Resource
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offsetX: Length = 5.vp
    
    /**
    * Offset on the y-axis.
    * Unit: vp.
    *
    * @type { Length }
    * @default 5
    * @relation offsetY?: number | Resource
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offsetY: Length = 5.vp
}


/**
* Provide an interface for the text style of picker
*
* @class PickerTextStyle
* @relation interface PickerTextStyle
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PickerTextStyle {
    /**
    * Font color.
    *
    * @type { ?ResourceColor }
    * @relation color?: ResourceColor
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var color: ?ResourceColor
    
    /**
    * Text style.
    *
    * @type { ?Font }
    * @relation font?: Font
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var font: ?Font
    
    /**
    * PickerTextStyle constructor.
    *
    * @param { ?ResourceColor } color
    * @param { ?Font } font
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(color!: ?ResourceColor = None, font!: ?Font = None)
}


/**
* Provide an interface for the text style of picker
*
* @class PickerTextStyle
* @relation interface PickerTextStyle
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Font {
    /**
    * font size.
    *
    * @type { ?Length }
    * @relation size?: Length
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var size: ?Length
    
    /**
    * font weight.
    *
    * @type { ?FontWeight }
    * @relation weight?: FontWeight | number | string
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var weight: ?FontWeight
    
    /**
    * font family.
    *
    * @type { ?ResourceStr }
    * @relation family?: string | Resource
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var family: ?ResourceStr
    
    /**
    * font style.
    *
    * @type { ?FontStyle }
    * @relation style?: FontStyle
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var style: ?FontStyle
    
    /**
    * Font constructor.
    *
    * @param { ?Length } size
    * @param { ?FontWeight } weight
    * @param { ?ResourceStr } family
    * @param { ?FontStyle } style
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(size!: ?Length = None, weight!: ?FontWeight = None, family!: ?ResourceStr = None, style!: ?FontStyle = None)
}


/**
* Defines the base type of Component.
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface UINodeBase {
    func initial(): Unit
    
    func update(): Unit
}


/**
* Sends an event to the component with the specified ID.
*
* @param { String } id - ID of the component for which the event is to be sent.
* @param { IntNative } action - Type of the event to be sent. The options are as follows: Click event: 10 LongClick: 11.
* @param { String } params - Event parameters. If there is no parameter, pass an empty string "".
* @returns { Bool }
* @relation export declare function sendEventByKey(id: string, action: number, params: string): boolean
*/
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


/**
* Sends an event to the component with the specified ID.
*
* @param { String } id - ID of the component for which the event is to be sent.
* @param { IntNative } action - Type of the event to be sent. The options are as follows: Click event: 10 LongClick: 11.
* @param { String } params - Event parameters. If there is no parameter, pass an empty string "".
* @returns { boolean }
* @relation export declare function sendEventByKey(id: string, action: number, params: string): boolean;
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func sendEventByKey(id: String, action: IntNative, params: String): Bool


/**
* Send touch event.
*
* @param { TouchObject } event - TouchObject to be sent.
* @returns { Bool }
* @relation export declare function sendTouchEvent(event: TouchObject): boolean
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func sendTouchEvent(event: TouchObject): Bool


/**
* Send key event.
*
* @param { KeyEvent } event - KeyEvent to be sent.
* @returns { Bool }
* @relation export declare function sendKeyEvent(event: KeyEvent): boolean
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func sendKeyEvent(event: KeyEvent): Bool


/**
* Send mouse event.
*
* @param { MouseEvent } event - MouseEvent to be sent.
* @returns { Bool }
* @relation export declare function sendMouseEvent(event: MouseEvent): boolean
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func sendMouseEvent(event: MouseEvent): Bool


/**
* CJEntry is a singleton class, it provides global functions to be accessed by native.
*
*  current usages:
*   1. pass all cj @C functions to native.
*   2. keep the application entry registered by application developer, and provide them to native
*   3. provide native methods to control lifecycle of FFIData objects
*   4. provide native method to throw CJ error
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CJEntry {
    /**
    * Get CJEntry instance.
    *
    * @return { CJEntry }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func getInstance(): CJEntry
    
    /**
    * Register entry by name.
    * @param { String } name
    * @param { () -> Bool } call
    * @return { CJEntry }
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func registerEntry(name: String, call: () -> Bool): Unit
}


/**
* indexer align property.
*
* @relation enum IndexerAlign
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum IndexerAlign {
    /**
    * A dialog box is displayed on the right of the index bar.
    *
    * @relation enum Left
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Left |
    /**
    * A dialog box is displayed on the left of the index bar.
    *
    * @relation enum Right
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Right |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
}



/**
* Declare the type of input box
*
* @relation enum InputType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum InputType {
    /**
    * Basic input mode.
    *
    * @relation Normal
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Normal |
    /**
    * Pure digital input mode.
    *
    * @relation Number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Number |
    /**
    * E-mail address input mode.
    *
    * <p><strong>NOTE</strong>:
    * <br>This mode accepts only digits, letters, underscores (_), dots (.),
    * and the following special characters: ! # $ % & ' " * + - / = ? ^ ` { | } ~ @ (which can only appear once)
    * </p>
    *
    * @relation Email
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Email |
    /**
    * Password entry mode.
    *
    * <p><strong>NOTE</strong>:
    * <br>An eye icon is used to show or hide the password.
    * <br>By default, the entered characters are temporarily shown before being obscured by dots;
    * they are directly obscured by dots since API version 12 on certain devices.
    * <br>The password input mode does not support underlines.
    * <br>If Password Vault is enabled, autofill is available for the username and password.
    * </p>
    *
    * @relation Password
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Password |
    /**
    * Phone number entry mode.
    *
    * @relation PhoneNumber
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PhoneNumber |
    ...
}



/**
* Declare the type of soft keyboard.
*
* @relation enum EnterKeyType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum EnterKeyType {
    /**
    * Go.
    *
    * @relation Go = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Go |
    /**
    * Search.
    *
    * @relation Search = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    EntrySearch |
    /**
    * Send.
    *
    * @relation Send = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Send |
    /**
    * Next.
    *
    * @relation Next = 5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Next |
    /**
    * Done.
    *
    * @relation Done = 6
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Done |
    /**
    * Showed as 'previous' pattern.
    *
    * @relation PREVIOUS = 7
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Previous |
    /**
    * Showed as 'new line' pattern.
    *
    * @relation NEW_LINE = 8
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    NewLine |
    ...
}



/**
* FlexDirection enumeration description
*
* @relation enum FlexDirection
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FlexDirection {
    /**
    * The main axis is consistent with the row direction as the layout mode.
    *
    * @relation Row
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Row |
    /**
    * The main axis is consistent with the column direction as the layout mode.
    *
    * @relation Column
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Column |
    /**
    * The layout is in the opposite direction to the Row direction.
    *
    * @relation RowReverse
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RowReverse |
    /**
    * Layout in the opposite direction to the column.
    *
    * @relation ColumnReverse
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ColumnReverse |
    ...
}



/**
* FlexDirection enumeration description
*
* @relation enum FlexWrap
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FlexWrap {
    /**
    * The Flex container has a single row/column layout of elements, and children are allowed to go beyond the container.
    *
    * @relation NoWrap
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    NoWrap |
    /**
    * The elements of the Flex container are arranged in multiple rows or columns, and the sub-items are allowed to exceed the container.
    *
    * @relation Wrap
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Wrap |
    /**
    * The elements of the Flex container are arranged in reverse multiple rows/columns, and children are allowed to exceed the container.
    *
    * @relation WrapReverse
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    WrapReverse |
    ...
}



/**
* FlexAlign enumeration description.
*
* @relation enum FlexAlign
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FlexAlign {
    /**
    * The element is aligned at the head of the principal axis,
    * the first element is aligned with the head of the row, and subsequent elements are aligned with the previous one.
    *
    * @relation Start
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Start |
    /**
    * The elements are centered in the direction of the principal axis,
    * and the first element is the same distance from the beginning of the row as the last element is from the end of the row.
    *
    * @relation Center
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Center |
    /**
    * The element is aligned at the tail of the principal axis,
    * the last element is aligned at the end of the row, and the other elements are aligned with the next.
    *
    * @relation End
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    End |
    /**
    * Elastic elements are evenly distributed in the direction of the Flex principal axis,
    * with the same distance between adjacent elements.
    * The first element aligns with the beginning of the line, and the last element aligns with the end of the line.
    *
    * @relation SpaceBetween
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SpaceBetween |
    /**
    * Elastic elements are evenly distributed in the direction of the Flex principal axis,
    *  with the same distance between adjacent elements. Half the distance between adjacent elements as the distance between
    * the first element and the distance between the last element and the end of the row.
    *
    * @relation SpaceAround
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SpaceAround |
    /**
    * Elements in the Flex axis direction are evenly spaced.
    * The spacing between adjacent elements, the spacing between the first element and the beginning of the row,
    * and the spacing between the last element and the end of the row are the same.
    *
    * @relation SpaceEvenly
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SpaceEvenly |
    ...
}



/**
* ItemAlign enumeration description
*
* @relation enum ItemAlign
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ItemAlign {
    /**
    * Use the default configuration in the Flex container.
    *
    * @relation Auto
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Auto |
    /**
    * The element is in the Flex container with the cross-axis direction head aligned.
    *
    * @relation Start
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Start |
    /**
    * The element is centered in the Flex container with the cross axis direction aligned.
    *
    * @relation Center
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Center |
    /**
    * The element is bottom aligned in the Flex container with the cross axis direction.
    *
    * @relation End
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    End |
    /**
    * Element In the Flex container, the cross-axis direction text baseline is aligned.
    *
    * @relation Stretch
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Stretch |
    /**
    * Element In a Flex container, the fill is stretched across the axis and, when no dimension is set, to the container size.
    *
    * @relation Baseline
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Baseline |
    ...
}



/**
* Declare the type of status button
*
* @relation enum ToggleType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ToggleType {
    /**
    * Checkbox
    *
    * @relation Checkbox
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    CheckboxType |
    /**
    * Switch
    *
    * @relation Switch
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SwitchType |
    /**
    * Button
    *
    * @relation Button
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ButtonType |
    ...
}



/**
* Text style
*
* @relation enum FontStyle
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FontStyle {
    /**
    * Default style.
    *
    * @relation Normal
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Normal |
    /**
    * Italic style.
    *
    * @relation Italic
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Italic |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
}



/**
* Alignment enumeration description.
*
* @relation enum Alignment
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum Alignment {
    /**
    * Top Start.
    *
    * @relation TopStart
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TopStart |
    /**
    * The top is centered horizontally.
    *
    * @relation Top
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Top |
    /**
    * Top tail end.
    *
    * @relation TopEnd
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TopEnd |
    /**
    * The starting end is centered longitudinally.
    *
    * @relation Start
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Start |
    /**
    * Center horizontal and vertical.
    *
    * @relation Center
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Center |
    /**
    * The tail end is centered longitudinally.
    *
    * @relation End
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    End |
    /**
    * Bottom starting end.
    *
    * @relation BottomStart
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BottomStart |
    /**
    * The bottom is centered horizontally.
    *
    * @relation Bottom
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Bottom |
    /**
    * Bottom end.
    *
    * @relation BottomEnd
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BottomEnd |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
}



/**
* HorizontalAlign enumeration description.
*
* @relation enum HorizontalAlign
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum HorizontalAlign {
    /**
    * Aligns the start end in the language direction.
    *
    * @relation Start
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Start |
    /**
    * Center alignment. The default alignment mode is used.
    *
    * @relation Center
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Center |
    /**
    * Aligns the ends in the language direction.
    *
    * @relation End
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    End |
    ...
}



/**
* VerticalAlign enumeration description
*
* @relation enum VerticalAlign
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum VerticalAlign {
    /**
    * Top alignment.
    *
    * @relation Top
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Top |
    /**
    * Center alignment. The default alignment mode is used.
    *
    * @relation Center
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Center |
    /**
    * Bottom alignment.
    *
    * @relation Bottom
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Bottom |
    ...
}



/**
* The font weight of the text
*
* @relation enum FontWeight
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FontWeight {
    /**
    * Normal font. Equivalent to a digital value of 400.
    *
    * @relation enum Normal
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Normal |
    /**
    * Bold. Equivalent to a numeric value of 700.
    *
    * @relation enum Bold
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Bold |
    /**
    * Defines a value that is heavier than [Inherited Value].
    *
    * @relation enum Bolder
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Bolder |
    /**
    * Defines a lighter value than [Inherited Value]..
    *
    * @relation enum Lighter
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Lighter |
    /**
    * Defines a value that is more centered than [Inherited Value].
    *
    * @relation enum Medium
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Medium |
    /**
    * Defines a more general value than [Inherited Value].
    *
    * @relation enum Regular
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Regular |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    W100 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    W200 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    W300 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    W400 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    W500 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    W600 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    W700 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    W800 |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    W900 |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValueInt(): UInt32
}



/**
* Declare the location of the bar chart.
*
* @relation enum BarPosition
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum BarPosition {
    /**
    * When the vertical attribute method is set to true, the tab is on the left of the container. When the vertical property method is set to false, the tab is at the top of the container.
    *
    * @relation Start
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Start |
    /**
    * When the vertical attribute method is set to true, the tab is located on the right of the container. When the vertical property method is set to false, the tab is at the bottom of the container.
    *
    * @relation End
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    End |
    ...
}



/**
* Declare the graphic format of the bar chart.
*
* @relation enum BarMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum BarMode {
    /**
    * The width of each tab is determined by equally dividing the number of tabs by the bar width
    * (or bar height in the vertical layout).
    *
    * @relation Fixed = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Fixed |
    /**
    * The width of each tab is determined by the actual layout. The tabs are scrollable in the following case:
    * In horizontal layout, the total width exceeds the tab bar width; in vertical layout,
    * the total height exceeds the tab bar height.
    *
    * @relation Scrollable = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Scrollable |
    ...
}



/**
* Define the type of shadow
*
* @relation enum ShadowType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ShadowType {
    /**
    * Color.
    *
    * @relation enum COLOR
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Color |
    /**
    * Blur.
    *
    * @relation enum BLUR
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Blur |
    ...
}



/**
* Type of text modifier.
*
* @relation enum TextDecorationType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextDecorationType {
    /**
    * Do not use text decorative lines.
    *
    * @relation None
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    /**
    * Underline the words.
    *
    * @relation Underline
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Underline |
    /**
    * Text is in all uppercase.
    *
    * @relation Overline
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Overline |
    /**
    * A modifier line that passes through the text.
    *
    * @relation LineThrough
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    LineThrough |
    ...
}



/**
* Alignment of text.
*
* @relation enum TextAlign
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextAlign {
    /**
    * The text is aligned in the same direction as the writing
    *
    * @relation Start
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Start |
    /**
    * Center the text.
    *
    * @relation Center
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Center |
    /**
    * The text is aligned in the opposite direction of writing
    *
    * @relation End
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    End |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
}



/**
* Declare how text overflows.
*
* @relation enum TextOverflow
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextOverflow {
    /**
    * When the text overflows its dimensions, the text will not be cropped.
    *
    * @relation Clip
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Clip |
    /**
    * If the text overflows its dimensions, the text that cannot be displayed shall be replaced by ellipsis.
    *
    * @relation Ellipsis
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Ellipsis |
    /**
    * When the text overflows its dimensions, the text will not be cropped.
    *
    * @relation None
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
}



/**
* Enum of word break
*
* @relation enum WordBreak
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum WordBreak {
    /**
    * By default, CJK text can be wrapped between any 2 characters, and non-CJK text can only be wrapped in spaces.
    *
    * @relation NORMAL = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Normal |
    /**
    * Non-CJK text be wrapped at any character
    *
    * @relation BREAK_ALL = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BreakAll |
    /**
    * Non-CJK text can be wrapped at any character
    * and if a complete word can be preserved in space breaks, the word must be kept on the line.
    *
    * @relation BREAK_WORD = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BreakWord |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
}



/**
* ImageRepeat enumeration description
*
* @relation enum ImageRepeat
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ImageRepeat {
    /**
    * Do not draw the picture again.
    *
    * @relation NoRepeat
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    NoRepeat |
    /**
    * Repeat the drawing only on the horizontal axis.
    *
    * @relation X
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    X |
    /**
    * Repeat the drawing only on the vertical axis.
    *
    * @relation Y
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Y |
    /**
    * Draw the picture repeatedly on both axes.
    *
    * @relation XY
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    XY |
    ...
}



/**
* ImageSize enumeration description
*
* @relation enum ImageRepeat
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ImageSize {
    /**
    * Keep the aspect ratio to zoom out or zoom in so that the image is completely displayed within the display boundary.
    *
    * @relation Contain
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Contain |
    /**
    * Keep the aspect ratio to zoom in or out the image so that both sides of the image are greater than or equal to the display boundary.
    *
    * @relation Cover
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Cover |
    /**
    * Keep the scale of the original image unchanged.
    *
    * @relation Auto
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Auto |
    ...
}



/**
* enum Shadow style
*
* @relation enum ImageRepeat
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ShadowStyle {
    /**
    * Defines the super small default shadow style.
    *
    * @relation OUTER_DEFAULT_XS
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    OuterDefaultXS |
    /**
    * Defines the small default shadow style.
    *
    * @relation OUTER_DEFAULT_SM
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    OuterDefaultSM |
    /**
    * Medium shadow.
    *
    * @relation OUTER_DEFAULT_MD
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    OuterDefaultMD |
    /**
    * Large shadow.
    *
    * @relation OUTER_DEFAULT_LG
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    OuterDefaultLG |
    /**
    * Floating medium shadow.
    *
    * @relation OUTER_FLOATING_SM
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    OuterFloatingSM |
    /**
    * Floating medium shadow.
    *
    * @relation OUTER_FLOATING_MD
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    OuterFloatingMD |
    ...
}



/**
* Letter type in text
*
* @relation enum TextCase
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextCase {
    /**
    * The default is normal.
    *
    * @relation Normal
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Normal |
    /**
    * The text is all lowercase.
    *
    * @relation LowerCase
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    LowerCase |
    /**
    * The text is all uppercase.
    *
    * @relation UpperCase
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    UpperCase |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
}



/**
* Border Style
*
* @relation enum BorderStyle
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum BorderStyle {
    /**
    * Shows as a solid line.
    *
    * @relation Solid
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Solid |
    /**
    * Shows as a series of short square dashed lines.
    *
    * @relation Dashed
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Dashed |
    /**
    * Displays as a series of dots with a radius of half the borderWidth.
    *
    * @relation Dotted
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Dotted |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
}



/**
* Image display mode.
*
* @relation enum ImageFit
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ImageFit {
    /**
    * Zoom in or out without maintaining the aspect ratio so that the image fills the display boundary.
    *
    * @relation Fill
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Fill |
    /**
    * Keep the aspect ratio to zoom out or zoom in so that the image is completely displayed within the display boundary.
    *
    * @relation Contain
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Contain |
    /**
    * Keep the aspect ratio to zoom out or zoom in so that both sides of the image are greater than or equal to the display boundary.
    *
    * @relation Cover
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Cover |
    /**
    * Adaptive display
    *
    * @relation Auto
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Auto |
    /**
    * Keep the original size and display it in the center.
    *
    * @relation None
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    /**
    * Keep the aspect ratio displayed, and the image zooms out or remains unchanged.
    *
    * @relation ScaleDown
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ScaleDown |
    ...
}



/**
* Sets the horizontal layout of elements.
*
* @relation enum Direction
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum Direction {
    /**
    * Elements are laid out from left to right.
    *
    * @relation Ltr
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Ltr |
    /**
    * Elements are laid out from right to left.
    *
    * @relation Rtl
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Rtl |
    /**
    * Use the default layout direction.
    *
    * @relation Auto
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Auto |
    ...
}



/**
* Enumerates the scrolling directions.
*
* @relation enum ScrollDirection
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ScrollDirection {
    /**
    * Only vertical scrolling is supported.
    *
    * @relation Vertical
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Vertical |
    /**
    * Only horizontal scrolling is supported.
    *
    * @relation Horizontal
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Horizontal |
    ...
}



/**
* Content scroll direction.
*
* @relation enum ScrollBarDirection
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ScrollBarDirection {
    /**
    * Vertical scrolling is supported.
    *
    * @relation Vertical
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Vertical |
    /**
    * Horizontal scrolling is supported.
    *
    * @relation Horizontal
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Horizontal |
    ...
}



/**
* State triggered by the event.
*
* @relation enum SliderChangeMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SliderChangeMode {
    /**
    * The user touches or clicks the thumb.
    *
    * @relation Begin
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Begin |
    /**
    * The user is dragging the slider.
    *
    * @relation Moving
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Moving |
    /**
    * The user stops dragging the slider by lifting their finger or releasing the mouse device.
    * <p><strong>NOTE</strong>:
    * <br>The trigger occurs when an invalid value is restored to the default value, that is, when the value is set to
    * less than min or greater than max.
    * </p>
    *
    * @relation End
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    End |
    /**
    * The user moves the thumb by touching or clicking the track.
    *
    * @relation Click
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Click |
    ...
}



/**
* Style of the slider thumb and track.
*
* @relation enum SliderStyle
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SliderStyle {
    /**
    * The thumb is on the track.
    *
    * @relation OutSet
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    OutSet |
    /**
    * The thumb is in the track.
    *
    * @relation InSet
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    InSet |
    ...
}



/**
* The interpolation effect of the image.
*
* @relation enum ImageInterpolation
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ImageInterpolation {
    /**
    * Do not use interpolated image data.
    *
    * @relation None
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    /**
    * High usage of interpolated image data may affect the speed of image rendering.
    *
    * @relation High
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    High |
    /**
    * Interpolated image data is used moderately.
    *
    * @relation Medium
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Medium |
    /**
    * Low usage of interpolated image data.
    *
    * @relation Low
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Low |
    ...
}



/**
* Used to set the status of the scroll bar.
*
* @relation enum BarState
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum BarState {
    /**
    * Not displayed.
    *
    * @relation Off
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Off |
    /**
    * On-demand display (displayed when you touch it and disappears after 2 seconds).
    *
    * @relation Auto
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Auto |
    /**
    * Resident display.
    *
    * @relation On
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    On |
    ...
}



/**
* Controls the display or hide of the current component
*
* @relation enum Visibility
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum Visibility {
    /**
    * Resident display.
    *
    * @relation Visible
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Visible |
    /**
    * Hide, but participate in layout for placeholder.
    *
    * @relation Hidden
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Hidden |
    /**
    * Hides but does not participate in layout and does not take place.
    *
    * @relation None
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    ...
}



/**
* LineCapStyle enumeration description
*
* @relation enum LineCapStyle
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum LineCapStyle {
    /**
    * The two ends of the dividing line are parallel lines.
    *
    * @relation Butt
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Butt |
    /**
    * The two ends of the dividing line are semicircles.
    *
    * @relation Round
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Round |
    /**
    * Extends half a circle at the end of the path with a width equal to half the line width and a height equal to the line width.
    *
    * @relation Square
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Square |
    ...
}



/**
* Type of progress bar
*
* @relation enum ProgressType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ProgressType {
    /**
    * Linear progress bar style.
    *
    * @relation Linear = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Linear |
    /**
    * Ring progress bar.
    *
    * @relation Ring = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Ring |
    /**
    * Eclipse progress bar.
    *
    * @relation Eclipse = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Eclipse |
    /**
    * ScaleRing progress bar.
    *
    * @relation ScaleRing = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ScaleRing |
    /**
    * Capsule progress bar.
    *
    * @relation Capsule = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Capsule |
    ...
}



/**
* Image Rendering Mode.
*
* @relation enum ImageRenderMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ImageRenderMode {
    /**
    * Render according to the original image, including colors.
    *
    * @relation Original
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Original |
    /**
    * Render the image as a template image, ignoring the color information of the image.
    *
    * @relation Template
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Template |
    ...
}



/**
* Route jump.
*
* @relation enum NavigationType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum NavigationType {
    /**
    * Jump to the next page.
    *
    * @relation Push
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Push |
    /**
    * Replace page.
    *
    * @relation Replace
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Replace |
    /**
    * Return to the previous page.
    *
    * @relation Back
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Back |
    ...
}



/**
* Declare the size of the swiper on the spindle.
*
* @relation enum SwiperDisplayMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SwiperDisplayMode {
    /**
    * Carousel map extension.
    *
    * @relation Stretch
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Stretch |
    /**
    * The rotation chart is self linear.
    *
    * @relation AutoLinear
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    AutoLinear |
    ...
}



/**
* Sets the animation playback mode. By default, the animation starts to play again after the playback is complete.
*
* @relation enum Curve
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum Curve {
    /**
    * Indicates that the speed of the animation is the same from start to finish.
    *
    * @relation Linear
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Linear |
    /**
    * Indicates that the animation starts at a low speed, then accelerates, and then slows down before it ends, CubicBezier(0.25, 0.1, 0.25, 1.0).
    *
    * @relation Ease
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Ease |
    /**
    * Indicates that the animation starts at a low speed, CubicBezier(0.42, 0.0, 1.0, 1.0).
    *
    * @relation EaseIn
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    EaseIn |
    /**
    * Indicates that the animation ends at a low speed, CubicBezier(0.0, 0.0, 0.78, 1.0).
    *
    * @relation EaseOut
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    EaseOut |
    /**
    * Indicates that the animation starts and ends at a slow speed, CubicBezier(0.42, 0.0, 0.78, 1.0).
    *
    * @relation EaseInOut
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    EaseInOut |
    /**
    * Slow-in, fast-out
    *
    * @relation FastOutSlowIn
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    FastOutSlowIn |
    /**
    * Linear Out Slow In
    *
    * @relation LinearOutSlowIn
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    LinearOutSlowIn |
    /**
    * Fast Out Linear In.
    *
    * @relation FastOutLinearIn
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    FastOutLinearIn |
    /**
    * Extreme Deceleration.
    *
    * @relation ExtremeDeceleration
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ExtremeDeceleration |
    /**
    * Sharp.
    *
    * @relation Sharp
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Sharp |
    /**
    * Rhythm.
    *
    * @relation Rhythm
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Rhythm |
    /**
    * Smooth.
    *
    * @relation Smooth
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Smooth |
    /**
    * Damping curve, CubicBezier(0.2, 0.0, 0.2, 1.0).
    *
    * @relation Friction
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Friction |
    ...
}



/**
* Sliding effect
*
* @relation enum EdgeEffect
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum EdgeEffect {
    /**
    * Elastic physical action, sliding to the edge can continue to slide for a distance based on the initial speed or touch event, and spring back when released.
    *
    * @relation Spring
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Spring |
    /**
    * Fade.
    *
    * @relation Fade
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Fade |
    /**
    * Sliding to the edge has no effect.
    *
    * @relation None
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    ...
}



/**
* Edge.
*
* @relation enum Edge
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum Edge {
    /**
    * The top is centered horizontally.
    *
    * @relation Top
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Top |
    /**
    * Align the head of the cross axis direction.
    *
    * @relation Start
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Start |
    /**
    * The bottom is centered horizontally.
    *
    * @relation Bottom
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Bottom |
    /**
    * Align the head of the cross axis direction.
    *
    * @relation End
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    End |
    ...
}



/**
* the position of Corresponding enum in Native:
* Path: /frameworks/core/components/common/properties/placement.h
* Identifier: Placement
*//**
* Placement enumeration description
*
* @relation enum Placement
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum Placement {
    /**
    * Left placement
    *
    * @relation Left
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Left |
    /**
    * Right placement
    *
    * @relation Right
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Right |
    /**
    * Top placement
    *
    * @relation Top
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Top |
    /**
    * Bottom placement
    *
    * @relation Bottom
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Bottom |
    /**
    * TopLeft placement
    *
    * @relation TopLeft
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TopLeft |
    /**
    * TopRight placement
    *
    * @relation TopRight
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TopRight |
    /**
    * BottomLeft placement
    *
    * @relation BottomLeft
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BottomLeft |
    /**
    * BottomRight placement
    *
    * @relation BottomRight
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BottomRight |
    /**
    * LeftTop placement
    *
    * @relation LeftTop
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    LeftTop |
    /**
    * LeftBottom placement
    *
    * @relation LeftBottom
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    LeftBottom |
    /**
    * RightTop placement
    *
    * @relation RightTop
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RightTop |
    /**
    * RightBottom placement
    *
    * @relation RightBottom
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RightBottom |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    ...
}



/**
* the position of Corresponding enum in Native:
* Path: /frameworks/core/components/common/properties/paint_state.h
* Identifier: LineJoinStyle
*//**
* Line Join Style
*
* @relation enum LineJoinStyle
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum LineJoinStyle {
    /**
    * Connect path segments using bevels.
    *
    * @relation Miter
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Miter |
    /**
    * Connect path segments using sharp corners.
    *
    * @relation Round
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Round |
    /**
    * Connect path segments using fillets.
    *
    * @relation Bevel
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Bevel |
    ...
}



/**
* the position of Corresponding enum in Native:
* Path: /frameworks/core/components/common/layout/constants.h
* Identifier: TextAlign
*//**
* Describes the alignment mode for drawing text.
*
* @relation type CanvasTextAlign = "center" | "end" | "left" | "right" | "start"
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextAlignStyle {
    /**
    * (Default) The text is left-aligned.
    *
    * @relation type CanvasTextAlign = "center" | "end" | "left" | "right" | "start"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Left |
    /**
    * The text is right-aligned.
    *
    * @relation type CanvasTextAlign = "center" | "end" | "left" | "right" | "start"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Right |
    /**
    * The text is centered.
    *
    * @relation type CanvasTextAlign = "center" | "end" | "left" | "right" | "start"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Center |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Justify |
    /**
    * Where the text snap line begins (Left alignment refers to the local from left to right,
    * and right alignment refers to the local from right to left)
    *
    * @relation type CanvasTextAlign = "center" | "end" | "left" | "right" | "start"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Start |
    /**
    * Where text aligns lines end (Left alignment refers to the local from left to right,
    * and right alignment refers to the local from right to left)
    *
    * @relation type CanvasTextAlign = "center" | "end" | "left" | "right" | "start"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    End |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
}



/**
* the position of Corresponding enum in Native:
* Path: /frameworks/core/components/common/properties/text_style.h
* Identifier: TextBaseline
*//**
* Enumeration the type of text baseline.
*
* @relation enum TextBaseline
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextBaseline {
    /**
    * The alphabetic baseline, typically used for Latin-based scripts where the baseline aligns
    * with the base of lowercase letters.
    *
    * @relation ALPHABETIC
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Alphabetic |
    /**
    * The ideographic baseline, commonly used for ideographic scripts such as Chinese, Japanese, and Korean,
    * where the baseline aligns with the center of characters.
    *
    * @relation IDEOGRAPHIC
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Ideographic |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Top |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Bottom |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Middle |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Hanging |
    ...
}



/**
* the position of Corresponding enum in Native:
* Path: /frameworks/core/components/common/properties/paint_state.h
* Identifier: CompositeOperation
*//**
* Type of composition operation applied when drawing a new shape.
*
* @relation globalCompositeOperation: string
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum CompositeOperation {
    /**
    * (Default) Draws a new drawing on top of an existing canvas context.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SourceOver |
    /**
    * The new drawing is drawn only where it overlaps the content of the existing canvas.
    *
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SourceAtop |
    /**
    * The new drawing is drawn only where the new drawing overlaps the target canvas.
    * Everything else is transparent.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SourceIn |
    /**
    * Draws a new drawing where it does not overlap with the existing canvas content.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SourceOut |
    /**
    * Draws a new graphic behind the existing canvas content.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    DestinationOver |
    /**
    * The existing canvas retains only the part that overlaps with the new drawing,
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    DestinationAtop |
    /**
    * Existing canvas content remains where the new drawing overlaps the existing canvas content.
    * Everything else is transparent.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    DestinationIn |
    /**
    * Existing content remains where the new drawing does not overlap.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    DestinationOut |
    /**
    * The color of two overlapping shapes is determined by adding the color values.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Lighter |
    /**
    * Only new graphics are displayed.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Copy |
    /**
    * In the image, those overlaps and other places outside of the normal drawing are transparent.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Xor |
    ...
}



/**
* Sets the image smoothness attribute.
*
* @relation type ImageSmoothingQuality = "high" | "low" | "medium"
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum QualityType {
    /**
    * (default)low
    *
    * @relation type ImageSmoothingQuality = "high" | "low" | "medium"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Low |
    /**
    * Medium
    *
    * @relation type ImageSmoothingQuality = "high" | "low" | "medium"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Medium |
    /**
    * height
    *
    * @relation type ImageSmoothingQuality = "high" | "low" | "medium"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    High |
    ...
}



/**
* Creating an Object
*
* @relation enum GesturePriority
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum GesturePriority {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Low |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    High |
    ...
}



/**
* Creating an Object
*
* @relation enum GestureMask
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum GestureMask {
    /**
    * High-priority response to the current gesture.When the current gesture fails to be recognized, other gesture responses are triggered.For gestures with the same priority, responses are performed based on the recognition sequence.
    *
    * @relation Normal
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Normal |
    /**
    * Ignore internal gestures and recognize the current gesture first.
    *
    * @relation IgnoreInternal
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    IgnoreInternal |
    ...
}



/**
* Creating an Object
*
* @relation enum SwipeDirection
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SwipeDirection {
    /**
    * Sliding horizontally.
    *
    * @relation Horizontal
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Horizontal |
    /**
    * Sliding Vertical
    *
    * @relation Vertical
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Vertical |
    /**
    * Sliding in all directions.
    *
    * @relation All
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    All |
    ...
}



/**
* Creating an Object
*
* @relation enum PanDirection
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum PanDirection {
    /**
    * Default.
    *
    * @relation None
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    /**
    * Sliding left.
    *
    * @relation Left
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Left |
    /**
    * Sliding right.
    *
    * @relation Right
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Right |
    /**
    * Sliding horizontally.
    *
    * @relation Horizontal
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Horizontal |
    /**
    * Sliding up.
    *
    * @relation None
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Up |
    /**
    * Sliding Down.
    *
    * @relation None
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Down |
    /**
    * Sliding Vertical
    *
    * @relation Vertical
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Vertical |
    /**
    * Sliding in all directions.
    *
    * @relation All
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    All |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Computed(UInt32) |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func |(right: PanDirection): PanDirection
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func &(right: PanDirection): PanDirection
}



/**
* Creating an Object
*
* @relation enum GestureMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum GestureMode {
    /**
    * Sequential gesture recognition is performed in sequence according to the gesture registration sequence.
    *
    * @relation Sequence
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Sequence |
    /**
    * Simultaneous recognition. Registration gestures participate in recognition. Everything can be triggered.
    *
    * @relation Parallel
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Parallel |
    /**
    * Mutually exclusive recognition. Only one gesture is successfully recognized.
    *
    * @relation Exclusive
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Exclusive |
    ...
}



/**
* the position of Corresponding enum in Native:
* Path: /frameworks/base/geometry/axis.h
* Identifier: Axis
*//**
* Axis enumeration description.
*
* @relation enum Axis
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum Axis {
    /**
    * Longitudinal arrangement
    *
    * @relation Vertical
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Vertical |
    /**
    * Horizontal arrangement.
    *
    * @relation Horizontal
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Horizontal |
    ...
}



/**
* ResponseType for contextMenu
*
* @relation enum ResponseType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ResponseType {
    /**
    * Right click.
    *
    * @relation RightClick
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RightClick |
    /**
    * Long press.
    *
    * @relation LongPress
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    LongPress |
    ...
}



/**
* Indicates the share option.
*
* @relation enum CopyOptions
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum CopyOptions {
    /**
    * Not allow share.
    *
    * @relation None = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    /**
    * Share in app.
    *
    * @relation InApp = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    InApp |
    /**
    * Share in local device.
    *
    * @relation LocalDevice = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    LocalDevice |
    ...
}



/**
* Function Called by Touch
*
* @relation enum TouchType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TouchType {
    /**
    * Triggered when the finger is pressed.
    *
    * @relation Down
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Down |
    /**
    * Triggered when the finger is raised.
    *
    * @relation Up
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Up |
    /**
    * Triggered when the finger presses on the screen.
    *
    * @relation Move
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Move |
    /**
    * Triggers when the touch event cancels.
    *
    * @relation Cancel
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Cancel |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Unknown |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func toString(): String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): UInt8
}



/**
* Sets the sidebar style of showing
*
* @relation enum SideBarContainerType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SideBarContainerType {
    /**
    * The sidebar invisible
    *
    * @relation Embed
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Embed |
    /**
    * The sidebar visible
    *
    * @relation Overlay
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Overlay |
    /**
    * The sidebar AUTO
    *
    * @relation AUTO
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Auto |
    ...
}



/**
* Sets the sidebar position of showing
*
* @relation enum SideBarPosition
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SideBarPosition {
    /**
    * The sidebar is on the Start of the container
    *
    * @relation Start
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Start |
    /**
    * The sidebar is on the End of the container
    *
    * @relation End
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    End |
    ...
}



/**
* Defines the event source type.
*
* @relation enum SourceType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SourceType {
    /**
    * Unknown type.
    *
    * @relation Unknown
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Unknown |
    /**
    * The mouse type.
    *
    * @relation Mouse
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Mouse |
    /**
    * The touch screen type.
    *
    * @relation TouchScreen
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TouchScreen |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func toString(): String
}



/**
* Function Called by Mouse
*
* @relation enum MouseButton
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum MouseButton {
    /**
    * Mouse None Button.
    *
    * @relation None
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    /**
    * Mouse Left Button.
    *
    * @relation Left
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Left |
    /**
    * Mouse Right Button.
    *
    * @relation Right
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Right |
    /**
    * Mouse Middle Button.
    *
    * @relation Middle
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Middle |
    /**
    * Mouse Back Button.
    *
    * @relation Back
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Back |
    /**
    * Mouse Forward Button.
    *
    * @relation Forward
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Forward |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func toString(): String
}



/**
* Function Called by Mouse
*
* @relation enum MouseAction
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum MouseAction {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    /**
    * Triggered when the mouse is pressed.
    *
    * @relation Press
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Press |
    /**
    * Triggered when the mouse is released.
    *
    * @relation Release
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Release |
    /**
    * Triggered when the mouse is Moved.
    *
    * @relation Move
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Move |
    /**
    * Triggered when the mouse is Hovered.
    *
    * @relation Hover
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Hover |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func toString(): String
}



/**
* Type of the input device that triggers the current key.
*
* @relation enum KeySource
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum KeySource {
    /**
    * The input device type is unknown.
    *
    * @relation Unknown
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Unknown |
    /**
    * Set Device Type to Keyboard.
    *
    * @relation Keyboard
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Keyboard |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func toString(): String
}



/**
* Type of a key.
*
* @relation enum KeyType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum KeyType {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Unknown |
    /**
    * Press the key.
    *
    * @relation Down
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Down |
    /**
    * The key is released.
    *
    * @relation Up
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Up |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func toString(): String
}



/**
* Modifier key for hot key.
*
* @relation enum ModifierKey
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ModifierKey {
    /**
    * ctrl.
    *
    * @relation CTRL
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    CTRL |
    /**
    * shift.
    *
    * @relation SHIFT
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SHIFT |
    /**
    * alt.
    *
    * @relation ALT
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ALT |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func toString(): String
}



/**
* Function key for hot key.
*
* @relation enum FunctionKey
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FunctionKey {
    /**
    * Escape key.
    *
    * @relation ESC
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ESC |
    /**
    * F1 key.
    *
    * @relation F1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    F1 |
    /**
    * F2 key.
    *
    * @relation F2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    F2 |
    /**
    * F3 key.
    *
    * @relation F3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    F3 |
    /**
    * F4 key.
    *
    * @relation F4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    F4 |
    /**
    * F5 key.
    *
    * @relation F5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    F5 |
    /**
    * F6 key.
    *
    * @relation F6
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    F6 |
    /**
    * F7 key.
    *
    * @relation F7
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    F7 |
    /**
    * F8 key.
    *
    * @relation F8
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    F8 |
    /**
    * F9 key.
    *
    * @relation F9
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    F9 |
    /**
    * F10 key.
    *
    * @relation F10
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    F10 |
    /**
    * F11 key.
    *
    * @relation F11
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    F11 |
    /**
    * F12 key.
    *
    * @relation F12
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    F12 |
    /**
    * Tab key.
    *
    * @relation TAB
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TAB |
    ...
}



/**
* DataPanelType enum
*
* @relation enum DataPanelType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum DataPanelType {
    /**
    * Line Rainbow
    *
    * @relation Circle
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    CircleType |
    /**
    * Line Type
    *
    * @relation Line
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    LineType |
    ...
}



/**
* ItemState
*
* @relation enum ItemState
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ItemState {
    /**
    * Default State
    *
    * @relation Normal
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Normal |
    /**
    * Disabled State
    *
    * @relation Disabled
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Disabled |
    /**
    * Waiting State
    *
    * @relation Waiting
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Waiting |
    /**
    * Skip State
    *
    * @relation Skip
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Skip |
    ...
}



/**
* The refresh status of the drop-down refresh.
*
* @relation enum RefreshStatus
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum RefreshStatus {
    /**
    * The refresh status of the drop-down refresh.
    *
    * @relation Inactive
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Inactive |
    /**
    * Drop down, but the drop-down distance is less than the refresh distance.
    *
    * @relation Drag
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Drag |
    /**
    * The pull-down exceeds the refresh distance.
    *
    * @relation OverDrag
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    OverDrag |
    /**
    * After the pull-down, it rebounds to the refresh distance and enters the refresh state.
    *
    * @relation Refresh
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Refresh |
    /**
    * After refresh, return to the initial state.
    *
    * @relation Done
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Done |
    ...
}



/**
* Seek mode.
*
* @relation enum SeekMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SeekMode {
    /**
    * Sync to keyframes before the time point.
    *
    * @relation PreviousKeyframe
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PreviousKeyframe |
    /**
    * Sync to keyframes after the time point.
    *
    * @relation NextKeyframe
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    NextKeyframe |
    /**
    * Sync to closest keyframes.
    *
    * @relation ClosestKeyframe
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ClosestKeyframe |
    /**
    * Seek to frames closest the time point.
    *
    * @relation Accurate
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Accurate |
    ...
}



/**
* playback speed.
*
* @relation enum PlaybackSpeed
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum PlaybackSpeed {
    /**
    * 0.75x speed playback.
    *
    * @relation Speed_Forward_0_75_X
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Speed_Forward_0_75_X |
    /**
    * 1.00x speed playback.
    *
    * @relation Speed_Forward_1_00_X
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Speed_Forward_1_00_X |
    /**
    * 1.25x speed playback.
    *
    * @relation Speed_Forward_1_25_X
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Speed_Forward_1_25_X |
    /**
    * 1.75x speed playback.
    *
    * @relation Speed_Forward_1_75_X
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Speed_Forward_1_75_X |
    /**
    * 2.00x speed playback.
    *
    * @relation Speed_Forward_2_00_X
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Speed_Forward_2_00_X |
    ...
}



/**
* CheckboxGroup SelectStatus
*
* @relation enum SelectStatus
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SelectStatus {
    /**
    * All checkboxes are selected.
    *
    * @relation All
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    All |
    /**
    * Part of the checkbox is selected.
    *
    * @relation Part
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Part |
    /**
    * None of the checkbox is selected.
    *
    * @relation None
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func toString(): String
}



/**
* Animation status.
*
* @relation enum AnimationStatus
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum AnimationStatus {
    /**
    * Initial state of the animation.
    *
    * @relation Initial
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Initial |
    /**
    * The animation is playing.
    *
    * @relation Running
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Running |
    /**
    * The animation is paused.
    *
    * @relation Paused
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Paused |
    /**
    * The animation is stopped.
    *
    * @relation Stopped
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Stopped |
    ...
}



/**
* Sets the state before and after the animation starts.
*
* @relation enum FillMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FillMode {
    /**
    * Restores to the initial state after the playback is complete.
    *
    * @relation None
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    /**
    * Retains the state at the end of the animation when the playback is complete.
    *
    * @relation Forwards
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Forwards |
    /**
    * Applies the start attribute value for the period specified by animation-delay before the animation is displayed.
    *
    * @relation Backwards
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Backwards |
    /**
    * Both forward and backward fill modes are applied.
    *
    * @relation Both
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Both |
    ...
}



/**
* Sliding effect
*
* @relation enum SwipeEdgeEffect
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SwipeEdgeEffect {
    /**
    * Elastic physical action, sliding to the edge can continue to slide for a distance based on the initial speed or touch event, and spring back when released.
    *
    * @relation Spring
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Spring |
    /**
    * Sliding to the edge has no effect.
    *
    * @relation None
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
}



/**
* SharedTransitionEffectType enumeration description
*
* @relation enum SharedTransitionEffectType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SharedTransitionEffectType {
    /**
    * The location of the destination page element remains unchanged, and you can configure the transparency animation. Currently,
    * only the static effect configured for redirecting to the target page takes effect.
    *
    * @relation Static
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Static |
    /**
    * Move the source page element to the destination page element location and scale it appropriately.
    *
    * @relation Exchange
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Exchange |
    ...
}



/**
* Declare scroll status
*
* @relation enum ScrollState
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ScrollState {
    /**
    * Not activated.
    *
    * @relation Idle
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Idle |
    /**
    * Scrolling status.
    *
    * @relation Scrolling
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Scrolling |
    /**
    * Inertial scrolling state.
    *
    * @relation Fling
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Fling |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func toString(): String
}



/**
* Declare list item alignment status
*
* @relation enum ListItemAlign
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ListItemAlign {
    /**
    * The list items are packed toward the start edge of the <em>List</em> component along the cross axis.
    *
    * @relation Start
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Start |
    /**
    * The list items are centered in the <em>List</em> component along the cross axis.
    *
    * @relation Center
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Center |
    /**
    * The list items are packed toward the end edge of the <em>List</em> component along the cross axis.
    *
    * @relation End
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    End |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
}



/**
* Declare item group sticky style.
*
* @relation enum StickyStyle
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum StickyStyle {
    /**
    * In the ListItemGroup component, the header is not pinned to the top,
    * and the footer is not pinned to the bottom.
    *
    * @relation None = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    /**
    * In the ListItemGroup component, the header is pinned to the top,
    * and the footer is not pinned to the bottom.
    *
    * @relation Header = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Header |
    /**
    * In the <em>ListItemGroup</em> component, the footer is pinned to the bottom,
    * and the header is not pinned to the top.
    *
    * @relation Footer = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Footer |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Both |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
}



/**
* Defines span type.
*
* @relation enum RichEditorSpanType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum RichEditorSpanType {
    /**
    * Text,corresponding textSpan type.
    *
    * @relation TEXT = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TEXT |
    /**
    * Image,corresponding imageSpan type.
    *
    * @relation IMAGE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    IMAGE |
    /**
    * Mixed,corresponding mixed span type.
    *
    * @relation MIXED = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    MIXED |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
}



/**
* The alignment of ImageSpan
*
* @relation enum ImageSpanAlignment
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ImageSpanAlignment {
    /**
    * Indicating that the top of the ImageSpan should be aligned with the top of the surrounding text.
    *
    * @relation TOP
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TOP |
    /**
    * Indicating that the center of the ImageSpan should be aligned with the center of the surrounding text.
    *
    * @relation CENTER
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    CENTER |
    /**
    * Indicating that the bottom of the ImageSpan should be aligned with the bottom of the surrounding text.
    *
    * @relation BOTTOM
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BOTTOM |
    /**
    * Indicating that the bottom of the ImageSpan should be aligned with the baseline of the surrounding text.
    *
    * @relation BASELINE
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BASELINE |
    ...
}



/**
* Defines delete text direction.
*
* @relation enum RichEditorDeleteDirection
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum RichEditorDeleteDirection {
    /**
    * Delete backward.
    *
    * @relation BACKWARD
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BACKWARD |
    /**
    * Delete forward.
    *
    * @relation FORWARD
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    FORWARD |
    ...
}



/**
* Defines delete text direction.
*
* @relation enum RichEditorDeleteDirection
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SpanType {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TEXT |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    IMAGE |
    ...
}



/**
* The Web's behavior to load from HTTP or HTTPS. Defaults to MixedMode.None.
*
* @relation enum MixedMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum MixedMode {
    /**
    * Loose Mode: HTTP and HTTPS hybrid content can be loaded. This means that all insecure content can be loaded.
    *
    * @relation All = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    All |
    /**
    * Compatibility Modes: HTTP and HTTPS hybrid content can be loaded in compatibility mode. This means that some insecure content may be loaded.
    *
    * @relation Compatible = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Compatible |
    /**
    * Strict Mode: HTTP and HTTPS hybrid content cannot be loaded.
    *
    * @relation None = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    ...
}



/**
* Play Mode
*
* @relation enum PlayMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum PlayMode {
    /**
    * The animation plays normally.
    *
    * @relation Normal
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Normal |
    /**
    * The animation plays backwards.
    *
    * @relation Reverse
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Reverse |
    /**
    * The animation plays forward on odd numbers (1, 3, 7...) and backward on even numbers (2, 4, 6...).
    *
    * @relation Alternate
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Alternate |
    /**
    * The animation plays backwards on odd numbers (1, 3, 7...) and forwards on even numbers (2, 4, 6...)..
    *
    * @relation AlternateReverse
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    AlternateReverse |
    ...
}



/**
* GradientDirection enumeration description
*
* @relation enum GradientDirection
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum GradientDirection {
    /**
    * Right to left.
    *
    * @relation Left
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Left |
    /**
    * From the bottom up.
    *
    * @relation Top
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Top |
    /**
    * From left to right.
    *
    * @relation Right
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Right |
    /**
    * From the top down.
    *
    * @relation Bottom
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Bottom |
    /**
    * Top Left
    *
    * @relation LeftTop
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    LeftTop |
    /**
    * Left Bottom
    *
    * @relation LeftBottom
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    LeftBottom |
    /**
    * Right Top
    *
    * @relation RightTop
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RightTop |
    /**
    * Right Bottom
    *
    * @relation RightBottom
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RightBottom |
    /**
    * None
    *
    * @relation None
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    ...
}



/**
* Enum of RenderFit
*
* @relation enum RenderFit
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum RenderFit {
    /**
    * Without scaling the content area, the content area is drawn in the center of the node.
    *
    * @relation CENTER = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    CENTER |
    /**
    * Without scaling the content area, the content area is drawn in the top center of the node.
    *
    * @relation TOP = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TOP |
    /**
    * Without scaling the content area, the content area is drawn in the bottom center of the node.
    *
    * @relation BOTTOM = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BOTTOM |
    /**
    * Without scaling the content area, the content area is drawn in the left center of the node.
    *
    * @relation LEFT = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    LEFT |
    /**
    * Without scaling the content area, the content area is drawn in the right center of the node.
    *
    * @relation RIGHT = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RIGHT |
    /**
    * Without scaling the content area, the content area is drawn in the top left of the node.
    *
    * @relation TOP_LEFT = 5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TOP_LEFT |
    /**
    * Without scaling the content area, the content area is drawn in the top right of the node.
    *
    * @relation TOP_RIGHT = 6
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TOP_RIGHT |
    /**
    * Without scaling the content area, the content area is drawn in the bottom left of the node.
    *
    * @relation BOTTOM_LEFT = 7
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BOTTOM_LEFT |
    /**
    * Without scaling the content area, the content area is drawn in the bottom right of the node.
    *
    * @relation BOTTOM_RIGHT = 8
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BOTTOM_RIGHT |
    /**
    * Scale the length and width of the content area to the node size to fill the node.
    *
    * @relation RESIZE_FILL = 9
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RESIZE_FILL |
    /**
    * Scale the length or width of the content to the length or width of the node, ensuring that one side is equal,
    * the other side is less than or equal to the corresponding side of the node, and the content after scaling
    * is centered.
    *
    * @relation RESIZE_CONTAIN = 10
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RESIZE_CONTAIN |
    /**
    * Scale the length or width of the content to the length or width of the node, ensuring that one side is equal,
    * the other side is less than or equal to the corresponding side of the node. If the height of the scaled content
    * is less than or equal to the height of the node, the scaled content area is displayed at the top; otherwise,
    * the width of the scaled content is less than or equal to the width of the node, the scaled content area is
    * displayed at the left.
    *
    * @relation RESIZE_CONTAIN_TOP_LEFT = 11
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RESIZE_CONTAIN_TOP_LEFT |
    /**
    * Scale the length or width of the content to the length or width of the node, ensuring that one side is equal,
    * the other side is less than or equal to the corresponding side of the node. If the height of the scaled content
    * is less than or equal to the height of the node, the scaled content area is displayed at the bottom; otherwise,
    * the width of the scaled content is less than or equal to the width of the node, the scaled content area is
    * displayed at the right.
    *
    * @relation RESIZE_CONTAIN_BOTTOM_RIGHT = 12
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RESIZE_CONTAIN_BOTTOM_RIGHT |
    /**
    * Scale the length or width of the content to the length or width of the node, ensuring that one side is equal,
    * the other side is greater than or equal to the corresponding side of the node, and the content after scaling
    * displays the center area.
    *
    * @relation RESIZE_COVER = 13
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RESIZE_COVER |
    /**
    * Scale the length or width of the content to the length or width of the node, ensuring that one side is equal,
    * the other side is greater than or equal to the corresponding side of the node. If the height of the scaled content
    * is greater than or equal to the height of the node, the scaled content area displays the top area; otherwise,
    * the width of the scaled content is greater than or equal to the width of the node, the scaled content area
    * displays the left area.
    *
    * @relation RESIZE_COVER_TOP_LEFT = 14
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RESIZE_COVER_TOP_LEFT |
    /**
    * Scale the length or width of the content to the length or width of the node, ensuring that one side is equal,
    * the other side is greater than or equal to the corresponding side of the node. If the height of the scaled content
    * is greater than or equal to the height of the node, the scaled content area displays the bottom area; otherwise,
    * the width of the scaled content is greater than or equal to the width of the node, the scaled content area
    * displays the right area.
    *
    * @relation RESIZE_COVER_BOTTOM_RIGHT = 15
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RESIZE_COVER_BOTTOM_RIGHT |
    ...
}



/**
* The alignment of dialog,
*
* @relation enum DialogAlignment
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum DialogAlignment {
    /**
    * Vertical top alignment.
    *
    * @relation Top
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Top |
    /**
    * Align vertically to the center.
    *
    * @relation Center
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Center |
    /**
    * Vertical bottom alignment.
    *
    * @relation Bottom
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Bottom |
    /**
    * Default alignment.
    *
    * @relation Default
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Default |
    /**
    * Align the upper left corner.
    *
    * @relation TopStart
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TopStart |
    /**
    * Align the upper right corner.
    *
    * @relation TopEnd
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TopEnd |
    /**
    * Left center alignment.
    *
    * @relation CenterStart
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    CenterStart |
    /**
    * Right center alignment.
    *
    * @relation CenterEnd
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    CenterEnd |
    /**
    * Align the lower left corner.
    *
    * @relation BottomStart
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BottomStart |
    /**
    * Align the lower right corner.
    *
    * @relation BottomEnd
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BottomEnd |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
}



/**
* Specifies the direction value of Barrier.
*
* @relation enum BarrierDirection
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum BarrierDirection {
    /**
    * Barrier will be positioned to the far left of all referenced components.
    *
    * @relation LEFT
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    LEFT |
    /**
    * Barrier will be positioned to the far right of all referenced components.
    *
    * @relation RIGHT
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    RIGHT |
    /**
    * Barrier will be positioned to the top of all referenced components.
    *
    * @relation TOP
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TOP |
    /**
    * Barrier will be positioned to the bottom of all referenced components.
    *
    * @relation BOTTOM
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BOTTOM |
    ...
}



/**
* The types of expanded safe areas.
*
* @relation enum SafeAreaType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SafeAreaType {
    /**
    * Default non-safe area of the system, including the status bar and navigation bar.
    *
    * @relation SYSTEM
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SYSTEM |
    /**
    * Non-safe area of the device like Notch or punch hole.
    *
    * @relation CUTOUT
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    CUTOUT |
    /**
    * Soft keyboard area.
    *
    * @relation KEYBOARD
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    KEYBOARD |
    ...
}



/**
* Enumerates the safe area edges.
*
* @relation enum SafeAreaEdge
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SafeAreaEdge {
    /**
    * Top edge.
    *
    * @relation TOP
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TOP |
    /**
    * Bottom edge of the safe area.
    *
    * @relation BOTTOM
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BOTTOM |
    /**
    * Start edge.
    *
    * @relation START
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    START |
    /**
    * End edge.
    *
    * @relation END
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    END |
    ...
}



/**
* Common enum of color strategy
*
* @relation enum ColoringStrategy
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ColoringStrategy {
    /**
    * Use the inverse color strategy. Gets the inverse of the background color. Only applies to foregroundColor.
    *
    * @relation INVERT = 'invert'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    INVERT |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): String
}



/**
* Nested scroll nested mode
*
* @relation enum NestedScrollMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum NestedScrollMode {
    /**
    * Only Self response scrolling.
    *
    * @relation SELF_ONLY
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SELF_ONLY |
    /**
    * Self priority response scrolling.
    *
    * @relation SELF_FIRST
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SELF_FIRST |
    /**
    * Parent scrollable component priority response scrolling.
    *
    * @relation PARENT_FIRST
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PARENT_FIRST |
    /**
    * Both self and parent scrollable component response scrolling.
    *
    * @relation PARALLEL
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PARALLEL |
    ...
}



/**
* enum Blur style
*
* @relation enum ForegroundBlurStyle
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ForegroundBlurStyle {
    /**
    * No blur.
    *
    * @relation NONE
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    /**
    * Thin material.
    *
    * @relation Thin
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Thin |
    /**
    * Regular material.
    *
    * @relation Regular
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Regular |
    /**
    * Thick material.
    *
    * @relation Thick
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Thick |
    /**
    * Material that creates the minimum depth of field effect.
    *
    * @relation BACKGROUND_THIN
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BackgroundThin |
    /**
    * Material that creates a medium shallow depth of field effect.
    *
    * @relation BACKGROUND_REGULAR
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BackgroundRegular |
    /**
    * Material that creates a high shallow depth of field effect.
    *
    * @relation BACKGROUND_THICK
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BackgroundThick |
    /**
    * Material that creates the maximum depth of field effect.
    *
    * @relation BACKGROUND_ULTRA_THICK
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BackgroundUltraThick |
    /**
    * Component ultra-thin material.
    *
    * @relation COMPONENT_ULTRA_THIN = 8
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ComponentUltraThin |
    /**
    * Defines the thin component material.
    *
    * @relation COMPONENT_THIN = 9
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ComponentThin |
    /**
    * Defines the regular component material.
    *
    * @relation COMPONENT_REGULAR = 10
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ComponentRegular |
    /**
    * Defines the thick component material.
    *
    * @relation COMPONENT_THICK = 11
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ComponentThick |
    /**
    * Defines the ultra thick component material.
    *
    * @relation COMPONENT_ULTRA_THICK = 12
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ComponentUltraThick |
    ...
}



/**
* enum color mode
*
* @relation enum ThemeColorMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ThemeColorMode {
    /**
    * Defines the mode which is follow up with system.
    *
    * @relation SYSTEM
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    System |
    /**
    * Defines the light mode.
    *
    * @relation LIGHT
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Light |
    /**
    * Defines the dark mode.
    *
    * @relation DARK
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Dark |
    ...
}



/**
* Defines adaptive color
*
* @relation enum AdaptiveColor
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum AdaptiveColor {
    /**
    * Adaptive color mode is not used.
    * The default color is used as the mask color. Using a mode other than **DEFAULT** can be more time-consuming.
    *
    * @relation DEFAULT
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Default |
    /**
    * Adaptive color mode is used. The average color value of the color picking area is used as the mask color.
    *
    * @relation AVERAGE
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Average |
    ...
}



/**
* Enum for Control Size.
*
* @relation enum ControlSize
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ControlSize {
    /**
    * The component size is small.
    *
    * @relation SMALL = 'small'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Small |
    /**
    * The component size is normal.
    *
    * @relation NORMAL = 'normal'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Normal |
    ...
}



/**
* Decide whether the width of select menu fit the trigger or content
*
* @relation enum OptionWidthMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum OptionWidthMode {
    /**
    * The menu width fit the content.
    *
    * @relation FIT_CONTENT = 'fit_content'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    FIT_CONTENT |
    /**
    * The menu width fit the trigger.
    *
    * @relation FIT_TRIGGER = 'fit_trigger'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    FIT_TRIGGER |
    ...
}



/**
* The enum for arrow position in the select
*
* @relation enum ArrowPosition
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ArrowPosition {
    /**
    * The value of arrow position end
    *
    * @relation END = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    END |
    /**
    * The value of arrow position start
    *
    * @relation START = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    START |
    ...
}



/**
* The type of alignment between select and menu.
*
* @relation enum MenuAlignType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum MenuAlignType {
    /**
    * The type of alignment between select and menu.
    *
    * @relation START
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    START |
    /**
    * The value of menu align type center.
    *
    * @relation CENTER
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    CENTER |
    /**
    * The value of menu align type end.
    *
    * @relation END
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    END |
    ...
}



/**
* Enum type supplied to {@link darkMode} for setting the web dark mode.
*
* @relation enum WebDarkMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum WebDarkMode {
    /**
    * Disable the web dark mode.
    *
    * @relation Off = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Off |
    /**
    * Enable the web dark mode.
    *
    * @relation On = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    On |
    /**
    * Make web dark mode follow the system.
    *
    * @relation Auto = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Auto |
    ...
}



/**
* Defines the event tool type.
*
* @relation enum SourceTool
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SourceTool {
    /**
    * Unknown type.
    *
    * @relation Unknown
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Unknown |
    /**
    * The finger type.
    *
    * @relation Finger
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Finger |
    /**
    * The pen type.
    *
    * @relation Pen
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Pen |
    /**
    * The mouse type.
    *
    * @relation MOUSE
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Mouse |
    /**
    * The touchpad type.
    *
    * @relation TOUCHPAD
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Touchpad |
    /**
    * The joystick type.
    *
    * @relation JOYSTICK
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Joystick |
    ...
}



/**
* Repetition mode.
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum Repetition {
    /**
    * The repeat method of image repetition.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    repeat |
    /**
    * The repeat-x method of image repetition.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    repeat_x |
    /**
    * The repeat-y method of image repetition.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    repeat_y |
    /**
    * The no-repeat method of image repetition.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    no_repeat |
    /**
    * The clamp method of image repetition.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    clamp |
    /**
    * The mirror method of image repetition.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    mirror |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func toString(): String
}



/**
* The possible source of scroll event
*
* @relation enum ScrollSource
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ScrollSource {
    /**
    * Drag events.
    *
    * @relation DRAG = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    DRAG |
    /**
    * Fling after the drag has ended with velocity.
    *
    * @relation enum FLING
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    FLING |
    /**
    * Over scroll with EdgeEffect.Spring.
    *
    * @relation EDGE_EFFECT
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    EDGE_EFFECT |
    /**
    * Other user input except drag, such as mouse wheel, key event.
    *
    * @relation OTHER_USER_INPUT
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    OTHER_USER_INPUT |
    /**
    * Drag events of scroll bar.
    *
    * @relation SCROLL_BAR
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SCROLL_BAR |
    /**
    * Fling after the drag on scroll bar has ended with velocity.
    *
    * @relation SCROLL_BAR_FLING
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SCROLL_BAR_FLING |
    /**
    * Member methods of Scroller without animation.
    *
    * @relation SCROLLER
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SCROLLER |
    /**
    * Member methods of Scroller with animation.
    *
    * @relation SCROLLER_ANIMATION
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SCROLLER_ANIMATION |
    ...
}



/**
* Declare the type of input content
*
* @relation enum ContentType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ContentType {
    /**
    * User name content type.
    * Password Vault, when enabled, can automatically save and fill in usernames.
    *
    * @relation USER_NAME = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    USER_NAME |
    /**
    * Password content type.
    * Password Vault, when enabled, can automatically save and fill in passwords.
    *
    * @relation PASSWORD = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PASSWORD |
    /**
    * New password content type.
    * Password Vault, when enabled, can automatically generate a new password.
    *
    * @relation NEW_PASSWORD = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    NEW_PASSWORD |
    /**
    * Full street address content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in full street addresses.
    *
    * @relation FULL_STREET_ADDRESS = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    FULL_STREET_ADDRESS |
    /**
    * House number content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in house numbers.
    *
    * @relation HOUSE_NUMBER = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    HOUSE_NUMBER |
    /**
    * District address content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in districts and counties.
    *
    * @relation DISTRICT_ADDRESS = 5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    DISTRICT_ADDRESS |
    /**
    * City address content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in cities.
    *
    * @relation CITY_ADDRESS = 6
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    CITY_ADDRESS |
    /**
    * Province address content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in provinces.
    *
    * @relation PROVINCE_ADDRESS = 7
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PROVINCE_ADDRESS |
    /**
    * Country address content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in countries.
    *
    * @relation COUNTRY_ADDRESS = 8
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    COUNTRY_ADDRESS |
    /**
    * Person full name content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in full names.
    *
    * @relation PERSON_FULL_NAME = 9
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PERSON_FULL_NAME |
    /**
    * Person last name content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in last names.
    *
    * @relation PERSON_LAST_NAME = 10
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PERSON_LAST_NAME |
    /**
    * Person first name content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in first names.
    *
    * @relation PERSON_FIRST_NAME = 11
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PERSON_FIRST_NAME |
    /**
    * Phone number content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in phone numbers.
    *
    * @relation PHONE_NUMBER = 12
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PHONE_NUMBER |
    /**
    * Phone country code content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in country codes.
    *
    * @relation PHONE_COUNTRY_CODE = 13
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PHONE_COUNTRY_CODE |
    /**
    * Full phone number content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in phone numbers with country codes.
    *
    * @relation FULL_PHONE_NUMBER = 14
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    FULL_PHONE_NUMBER |
    /**
    * Email address content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in email addresses.
    *
    * @relation EMAIL_ADDRESS = 15
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    EMAIL_ADDRESS |
    /**
    * Bank card number content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in bank card numbers.
    *
    * @relation BANK_CARD_NUMBER = 16
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BANK_CARD_NUMBER |
    /**
    * ID card number content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in ID card numbers.
    *
    * @relation ID_CARD_NUMBER = 17
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ID_CARD_NUMBER |
    /**
    * Nickname content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in nicknames.
    *
    * @relation NICKNAME = 23
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    NICKNAME |
    /**
    * Detail info without street content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in address information without street addresses.
    *
    * @relation DETAIL_INFO_WITHOUT_STREET = 24
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    DETAIL_INFO_WITHOUT_STREET |
    /**
    * Format address content type.
    * The scenario-based autofill feature, when enabled,
    * can automatically save and fill in standard addresses.
    *
    * @relationFORMAT_ADDRESS = 25
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    FORMAT_ADDRESS |
    ...
}



/**
* Declare the type of input content
*
* @relation enum GestureType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum GestureTypes {
    /**
    * TapGesture.
    *
    * @relation TAP_GESTURE = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TAP_GESTURE |
    /**
    * LongPressGesture.
    *
    * @relation LONG_PRESS_GESTURE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    LONG_PRESS_GESTURE |
    /**
    * PanGesture.
    *
    * @relation PAN_GESTURE = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PAN_GESTURE |
    /**
    * PinchGesture.
    *
    * @relation PINCH_GESTURE = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PINCH_GESTURE |
    /**
    * SwipeGesture.
    *
    * @relation SWIPE_GESTURE = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SWIPE_GESTURE |
    /**
    * RotationGesture.
    *
    * @relation ROTATION_GESTURE = 5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ROTATION_GESTURE |
    /**
    * Drag.
    *
    * @relation DRAG = 6
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    DRAG |
    /**
    * Click.
    *
    * @relation CLICK = 7
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    CLICK |
    ...
}



/**
* Define the menu pop-up policy
*
* @relation enum MenuPolicy
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum MenuPolicy {
    /**
    * Default value. The default logic of whether to pop up a menu depends on the scene.
    *
    * @relation DEFAULT = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Default |
    /**
    * The menu is always hidden.
    *
    * @relation HIDE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Hide |
    /**
    * The menu is always displayed.
    *
    * @relation SHOW = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Show |
    ...
}



/**
* Type of text decoration line style.
*
* @relation enum TextDecorationStyle
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextDecorationStyle {
    /**
    * Solid line.
    *
    * @relation SOLID = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SOLID |
    /**
    * Double lines.
    *
    * @relation DOUBLE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    DOUBLE |
    /**
    * Dotted lines.
    *
    * @relation DOTTED = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    DOTTED |
    /**
    * Dashed line.
    *
    * @relation DASHED = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    DASHED |
    /**
    * Wavy line.
    *
    * @relation WAVY = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    WAVY |
    ...
}



/**
* Enum of line break strategy
*
* @relation enum LineBreakStrategy
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum LineBreakStrategy {
    /**
    * By default. Display as many characters as possible on each line until no more characters
    * can be displayed on that line, and do not automatically add hyphens under this strategy
    *
    * @relation GREEDY = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    GREEDY |
    /**
    * High quality folding. Optimize the layout of the entire text's line breaks and automatically
    * add hyphens if necessary.
    *
    * @relation HIGH_QUALITY  = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    HIGH_QUALITY |
    /**
    * Balanced folding. We will try our best to ensure that the width of each line in a paragraph
    * is the same, and if necessary, we will add conjunction
    *
    * @relation BALANCED  = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BALANCED |
    ...
}



/**
* Text content style.
*
* @relation enum TextContentStyle
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextContentStyle {
    /**
    * Text content default style.
    *
    * @relation DEFAULT
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    DEFAULT |
    /**
    * Text content inline style.
    *
    * @relation INLINE
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    INLINE |
    ...
}



/**
* common enum of the checkbox shape
*
* @relation enum CheckBoxShape
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum CheckBoxShape {
    /**
    * Circle.
    *
    * @relation CIRCLE = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    CIRCLE |
    /**
    * Rounded Square.
    *
    * @relation ROUNDED_SQUARE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ROUNDED_SQUARE |
    ...
}



/**
* Enum of text height adaptation
*
* @relation enum CheckBoxShape
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextHeightAdaptivePolicy {
    /**
    * Priority is given to using the maxLines attribute to adapt the text height.
    * If the layout size using the maxLines attribute exceeds the layout constraint, try reducing the font size to
    * display more text.
    *
    * @relation MAX_LINES_FIRST
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    MAX_LINES_FIRST |
    /**
    * Priority is given to using the minFontSize attribute to adapt the text height.
    * If the text can be layout in a single line using the minFontSize property, try increasing the font size and using
    * the maximum possible font size.
    *
    * @relation MIN_FONT_SIZE_FIRST
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    MIN_FONT_SIZE_FIRST |
    /**
    * Priority is given to using the layout constraint to adapt the text height.
    * If the layout size exceeds the layout constraint, try reducing the font size. If the layout size still exceeds
    * the layout constraint after reducing the font size to minFontSize, remove the lines that exceed the layout
    * constraint.
    *
    * @relation LAYOUT_CONSTRAINT_FIRST
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    LAYOUT_CONSTRAINT_FIRST |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32
}



/**
* ArrowPointPosition enumeration description
*
* @relation enum ArrowPointPosition
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ArrowPointPosition {
    /**
    * Target start position
    *
    * @relation START = 'Start'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    START |
    /**
    * Target center position
    *
    * @relation CENTER = 'Center'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    CENTER |
    /**
    * Target end position
    *
    * @relation END = 'End'
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    END |
    ...
}



/**
* Title height.
*
* @relation enum TitleHeight
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TitleHeight {
    /**
    * Title height when only main title is available.
    *
    * @relation MainOnly
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    MainOnly |
    /**
    * Title height when main title and subtitle are both available.
    *
    * @relation MainWithSub
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    MainWithSub |
    ...
}



/**
* The Button Style of dialog,
*
* @relation enum DialogButtonStyle
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum DialogButtonStyle {
    /**
    * Default Style.
    *
    * @relation DEFAULT = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Default |
    /**
    * Highlight Style.
    *
    * @relation HIGHLIGHT = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Highlight |
    ...
}



/**
* Enumerates the fold status.
*
* @relation enum FoldStatus
*/
@Derive[Equatable]
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FoldStatus {
    /**
    * Fold Status Unknown.
    *
    * @relation FOLD_STATUS_UNKNOWN = 0
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    FOLD_STATUS_UNKNOWN |
    /**
    * Fold Status Expanded.
    *
    * @relation FOLD_STATUS_EXPANDED = 1
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    FOLD_STATUS_EXPANDED |
    /**
    * Fold Status Folded.
    *
    * @relation FOLD_STATUS_FOLDED = 2
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    FOLD_STATUS_FOLDED |
    /**
    * Fold Status Half Folded.
    *
    * @relation FOLD_STATUS_HALF_FOLDED = 3
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    FOLD_STATUS_HALF_FOLDED |
    ...
}



/**
* Enumerates the length metrics unit.
*
* @relation enum LengthMetricsUnit
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum LengthMetricsUnit {
    /**
    * The default length metrics unit, in vp.
    *
    * @relation DEFAULT = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    DEFAULT |
    /**
    * The pixel length metrics unit.
    *
    * @relation PX = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PX |
    ...
}



/**
* Indicates the attribute of the current text direction.
*
* @relation type CanvasDirection = "inherit" | "ltr" | "rtl"
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum CanvasDirection {
    /**
    * (Default) Inherit current Canvas component settings
    *
    * @relation type CanvasDirection = "inherit" | "ltr" | "rtl"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    inherit |
    /**
    * The text direction is left to right.
    *
    * @relation type CanvasDirection = "inherit" | "ltr" | "rtl"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ltr |
    /**
    * The text direction is from right to left.
    *
    * @relation type CanvasDirection = "inherit" | "ltr" | "rtl"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    rtl |
    ...
}



/**
* Filling style algorithm, which determines whether a point is within or outside the path. The following
* two configurations are supported:
*
* @relation type CanvasFillRule = "evenodd" | "nonzero"
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum CanvasFillRule {
    /**
    * odd and even round rule
    *
    * @relation type CanvasFillRule = "evenodd" | "nonzero"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    evenodd |
    /**
    * (Default) Non-zero Wrap Rules
    *
    * @relation type CanvasFillRule = "evenodd" | "nonzero"
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    nonzero |
    ...
}



/**
* Image format.
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ImageType {
    /**
    * Image format png.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    png |
    /**
    * Image format jpeg.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    jpeg |
    /**
    * Image format webp.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    webp |
    ...
}



/**
* Describe the types for expanding the safe area in layout.
*
* @relation enum LayoutSafeAreaType
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum LayoutSafeAreaType {
    /**
    * Default non-safe area of the system, including the status bar and navigation bar.
    *
    * @relation SYSTEM = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    SYSTEM |
    ...
}



/**
* Define the edges for expanding the safe area in layout.
*
* @relation enum LayoutSafeAreaEdge
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum LayoutSafeAreaEdge {
    /**
    * Top edge.
    *
    * @relation TOP = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TOP |
    /**
    * Bottom edge.
    *
    * @relation BOTTOM = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BOTTOM |
    ...
}



/**
* Navigation title mode.
*
* @relation enum NavigationTitleMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum NavigationTitleMode {
    /**
    * When the content is more than one screen in a scrollable component, the
    * main title shrinks as the content scrolls down (the subtitle fades out
    * with its size remaining unchanged) and restores as the content scrolls
    * up to the top.
    * <br>**NOTE**
    * <br>The effect where the main title's size changes in response to content
    * scrolling is effective only when **title** is set to **ResourceStr** or
    * **NavigationCommonTitle**. If **title** is set to any other value type, the
    * main title changes in mere location when pulled down.
    * <br>For this effect to work when the content is less than one screen in a
    * scrollable component, set the **options** parameter of the scrollable
    * component's edgeEffect attribute to **true**. In the non-scrolling state, the
    * height of the title bar is the same as in **Full** mode; in the scrolling state,
    * the minimum height of the title bar is the same as in **Mini** mode.
    *
    * @relation Free = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Free |
    /**
    * The title is fixed at full mode.<br>Default value: If there is only a main
    * title, the title bar height is 112 vp; if there is both a main title and a
    * subtitle, the title bar height is 138 vp.
    *
    * @relation Full
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Full |
    /**
    * The title is fixed at mini mode. Default value: In versions earlier than API version 12,
    * If there is only a main title, the title bar height is 56 vp; if there are both a main title and a subtitle,
    * The title bar height is 82 vp. Since API version 12, the title bar height is 56 vp.
    *
    * @relation Mini
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Mini |
    ...
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func toString(): String
}



/**
* Declare BarStyle enum.
*
* @relation enum BarStyle
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum BarStyle {
    /**
    * In this mode, the title bar or toolbar is laid out above the content area.
    *
    * @relation STANDARD = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Standard |
    /**
    * In this mode, the title bar or toolbar is overlaid on top of the content area.
    *
    * @relation STACK = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Stack |
    ...
}



@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FinishCallbackType {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Removed |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Logically |
    ...
}



/**
* enum Blur style
*
* @syscap SystemCapability.ArkUI.ArkUI.Full
* @relation declare enum BlurStyle
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum BlurStyle {
    /**
    * Thin material.
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation Thin
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Thin |
    /**
    * Regular material.
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation Regular
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Regular |
    /**
    * Thick material.
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation Thick
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Thick |
    /**
    * BackgroundThin material.
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation BackgroundThin
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BackgroundThin |
    /**
    * BackgroundRegular material.
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation BackgroundRegular
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BackgroundRegular |
    /**
    * BackgroundThick material.
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation BackgroundThick
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BackgroundThick |
    /**
    * BackgroundUltraThick material.
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation BackgroundUltraThick
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    BackgroundUltraThick |
    /**
    * None material.
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation None
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    /**
    * ComponentUltraThin material.
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation ComponentUltraThin
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ComponentUltraThin |
    /**
    * ComponentThin material.
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation ComponentThin
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ComponentThin |
    /**
    * ComponentRegular material.
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation ComponentRegular
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ComponentRegular |
    /**
    * ComponentThick material.
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation ComponentThick
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ComponentThick |
    /**
    * ComponentUltraThick material.
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation ComponentUltraThick
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    ComponentUltraThick |
    ...
}



/**
* Dismiss reason type.
*
* @syscap SystemCapability.ArkUI.ArkUI.Full
* @relation declare enum DismissReason
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum DismissReason {
    /**
    * Touching the Back button, swiping left or right on the screen, or pressing the Esc key.
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation PRESS_BACK = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PressBack |
    /**
    * Touching the mask.
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation TOUCH_OUTSIDE = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    TouchOutside |
    /**
    * Touching the Close button.
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation CLOSE_BUTTON = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    CloseButton |
    /**
    * Slide down
    * <p><strong>NOTE</strong>:
    * <br>This API is effective only in sheet transition.
    * </p>
    *
    * @syscap SystemCapability.ArkUI.ArkUI.Full
    * @relation SLIDE_DOWN = 3
    */
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
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextAreaType {
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    NORMAL |
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    NUMBER |
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    PHONE_NUMBER |
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    EMAIL |
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    NUMBER_DECIMAL |
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    URL |
    ...
}


/**
* Type of the touch event.
*
* @relation declare interface TouchObject
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TouchObject {
    /**
    * Type of the touch event.
    *
    * @relation type: TouchType;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var touchType: TouchType
    
    /**
    * Finger unique identifier.
    *
    * @relation id: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var id: Int32
    
    /**
    * X coordinate of the point relative to the global display.
    *
    * @relation globalDisplayX?: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var screenX: Float64
    
    /**
    * Y coordinate of the point relative to the global display.
    *
    * @relation globalDisplayY?: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var screenY: Float64
    
    /**
    * X coordinate of the touch point relative to the upper left corner of the event responding component.
    *
    * @relation x: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Float64
    
    /**
    * Y coordinate of the touch point relative to the upper edge of the touched element.
    *
    * @relation y: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Float64
    
    /**
    * constructor
    */
    public init(touchType: TouchType, id: Int32, screenX: Float64, screenY: Float64, x: Float64, y: Float64)
}


/**
* The tap action triggers this method invocation.
*
* @relation declare interface ClickEvent extends BaseEvent
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ClickEvent {
    /**
    * X coordinate of the click point relative to the left edge of the clicked element.
    *
    * @relation x: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Float64
    
    /**
    * Y coordinate of the click point relative to the upper edge of the clicked element.
    *
    * @relation y: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Float64
    
    /**
    * Timestamp of the event.
    *
    * @relation timestamp: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var timestamp: Int64
    
    /**
    * Event input device.
    *
    * @relation source: SourceType;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var source: SourceType
    
    /**
    * Display area of the element that triggers the gesture event.
    *
    * @relation target: EventTarget;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var target: EventTarget
    
    /**
    * X coordinate of the click relative to the upper left corner of the application window.
    *
    * @relation windowX: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var windowX: Float64
    
    /**
    * Y coordinate of the click relative to the upper left corner of the application window.
    *
    * @relation windowY: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var windowY: Float64
    
    /**
    * X coordinate of the click relative to the upper left corner of the application screen.
    *
    * @relation displayX: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var displayX: Float64
    
    /**
    * Y coordinate of the click relative to the upper left corner of the application screen.
    *
    * @relation displayY: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var displayY: Float64
}


/**
* DragInfo object description
*
* @relation interface DragInfo
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DragInfo {
    /**
    * Additional information about the drag info.
    *
    * @relation extraParams?: string;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var extraParams: String
    
    /**
    * Touch point coordinates.
    *
    * @relation touchPoint?: TouchPoint;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var touchPoint: Position
}


/**
* DragItemInfo object description
*
* @relation declare interface DragItemInfo
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DragItemInfo {
    /**
    * Uses the pixelMap object for drawing.
    *
    * @relation pixelMap?: PixelMap;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var pixelMap: PixelMap = PixelMap(0)
    
    /**
    * Uses the custom builder for drawing, if pixelMap is set, this value is ignored.
    *
    * @relation builder?: CustomBuilder;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var builder: CustomBuilder = {=>}
    
    /**
    * Sets the extra info for drag event.
    *
    * @relation extraInfo?: string;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var extraInfo: String
    
    /**
    * constructor
    */
    public init(pixelMap: PixelMap, builder: CustomBuilder, extraInfo: String)
}


/**
* The mouse click action triggers this method invocation.
*
* @relation declare interface MouseEvent extends BaseEvent
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class MouseEvent {
    /**
    * Timestamp of the event.
    *
    * @relation timestamp: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var timestamp: Int64
    
    /**
    * X coordinate of the mouse pointer relative to the upper left corner of the application window.
    *
    *
    * @relation screenX: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var screenX: Float64
    
    /**
    * Y coordinate of the mouse pointer relative to the upper left corner of the application window.
    *
    *
    * @relation screenX: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var screenY: Float64
    
    /**
    * X coordinate of the mouse pointer relative to the upper left corner of the component being clicked.
    *
    * @relation x: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Float64
    
    /**
    * Y coordinate of the mouse pointer relative to the upper left corner of the component being clicked.
    *
    * @relation y: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Float64
    
    /**
    * Mouse button of the click event.
    *
    * @relation button: MouseButton;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var button: MouseButton
    
    /**
    * Mouse action of the click event.
    *
    * @relation action: MouseAction;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var action: MouseAction
    
    /**
    * constructor
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(timestamp: Int64, screenX: Float64, screenY: Float64, x: Float64, y: Float64, button: MouseButton,
        action: MouseAction)
}


/**
* Touch Action Function Parameters
*
* @relation declare interface TouchEvent extends BaseEvent
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TouchEvent {
    /**
    * Type of the touch event.
    *
    * @relation type: TouchType;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var eventType: TouchType
    
    /**
    * All finger information.
    *
    * @relation touches: TouchObject[];
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var touches: Array<TouchObject>
    
    /**
    * Finger information changed.
    *
    * @relation touches: TouchObject[];
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var changedTouches: Array<TouchObject>
    
    /**
    * Timestamp of the event.
    *
    * @relation timestamp: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var timestamp: Int64
    
    /**
    * Display area of the element that triggers the gesture event.
    *
    * @relation target: EventTarget;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var target: EventTarget
    
    /**
    * Event input device.
    *
    * @relation source: SourceType;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var source: SourceType
    
    /**
    * Stops the event from bubbling upwards or downwards.
    *
    * @relation stopPropagation: () => void;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func stopPropagation(): Unit
}


/**
* KeyEvent object description:
*
* @relation declare interface KeyEvent
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class KeyEvent {
    /**
    * Key value of a key.
    *
    * @relation keyText: string;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var keyText: String
    
    /**
    * Type of a key.
    *
    * @relation type: KeyType;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var keyType: KeyType
    
    /**
    * Key code of a key
    *
    * @relation keyCode: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var keyCode: Int32
    
    /**
    * Type of the input device that triggers the current key, such as the keyboard or handle.
    *
    * @relation keySource: KeySource;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var keySource: KeySource
    
    /**
    * Indicates the status of the key when the key is pressed.
    * The value 1 indicates the pressed state, and the value 0 indicates the unpressed state.
    *
    *
    * @relation metaKey: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var metaKey: Int32
    
    /**
    *  Indicates the ID of the input device that triggers the current key.
    *
    * @relation deviceId: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var deviceId: Int64
    
    /**
    * Timestamp when the key was pressed.
    *
    * @relation timestamp: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var timestamp: Int64
    
    /**
    * constructor
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(keyText: String, keyType: KeyType, keyCode: Int32, keySource: KeySource, metaKey: Int32,
        deviceId: Int64, timestamp: Int64)
    
    /**
    * Stops the event from bubbling upwards or downwards.
    *
    * @relation stopPropagation: () => void;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func stopPropagation(): Unit
}


/**
* Defines the common method of Component.
*
* @relation declare class CommonMethod<T>
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
abstract sealed class InteractableView <: RemoteData {
    /*
    * Called when a click event occurs.
    *
    * @param { function } event
    * @returns { This }
    * @relation onClick(event: (event: ClickEvent) => void): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onClick(event: (ClickEvent) -> Unit): This
    
    /*
    * This callback is triggered when a component mounts a display.
    *
    * @param { function } event
    * @returns { This }
    * @relation onAppear(event: () => void): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onAppear(event: () -> Unit): This
    
    /*
    * This callback is triggered when component uninstallation disappears.
    *
    * @param { function } event
    * @returns { This }
    * @relation onDisAppear(event: () => void): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDisAppear(event: () -> Unit): This
    
    /*
    * Invoked when a touch event is triggered.
    *
    * @param { function } event
    * @returns { This }
    * @relation onTouch(event: (event: TouchEvent) => void): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onTouch(event: (TouchEvent) -> Unit): This
    
    /*
    * Trigger a hover event.
    *
    * @param { function } event
    * @returns { This }
    * @relation onHover(event: (isHover: boolean, event: HoverEvent) => void): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onHover(event: (Bool) -> Unit): This
    
    /*
    * This callback is triggered when the size or position of this component change finished.
    *
    * @param { function } event
    * @returns { This }
    * @relation onAreaChange(event: (oldValue: Area, newValue: Area) => void): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onAreaChange(event: (Area, Area) -> Unit): This
    
    /*
    * Trigger a visible area change event.
    *
    * @param { function } event
    * @returns { This }
    * @relation onVisibleAreaChange(ratios: Array<number>, event: VisibleAreaChangeCallback): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onVisibleAreaChange(raitos: Array<Float64>, event: (Bool, Float64) -> Unit): This
    
    /*
    * Triggered when the component is clicked by a mouse button or the mouse pointer moves on the component.
    *
    * @param { function } event
    * @returns { This }
    * @relation onMouse(event: (event: MouseEvent) => void): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onMouse(event: (MouseEvent) -> Unit): This
    
    /*
    * Keyboard input
    *
    * @param { function } event
    * @returns { This }
    * @relation onKeyEvent(event: (event: KeyEvent) => void): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onKeyEvent(event: (KeyEvent) -> Unit): This
    
    /*
    * Trigger a event when got focus.
    *
    * @param { function } event
    * @returns { This }
    * @relation onFocus(event: () => void): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onFocus(event: () -> Unit): This
    
    /*
    * Triggered when the current component loses focus.
    *
    * @param { function } event
    * @returns { This }
    * @relation onBlur(event: () => void): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onBlur(event: () -> Unit): This
    
    /**
    * After a listener is bound, the component can be dragged. After the drag occurs, a callback is triggered.
    *
    * @param { function } event
    * @returns { This }
    * @relation onDragStart(event: (event: DragEvent, extraParams?: string) => CustomBuilder | DragItemInfo): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDragStart(event: (DragInfo) -> DragItemInfo): This
    
    /**
    * After a listener is bound, the component can be dragged. After the drag occurs, a callback is triggered.
    *
    * @param { function } event
    * @returns { This }
    * @relation onDragStart(event: (event: DragEvent, extraParams?: string) => CustomBuilder | DragItemInfo): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDragStart(event: (DragInfo) -> CustomBuilder): This
    
    /**
    * After a listener is bound, the component can be dragged. After the drag occurs, a callback is triggered.
    *
    * @param { function } event
    * @returns { This }
    * @relation onDragStart(event: (event: DragEvent, extraParams?: string) => CustomBuilder | DragItemInfo): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDragStart(event: (DragInfo) -> Unit): This
    
    /**
    * After binding, a callback is triggered when the component is dragged to the range of the component.
    *
    * @param { function } event
    * @returns { This }
    * @relation onDragEnter(event: (event: DragEvent, extraParams?: string) => void): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDragEnter(event: (DragInfo) -> Unit): This
    
    /**
    * After binding, a callback is triggered when the drag moves within the range of a placeable component.
    *
    * @param { function } event
    * @returns { This }
    * @relation onDragMove(event: (event: DragEvent, extraParams?: string) => void): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDragMove(event: (DragInfo) -> Unit): This
    
    /**
    * After binding, a callback is triggered when the component is dragged out of the component range.
    *
    * @param { function } event
    * @returns { This }
    * @relation onDragLeave(event: (event: DragEvent, extraParams?: string) => void): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDragLeave(event: (DragInfo) -> Unit): This
    
    /**
    * The component bound to this event can be used as the drag release target.
    * This callback is triggered when the drag behavior is stopped within the scope of the component.
    *
    * @param { function } event
    * @returns { This }
    * @relation onDrop(event: (event: DragEvent, extraParams?: string) => void): T;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func onDrop(event: (DragInfo) -> Unit): This
}



/**
* Converts a value in vp units to a value in px.
* @param { Length } value
* @returns { ?Length }
* @relation vp2px(value: number): number;
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func vp2px(value: Length): Option<Length>


/**
* Converts a value in px units to a value in vp.
* @param { Length } value
* @returns { ?Length }
* @relation px2vp(value: number): number;
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func px2vp(value: Length): Option<Length>


/**
* Converts a value in fp units to a value in px.
* @param { Length } value
* @returns { ?Length }
* @relation fp2px(value: number): number;
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func fp2px(value: Length): Option<Length>


/**
* Converts a value in fp units to a value in px.
* @param { Length } value
* @returns { ?Length }
* @relation fp2px(value: number): number;
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func px2fp(value: Length): Option<Length>


/**
* Converts a value in lpx units to a value in px.
* @param { Length } value
* @returns { ?Length }
* @relation lpx2px(value: number): number;
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func lpx2px(value: Length): Option<Length>


/**
* Converts a value in px units to a value in lpx.
* @param { Length } value
* @returns { ?Length }
* @relation px2lpx(value: number): number;
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func px2lpx(value: Length): Option<Length>


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


/**
* Defines the Edge object.
*
* @relation eclare enum TransitionEdge
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TransitionEdge {
    /**
    * Top edge
    *
    * @relation TOP
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Top |
    /**
    * Bottom edge of the window.
    *
    * @relation BOTTOM
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Bottom |
    /**
    * Start edge of the window, which is the left edge for left-to-right
    * scripts and the right edge for right-to-left scripts.
    *
    * @relation START
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Start |
    /**
    * End edge of the window, which is the right edge for left-to-right scripts
    * and the left edge for right-to-left scripts.
    * @relation END
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    End |
    ...
}



/**
* Defines the transition effect
*
* @relation declare class TransitionEffect 
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TransitionEffect <: RemoteDataLite {
    /**
    * Creates an opacity transition effect with alpha value.
    *
    * @param { Float64 } alpha - opacity alpha value, value range [0, 1].
    * @returns { TransitionEffect }
    * @relation static opacity(alpha: number): TransitionEffect;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func opacity(alpha: Float64): TransitionEffect
    
    /**
    * Creates a translate transition effect
    *
    * @param { TranslateOptions } options - translate options
    * @returns { TransitionEffect }
    * @relation static translate(options: TranslateOptions): TransitionEffect;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func translate(options: TranslateOptions): TransitionEffect
    
    /**
    * Creates a scale transition effect
    *
    * @param { ScaleOptions } options - scale options
    * @returns { TransitionEffect }
    * @relation static scale(options: ScaleOptions): TransitionEffect;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func scale(options: ScaleOptions): TransitionEffect
    
    /**
    * Creates a rotation transition effect
    *
    * @param { RotateOptions } options - rotate options
    * @returns { TransitionEffect }
    * @relation static rotate(options: RotateOptions): TransitionEffect;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func rotate(options: RotateOptions): TransitionEffect
    
    /**
    * Creates a move transition effect
    *
    * @param { TransitionEdge } edge - the edge that component will move to
    * @returns { TransitionEffect }
    * @relation static move(edge: TransitionEdge): TransitionEffect;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func move(edge: TransitionEdge): TransitionEffect
    
    /**
    * reates an asymmetric transition effect
    *
    * @param { TransitionEffect } appear - the transition which will be attached when the component is appear
    * @param { TransitionEffect } disappear - the transition which will be attached when the component is disappear
    * @returns { TransitionEffect }
    * @relation static asymmetric(appear: TransitionEffect, disappear: TransitionEffect): TransitionEffect;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func asymmetric(appear: TransitionEffect, disappear: TransitionEffect): TransitionEffect
    
    /**
    * Combines another transition effect
    *
    * @param { TransitionEffect } transitionEffect - transition effect which is be combined
    * @returns { TransitionEffect } combined transition effect
    * @relation combine(transitionEffect: TransitionEffect): TransitionEffect;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func combine(transitionEffect: TransitionEffect): TransitionEffect
    
    /**
    * Set the animation of current transition effect
    *
    * @param { AnimateParam } value - animation parameters
    * @returns { TransitionEffect }
    * @relation animation(value: AnimateParam): TransitionEffect;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func animation(value: AnimateParam): TransitionEffect
    
    /**
    * Disables the transition effect
    *
    * @relation static get IDENTITY(): TransitionEffect;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static let IDENTITY: TransitionEffect = unsafe {
        TransitionEffect(FfiOHOSAceFrameworkTransitionEffectIdentity())
    }
    
    /**
    * Specifies a transition effect with transparency of 0, which is equivalent to TransitionEffect.opacity(0).
    *
    * @relation static get OPACITY(): TransitionEffect;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static let OPACITY: TransitionEffect = TransitionEffect.opacity(0.0)
    
    /**
    * Defines a slide transition effect
    *
    *@relation static get SLIDE(): TransitionEffect;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static let SLIDE: TransitionEffect = 
        TransitionEffect.asymmetric(TransitionEffect.move(TransitionEdge.Start),
            TransitionEffect.move(TransitionEdge.End))
    
    /**
    * Specify a transition effect where the element enters by shrinking first and then expanding as it slides in from the right,
    * and exits by shrinking first and then expanding as it slides out to the left, with a minimum scale ratio of 0.8.
    * It comes with default animation parameters, which can also be overridden.
    * The default animation duration is set to 600ms, and the specified animation curve is cubicBezierCurve(0.24, 0.0, 0.50, 1.0).
    *
    * @relation static get SLIDE_SWITCH(): TransitionEffect;
    */
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

/**
* Defines the common method of Component.
*
* @relation declare class CommonMethod<T>
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class ViewBase <: InteractableView & UINodeBase {
    /**
    * Sets the width of the component. By default, the width required to fully hold the
    * component content is used.If the width of the component is greater than that of
    * the parent container, the component will be drawn beyond the parent container scope.
    *
    * @param { Length } value
    * @returns { This }
    * @relation width(value: Length): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func width(value: Option<Length>): This
    
    /**
    * Sets the height of the component. By default, the height required to fully hold the
    * component content is used. If the height of the component is greater than that of
    * the parent container, the component will be drawn beyond the parent container scope.
    *
    * @param { Length } value
    * @returns { This }
    * @relation height(value: Length): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func height(value: Option<Length>): This
    
    /**
    * The size of the current component.
    *
    * @param { Length } width
    * @param { Length } height
    * @returns { This }
    * @relation size(value: SizeOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func size(width!: Length, height!: Length): This
    
    /**
    * Sets the padding of the component.
    *
    * @param { Length } value
    * @returns { This }
    * @relation padding(value: Padding | Length | LocalizedPadding): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func padding(value: Length): This
    
    /**
    * Sets the padding of the component.
    *
    * @param { Length, Length, Length, Length } Indicates safeArea padding values.
    * @returns { This }
    * @relation padding(value: Padding | Length | LocalizedPadding): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func padding(top!: Length = 0.vp, right!: Length = 0.vp, bottom!: Length = 0.vp, left!: Length = 0.vp): This
    
    /**
    * Sets the margin of the component.
    *
    * @param { Length } value
    * @returns { This }
    * @relation margin(value: Margin | Length | LocalizedMargin): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func margin(value: Length): This
    
    /**
    * Sets the margin of the component.
    *
    * @param { Length, Length, Length, Length } Indicates safeArea margin values.
    * @returns { This }
    * @relation margin(value: Margin | Length | LocalizedMargin): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func margin(top!: Length = 0.vp, right!: Length = 0.vp, bottom!: Length = 0.vp, left!: Length = 0.vp): This
    
    /**
    * Sets the weight of the component during layout. A component with this attribute is allocated space
    * along the main axis of its parent container (Row, Column, or Flex) based on its specified weight.
    *
    * @param { Int32 } value
    * @returns { This }
    * @relation layoutWeight(value: number | string): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func layoutWeight(value: Int32): This
    
    /**
    * Sets the constraint size of the component, which is used to limit the size range during component layout.
    * Default value: **{minWidth: 0, maxWidth: Infinity, minHeight: 0, maxHeight: Infinity}**.
    *
    * @returns { This }
    * @relation constraintSize(value: ConstraintSizeOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func constraintSize(minWidth!: Length = 0.vp, maxWidth!: Length = (Float64.Inf).vp,
        minHeight!: Length = 0.vp, maxHeight!: Length = (Float64.Inf).vp): This
    
    /**
    * Sets the alignment mode of the component content in the drawing area.
    * Default value: **Alignment.Center**.
    *
    * @param { Alignment } value
    * @returns { This }
    * @relation align(value: Alignment): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func align(value: Alignment): This
    
    /**
    * Sets how elements are laid out along the main axis of the container.
    * Default value: **Direction.Auto**.
    *
    * @param { Direction } value
    * @returns { This }
    * @relation direction(value: Direction): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func direction(value: Direction): This
    
    /**
    * Sets the absolute position of the component relative to the position of the parent component.
    * The attribute is not available for a layout container whose width and height are zero.
    *
    * @param { Length } x
    * @param { Length } y
    * @returns { This }
    * @relation position(value: Position | Edges | LocalizedEdges): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func position(x!: Length, y!: Length): This
    
    /**
    * Sets the anchor for locating the component, which is used to move the component
    * further away from the position specified by position or offset.
    *
    * @param { Length } x
    * @param { Length } y
    * @returns { This }
    * @relation markAnchor(value: Position | LocalizedPosition): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func markAnchor(x!: Length, y!: Length): This
    
    /**
    * Sets the offset of the component relative to its original position.
    * <br>The offset attribute does not affect the layout of the parent container.
    * It adjusts the component position only during drawing.
    *
    * @param { Length } x
    * @param { Length } y
    * @returns { This }
    * @relation offset(value: Position | Edges | LocalizedEdges): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func offset(x!: Length, y!: Length): This
    
    /**
    * Sets the alignment rules in the relative container.
    * This API is valid only when the container is RelativeContainer.
    *
    * @param { AlignRuleOption } value
    * @returns { This }
    * @relation alignRules(value: AlignRuleOption): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func alignRules(value: AlignRuleOption): This
    
    /**
    * Sets the aspect ratio of the component, which can be obtained using the following formula: width/height.
    * If only width and aspectRatio are set, the height is calculated using the following formula: width/aspectRatio.
    * If only height and aspectRatio are set, the width is calculated using the following formula: height x aspectRatio.
    * If width, height, and aspectRatio are all set, the explicitly set height is ignored, and the effective height is calculated using the following formula: width/aspectRatio.
    * This parameter takes effect only when a valid value greater than 0 is specified.
    *
    * @relation aspectRatio(value: number): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func aspectRatio(value: Float64): This
    
    /**
    * Sets the display priority for the component in the layout container.
    * This parameter is only effective in Row, Column, and Flex (single-line) container components.
    *
    * @relation displayPriority(value: number): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func displayPriority(value: Int32): This
    
    /**
    * Sets the base size of the component in the main axis of the parent container.
    *
    * @relation flexBasis(value: number | string): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func flexBasis(value: Length): This
    
    /**
    * Sets the percentage of the parent container's remaining space that is allocated to the component.
    * Default value: **0**.
    *
    * @relation flexGrow(value: number): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func flexGrow(value: Float64): This
    
    /**
    * Sets the percentage of the parent container's remaining space that is allocated to the component.
    * Default value: **0**.
    *
    * @relation flexGrow(value: number): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func flexGrow(value: Int64): This
    
    /**
    * Sets the percentage of the parent container's shrink size that is allocated to the component.
    * Default value: 0 when the parent container is Column or Row, 1 when the parent container is Flex.
    *
    * @relation flexShrink(value: number): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func flexShrink(value: Float64): This
    
    /**
    * Sets the percentage of the parent container's shrink size that is allocated to the component.
    * Default value: 0 when the parent container is Column or Row, 1 when the parent container is Flex.
    *
    * @relation flexShrink(value: number): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func flexShrink(value: Int64): This
    
    /**
    * Sets the alignment mode of the child components along the cross axis of the parent container.
    * Default value: **ItemAlign.Auto**.
    *
    * @param { ItemAlign } value
    * @returns { This }
    * @relation flexShrink(value: number): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func alignSelf(value: ItemAlign): This
    
    /**
    * Sets the response region of the current component.
    *
    * @param { Rectangle } value
    * @returns { This }
    * @relation responseRegion(value: Array<Rectangle> | Rectangle): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func responseRegion(value: Rectangle): This
    
    /**
    * Sets the response region of the current component.
    *
    * @param { Array<Rectangle> } value
    * @returns { This }
    * @relation responseRegion(value: Array<Rectangle> | Rectangle): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func responseRegion(value: Array<Rectangle>): This
    
    /**
    * Sets the border.
    *
    * @param { Length } width
    * @param { ResourceColor } color
    * @param { Length } radius
    * @param { BorderStyle } style
    * @returns { This }
    * @relation border(value: BorderOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func border(width!: Length, color!: ResourceColor = Color.Black, radius!: Length = 0.vp,
        style!: BorderStyle = BorderStyle.Solid): This
    
    /**
    * Sets the border width.
    * Percentage values are not supported.
    *
    * @param { Length } value
    * @returns { This }
    * @throws { IllegalArgumentException } Percentage values are not supported.
    * @relation borderWidth(value: Length | EdgeWidths | LocalizedEdgeWidths): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func borderWidth(value: Length): This
    
    /**
    * Sets the border width.
    *
    * @param { EdgeWidths } value
    * @returns { This }
    * @relation borderWidth(value: Length | EdgeWidths | LocalizedEdgeWidths): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func borderWidth(value: EdgeWidths): This
    
    /**
    * Sets the border color.
    * Default value: **Color.Black**.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation borderColor(value: ResourceColor | EdgeColors | LocalizedEdgeColors): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func borderColor(value: ResourceColor): This
    
    /**
    * Sets the radius of the border rounded corners.
    * The radius is restricted by the component size. The maximum value is half of the component width or height.
    *
    * @param { Length } topLeft
    * @param { Length } topRight
    * @param { Length } bottomLeft
    * @param { Length } bottomRight
    * @returns { This }
    * @relation borderRadius(value: Length | BorderRadiuses | LocalizedBorderRadiuses): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func borderRadius(topLeft!: Length = 0.vp, topRight!: Length = 0.vp, bottomLeft!: Length = 0.vp,
        bottomRight!: Length = 0.vp): This
    
    /**
    * Sets the radius of the border rounded corners.
    * The radius is restricted by the component size. The maximum value is half of the component width or height.
    *
    * @param { Length } value
    * @returns { This }
    * @relation borderRadius(value: Length | BorderRadiuses | LocalizedBorderRadiuses): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func borderRadius(value: Length): This
    
    /**
    * Sets the border style.
    * Default value: **BorderStyle.Solid**.
    *
    * @param { BorderStyle } value
    * @returns { This }
    * @relation borderStyle(value: BorderStyle | EdgeStyles): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func borderStyle(value: BorderStyle): This
    
    /**
    * Applies a foreground blur style to the component.
    *
    * @param { BlurStyle } value
    * @returns { This }
    * @relation foregroundBlurStyle(value: BlurStyle, options?: ForegroundBlurStyleOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func foregroundBlurStyle(value: BlurStyle): This
    
    /**
    * Applies a foreground blur style to the component.
    *
    * @param { BlurStyle } value
    * @param { ForegroundBlurStyleOptions } options
    * @returns { This }
    * @relation foregroundBlurStyle(value: BlurStyle, options?: ForegroundBlurStyleOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func foregroundBlurStyle(value: BlurStyle, options: ForegroundBlurStyleOptions): This
    
    /**
    * Sets the foreground color of the component.
    * If the component does not have a foreground color set, it inherits the color from its parent component by default.
    *
    * @param { ColoringStrategy } value
    * @returns { This }
    * @relation foregroundColor(value: ResourceColor | ColoringStrategy): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func foregroundColor(value: ColoringStrategy): This
    
    /**
    * Sets the foreground color of the component.
    * If the component does not have a foreground color set, it inherits the color from its parent component by default.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation foregroundColor(value: ResourceColor | ColoringStrategy): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func foregroundColor(value: ResourceColor): This
    
    /**
    * Background color
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation backgroundColor(value: ResourceColor): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func backgroundColor(value: ResourceColor): This
    
    /**
    * Background image
    *
    * @param { ResourceColor } src
    * @returns { This }
    * @relation backgroundImage(src: ResourceStr | PixelMap, options?: BackgroundImageOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func backgroundImage(src: ResourceStr): This
    
    /**
    * Background image
    * @param { ResourceColor } src
    * @param { ImageRepeat } repeat
    * @returns { This }
    * @relation backgroundImage(src: ResourceStr | PixelMap, options?: BackgroundImageOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func backgroundImage(src: ResourceStr, repeat: ImageRepeat): This
    
    /**
    * Background image size
    *
    * @param { ImageSize } value
    * @returns { This }
    * @relation backgroundImageSize(value: SizeOptions | ImageSize): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func backgroundImageSize(value: ImageSize): This
    
    /**
    * Background image size
    *
    * @param { Length } width
    * @param { Length } height
    * @returns { This }
    * @relation backgroundImageSize(value: SizeOptions | ImageSize): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func backgroundImageSize(width!: Length = 0.vp, height!: Length = 0.vp): This
    
    /**
    * Background image position
    * x: Horizontal coordinate;
    * y: Vertical axis coordinate;
    *
    * @param { Alignment } value
    * @returns { This }
    * @relation backgroundImagePosition(value: Position | Alignment): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func backgroundImagePosition(value: Alignment): This
    
    /**
    * Background image position
    * x: Horizontal coordinate;
    * y: Vertical axis coordinate;
    *
    * @param { Length } x
    * @param { Length } y
    * @returns { This }
    * @relation backgroundImagePosition(value: Position | Alignment): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func backgroundImagePosition(x!: Length = 0.vp, y!: Length = 0.vp): This
    
    /**
    * Scales the component.
    * Scale ratio along the x-, y-, and z-axis. The default value is **1**.
    * centerX and centerY are used to set the scale center point.
    * default:{x:1,y:1,z:1,centerX:'50%',centerY:'50%'}
    *
    * @param { Float32 } x
    * @param { Float32 } y
    * @param { Float32 } z
    * @param { Length } centerX
    * @param { Length } centerY
    * @returns { This }
    * @relation scale(value: ScaleOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func scale(x!: Float32 = 1.0, y!: Float32 = 1.0, z!: Float32 = 1.0, centerX!: Length = 50.percent,
        centerY!: Length = 50.percent): This
    
    /**
    * Sets the opacity of the component.
    *
    * @param { Float64 } value - Opacity of the component. The value ranges from 0 to 1.
    * @returns { This }
    * @relation opacity(value: number | Resource): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func opacity(value: Float64): This
    
    /**
    * Set component rotation.
    *
    * @relation rotate(value: RotateOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func rotate(x!: Float32 = 0.0, y!: Float32 = 0.0, z!: Float32 = 1.0, angle!: Float32 = 0.0,
        centerX!: Length = 50.percent, centerY!: Length = 50.percent): This
    
    /**
    * Sets the translation effect for page transitions.
    *
    * @relation translate(value: TranslateOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func translate(x!: Length = 0.vp, y!: Length = 0.vp, z!: Length = 0.vp): This
    
    /**
    * If the value is true, the component is available and can respond to operations such as clicking.
    * If it is set to false, click operations are not responded.
    *
    * @param { Bool } value
    * @returns { This }
    * @relation enabled(value: boolean): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func enabled(value: Bool): This
    
    /**
    * If the components of the two pages are configured with the same ID.
    * The shared element transition is performed during transition.
    * If the parameter is set to an empty string, the shared element transition does not occur.
    * For details about the options parameter, see the options parameter description.
    *
    * @relation sharedTransition(id: string, options?: sharedTransitionOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func sharedTransition(id: String, options!: SharedTransitionOptions = SharedTransitionOptions()): This
    
    /**
    * Shared geometry transition
    *
    * @param { String } id
    * @param { Bool } followWithoutTransition
    * @returns { This }
    * @relation geometryTransition(id: string, options?: GeometryTransitionOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func geometryTransition(id: String, followWithoutTransition!: Bool = false): This
    
    /**
    * Adds the content blurring effect for the current component. The input parameter is the blurring radius.
    * The larger the blurring radius, the more blurring the content.
    * If the value is 0, the content blurring effect is not blurring.
    *
    * @param { Float64 } value
    * @returns { This }
    * @relation blur(value: number, options?: BlurOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func blur(value: Float64): This
    
    /**
    * Applies a color blend effect to the component.
    *
    * @param { ResourceColor } value
    * @returns { This }
    * @relation colorBlend(value: Color | string | Resource): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func colorBlend(value: ResourceColor): This
    
    /**
    * Applies a background blur effect to the component. You can customize the blur radius and grayscale parameters.
    *
    * @param { Float64 } value
    * @returns { This }
    * @relation backdropBlur(value: number, options?: BlurOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func backdropBlur(value: Float64): This
    
    /**
    * Applies a shadow effect to the component.
    *
    * @relation shadow(value: ShadowOptions | ShadowStyle): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func shadow(radius!: Float64, color!: ResourceColor = Color(0x666666), offsetX!: Float64 = 0.0,
        offsetY!: Float64 = 0.0): This
    
    /**
    * Applies a grayscale effect to the component.
    *
    * @param { Float64 } value
    * @returns { This }
    * @relation grayscale(value: number): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func grayscale(value: Float64): This
    
    /**
    * Applies a brightness effect to the component.
    *
    * @param { Float64 } value
    * @returns { This }
    * @relation grayscale(value: number): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func brightness(value: Float64): This
    
    /**
    * Applies a saturation effect to the component.
    *
    * @param { Float64 } value
    * @returns { This }
    * @relation saturate(value: number): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func saturate(value: Float64): This
    
    /**
    * Applies a contrast effect to the component.
    *
    * @param { Float64 } value
    * @returns { This }
    * @relation saturate(value: number): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func contrast(value: Float64): This
    
    /**
    * Invert the input image. Value defines the scale of the conversion. 100% of the value is a complete reversal.
    * A value of 0% does not change the image. (Percentage)
    *
    * @param { Float64 } value
    * @returns { This }
    * @relation invert(value: number | InvertOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func invert(value: Float64): This
    
    /**
    * Invert the input image. Value defines the scale of the conversion. 100% of the value is a complete reversal.
    * A value of 0% does not change the image. (Percentage)
    *
    * @relation invert(value: number | InvertOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func invert(low!: Float64, high!: Float64, threshold!: Float64, thresholdRange!: Float64): This
    
    /**
    * Sepia conversion ratio of the component.
    *
    * @param { Float64 } value
    * @returns { This }
    * @relation sepia(value: number): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func sepia(value: Float64): This
    
    /**
    * Rotates the hue of the component.
    *
    * @param { Float32 } value
    * @returns { This }
    * @relation hueRotate(value: number | string): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func hueRotate(value: Float32): This
    
    /**
    * The sibling components in the same container are hierarchically displayed. A larger value of z indicates a higher display level.
    *
    * @param { Int32 } value
    * @returns { This }
    * @relation zIndex(value: number): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func zIndex(value: Int32): This
    
    /**
    * Controls the display or hide of the current component.
    *
    * @param { Visibility } value
    * @returns { This }
    * @relation visibility(value: Visibility): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func visibility(value: Visibility): This
    
    /**
    * Sets whether to clip the areas of child components that extend beyond this component's boundaries,
    * That is, whether to perform clipping based on the edge contour of the parent container.
    *
    * @param { Bool } value
    * @returns { This }
    * @relation clip(value: boolean): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func clip(value: Bool): This
    
    /**
    * Adds a mask of the specified shape to the component.
    *
    * @param { BaseShape } value
    * @returns { This }
    * @relation clipShape(value: CircleShape | EllipseShape | PathShape | RectShape): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func clipShape(value: BaseShape): This
    
    /**
    * Adds a mask of the specified shape to the component.
    *
    * @param { BaseShape } value
    * @returns { This }
    * @relation maskShape(value: CircleShape | EllipseShape | PathShape | RectShape): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func maskShape(value: BaseShape): This
    
    /**
    * Add mask text to the current component. The layout is the same as that of the current component.
    *
    * @relation overlay(value: string | CustomBuilder | ComponentContent, options?: OverlayOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func overlay(value!: String, align!: Alignment = Alignment.Center,
        offset!: OverlayOffset = OverlayOffset(x: 0.0, y: 0.0)): This
    
    /**
    * Popup control
    * NOTE:
    * The popup can be displayed only after the entire page is fully constructed. Therefore, to avoid incorrect
    * display positions and shapes, do not set this parameter to true while the page is still being constructed.
    *
    * @relation bindPopup(show: boolean, popup: PopupOptions | CustomPopupOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bindPopup(show: Bool, popup: PopupOptions): This
    
    /**
    * Popup control
    * NOTE:
    * The popup can be displayed only after the entire page is fully constructed. Therefore, to avoid incorrect
    * display positions and shapes, do not set this parameter to true while the page is still being constructed.
    *
    * @relation bindPopup(show: boolean, popup: PopupOptions | CustomPopupOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bindPopup(show: Bool, popup: CustomPopupOptions): This
    
    /**
    * Menu control
    *
    * @relation bindMenu(content: Array<MenuElement> | CustomBuilder, options?: MenuOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bindMenu(content: Array<MenuElement>): This
    
    /**
    * Menu control
    *
    * @relation bindMenu(content: Array<MenuElement> | CustomBuilder, options?: MenuOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bindMenu(content: CustomBuilder): This
    
    /**
    * Binds a context menu to the component, whose visibility is subject to the isShown settings.
    *
    * @relation bindContextMenu(isShown: boolean, content: CustomBuilder, options?: ContextMenuOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bindContextMenu(content: CustomBuilder, responseType: ResponseType,
        options!: ContextMenuOptions = ContextMenuOptions()): This
    
    /**
    * Linear Gradient
    * angle: Angle of Linear Gradient. The default value is 180;
    * direction: Direction of Linear Gradient. The default value is GradientDirection.Bottom;
    * colors: Color description for gradients.
    * repeating: repeating. The default value is false
    *
    * @relation linearGradient(value: LinearGradientOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func linearGradient(angle!: ?Float64 = None, direction!: GradientDirection = GradientDirection.Bottom,
        colors!: Array<(ResourceColor, Float64)> = [(Color.Transparent, 0.0)], repeating!: Bool = false): This
    
    /**
    * Creates a sweep gradient.
    *
    * @relation sweepGradient(value: SweepGradientOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func sweepGradient(center: (Length, Length), start!: Float64 = 0.0, end!: Float64 = 0.0,
        rotation!: Float64 = 0.0, colors!: Array<(ResourceColor, Float64)> = [(Color.Transparent, 0.0)],
        repeating!: Bool = false): This
    
    /**
    * Creates a radial gradient.
    *
    * @relation radialGradient(value: RadialGradientOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func radialGradient(center: (Length, Length), radius: Length, colors: Array<(ResourceColor, Float64)>,
        repeating!: Bool = false): This
    
    /**
    * Sets hot keys
    *
    * @relation keyboardShortcut(value: string | FunctionKey, keys: Array<ModifierKey>, action?: () => void): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func keyboardShortcut(value: FunctionKey, keys: Array<ModifierKey>): This
    
    /**
    * Sets hot keys
    *
    * @relation keyboardShortcut(value: string | FunctionKey, keys: Array<ModifierKey>, action?: () => void): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func keyboardShortcut(value: String, keys: Array<ModifierKey>): This
    
    /**
    * Sets hot keys
    *
    * @relation keyboardShortcut(value: string | FunctionKey, keys: Array<ModifierKey>, action?: () => void): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func keyboardShortcut(value: FunctionKey, keys: Array<ModifierKey>, action: () -> Unit): This
    
    /**
    * Sets hot keys
    *
    * @relation keyboardShortcut(value: string | FunctionKey, keys: Array<ModifierKey>, action?: () => void): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func keyboardShortcut(value: String, keys: Array<ModifierKey>, action: () -> Unit): This
    
    /**
    * Key. User can set an key to the component to identify it.
    *
    * @relation key(value: string): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func key(value: String): This
    
    /**
    * How the final state of the component's content is rendered during its width and height animation process.
    *
    * @relation renderFit(fitMode: RenderFit): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func renderFit(fitMode: RenderFit): This
    
    /**
    * Id. User can set an id to the component to identify it.
    *
    * @relation id(value: string): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func id(value: String): This
    
    /**
    * Sets the safe area to be expanded to.
    *
    * @relation expandSafeArea(types?: Array<SafeAreaType>, edges?: Array<SafeAreaEdge>): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func expandSafeArea(types!: ?Array<SafeAreaType> = None, edges!: ?Array<SafeAreaEdge> = None): This
    
    /**
    * Binds a modal page to the component, whose visibility is subject to the isShow settings.
    *
    * @relation bindContentCover(isShow: boolean, builder: CustomBuilder, options?: ContentCoverOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bindContentCover(isShow: Bool, builder: CustomBuilder,
        options!: ContentCoverOptions = ContentCoverOptions()): This
    
    /**
    * animation
    *
    * @relation animation(value: AnimateParam): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func animationStart(value: AnimateParam): This
    
    /**
    * animation
    *
    * @relation animation(value: AnimateParam): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func animationEnd(): This
    
    /**
    * Set the transition effect of component when it appears and disappears.
    *
    * @relation transition(value: TransitionEffect): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func transition(value: TransitionEffect): This
    
    /**
    * Set the transition effect of component when it appears and disappears.
    *
    * @relation transition(value: TransitionEffect): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func transition(value: TransitionEffect, onFinish: ?TransitionFinishCallback): This
    
    /**
    * Set focusable.
    * Components that have default interaction logic, such as Button and TextInput, are focusable by default. Other
    * components, such as Text and Image, are not focusable by default. Only focusable components can trigger a focus event.
    *
    * @relation focusable(value: boolean): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func focusable(value: Bool): This
    
    /**
    * Set focus index by key tab.
    * The tabIndex and focusScopeId cannot be used together.
    *
    * @relation tabIndex(index: number): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func tabIndex(index: Int32): This
    
    /**
    * Set default focused component when a page create.
    *
    * @relation defaultFocus(value: boolean): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func defaultFocus(value: Bool): This
    
    /**
    * Set default focused component when focus on a focus group.
    *
    * @relation groupDefaultFocus(value: boolean): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func groupDefaultFocus(value: Bool): This
    
    /**
    * Set a component focused when the component be touched.
    *
    * @param { Bool } value
    * @returns { This }
    * @relation focusOnTouch(value: boolean): T;
    */
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
    
    /**
    * Binds a sheet page to the component, whose visibility is subject to the isShow settings.
    *
    * @param { Bool } isShow - true means display sheet, false means hide sheet.
    * @param { CustomBuilder } builder - the sheet to be displayed.
    * @param { SheetOptions } options - options of sheet.
    * @returns { This }
    * @relation bindSheet(isShow: boolean, builder: CustomBuilder, options?: SheetOptions): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func bindSheet(isShow: Bool, builder: CustomBuilder, options!: SheetOptions = SheetOptions()): This
    
    /**
    * Set preview of the component for dragging process
    *
    * @param { String } value - preview of the component for dragging process
    * @returns { This }
    * @relation dragPreview(value: CustomBuilder | DragItemInfo | string): T;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func dragPreview(value: String): This
}


/**
* Defines modal transition type.
*
* @relation declare enum ModalTransition
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ModalTransition {
    /**
    * Use default animation.
    *
    * @relation DEFAULT
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Default |
    /**
    * No transition animation for the modal.
    *
    * @relation NONE
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    None |
    /**
    * Use alpha animation.
    *
    * @relation ALPHA
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Alpha |
    ...
}



/**
* Defines sheet size type.
*
* @relation declare enum SheetSize
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SheetSize {
    /**
    * The sheet height is half of the screen height.
    *
    * @relation MEDIUM
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Medium |
    /**
    * The sheet height is half of the screen height.
    *
    * @relation LARGE
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Large |
    /**
    * The sheet height is half of the screen height.
    *
    * @relation FIT_CONTENT
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    FitContent |
    ...
}



/**
* Defines the sheet type.
*
* @relation declare enum SheetType.
*/
@Derive[Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SheetType {
    /**
    * Bottom sheet.
    *
    * @relation BOTTOM = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Bottom |
    /**
    * Center sheet.
    *
    * @relation CENTER = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Center |
    /**
    * Popup sheet. The popup sheet cannot be dismissed with a pull-down gesture.
    *
    * @relation POPUP = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Popup |
    ...
}



/**
* Defines the options of blur
*
* @relation declare interface BlurOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class BlurOptions {
    /**
    * Fuzzy gray scale parameter
    *
    * @relation grayscale: [number, number]
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var grayscale: VArray<Float32, $2>
    
    /**
    * constructor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(grayscale: VArray<Float32, $2>)
}


/**
* Defines the options of ForegroundBlurStyle
*
* @relation declare interface ForegroundBlurStyleOptions extends BlurStyleOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ForegroundBlurStyleOptions {
    /**
    * Color mode used for the foreground blur.
    * <br>Default value: **ThemeColorMode.System**.
    *
    * @relation colorMode?: ThemeColorMode;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var colorMode: ThemeColorMode = ThemeColorMode.System
    
    /**
    * Adaptive color mode.
    * <br>Default value: **AdaptiveColor.Default**.
    *
    * @relation colorMode?: ThemeColorMode;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var adaptiveColor: AdaptiveColor = AdaptiveColor.Default
    
    /**
    * Defines the options of blur
    *
    * @relation blurOptions?: BlurOptions;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var blurOptions: BlurOptions = BlurOptions([0.0, 0.0])
    
    /**
    * Foreground blur scale.
    * <br>Default value: **1.0**.
    * <br>Value range: [0.0, 1.0].
    *
    * @relation scale?: number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var scale: Float32 = 1.0
    
    /**
    * constructor
    */
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


/**
* Defines the popup options.
*
* @relation declare interface PopupButton
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PopupButton {
    /**
    * constructor
    *
    * @param {String} value - Button text value
    * @param { () -> Unit } action - action
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: String, action!: () -> Unit)
}


/**
* Popup state change param
*
* @relation declare interface PopupStateChangeParam
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PopupStateChangeParam {
    /**
    * is Visible.
    * Anonymous Object Rectification.
    *
    * @relation isVisible: boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var isVisible: Bool
    
    /**
    * constructor
    *
    * @param {Bool} value
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value: Bool)
}


/**
* Defines the popup options.
*
* @relation declare interface PopupOptions
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PopupOptions {
    /**
    * Content of the popup message.
    *
    * @relation message: string;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var message: String = ""
    
    /**
    * The first button.
    *
    *
    * @relation primaryButton?: PopupButton;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var primaryButton: PopupButton = PopupButton(value: "", action: {=>})
    
    /**
    * The second button.
    *
    *
    * @relation secondaryButton?:PopupButton
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var secondaryButton: PopupButton = PopupButton(value: "", action: {=>})
    
    /**
    * on State Change
    *
    * @relation onStateChange?: PopupStateChangeCallback;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var onStateChange: ?(PopupStateChangeParam) -> Unit = Option.None
    
    /**
    * Parameters of the popup message
    *
    * @relation messageOptions?: PopupMessageOptions
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var messageOptions: PopupMessageOptions = PopupMessageOptions()
    
    /**
    * The offset of the sharp corner of popup.
    *
    * @relation arrowOffset?: Length;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowOffset: Length = 0.vp
    
    /**
    * Whether to display in the sub window.
    *
    * @relation showInSubWindow?: boolean;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var showInSubWindow: Bool = false
    
    /**
    * Whether to apply a mask to the popup.
    * and a color value means to apply a mask in the corresponding color to the popup.
    *
    * @relation mask?: boolean | { color: ResourceColor };
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var mask: ResourceColor = Color(0x1000000)
    
    /**
    * Sets the space of between the popup and target.
    *
    * @relation targetSpace?: Length
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var targetSpace: Length = 0.vp
    
    /**
    * The placement of popup.
    * Supports all positions defined in Placement.
    *
    * @relation placement?: Placement;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var placement: Placement = Placement.BottomLeft
    
    /**
    * Sets the position offset of the popup.
    *
    * @relation offset?: Position
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offset: Position = Position(x: 0.0,y: 0.0)
    
    /**
    * whether show arrow
    *
    * @relation enableArrow?: boolean;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var enableArrow: Bool = true
    
    /**
    * Sets the position offset of the popup.
    *
    * @relation popupColor?: Color | string | Resource | number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var popupColor: ResourceColor = Color(0x1000000)
    
    /**
    * Whether hide popup when click mask.
    *
    * @relation autoCancel?: boolean;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var autoCancel: Bool = true
    
    /**
    * Set the width of the popup.
    *
    * @relation width?: Dimension;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var width: Length = 0.vp
    
    /**
    * The position of the sharp corner of popup.
    *
    * @relation arrowPointPosition?: ArrowPointPosition;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowPointPosition: Option<ArrowPointPosition> = None
    
    /**
    * The width of the arrow.
    *
    * @relation arrowWidth?: Dimension;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowWidth: Length = 16.0.vp
    
    /**
    * The height of the arrow.
    *
    * @relation arrowWidth?: Dimension;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowHeight: Length = 8.0.vp
    
    /**
    * The round corners of the popup.
    *
    * @relation adius?: Dimension;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var radius: Length = 20.0.vp
    
    /**
    * The style of popup Shadow.
    *
    * @relation shadow?: ShadowOptions | ShadowStyle;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var shadow: ShadowStyle = ShadowStyle.OuterDefaultMD
    
    /**
    * Defines popup background blur Style
    *
    * @relation backgroundBlurStyle?: BlurStyle;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var backgroundBlurStyle: BlurStyle = BlurStyle.ComponentUltraThick
    
    /**
    * Defines the transition effect of popup opening and closing
    *
    * @relation transition?: TransitionEffect;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var transition: ?TransitionEffect = Option.None
    
    /**
    * Callback function when the popup interactive dismiss
    *
    * @relation onWillDismiss?: boolean | Callback<DismissPopupAction>;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var onWillDismiss: ?(DismissPopupAction) -> Unit = None
    
    /**
    * Determine if popup can follow the target node when it has rotation or scale
    *
    * @relation followTransformOfTarget?: boolean;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var followTransformOfTarget: Bool = false
    
    /**
    * constructor
    */
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
    /**
    * constructor
    *
    * @param {ResourceStr} value
    * @param { () -> Unit } action - action
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: ResourceStr, action!: () -> Unit)
}

/**
* Defines the custom popup options.
*
* @relation declare interface CustomPopupOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CustomPopupOptions {
    /**
    * Popup builder.
    * <br>The popup attribute is a universal attribute. A custom popup does not support display of another popup.
    * <br>The position attribute cannot be used for the first-layer container in the builder.
    * <br>If the position attribute is used, the popup will not be displayed.
    * <br>If a custom component is used in the builder, the aboutToAppear and aboutToDisappear lifecycle callbacks
    * of the custom component are irrelevant to the visibility of the popup. As such, the lifecycle of the
    * custom component cannot be used to determine whether the popup is displayed or not.
    *
    * @relation builder: CustomBuilder;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var builder: CustomBuilder = {=>}
    
    /**
    * Preferred position of the popup. If the set position is insufficient for holding the popup,
    * it will be automatically adjusted.
    *
    * @relation placement?: Placement;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var placement: Placement = Placement.Bottom
    
    /**
    * mask color of popup
    *
    * @relation maskColor?: Color | string | Resource | number;
    */
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
    
    /**
    * whether show arrow
    *
    * @relation enableArrow?: boolean;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var enableArrow: Bool = true
    
    /**
    * Whether to automatically dismiss the popup when an operation is performed on the page.
    * <br>To enable the popup to disappear upon a click on it, place a layout component in the builder place the
    * <Popup> component in the layout component, and modify the value of the bindPopup variable (show: boolean)
    * in the onClick event of the layout component.
    *
    * @relation autoCancel?: boolean;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var autoCancel: Bool = true
    
    /**
    * on State Change
    *
    * @relation onStateChange?: PopupStateChangeCallback;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var onStateChange: Option<(PopupStateChangeParam) -> Unit> = Option.None
    
    /**
    * Color of the popup. To remove the background blur, set backgroundBlurStyle to BlurStyle.NONE.
    *
    * @relation popupColor?: Color | string | Resource | number;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var popupColor: ?Color = None
    
    /**
    * The offset of the sharp corner of popup.
    *
    * Offset of the popup arrow relative to the popup. When the arrow is at the top or bottom of the popup:
    * <br>The value 0 indicates that the arrow is located on the leftmost, and any other value indicates the distance
    * from the arrow to the leftmost; the arrow is centered by default. When the arrow is on the left or right
    * side of the popup: The value indicates the distance from the arrow to the top; the arrow is centered by
    * default. When the popup is displayed on either edge of the screen, it will automatically deviate leftward
    * or rightward to stay within the safe area. When the value is 0, the arrow always points to the bound component.
    *
    * @relation arrowOffset?: Length;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowOffset: Length = 0.vp
    
    /**
    * Whether to display in the sub window.
    *
    * @relation showInSubWindow?: boolean;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var showInSubWindow: Bool = false
    
    /**
    * Whether to apply a mask to the popup.
    *
    * @relation mask?: boolean | { color: ResourceColor };
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var mask: ?Color = None
    
    /**
    * Sets the space of between the popup and target.
    *
    * @relation targetSpace?: Length
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var targetSpace: Length = 0.vp
    
    /**
    * Sets the position offset of the popup.
    *
    * @relation offset?: Position
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offset: Position = Position(x: 0.0, y: 0.0)
    
    /**
    * Set the width of the popup.
    *
    * @relation width?: Dimension;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var width: Length = 0.vp
    
    /**
    * Position of the popup arrow relative to its parent component. Available positions are Start, Center, and End,
    * in both vertical and horizontal directions. All these positions are within the parent component area.
    *
    * @type { ?ArrowPointPosition }
    * @relation arrowPointPosition?: ArrowPointPosition;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowPointPosition: Option<ArrowPointPosition> = None
    
    /**
    * Arrow thickness. If the arrow thickness exceeds the length of the edge minus twice the size of the popup
    * rounded corner, the arrow is not drawn.
    *
    * @type { Length }
    * @relation arrowWidth?: Dimension;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowWidth: Length = 16.vp
    
    /**
    * The height of the arrow.
    *
    * @type { Length }
    * @relation arrowHeight?: Dimension;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowHeight: Length = 8.vp
    
    /**
    * The round corners of the popup.
    *
    * @type { Length }
    * @relation radius?: Dimension;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var radius: Length = 20.vp
    
    /**
    * The style of popup Shadow.
    * @type { ShadowStyle }
    * @relation shadow?: ShadowOptions | ShadowStyle;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var shadow: ShadowStyle = ShadowStyle.OuterDefaultMD
    
    /**
    * Background blur style of the popup.
    * @type { BlurStyle }
    * @relation backgroundBlurStyle?: BlurStyle;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var backgroundBlurStyle: BlurStyle = BlurStyle.ComponentUltraThick
    
    /**
    * Set popup focusable
    * @type { Bool }
    * @relation focusable?: boolean;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var focusable: Bool = false
    
    /**
    * Defines the transition effect of popup opening and closing
    *
    * @type { ?TransitionEffect }
    * @relation transition?: TransitionEffect;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var transition: Option<TransitionEffect> = Option.None
    
    /**
    * * Whether to perform dismissal event interception and interception callback.
    * 1. If this parameter is set to false, the system does not respond to the dismissal event initiated by
    * touching the Back button, swiping left or right on the screen, or pressing the Esc key; and the system
    * dismisses the popup only when show is set to false. If this parameter is set to true, the system responds
    * to the dismissal event as expected.
    * 2. If this parameter is set to a function, the dismissal event is intercepted and the callback function
    * is executed.
    * @type { Option<(DismissPopupAction) -> Unit> }
    * @relation onWillDismiss?: boolean | Callback<DismissPopupAction>;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var onWillDismiss: Option<(DismissPopupAction) -> Unit> = None
    
    /**
    * Determine if popup can follow the target node when it has rotation or scale.
    *
    * @type { Bool }
    * @default false
    * @relation followTransformOfTarget?: boolean;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var followTransformOfTarget: Bool = false
    
    /**
    * constructor
    */
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


/**
* Defines the options of popup message.
*
* @relation declare interface PopupMessageOptions
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PopupMessageOptions {
    /**
    * Sets the color of popup text.
    *
    * @type { ResourceColor }
    * @relation textColor?: ResourceColor;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var textColor: ResourceColor
    
    /**
    * Sets the color of popup text.
    *
    * @type { Font }
    * @relation font?: Font;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var font: Font
    
    /**
    * constructor
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(textColor!: ResourceColor = Color(0x000000), font!: Font = Font())
}


/**
* Defines the OverlayOffset.
*
* @relation declare interface OverlayOffset
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class OverlayOffset {
    /**
    * Defines x.
    *
    * @type { Float64 }
    * @relation x?: number;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Float64
    
    /**
    * Defines x.
    *
    * @type { Float64 }
    * @relation y?: number;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Float64
    
    /**
    * constructor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(x!: Float64 = 0.0, y!: Float64 = 0.0)
}


/**
* Defines the border width property.
*
* @relation declare interface EdgeWidths
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class EdgeWidths {
    /**
    * top property.
    *
    * @type { Length }
    * @relation top?: Length;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var top: Length
    
    /**
    * right property.
    *
    * @type { Length }
    * @relation right?: Length;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var right: Length
    
    /**
    * bottom property.
    *
    * @type { Length }
    * @relation bottom?: Length;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var bottom: Length
    
    /**
    * left property.
    *
    * @type { Length }
    * @relation left?: Length;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var left: Length
    
    /**
    * constructor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(top!: Length = 0.vp, right!: Length = 0.vp, bottom!: Length = 0.vp, left!: Length = 0.vp)
}


/**
* Overlay module options
*
* @relation declare interface BindOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class BindOptions {
    /**
    * constructor
    *
    * @param {ResourceColor} backgroundColor - Background color of the sheet. Default value: **Color.White**.
    * @param {?() -> Unit} onAppear - Callback for when the sheet is displayed (after the animation ends).
    * @param {?() -> Unit} onDisappear - Callback for when the sheet disappears (after the animation ends).
    * @param {?() -> Unit} onWillAppear - Callback for when the sheet is about to be displayed (before the animation starts).
    * @param {?() -> Unit} onWillDisappear - Callback function before overlay popAnimation starts.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(backgroundColor!: ?ResourceColor = Option.None, onAppear!: ?() -> Unit = Option.None,
        onDisappear!: ?() -> Unit = Option.None, onWillAppear!: ?() -> Unit = Option.None,
        onWillDisappear!: ?() -> Unit = Option.None)
}


/**
* Component content cover options
*
* @relation declare interface ContentCoverOptions extends BindOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ContentCoverOptions <: BindOptions {
    /**
    * constructor
    *
    * @param {ModalTransition} modalTransition - Defines transition type
    * @param {?(DismissContentCoverAction) -> Unit} onWillDismiss - Callback function when the content cover interactive dismiss.
    * @param {?TransitionEffect} transition
    * @param {ResourceColor} backgroundColor - Background color of the sheet. Default value: **Color.White**.
    * @param {?() -> Unit} onAppear - Callback for when the sheet is displayed (after the animation ends).
    * @param {?() -> Unit} onDisappear - Callback for when the sheet disappears (after the animation ends).
    * @param {?() -> Unit} onWillAppear - Callback for when the sheet is about to be displayed (before the animation starts).
    * @param {?() -> Unit} onWillDisappear - Callback function before overlay popAnimation starts.
    */
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


/**
* Component sheet dismiss
*
* @relation declare interface SheetDismiss
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SheetDismiss {
    /**
    * Defines sheet dismiss function
    *
    * @relation dismiss: VoidCallback;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func dismiss(): Unit
}


/**
* Defines sheet spring back action
*
* @relation declare interface SpringBackAction
*/
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SpringBackAction {
    /**
    * Defines spring back function
    *
    * @relation springBack: Callback<void>;
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func springBack()
}


/**
* Define the display mode of the sheet.
*
* @relation declare enum SheetMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SheetMode {
    /**
    * The sheet is displayed at the top of the window corresponding to the current **UIContext** instance,
    * above all pages. It is displayed at the same level as dialog boxes.
    *
    * @relation OVERLAY
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Overlay |
    /**
    * The sheet is displayed at the top of the current page.
    *
    * @relation EMBEDDED = 1,
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Embedded |
    ...
}



/**
* Define the scroll size mode of the sheet.
*
* @relation declare enum ScrollSizeMode
*/
@Derive[Equatable]
@!APILevel[
    21,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ScrollSizeMode {
    /**
    * Sheet change scroll size after the slide ends.
    *
    * @relation OLLOW_DETENT = 0,
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    FollowDetent |
    /**
    * Sheet change scroll size during the sliding process.
    *
    * @relation CONTINUOUS = 1,
    */
    @!APILevel[
        21,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Continuous |
    ...
}



/**
* Component sheet options
*
* @relation declare interface SheetOptions extends BindOptions
*/
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


/**
* Defines the data type of the interface restriction.
*
* @relation declare interface Rectangle
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Rectangle {
    /**
    * x:Horizontal coordinate
    *
    * @type { Length }
    * @relation x?: Length;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var x: Length
    
    /**
    * y:Vertical axis coordinate.
    *
    * @type { Length }
    * @relation y?: Length;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var y: Length
    
    /**
    * Sets the width of the current touchRect.
    *
    * @type { Length }
    * @relation width?: Length;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var width: Length
    
    /**
    * Sets the height of the current touchRect.
    *
    * @type { Length }
    * @relation height?: Length;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var height: Length
    
    /**
    * constructor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(x!: Length = 0.vp, y!: Length = 0.vp, width!: Length = 100.percent, height!: Length = 100.percent)
}


/**
* Component popup dismiss
*
* @relation declare interface DismissPopupAction
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DismissPopupAction {
    /**
    * Defines popup dismiss reason
    * @relation reason: DismissReason;
    */
    public let reason: DismissReason
    
    /**
    * Defines popup dismiss function
    * @relation dismiss(): void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func dismiss(): Unit
}


/**
* Defines the context menu options.
*
* @relation declare interface ContextMenuOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ContextMenuOptions {
    /**
    * Sets the position offset of the context menu window.
    *
    * @type { Position }
    * @relation offset?: Position;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var offset: Position = Position(x: 0.0, y: 0.0)
    
    /**
    * Preferred position of the context menu. If the set position is insufficient for holding the component, it will be
    * automatically adjusted
    *
    * @type { ?Placement }
    * @relation placement?: Placement;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var placement: Option<Placement> = Option.None
    
    /**
    * whether show arrow belong to the menu.
    *
    * @type { ?Bool }
    * @relation enableArrow?: boolean;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var enableArrow: Bool = false
    
    /**
    * The horizontal offset to the left of menu or vertical offset to the top of menu
    *
    * @type { Length }
    * @relation arrowOffset?: Length;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var arrowOffset: Length = 0.vp
    
    /**
    * The preview content of context menu.
    * 
    * @type { ?CustomBuilder }
    * @relation preview?: MenuPreviewMode | CustomBuilder;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var preview: ?CustomBuilder = Option.None
    
    /**
    * The preview animator options.
    *
    * @type { ?ContextMenuAnimationOptions }
    * @relation previewAnimationOptions?: ContextMenuAnimationOptions;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var previewAnimationOptions: ?ContextMenuAnimationOptions = None
    
    /**
    * Callback triggered when the menu is displayed.
    *
    * @type { ?() -> Unit }
    * @relation onAppear?: () => void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var onAppear: ?() -> Unit = None
    
    /**
    * Callback function when the context menu disappear.
    *
    * @type { ?() -> Unit }
    * @relation onDisappear?: () => void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var onDisappear: ?() -> Unit = None
    
    /**
    * Callback triggered when the menu is about to appear.
    *
    * @type { ?() -> Unit }
    * @relation aboutToAppear?: () => void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var aboutToAppear: ?() -> Unit = None
    
    /**
    * Callback triggered when the menu is about to disappear.
    *
    * @type { ?() -> Unit }
    * @relation aboutToDisappear?: () => void;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var aboutToDisappear: ?() -> Unit = None
    
    /**
    * Background color of the menu.
    *
    * @type { ResourceColor }
    * @relation backgroundColor?: ResourceColor;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var backgroundColor: ResourceColor = Color.Transparent
    
    /**
    * Background blur style of the menu.
    *
    * @type { BlurStyle }
    * @relation backgroundBlurStyle?: BlurStyle;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var backgroundBlurStyle: BlurStyle = BlurStyle.ComponentUltraThick
    
    /**
    * Defines the transition effect of menu opening and closing.
    *
    * @type { ?TransitionEffect }
    * @relation transition?: TransitionEffect;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var transition: ?TransitionEffect = None
    
    /**
    * constructor
    */
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


/**
* Component content cover dismiss
*
* @relation declare interface DismissContentCoverAction
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DismissContentCoverAction {
    /**
    * Defines content cover dismiss reason
    *
    * @relation reason: DismissReason;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public let reason: DismissReason
    
    /**
    *  Defines content cover dismiss function
    * @relation dismiss: Callback<void>;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func dismiss(): Unit
}


/**
* Defines the ContextMenu's preview animator options.
*
* @relation interface ContextMenuAnimationOptions
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ContextMenuAnimationOptions {
    /**
    * Sets the start animator scale and end animator scale.
    *
    * @type { ?VArray<Float64, $2> }
    * @relation scale?: AnimationRange<number>;
    */
    public var scale: ?VArray<Float64, $2> = None
    
    /**
    * Defines the transition effect of menu preview opening and closing.
    *
    * @type { ?TransitionEffect }
    * @relation transition?: TransitionEffect;
    */
    public var transition: ?TransitionEffect = None
    
    /**
    * Sets the scale start and end animator of the image displayed before the custom builder preview is displayed.
    *
    * @type { ?VArray<Float64, $2>  }
    * @relation hoverScale?: AnimationRange<number>;
    */
    public var hoverScale: ?VArray<Float64, $2> = None
    
    /**
    * constructor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(scale!: ?VArray<Float64, $2> = None, transition!: ?TransitionEffect = None,
        hoverScale!: ?VArray<Float64, $2> = None)
}


/**
* Component sheet dismiss
*
* @relation declare interface DismissSheetAction
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DismissSheetAction {
    /**
    * Dismiss reason type.
    *
    * @relation reason: DismissReason;
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var reason: DismissReason
    
    /**
    *  Defines sheet dismiss function
    *
    * @relation reason: DismissReason;
    */
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


