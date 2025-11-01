package ohos.arkui.component.common

import ohos.ark_interop.JSInteropType
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.arkui.shape.*
import ohos.base.*
import ohos.ffi.*
import ohos.hi_trace_meter.*
import ohos.hilog.HilogChannel
import ohos.labels.APILevel
import ohos.multimedia.image.PixelMap
import ohos.resource.*
import std.collection.ArrayList
import std.collection.HashMap
import std.collection.forEach
import std.convert.*
import std.deriving.Derive
import std.math.*
import std.regex.*

/**
 * Defines the event target.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class EventTarget {
/**
 * Area information of the target element.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var area: Area

/**
 * EventTarget constructor.
 *
 * @param { Area } area - The area of EventTarget.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(area: Area)
}

/**
 * Defines the area property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Area {
/**
 * Defines the width property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var width: Length

/**
 * Defines the height property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var height: Length

/**
 * Defines the local position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var position: Position

/**
 * Defines the global position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var globalPosition: Position

/**
 * Area constructor.
 *
 * @param { Length } width - The width of the area.
 * @param { Length } height - The height of the area.
 * @param { Position } position - The local position of the area.
 * @param { Position } globalPosition - The global position of the area.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        width: Length,
        height: Length,
        position: Position,
        globalPosition: Position
    )
}

/**
 * Defines the position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Position {
/**
 * The x-coordinate of the position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var x: ?Length

/**
 * The y-coordinate of the position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var y: ?Length

/**
 * Position constructor.
 *
 * @param { ?Length } [x] - The x-coordinate of the position.
 * @param { ?Length } [y] - The y-coordinate of the position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(x!: ?Length = None, y!: ?Length = None)
}

/**
 * Defines the motion path options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class MotionPathOptions {
/**
 * Motion path of the translation animation.
 * The **svg** path string is used.
 * In the value, **start** and **end** can be used in place of the start point and end point,
 * for example, **'Mstart.x start.y L50 50 Lend.x end.y Z'**.
 * If this parameter is set to an empty string, the path animation is not set.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var path: ?String

/**
 * Start point of the motion path.
 * Value range: [0, 1].
 * A value less than 0 or greater than 1 evaluates to the default value **0**.
 *
 * @default 0.0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var from: ?Float64

/**
 * End point of the motion path.
 * Value range: [0, 1].
 * A value less than 0 or greater than 1 evaluates to the default value **1**,
 * provided that the value of **to** is greater than or equal to the value of **from**.
 *
 * @default 1.0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var to: ?Float64

/**
 * Whether to rotate along the path.
 *
 * @default false
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var rotatable: ?Bool

/**
 * MotionPathOptions constructor.
 *
 * @param { ?String } path - The path of motion.
 * @param { ?Float64 } [from] - The starting of motion.
 * @param { ?Float64 } [to] - The ending of motion.
 * @param { ?Bool } [rotatable] - Whether retatable.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        path!: ?String,
        from!: ?Float64 = None,
        to!: ?Float64 = None,
        rotatable!: ?Bool = None
    )
}

/**
 * Defines the shard transition function params.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SharedTransitionOptions {
/**
 * Animation duration.
 * <br>Default value: **1000**.
 * <br>Unit: ms.
 * <br>Value range: [0, +∞).
 *
 * @default 1000
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var duration: ?Int32

/**
 * Animation curve.<br>You are advised to specify the curve using the **Curve** or
 * ** ICurve** type.<br>For the string type, this parameter indicates an animation
 * interpolation curve. For available values, see the **curve** parameter in
 * AnimateParam.
 * <br>Default value: **Curve.Linear**.
 *
 * @default Curve.Linear
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var curve: ?Curve

/**
 * Animation delay time, in ms.
 *
 * @default 0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var delay: ?Int32

/**
 * The motion path info.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var motionPath: ?MotionPathOptions

/**
 * Z index info.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var zIndex: ?Int32

/**
 * the animate type.
 *
 * @default SharedTransitionEffectType.Exchange
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var effectType: ?SharedTransitionEffectType

/**
 * SharedTransitionOptions constructor.
 *
 * @param { ?Int32 } [duration] - The transition duration.
 * @param { ?Curve } [curve] - The transition curve.
 * @param { ?Int32 } [delay] - The transition delay.
 * @param { ?MotionPathOptions } [motionPath] - The transition path.
 * @param { ?Int32 } [zIndex] - The transition zIndex.
 * @param { ?SharedTransitionEffectType } [effectType] - The transition effect type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        duration!: ?Int32 = None,
        curve!: ?Curve = None,
        delay!: ?Int32 = None,
        motionPath!: ?MotionPathOptions = None,
        zIndex!: ?Int32 = None,
        effectType!: ?SharedTransitionEffectType = None
    )
}

/**
 * Defines the animate function params.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AnimateParam {
/**
 * Animation duration, in ms.
 *
 * @default 1000
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var duration: ?Int32

/**
 * Animation playback speed. A larger value indicates faster animation playback, and a smaller value indicates slower
 * animation playback. The value 0 means that there is no animation.
 *
 * @default 1.0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var tempo: ?Float32

/**
 * Animation curve.
 *
 * @default Curve.EaseInOut
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var curve: ?Curve

/**
 * Animation delay time, in ms. By default, the animation has no delay.
 *
 * @default 0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var delay: ?Int32

/**
 * Number of times that the animation is played. By default, the animation is played once.
 * The value **-1** indicates that the animation is played for an unlimited number of times. 
 * The value **0** indicates that there is no animation.
 *
 * @default 1
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var iterations: ?Int32

/**
 * Playback mode. By default, the animation is played from the beginning after the playback is complete.
 *
 * @default PlayMode.Normal
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var playMode: ?PlayMode

/**
 * Callback invoked when the animation playback is complete.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var onFinish: Option<() -> Unit>

/**
 * Type of the **onFinish** callback.
 *
 * @default FinishCallbackType.Removed
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var finishCallbackType: ?FinishCallbackType

/**
 * Expected frame rate range of the animation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var expectedFrameRateRange: Option<ExpectedFrameRateRange>

/**
 * AnimateParam constructor.
 *
 * @param { ?Int32 } [duration] - The animation duration.
 * @param { ?Float32 } [tempo] - The animation playback speed.
 * @param { ?Curve } [curve] - The animation curve.
 * @param { ?Int32 } [delay] - The animation delay.
 * @param { ?Int32 } [iterations] - The playback times.
 * @param { ?PlayMode } [playMode] - The play mode.
 * @param { Option<() -> Unit> } [onFinish] - The callback on finish.
 * @param { ?FinishCallbackType } [finishCallbackType] - The callback finish type.
 * @param { Option<ExpectedFrameRateRange> } [expectedFrameRateRange] - Expected frame rate range of the animation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        duration!: ?Int32 = None,
        tempo!: ?Float32 = None,
        curve!: ?Curve = None,
        delay!: ?Int32 = None,
        iterations!: ?Int32 = None,
        playMode!: ?PlayMode = None,
        onFinish!: Option<() -> Unit> = Option.None,
        finishCallbackType!: ?FinishCallbackType = None,
        expectedFrameRateRange!: Option<ExpectedFrameRateRange> = Option.None
    )
}

/**
 * Defines the horizontal align rule options of relative container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class HorizontalAlignParam {
/**
 * ID of the component that serves as the anchor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var anchor: ?String

/**
 * Sets the horizontal alignment relative to the anchor component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var align: ?HorizontalAlign

/**
 * Defines the constructor of HorizontalAlignParam.
 *
 * @param { ?String } anchor - ID of the component that functions as the anchor point
 * @param { ?HorizontalAlign } align - Alignment mode relative to the anchor component
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(anchor: ?String, align: ?HorizontalAlign)
}

/**
 * Controls how components are aligned vertically within their container or relative to an anchor.
 * Provides precise vertical positioning capabilities for UI layout.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class VerticalAlignParam {
/**
 * ID of the component that functions as the anchor point.
 * Specifies the reference component for relative alignment positioning.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var anchor: ?String

/**
 * Alignment mode relative to the anchor component.
 * Defines how this component should be vertically positioned relative to the anchor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var align: ?VerticalAlign

/**
 * Defines the constructor of VerticalAlignParam.
 *
 * @param { ?String } anchor - ID of the component that functions as the anchor point
 * @param { ?VerticalAlign } align - Alignment mode relative to the anchor component
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(anchor: ?String, align: ?VerticalAlign)
}

/**
 * Defines the bias ratio in horizontal and vertical direction.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Bias {
/**
 * Horizontal ratio of the Bias, it must be >= 0.
 *
 * @default 0.5
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var horizontal: ?Float64

/**
 * Vertical ratio of the Bias, it must be >= 0.
 *
 * @default 0.5
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var vertical: ?Float64

/**
 * Defines the constructor of Bias.
 *
 * @param { ?Float64 } [horizontal] - Horizontal ratio of the Bias, it must be >= 0.
 * @param { ?Float64 } [vertical] - Vertical ratio of the Bias, it must be >= 0.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(horizontal!: ?Float64 = None, vertical!: ?Float64 = None)
}

/**
 * Defines the font used for text.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Fonts {
/**
 * Font size.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var size: ?Length

/**
 * Font weight.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var weight: ?FontWeight

/**
 * Font family.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var family: ?String

/**
 * Font style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var style: ?FontStyle

/**
 * Fonts constructor.
 *
 * @param { ?Length } [size] - The font size.
 * @param { ?FontWeight } [weight] - The font weight.
 * @param { ?ResourceStr } [family] - The font family.
 * @param { ?FontStyle } [style] - The font style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(size!: ?Length = None, weight!: ?FontWeight = None, family!: ?ResourceStr = None,
        style!: ?FontStyle = None)
}

/**
 * Defines the border radius property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class BorderRadiuses {
/**
 * top-left property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var topLeft: ?Length

/**
 * top-right property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var topRight: ?Length

/**
 * bottom-left property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var bottomLeft: ?Length

/**
 * bottom-right property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var bottomRight: ?Length

/**
 * BorderRadiuses constructor.
 *
 * @param { ?Length } [topLeft] - The top left.
 * @param { ?Length } [topRight] - The top right.
 * @param { ?Length } [bottomLeft] - The bottom left.
 * @param { ?Length } [bottomRight] - The bottom right.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(topLeft!: ?Length = None, topRight!: ?Length = None, bottomLeft!: ?Length = None,
        bottomRight!: ?Length = None)
}

/**
 * Defines the margin property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Margin {
/**
 * Margin constructor.
 *
 * @param { ?Length } [top] - The top of margin.
 * @param { ?Length } [right] - The right of margin.
 * @param { ?Length } [bottom] - The bottom of margin.
 * @param { ?Length } [left] - The left of margin.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(top!: ?Length = None, right!: ?Length = None, bottom!: ?Length = None, left!: ?Length = None)
}

/**
 * Provides configuration options for rendering shadows behind UI components.
 * Allows fine-tuning of shadow appearance including blur, color, offset, and fill properties.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ShadowOptions {
/**
 * Blur radius of the shadow.
 * Controls the softness of the shadow edges. Higher values create more blurred shadows.
 *
 * @default 0.0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var radius: ?Float64

/**
 * Specifies the rendering method for the shadow, affecting performance and visual quality.
 *
 * @default ShadowType.Color
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var shadowType: ?ShadowType

/**
 * Color of the shadow.
 * Defines the color tint applied to the shadow. Can be any valid resource color.
 *
 * @default Black
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var color: ?ResourceColor

/**
 * Offset of the shadow along the x-axis. Unit is px.
 * Controls the horizontal positioning of the shadow relative to the component.
 * Positive values shift the shadow to the right, negative values to the left.
 *
 * @default 0.0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offsetX: ?Float64

/**
 * Offset of the shadow along the y-axis. Unit is px.
 * Controls the vertical positioning of the shadow relative to the component.
 * Positive values shift the shadow downward, negative values upward.
 *
 * @default 0.0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offsetY: ?Float64
/**
 * Whether to fill the inside of the component with shadow. **true**: Fill
 * the inside of the component with shadow.
 * <br>**false**: Do not fill the inside of the component with shadow.
 * <br>The default value is **false**.
 * <br>**NOTE**<br>This attribute does not take effect in textShadow.
 *
 * @default false
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fill: ?Bool

/**
 * ShadowOptions constructor.
 *
 * @param { ?Float64 } radius - Blur radius of the shadow.
 * @param { ?ShadowType } [shadowType] - Shadow type.
 * @param { ?ResourceColor } [color] - Color of the shadow.
 * @param { ?Float64 } [offsetX] - Offset of the shadow along the x-axis.
 * @param { ?Float64 } [offsetY] - Offset of the shadow along the y-axis.
 * @param { ?Bool } [fill] - Whether to fill the inside of the component with shadow.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        radius!: ?Float64,
        shadowType!: ?ShadowType = None,
        color!: ?ResourceColor = None,
        offsetX!: ?Float64 = None,
        offsetY!: ?Float64 = None,
        fill!: ?Bool = None
    )
}

/**
 * Defines the offset property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Offset {
/**
 * dx property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var dx: ?Length

/**
 * dy property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var dy: ?Length

/**
 * Offset constructor.
 *
 * @param { ?Length } dx - X offset.
 * @param { ?Length } dy - Y offset.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(dx: ?Length, dy: ?Length)
}

/**
 * Defines the frame rate range for animations, allowing control over animation smoothness and performance.
 * Provides fine-grained control over animation frame rates for optimal balance between visual quality and resource usage.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ExpectedFrameRateRange {
/**
 * The minimum animation drawing FPS.
 * The minimum value should be less than or equal to the maximum value.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var min: ?Int32

/**
 * The maximum animation drawing FPS.
 * The maximum value should be greater than or equal to the minimum value.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var max: ?Int32

/**
 * The expected frame rate of dynamical callback rate range.
 * Represents the target frame rate that the animation should attempt to maintain.
 * The value should be between the minimum and maximum value.
 * Otherwise, the actual callback rate will be dynamically
 * adjusted to better align with other animation sources.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var expected: ?Int32

/**
 * ExpectedFrameRateRange constructor.
 *
 * @param { ?Int32 } min - The minimum animation drawing FPS.
 * @param { ?Int32 } max - The maximum animation drawing FPS.
 * @param { ?Int32 } expected - The expected frame rate of dynamical callback rate range. The value should be between the minimum and maximum value
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        min!: ?Int32,
        max!: ?Int32,
        expected!: ?Int32
    )
}
/**
 * Defines the align rule options of relative container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AlignRuleOption {
/**
 * The param of left align.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var left: ?HorizontalAlignParam

/**
 * The param of right align.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var right: ?HorizontalAlignParam

/**
 * Center alignment in the horizontal direction.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var middle: ?HorizontalAlignParam

/**
 * Top alignment in the vertical direction.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var top: ?VerticalAlignParam

/**
 * Bottom alignment in the vertical direction..
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var bottom: ?VerticalAlignParam

/**
 * Center alignment in the vertical direction.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var center: ?VerticalAlignParam

/**
 * Offset of the component under the anchor constraints.
 * <br>The value is the ratio of the distance to the left/upper anchor to the total distance between anchors.
 * @default horizontal: 0.5, vertical: 0.5 
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var bias: ?Bias

/**
 * Defines the constructor of AlignRuleOption.
 *
 * @param { ?HorizontalAlignParam } [left] - The param of left align.
 * @param { ?HorizontalAlignParam } [right] - The param of right align.
 * @param { ?HorizontalAlignParam } [middle] - The param of middle align.
 * @param { ?VerticalAlignParam } [top] - The param of top align.
 * @param { ?VerticalAlignParam } [bottom] - The param of bottom align.
 * @param { ?VerticalAlignParam } [center] - The param of center align.
 * @param { Bias } [bias] - Defines the bias ratio in horizontal and vertical direction.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        left!: ?HorizontalAlignParam = None,
        right!: ?HorizontalAlignParam = None,
        middle!: ?HorizontalAlignParam = None,
        top!: ?VerticalAlignParam = None,
        bottom!: ?VerticalAlignParam = None,
        center!: ?VerticalAlignParam = None,
        bias!: ?Bias = None
    )
}

/**
 * Defines the border style property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class EdgeStyles {
/**
 * top property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var top: ?BorderStyle

/**
 * right property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var right: ?BorderStyle

/**
 * bottom property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var bottom: ?BorderStyle

/**
 * left property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var left: ?BorderStyle

/**
 * Defines the constructor of EdgeStyles.
 *
 * @param { ?BorderStyle } [top] - Top border style.
 * @param { ?BorderStyle } [right] - Right border style.
 * @param { ?BorderStyle } [bottom] - Bottom border style.
 * @param { ?BorderStyle } [left] - Left border style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        top!: ?BorderStyle = None,
        right!: ?BorderStyle = None,
        bottom!: ?BorderStyle = None,
        left!: ?BorderStyle = None
    )
}

/**
 * Defines the options of Shadow.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class MultiShadowOptions {
    protected var impl: MultiShadowOptionsImpl = MultiShadowOptionsImpl()

/**
 * Shadow blur radius. Unit: vp.
 * <p>**NOTE**:
 * <br>A value less than or equal to 0 is handled as the default value.
 * </p>
 *
 * @default 20
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var radius: ?Length

/**
 * Offset on the x-axis. Unit: vp.
 *
 * @default 5
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offsetX: ?Length

/**
 * Offset on the y-axis. Unit: vp.
 *
 * @default 5
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offsetY: ?Length

    protected init(radius: ?Length, offsetX: ?Length, offsetY: ?Length)
}

/**
 * Provide a class for the text style of picker.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PickerTextStyle {
/**
 * Font color.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var color: ?ResourceColor

/**
 * Text style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var font: ?Font

/**
 * PickerTextStyle constructor.
 *
 * @param { ?ResourceColor } [color] - Font color.
 * @param { ?Font } [font] - Text style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(color!: ?ResourceColor = None, font!: ?Font = None)
}

/**
 * Provide a class for the text style of picker.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Font {
/**
 * font size.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var size: ?Length

/**
 * font weight.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var weight: ?FontWeight

/**
 * font family.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var family: ?ResourceStr

/**
 * font style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var style: ?FontStyle

/**
 * Font constructor.
 *
 * @param { ?Length } [size] - Font size.
 * @param { ?FontWeight } [weight] - Font weight.
 * @param { ?ResourceStr } [family] - Font family.
 * @param { ?FontStyle } [style] - Font style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(size!: ?Length = None, weight!: ?FontWeight = None, family!: ?ResourceStr = None,
        style!: ?FontStyle = None)
}

/**
 * Defines a bindable property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Bindable<T> {
/**
 * Defines value of the bindable property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public let value: T

/**
 * Defines the callback of the bindable property which will be invork when the property is changed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public let onchange: (T) -> Unit

/**
 * Bindable constructor.
 *
 * @param { T } value - value of the bindable property.
 * @param { (T) -> Unit } onchange - callback of the bindable property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(value: T, onchange: (T) -> Unit)
}

/**
 * TextContentControllerBase interface.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface TextContentControllerBase {}

/**
 * Obtains all attributes of the component with the specified ID.
 *
 * @param { String } id - ID of the component for which the event is to be sent.
 * @returns { String } All attributes of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func getInspectorByKey(id: String): String

/**
 * Get components tree.
 *
 * @returns { String } Components tree.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func getInspectorTree(): String

/**
 * Sends an event to the component with the specified ID.
 *
 * @param { String } id - ID of the component for which the event is to be sent.
 * @param { IntNative } action - Type of the event to be sent. The options are as follows: Click event: 10 LongClick: 11.
 * @param { String } params - Event parameters. If there is no parameter, pass an empty string "".
 * @returns { Bool } True if the event is sent successfully, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func sendEventByKey(id: String, action: IntNative, params: String): Bool

/**
 * Send touch event.
 *
 * @param { TouchObject } event - TouchObject to be sent.
 * @returns { Bool } True if the event is sent successfully, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func sendTouchEvent(event: TouchObject): Bool

/**
 * Send key event.
 *
 * @param { KeyEvent } event - KeyEvent to be sent.
 * @returns { Bool } True if the event is sent successfully, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func sendKeyEvent(event: KeyEvent): Bool

/**
 * Send mouse event.
 *
 * @param { MouseEvent } event - MouseEvent to be sent.
 * @returns { Bool } True if the event is sent successfully, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func sendMouseEvent(event: MouseEvent): Bool

/**
 * indexer align property.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum IndexerAlign {
/**
 * A dialog box is displayed on the right of the index bar.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Left
    | 
/**
 * A dialog box is displayed on the left of the index bar.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Right
    | ...
}

extend IndexerAlign <: Equatable<IndexerAlign> {
/**
 * Compares this IndexerAlign with another for equality.
 *
 * @param { IndexerAlign } other - The IndexerAlign to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: IndexerAlign): Bool
/**
 * Compares this IndexerAlign with another for inequality.
 *
 * @param { IndexerAlign } other - The IndexerAlign to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: IndexerAlign): Bool
}

/**
 * Declare the type of input box.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum InputType {
/**
 * Basic input mode.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Normal
    | 
/**
 * Pure digital input mode.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Number
    | 
/**
 * E-mail address input mode.
 *
 * <p><strong>NOTE</strong>:
 * <br>This mode accepts only digits, letters, underscores (_), dots (.),
 * and the following special characters: ! # $ % & ' " * + - / = ? ^ ` { | } ~ @ (which can only appear once)
 * </p>
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Email
    | 
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
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Password
    | 
/**
 * Phone number entry mode.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    PhoneNumber
    | ...
}

extend InputType <: Equatable<InputType> {
/**
 * Compares this InputType with another for equality.
 *
 * @param { InputType } other - The InputType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: InputType): Bool
/**
 * Compares this InputType with another for inequality.
 *
 * @param { InputType } other - The InputType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: InputType): Bool
}

/**
 * Declare the type of soft keyboard.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum EnterKeyType {
/**
 * Go.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Go
    | 
/**
 * Search component type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Search
    | 
/**
 * Send.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Send
    | 
/**
 * Next.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Next
    | 
/**
 * Done.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Done
    | 
/**
 * Showed as 'previous' pattern.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Previous
    | 
/**
 * Showed as 'new line' pattern.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    NewLine
    | ...
}

extend EnterKeyType <: Equatable<EnterKeyType> {
/**
 * Compares this EnterKeyType with another for equality.
 *
 * @param { EnterKeyType } other - The EnterKeyType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: EnterKeyType): Bool
/**
 * Compares this EnterKeyType with another for inequality.
 *
 * @param { EnterKeyType } other - The EnterKeyType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: EnterKeyType): Bool
}

/**
 * FlexDirection enum description.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FlexDirection {
/**
 * The main axis is consistent with the row direction as the layout mode.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Row
    | 
/**
 * The main axis is consistent with the column direction as the layout mode.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Column
    | 
/**
 * The layout is in the opposite direction to the Row direction.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    RowReverse
    | 
/**
 * Layout in the opposite direction to the column.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ColumnReverse
    | ...
}

extend FlexDirection <: Equatable<FlexDirection> {
/**
 * Compares this FlexDirection with another for equality.
 *
 * @param { FlexDirection } other - The FlexDirection to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: FlexDirection): Bool
/**
 * Compares this FlexDirection with another for inequality.
 *
 * @param { FlexDirection } other - The FlexDirection to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: FlexDirection): Bool
}

/**
 * FlexWrap enum description.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FlexWrap {
/**
 * The Flex container has a single row/column layout of elements, and children are allowed to go beyond the container.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    NoWrap
    | 
/**
 * The elements of the Flex container are arranged in multiple rows or columns, and the sub-items are allowed to exceed the container.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Wrap
    | 
/**
 * The elements of the Flex container are arranged in reverse multiple rows/columns, and children are allowed to exceed the container.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    WrapReverse
    | ...
}

extend FlexWrap <: Equatable<FlexWrap> {
/**
 * Compares this FlexWrap with another for equality.
 *
 * @param { FlexWrap } other - The FlexWrap to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: FlexWrap): Bool
/**
 * Compares this FlexWrap with another for inequality.
 *
 * @param { FlexWrap } other - The FlexWrap to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: FlexWrap): Bool
}

/**
 * FlexAlign enum description.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FlexAlign {
/**
 * Start edge of the window,
 * which is the left edge for left-to-right scripts and the right edge for right-to-left scripts.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Start
    | 
/**
 * The elements are centered in the direction of the principal axis,
 * and the first element is the same distance from the beginning of the row as the last element is from the end of the row.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Center
    | 
/**
 * End edge of the window,
 * which is the right edge for left-to-right scripts and the left edge for right-to-left scripts.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | 
/**
 * Elastic elements are evenly distributed in the direction of the Flex principal axis,
 * with the same distance between adjacent elements.
 * The first element aligns with the beginning of the line, and the last element aligns with the end of the line.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    SpaceBetween
    | 
/**
 * Elastic elements are evenly distributed in the direction of the Flex principal axis,
 *  with the same distance between adjacent elements. Half the distance between adjacent elements as the distance between
 * the first element and the distance between the last element and the end of the row.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    SpaceAround
    | 
/**
 * Elements in the Flex axis direction are evenly spaced.
 * The spacing between adjacent elements, the spacing between the first element and the beginning of the row,
 * and the spacing between the last element and the end of the row are the same.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    SpaceEvenly
    | ...
}

extend FlexAlign <: Equatable<FlexAlign> {
/**
 * Compares this FlexAlign with another for equality.
 *
 * @param { FlexAlign } other - The FlexAlign to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: FlexAlign): Bool
/**
 * Compares this FlexAlign with another for inequality.
 *
 * @param { FlexAlign } other - The FlexAlign to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: FlexAlign): Bool
}

/**
 * ItemAlign enum description.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ItemAlign {
/**
 * Defines menu automatically haptic feedback.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Auto
    | 
/**
 * Start edge of the window,
 * which is the left edge for left-to-right scripts and the right edge for right-to-left scripts.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Start
    | 
/**
 * The element is centered in the Flex container with the cross axis direction aligned.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Center
    | 
/**
 * End edge of the window,
 * which is the right edge for left-to-right scripts and the left edge for right-to-left scripts.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | 
/**
 * The source image's slices are stretched to fill the border box.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Stretch
    | 
/**
 * Element In a Flex container, the fill is stretched across the axis and, when no dimension is set, to the container size.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Baseline
    | ...
}

extend ItemAlign <: Equatable<ItemAlign> {
/**
 * Compares this ItemAlign with another for equality.
 *
 * @param { ItemAlign } other - The ItemAlign to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ItemAlign): Bool
/**
 * Compares this ItemAlign with another for inequality.
 *
 * @param { ItemAlign } other - The ItemAlign to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ItemAlign): Bool
}

/**
 * Declare the type of status button.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ToggleType {
/**
 * checkbox component type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Checkbox
    | 
/**
 * Switch component type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Switch
    | 
/**
 * Button component type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Button
    | ...
}

extend ToggleType <: Equatable<ToggleType> {
/**
 * Compares this ToggleType with another for equality.
 *
 * @param { ToggleType } other - The ToggleType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ToggleType): Bool
/**
 * Compares this ToggleType with another for inequality.
 *
 * @param { ToggleType } other - The ToggleType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ToggleType): Bool
}

/**
 * Outline Style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FontStyle {
/**
 * Default style.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Normal
    | 
/**
 * Italic style.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Italic
    | ...
}

extend FontStyle <: Equatable<FontStyle> {
/**
 * Compares this FontStyle with another for equality.
 *
 * @param { FontStyle } other - The FontStyle to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: FontStyle): Bool
/**
 * Compares this FontStyle with another for inequality.
 *
 * @param { FontStyle } other - The FontStyle to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: FontStyle): Bool
}

/**
 * Alignment enum description.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum Alignment {
/**
 * Top Start.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    TopStart
    | 
/**
 * The top is centered horizontally.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Top
    | 
/**
 * Top tail end.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    TopEnd
    | 
/**
 * Effective only for the starting edge.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Start
    | 
/**
 * Center sheet.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Center
    | 
/**
 * End edge.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | 
/**
 * Bottom starting end.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    BottomStart
    | 
/**
 * Bottom edge of the window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Bottom
    | 
/**
 * Bottom end.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    BottomEnd
    | ...
}

extend Alignment <: Equatable<Alignment> {
/**
 * Compares this Alignment with another for equality.
 *
 * @param { Alignment } other - The Alignment to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: Alignment): Bool
/**
 * Compares this Alignment with another for inequality.
 *
 * @param { Alignment } other - The Alignment to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: Alignment): Bool
}

/**
 * Defines the horizontal align rule options of relative container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum HorizontalAlign {
/**
 * Effective only for the starting edge.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Start
    | 
/**
 * Center alignment. The default alignment mode is used.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Center
    | 
/**
 * Effective only for the end edge.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | ...
}

extend HorizontalAlign <: Equatable<HorizontalAlign> {
/**
 * Compares this HorizontalAlign with another for equality.
 *
 * @param { HorizontalAlign } other - The HorizontalAlign to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: HorizontalAlign): Bool
/**
 * Compares this HorizontalAlign with another for inequality.
 *
 * @param { HorizontalAlign } other - The HorizontalAlign to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: HorizontalAlign): Bool
}

/**
 * VerticalAlign enum description.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum VerticalAlign {
/**
 * Top edge.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Top
    | 
/**
 * Center sheet.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Center
    | 
/**
 * Bottom edge.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Bottom
    | ...
}

extend VerticalAlign <: Equatable<VerticalAlign> {
/**
 * Compares this VerticalAlign with another for equality.
 *
 * @param { VerticalAlign } other - The VerticalAlign to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: VerticalAlign): Bool
/**
 * Compares this VerticalAlign with another for inequality.
 *
 * @param { VerticalAlign } other - The VerticalAlign to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: VerticalAlign): Bool
}

/**
 * The font weight of the text.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FontWeight {
/**
 * Normal font. Equivalent to a digital value of 400.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Normal
    | 
/**
 * Bold. Equivalent to a numeric value of 700.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Bold
    | 
/**
 * Defines a value that is heavier than [Inherited Value].
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Bolder
    | 
/**
 * Defines a lighter value than [Inherited Value].
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Lighter
    | 
/**
 * The sheet height is half of the screen height.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Medium
    | 
/**
 * Defines a more general value than [Inherited Value].
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Regular
    | 
/**
 * Defines a FontWeight value W100.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    W100
    | 
/**
 * Defines a FontWeight value W200.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    W200
    | 
/**
 * Defines a FontWeight value W300.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    W300
    | 
/**
 * Defines a FontWeight value W400.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    W400
    | 
/**
 * Defines a FontWeight value W500.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    W500
    | 
/**
 * Defines a FontWeight value W600.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    W600
    | 
/**
 * Defines a FontWeight value W700.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    W700
    | 
/**
 * Defines a FontWeight value W800.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    W800
    | 
/**
 * Defines a FontWeight value W900.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    W900
    | ...
}

extend FontWeight <: Equatable<FontWeight> {
/**
 * Compares this FontWeight with another for equality.
 *
 * @param { FontWeight } other - The FontWeight to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: FontWeight): Bool
/**
 * Compares this FontWeight with another for inequality.
 *
 * @param { FontWeight } other - The FontWeight to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: FontWeight): Bool
}

/**
 * Declare the location of the bar chart.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum BarPosition {
/**
 * Start edge of the window, which is the left edge for left-to-right
 * scripts and the right edge for right-to-left scripts.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Start
    | 
/**
 * End edge of the window, which is the right edge for left-to-right scripts
 * and the left edge for right-to-left scripts.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | ...
}

extend BarPosition <: Equatable<BarPosition> {
/**
 * Compares this BarPosition with another for equality.
 *
 * @param { BarPosition } other - The BarPosition to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: BarPosition): Bool
/**
 * Compares this BarPosition with another for inequality.
 *
 * @param { BarPosition } other - The BarPosition to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: BarPosition): Bool
}

/**
 * Declare the graphic format of the bar chart.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum BarMode {
/**
 * The width of each tab is determined by equally dividing the number of tabs by the bar width
 * (or bar height in the vertical layout).
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Fixed
    | 
/**
 * The width of each tab is determined by the actual layout. The tabs are scrollable in the following case:
 * In horizontal layout, the total width exceeds the tab bar width; in vertical layout,
 * the total height exceeds the tab bar height.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Scrollable
    | ...
}

extend BarMode <: Equatable<BarMode> {
/**
 * Compares this BarMode with another for equality.
 *
 * @param { BarMode } other - The BarMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: BarMode): Bool
/**
 * Compares this BarMode with another for inequality.
 *
 * @param { BarMode } other - The BarMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: BarMode): Bool
}

/**
 * Define the type of shadow.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ShadowType {
/**
 * Define a color type of shadow.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Color
    | 
/**
 * Blur.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Blur
    | ...
}

extend ShadowType <: Equatable<ShadowType> {
/**
 * Compares this ShadowType with another for equality.
 *
 * @param { ShadowType } other - The ShadowType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ShadowType): Bool
/**
 * Compares this ShadowType with another for inequality.
 *
 * @param { ShadowType } other - The ShadowType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ShadowType): Bool
}

/**
 * Type of text modifier.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextDecorationType {
/**
 * No transition animation for the modal.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | 
/**
 * Underline the words.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Underline
    | 
/**
 * Text is in all uppercase.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Overline
    | 
/**
 * A modifier line that passes through the text.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    LineThrough
    | ...
}

extend TextDecorationType <: Equatable<TextDecorationType> {
/**
 * Compares this TextDecorationType with another for equality.
 *
 * @param { TextDecorationType } other - The TextDecorationType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: TextDecorationType): Bool
/**
 * Compares this TextDecorationType with another for inequality.
 *
 * @param { TextDecorationType } other - The TextDecorationType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: TextDecorationType): Bool
}

/**
 * Alignment of text.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextAlign {
/**
 * Effective only for the starting edge.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Start
    | 
/**
 * Center sheet.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Center
    | 
/**
 * Effective only for the end edge.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | ...
}

extend TextAlign <: Equatable<TextAlign> {
/**
 * Compares this TextAlign with another for equality.
 *
 * @param { TextAlign } other - The TextAlign to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: TextAlign): Bool
/**
 * Compares this TextAlign with another for inequality.
 *
 * @param { TextAlign } other - The TextAlign to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: TextAlign): Bool
}

/**
 * Declare how text overflows.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextOverflow {
/**
 * When the text overflows its dimensions, the text will not be cropped.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Clip
    | 
/**
 * If the text overflows its dimensions, the text that cannot be displayed shall be replaced by ellipsis.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Ellipsis
    | 
/**
 * Sheet will not aovid keyboard.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | ...
}

extend TextOverflow <: Equatable<TextOverflow> {
/**
 * Compares this TextOverflow with another for equality.
 *
 * @param { TextOverflow } other - The TextOverflow to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: TextOverflow): Bool
/**
 * Compares this TextOverflow with another for inequality.
 *
 * @param { TextOverflow } other - The TextOverflow to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: TextOverflow): Bool
}

/**
 * Enum of word break.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum WordBreak {
/**
 * By default, CJK text can be wrapped between any 2 characters, and non-CJK text can only be wrapped in spaces.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Normal
    | 
/**
 * Non-CJK text be wrapped at any character.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    BreakAll
    | 
/**
 * Non-CJK text can be wrapped at any character
 * and if a complete word can be preserved in space breaks, the word must be kept on the line.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    BreakWord
    | ...
}

extend WordBreak <: Equatable<WordBreak> {
/**
 * Compares this WordBreak with another for equality.
 *
 * @param { WordBreak } other - The WordBreak to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: WordBreak): Bool
/**
 * Compares this WordBreak with another for inequality.
 *
 * @param { WordBreak } other - The WordBreak to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: WordBreak): Bool
}

/**
 * ImageRepeat enum description.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ImageRepeat {
/**
 * Do not draw the picture again.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    NoRepeat
    | 
/**
 * Repeat the drawing only on the horizontal axis.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    X
    | 
/**
 * Repeat the drawing only on the vertical axis.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Y
    | 
/**
 * Draw the picture repeatedly on both axes.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    XY
    | ...
}

extend ImageRepeat <: Equatable<ImageRepeat> {
/**
 * Compares this ImageRepeat with another for equality.
 *
 * @param { ImageRepeat } other - The ImageRepeat to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ImageRepeat): Bool
/**
 * Compares this ImageRepeat with another for inequality.
 *
 * @param { ImageRepeat } other - The ImageRepeat to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ImageRepeat): Bool
}

/**
 * ImageSize enum description.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ImageSize {
/**
 * Keep the aspect ratio to zoom out or zoom in so that the image is completely displayed within the display boundary.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Contain
    | 
/**
 * Keep the aspect ratio to zoom in or out the image so that both sides of the image are greater than or equal to the display boundary.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Cover
    | 
/**
 * Defines menu automatically haptic feedback.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Auto
    | ...
}

/**
 * enum Shadow style
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ShadowStyle {
/**
 * Defines the super small default shadow style.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    OuterDefaultXS
    | 
/**
 * Defines the small default shadow style.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    OuterDefaultSM
    | 
/**
 * Medium shadow.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    OuterDefaultMD
    | 
/**
 * Large shadow.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    OuterDefaultLG
    | 
/**
 * Floating small shadow.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    OuterFloatingSM
    | 
/**
 * Floating medium shadow.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    OuterFloatingMD
    | ...
}

extend ShadowStyle <: Equatable<ShadowStyle> {
/**
 * Compares this ShadowStyle with another for equality.
 *
 * @param { ShadowStyle } other - The ShadowStyle to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ShadowStyle): Bool
/**
 * Compares this ShadowStyle with another for inequality.
 *
 * @param { ShadowStyle } other - The ShadowStyle to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ShadowStyle): Bool
}

/**
 * Letter type in text
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextCase {
/**
 * The default is normal.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Normal
    | 
/**
 * The text is all lowercase.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    LowerCase
    | 
/**
 * The text is all uppercase.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    UpperCase
    | ...
}

extend TextCase <: Equatable<TextCase> {
/**
 * Compares this TextCase with another for equality.
 *
 * @param { TextCase } other - The TextCase to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: TextCase): Bool
/**
 * Compares this TextCase with another for inequality.
 *
 * @param { TextCase } other - The TextCase to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: TextCase): Bool
}

/**
 * Border Style
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum BorderStyle {
/**
 * Shows as a solid line.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Solid
    | 
/**
 * Shows as a series of short square dashed lines.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Dashed
    | 
/**
 * Dotted border. The radius of a dot is half of outlineWidth.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Dotted
    | ...
}

extend BorderStyle <: Equatable<BorderStyle> {
/**
 * Compares this BorderStyle with another for equality.
 *
 * @param { BorderStyle } other - The BorderStyle to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: BorderStyle): Bool
/**
 * Compares this BorderStyle with another for inequality.
 *
 * @param { BorderStyle } other - The BorderStyle to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: BorderStyle): Bool
}

/**
 * Image display mode.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ImageFit {
/**
 * Zoom in or out without maintaining the aspect ratio so that the image fills the display boundary.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Fill
    | 
/**
 * Keep the aspect ratio to zoom out or zoom in so that the image is completely displayed within the display boundary.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Contain
    | 
/**
 * Keep the aspect ratio to zoom in or out so that both sides of the image are greater than or equal to the display boundary.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Cover
    | 
/**
 * Modal modal automatically.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Auto
    | 
/**
 * None mode. Source and target staty in the original level in the hierarchy during geometry transition.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | 
/**
 * Keep the aspect ratio displayed, and the image zooms out or remains unchanged.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ScaleDown
    | ...
}

extend ImageFit <: Equatable<ImageFit> {
/**
 * Compares this ImageFit with another for equality.
 *
 * @param { ImageFit } other - The ImageFit to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ImageFit): Bool
/**
 * Compares this ImageFit with another for inequality.
 *
 * @param { ImageFit } other - The ImageFit to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ImageFit): Bool
}

/**
 * Sets the horizontal layout of elements.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum Direction {
/**
 * Elements are laid out from left to right.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Ltr
    | 
/**
 * Elements are laid out from right to left.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Rtl
    | 
/**
 * Automatically resize preview based on the layout area.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Auto
    | ...
}

extend Direction <: Equatable<Direction> {
/**
 * Compares this Direction with another for equality.
 *
 * @param { Direction } other - The Direction to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: Direction): Bool
/**
 * Compares this Direction with another for inequality.
 *
 * @param { Direction } other - The Direction to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: Direction): Bool
}

/**
 * Enumerates the scrolling directions.
 * Defines the allowed scroll directions for scrollable components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ScrollDirection {
/**
 * Only vertical scrolling is supported.
 * Can scrolling up and down, but not left and right.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Vertical
    | 
/**
 * Only horizontal scrolling is supported.
 * Can scrolling left and right, but not up and down.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Horizontal
    | ...
}

extend ScrollDirection <: Equatable<ScrollDirection> {
/**
 * Compares this ScrollDirection with another for equality.
 *
 * @param { ScrollDirection } other - The ScrollDirection to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ScrollDirection): Bool
/**
 * Compares this ScrollDirection with another for inequality.
 *
 * @param { ScrollDirection } other - The ScrollDirection to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ScrollDirection): Bool
}

/**
 * Content scroll direction.
 * Specifies the orientation of scroll bars in scrollable components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ScrollBarDirection {
/**
 * Vertical scrolling is supported.
 * The scroll bar is oriented vertically, indicating content that can be scrolled up and down.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Vertical
    | 
/**
 * Horizontal scrolling is supported.
 * The scroll bar is oriented horizontally, indicating content that can be scrolled left and right.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Horizontal
    | ...
}

extend ScrollBarDirection <: Equatable<ScrollBarDirection> {
/**
 * Compares this ScrollBarDirection with another for equality.
 *
 * @param { ScrollBarDirection } other - The ScrollBarDirection to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ScrollBarDirection): Bool
/**
 * Compares this ScrollBarDirection with another for inequality.
 *
 * @param { ScrollBarDirection } other - The ScrollBarDirection to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ScrollBarDirection): Bool
}

/**
 * Defines the different interaction modes that can trigger slider value changes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SliderChangeMode {
/**
 * Triggered when the user initially interacts with the slider thumb control.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Begin
    | 
/**
 * Triggered continuously while the user is dragging the slider thumb to change its value.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Moving
    | 
/**
 * The user stops dragging the slider by lifting their finger or releasing the mouse device.
 * <p><strong>NOTE</strong>:
 * <br>The trigger occurs when an invalid value is restored to the default value, that is, when the value is set to
 * less than min or greater than max.
 * </p>
 * Triggered when the user completes their interaction with the slider, releasing the thumb control.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | 
/**
 * Triggered when the user directly interacts with the slider track rather than the thumb,
 * causing an immediate jump to the selected position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Click
    | ...
}

extend SliderChangeMode <: Equatable<SliderChangeMode> {
/**
 * Compares this SliderChangeMode with another for equality.
 *
 * @param { SliderChangeMode } other - The SliderChangeMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SliderChangeMode): Bool
/**
 * Compares this SliderChangeMode with another for inequality.
 *
 * @param { SliderChangeMode } other - The SliderChangeMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SliderChangeMode): Bool
}

/**
 * Style of the slider thumb and track.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SliderStyle {
/**
 * The thumb is on the track.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    OutSet
    | 
/**
 * The thumb is in the track.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    InSet
    | ...
}

extend SliderStyle <: Equatable<SliderStyle> {
/**
 * Compares this SliderStyle with another for equality.
 *
 * @param { SliderStyle } other - The SliderStyle to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SliderStyle): Bool
/**
 * Compares this SliderStyle with another for inequality.
 *
 * @param { SliderStyle } other - The SliderStyle to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SliderStyle): Bool
}

/**
 * The interpolation effect of the image.
 * Defines the quality level of image interpolation algorithms used when scaling images.
 * Higher interpolation quality results in smoother images but may impact rendering performance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ImageInterpolation {
/**
 * Do not use interpolated image data.
 * Images are rendered using nearest-neighbor algorithm which is fastest but may result in pixelation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | 
/**
 * High usage of interpolated image data may affect the speed of image rendering.
 * Uses high-quality interpolation algorithms such as bicubic for smooth image scaling,
 * but may reduce rendering performance, especially with large images or animations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    High
    | 
/**
 * Interpolated image data is used moderately.
 * Balances image quality and rendering performance with moderate interpolation algorithms.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Medium
    | 
/**
 * Low usage of interpolated image data.
 * Uses basic interpolation with lower quality but better performance compared to High setting.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Low
    | ...
}

extend ImageInterpolation <: Equatable<ImageInterpolation> {
/**
 * Compares this ImageInterpolation with another for equality.
 *
 * @param { ImageInterpolation } other - The ImageInterpolation to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ImageInterpolation): Bool
/**
 * Compares this ImageInterpolation with another for inequality.
 *
 * @param { ImageInterpolation } other - The ImageInterpolation to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ImageInterpolation): Bool
}

/**
 * Used to set the status of the scroll bar.
 * Controls the visibility behavior of scroll bars in scrollable components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum BarState {
/**
 * The scroll bar is completely hidden and never shown, regardless of user interaction.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Off
    | 
/**
 * On-demand display (displayed when you touch it and disappears after 2 seconds).
 * The scroll bar is hidden by default, but appears when the user interacts with the scrollable area
 * and automatically disappears after a short timeout period.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Auto
    | 
/**
 * The scroll bar is always visible and remains on screen regardless of user interaction.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    On
    | ...
}

extend BarState <: Equatable<BarState> {
/**
 * Compares this BarState with another for equality.
 *
 * @param { BarState } other - The BarState to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: BarState): Bool
/**
 * Compares this BarState with another for inequality.
 *
 * @param { BarState } other - The BarState to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: BarState): Bool
}

/**
 * Controls the display or hide of the current component.
 * Defines the visibility states of UI components, affecting both rendering and layout behavior.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum Visibility {
/**
 * Resident display.
 * The component is fully visible and participates in both rendering and layout calculations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Visible
    | 
/**
 * Hide, but participate in layout for placeholder.
 * The component is visually hidden but still occupies space in the layout as a placeholder.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Hidden
    | 
/**
 * Hides but does not participate in layout and does not take place.
 * The component is completely hidden, does not render, and does not occupy any space in the layout.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | ...
}

extend Visibility <: Equatable<Visibility> {
/**
 * Compares this Visibility with another for equality.
 *
 * @param { Visibility } other - The Visibility to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: Visibility): Bool
/**
 * Compares this Visibility with another for inequality.
 *
 * @param { Visibility } other - The Visibility to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: Visibility): Bool
}

/**
 * LineCapStyle enum description.
 * Defines the style of the endpoints of lines and paths when they are stroked.
 * Determines how the ends of lines are rendered in drawing operations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum LineCapStyle {
/**
 * The stroke ends exactly at the path endpoint with no additional decoration.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Butt
    | 
/**
 * Adds a semicircular cap to each end of the stroke, extending beyond the path endpoint by half the stroke width.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Round
    | 
/**
 * Adds a rectangular cap to each end of the stroke, extending beyond the path endpoint by half the stroke width.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Square
    | ...
}

extend LineCapStyle <: Equatable<LineCapStyle> {
/**
 * Compares this LineCapStyle with another for equality.
 *
 * @param { LineCapStyle } other - The LineCapStyle to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: LineCapStyle): Bool
/**
 * Compares this LineCapStyle with another for inequality.
 *
 * @param { LineCapStyle } other - The LineCapStyle to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: LineCapStyle): Bool
}

/**
 * Type of progress bar
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ProgressType {
/**
 * Linear progress bar style.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Linear
    | 
/**
 * Ring progress bar.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Ring
    | 
/**
 * Eclipse progress bar.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Eclipse
    | 
/**
 * ScaleRing progress bar.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ScaleRing
    | 
/**
 * Capsule progress bar.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Capsule
    | ...
}

extend ProgressType <: Equatable<ProgressType> {
/**
 * Compares this ProgressType with another for equality.
 *
 * @param { ProgressType } other - The ProgressType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ProgressType): Bool
/**
 * Compares this ProgressType with another for inequality.
 *
 * @param { ProgressType } other - The ProgressType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ProgressType): Bool
}

/**
 * Defines the drag preview mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ImageRenderMode {
/**
 * Render according to the original image, including colors.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Original
    | 
/**
 * Render the image as a template image, ignoring the color information of the image.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Template
    | ...
}

extend ImageRenderMode <: Equatable<ImageRenderMode> {
/**
 * Compares this ImageRenderMode with another for equality.
 *
 * @param { ImageRenderMode } other - The ImageRenderMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ImageRenderMode): Bool
/**
 * Compares this ImageRenderMode with another for inequality.
 *
 * @param { ImageRenderMode } other - The ImageRenderMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ImageRenderMode): Bool
}

/**
 * Defines the navigation types for page transitions in application routing.
 * Controls how the navigation stack is modified during page transitions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum NavigationType {
/**
 * Pushes a new page onto the navigation stack, preserving the current page in the stack.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Push
    | 
/**
 * Replaces the current page in the navigation stack with a new page, removing the current page from the stack.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Replace
    | 
/**
 * Navigates back to the previous page by popping the current page from the navigation stack.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Back
    | ...
}

extend NavigationType <: Equatable<NavigationType> {
/**
 * Compares this NavigationType with another for equality.
 *
 * @param { NavigationType } other - The NavigationType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: NavigationType): Bool
/**
 * Compares this NavigationType with another for inequality.
 *
 * @param { NavigationType } other - The NavigationType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: NavigationType): Bool
}

/**
 * Declare the size of the swiper on the spindle.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SwiperDisplayMode {
/**
 * The source image's slices are stretched to fill the border box.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Stretch | ...
}

extend SwiperDisplayMode <: Equatable<SwiperDisplayMode> {
/**
 * Compares this SwiperDisplayMode with another for equality.
 *
 * @param { SwiperDisplayMode } other - The SwiperDisplayMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SwiperDisplayMode): Bool
/**
 * Compares this SwiperDisplayMode with another for inequality.
 *
 * @param { SwiperDisplayMode } other - The SwiperDisplayMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SwiperDisplayMode): Bool
}

/**
 * Sets the animation playback mode. By default, the animation starts to play again after the playback is complete.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum Curve {
/**
 * Indicates that the speed of the animation is the same from start to finish.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Linear
    | 
/**
 * Indicates that the animation starts at a low speed, then accelerates, and then slows down before it ends, CubicBezier(0.25, 0.1, 0.25, 1.0).
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Ease
    | 
/**
 * Indicates that the animation starts at a low speed, CubicBezier(0.42, 0.0, 1.0, 1.0).
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    EaseIn
    | 
/**
 * Indicates that the animation ends at a low speed, CubicBezier(0.0, 0.0, 0.58, 1.0).
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    EaseOut
    | 
/**
 * Indicates that the animation starts and ends at a slow speed, CubicBezier(0.42, 0.0, 0.58, 1.0).
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    EaseInOut
    | 
/**
 * Animation curve that starts slowly, accelerates in the middle, and ends slowly.
 * Provides a natural and pleasing transition effect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    FastOutSlowIn
    | 
/**
 * Animation curve that starts at a constant speed and decelerates towards the end.
 * Useful for elements that need to smoothly come to rest.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    LinearOutSlowIn
    | 
/**
 * Animation curve that accelerates quickly at the start and maintains constant speed towards the end.
 * Good for elements that need to quickly appear and then move steadily.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    FastOutLinearIn
    | 
/**
 * Animation curve with strong initial speed that rapidly decelerates.
 * Creates a dramatic entrance effect for elements.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ExtremeDeceleration
    | 
/**
 * Animation curve with a sharp, pronounced acceleration and deceleration.
 * Provides crisp and decisive motion for UI elements.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Sharp
    | 
/**
 * Animation curve designed to create rhythmic and harmonious transitions.
 * Well-suited for sequences of animations that need to feel coordinated.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Rhythm
    | 
/**
 * Animation curve with gentle acceleration and deceleration.
 * Creates a soft and fluid motion that is pleasing to the eye.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Smooth
    | 
/**
 * Damping curve, CubicBezier(0.2, 0.0, 0.2, 1.0).
 * Animation curve that mimics physical damping behavior.
 * Provides a natural spring-like motion that overshoots slightly before settling.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Friction
    | ...
}

extend Curve <: Equatable<Curve> {
/**
 * Compares this Curve with another for equality.
 *
 * @param { Curve } other - The Curve to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: Curve): Bool
/**
 * Compares this Curve with another for inequality.
 *
 * @param { Curve } other - The Curve to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: Curve): Bool
}

/**
 * Defines the visual effects that occur when scrolling reaches the boundary of scrollable components.
 * Controls how the UI responds when users attempt to scroll beyond content boundaries.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum EdgeEffect {
/**
 * Elastic physical action, sliding to the edge can continue to slide for a distance based on the initial speed or touch event, and spring back when released.
 * Provides a spring-like resistance effect that gives tactile feedback when reaching content boundaries.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Spring
    | 
/**
 * Shows a fading effect at the content boundaries to indicate there is no more content to scroll to.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Fade
    | 
/**
 * Sliding to the edge has no effect.
 * Disables any visual feedback when reaching content boundaries, scrolling simply stops without any effect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | ...
}

extend EdgeEffect <: Equatable<EdgeEffect> {
/**
 * Compares this EdgeEffect with another for equality.
 *
 * @param { EdgeEffect } other - The EdgeEffect to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: EdgeEffect): Bool
/**
 * Compares this EdgeEffect with another for inequality.
 *
 * @param { EdgeEffect } other - The EdgeEffect to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: EdgeEffect): Bool
}

/**
 * Defines the edges or sides of a component or container for positioning and alignment operations.
 * Represents specific boundaries in layout calculations and component placement.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum Edge {
/**
 * The top is centered horizontally.
 * Refers to the top edge of a component or container, typically used for positioning elements at the top center.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Top
    | 
/**
 * Align the head of the cross axis direction.
 * Refers to the start edge in the cross axis direction, which is left in LTR layouts and right in RTL layouts.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Start
    | 
/**
 * The bottom is centered horizontally.
 * Refers to the bottom edge of a component or container, typically used for positioning elements at the bottom center.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Bottom
    | 
/**
 * Align the end of the cross axis direction.
 * Refers to the end edge in the cross axis direction, which is right in LTR layouts and left in RTL layouts.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | ...
}

extend Edge <: Equatable<Edge> {
/**
 * Compares this Edge with another for equality.
 *
 * @param { Edge } other - The Edge to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: Edge): Bool
/**
 * Compares this Edge with another for inequality.
 *
 * @param { Edge } other - The Edge to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: Edge): Bool
}

/**
 * Defines the positioning options for components relative to their anchor or container.
 * Used for specifying where popups, tooltips, and other overlay elements should appear.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum Placement {
/**
 * Positions the component to the left of its anchor point or container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Left
    | 
/**
 * Positions the component to the right of its anchor point or container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Right
    | 
/**
 * Positions the component above its anchor point or container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Top
    | 
/**
 * Positions the component below its anchor point or container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Bottom
    | 
/**
 * Positions the component above and to the left of its anchor point or container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    TopLeft
    | 
/**
 * Positions the component above and to the right of its anchor point or container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    TopRight
    | 
/**
 * Positions the component below and to the left of its anchor point or container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    BottomLeft
    | 
/**
 * Positions the component below and to the right of its anchor point or container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    BottomRight
    | 
/**
 * Positions the component to the left and above its anchor point or container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    LeftTop
    | 
/**
 * Positions the component to the left and below its anchor point or container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    LeftBottom
    | 
/**
 * Positions the component to the right and above its anchor point or container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    RightTop
    | 
/**
 * Positions the component to the right and below its anchor point or container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    RightBottom
    | ...
}

extend Placement <: Equatable<Placement> {
/**
 * Compares this Placement with another for equality.
 *
 * @param { Placement } other - The Placement to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: Placement): Bool
/**
 * Compares this Placement with another for inequality.
 *
 * @param { Placement } other - The Placement to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: Placement): Bool
}

/**
 * Defines how the corners between connected line segments are rendered in path drawing.
 * Controls the visual appearance of joints in shapes and paths for consistent styling.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum LineJoinStyle {
/**
 * Joins path segments with a straight line between the outer edges of the strokes,
 * creating a sharp, angular corner at the joint.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Miter
    | 
/**
 * Joins path segments by extending the outer edges of the strokes until they meet,
 * creating a pointed corner that extends beyond the original path corner.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Round
    | 
/**
 * Joins path segments by connecting the outer edges with a circular arc,
 * creating a smooth, rounded corner at the joint.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Bevel
    | ...
}

extend LineJoinStyle <: Equatable<LineJoinStyle> {
/**
 * Compares this LineJoinStyle with another for equality.
 *
 * @param { LineJoinStyle } other - The LineJoinStyle to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: LineJoinStyle): Bool
/**
 * Compares this LineJoinStyle with another for inequality.
 *
 * @param { LineJoinStyle } other - The LineJoinStyle to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: LineJoinStyle): Bool
}

/**
 * Sets the image smoothness attribute.
 * This enum defines the quality levels for image smoothing operations.
 * Higher quality levels result in better image quality but may require more processing time.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ImageSmoothingQuality {
/**
 * Low quality image smoothing.
 * Provides faster performance but lower image quality.
 * This is the default setting.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Low
    | 
/**
 * Medium quality image smoothing.
 * Balances performance and image quality.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Medium
    | 
/**
 * High quality image smoothing.
 * Provides the best image quality but may require more processing time.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    High
    | ...
}

extend ImageSmoothingQuality <: Equatable<ImageSmoothingQuality> {
/**
 * Compares this ImageSmoothingQuality with another for equality.
 *
 * @param { ImageSmoothingQuality } other - The ImageSmoothingQuality to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ImageSmoothingQuality): Bool
/**
 * Compares this ImageSmoothingQuality with another for inequality.
 *
 * @param { ImageSmoothingQuality } other - The ImageSmoothingQuality to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ImageSmoothingQuality): Bool
}

/**
 * Controls how gestures are recognized and prioritized when multiple gestures overlap or compete.
 * Defines the strategy for handling gesture recognition in complex UI interactions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum GestureMask {
/**
 * High-priority response to the current gesture.When the current gesture fails to be recognized, other gesture responses are triggered.For gestures with the same priority, responses are performed based on the recognition sequence.
 * Standard gesture recognition mode where gestures are processed in priority order.
 * If a high-priority gesture is not recognized, lower-priority gestures are given a chance to be recognized.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Normal
    | 
/**
 * Current gesture takes precedence over nested or internal gestures.
 * Useful for ensuring parent gestures are recognized before child component gestures.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    IgnoreInternal
    | ...
}

extend GestureMask <: Equatable<GestureMask> {
/**
 * Compares this GestureMask with another for equality.
 *
 * @param { GestureMask } other - The GestureMask to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: GestureMask): Bool
/**
 * Compares this GestureMask with another for inequality.
 *
 * @param { GestureMask } other - The GestureMask to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: GestureMask): Bool
}

/**
 * Defines the allowed directions for swipe gesture recognition.
 * Controls which axes a swipe gesture can be detected on.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SwipeDirection {
/**
 * Swipe gesture is recognized only when the movement is primarily horizontal (left or right).
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Horizontal
    | 
/**
 * Swipe gesture is recognized only when the movement is primarily vertical (up or down).
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Vertical
    | 
/**
 * Swipe gesture is recognized regardless of the direction of movement.
 * Provides the most flexible swipe detection for any directional swipe.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    All
    | ...
}

extend SwipeDirection <: Equatable<SwipeDirection> {
/**
 * Compares this SwipeDirection with another for equality.
 *
 * @param { SwipeDirection } other - The SwipeDirection to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SwipeDirection): Bool
/**
 * Compares this SwipeDirection with another for inequality.
 *
 * @param { SwipeDirection } other - The SwipeDirection to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SwipeDirection): Bool
}

/**
 * Defines the allowed directions for swipe gesture recognition.
 * Controls which axes a swipe gesture can be detected on.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum PanDirection {
/**
 * No transition animation for the modal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | 
/**
 * Pan gesture recognizes movement to the left.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Left
    | 
/**
 * Pan gesture recognizes movement to the right.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Right
    | 
/**
 * Pan gesture recognizes horizontal movement (both left and right).
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Horizontal
    | 
/**
 * Pan gesture recognizes upward movement.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Up
    | 
/**
 * Pan gesture recognizes downward movement.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Down
    | 
/**
 * Pan gesture recognizes vertical movement (both up and down).
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Vertical
    | 
/**
 * Pan gesture recognizes movement in all directions (horizontal and vertical).
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    All
    | 
/**
 * Computed direction based on a numeric value.
 * Supports logical AND and logical OR operations with other PanDirection values.
 *
 * @param { UInt32 } value - The computed direction value.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
] 
Computed(UInt32)
    | ...

/**
 * Perform a logical OR(|) operation on PanDirection.
 * Combines two PanDirection values to create a new direction that includes both.
 *
 * @param { PanDirection } right - The PanDirection to perform OR operation with.
 * @returns { PanDirection }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
        public operator func |(right: PanDirection): PanDirection

/**
 * Perform a logical AND(&) operation on PanDirection.
 * Creates a new direction that represents the intersection of two PanDirection values.
 *
 * @param { PanDirection } right - The PanDirection to perform AND operation with.
 * @returns { PanDirection }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
        public operator func &(right: PanDirection): PanDirection
}

extend PanDirection <: Equatable<PanDirection> {
/**
 * Compares this PanDirection with another for equality.
 *
 * @param { PanDirection } other - The PanDirection to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: PanDirection): Bool
/**
 * Compares this PanDirection with another for inequality.
 *
 * @param { PanDirection } other - The PanDirection to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: PanDirection): Bool
}

extend PanDirection {}

/**
 * Defines how gestures are processed and recognized within the UI framework.
 * Controls the behavior of gesture detection and event handling for interactive components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum GestureMode {
/**
 * Parallel recognition mode.
 * Multiple gestures can be recognized simultaneously, allowing for complex multi-gesture interactions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Parallel
    | 
/**
 * Exclusive recognition mode.
 * Only one gesture is recognized at a time, with higher priority gestures taking precedence.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Exclusive
    | ...
}

extend GestureMode <: Equatable<GestureMode> {
/**
 * Compares this GestureMode with another for equality.
 *
 * @param { GestureMode } other - The GestureMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: GestureMode): Bool
/**
 * Compares this GestureMode with another for inequality.
 *
 * @param { GestureMode } other - The GestureMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: GestureMode): Bool
}

/**
 * Defines the primary direction or orientation for layout arrangements and component organization.
 * Used to specify the main axis in layout containers and directional operations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum Axis {
/**
 * Components are arranged from top to bottom along the vertical axis.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Vertical
    | 
/**
 * Components are arranged from left to right along the horizontal axis.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Horizontal
    | ...
}

extend Axis <: Equatable<Axis> {
/**
 * Compares this Axis with another for equality.
 *
 * @param { Axis } other - The Axis to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: Axis): Bool
/**
 * Compares this Axis with another for inequality.
 *
 * @param { Axis } other - The Axis to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: Axis): Bool
}

/**
 * Response type for context menu.
 * This enum defines the user interaction methods that can trigger a context menu.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ResponseType {
/**
 * Context menu is triggered by a right mouse click.
 * On touch devices, this corresponds to a long press gesture.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    RightClick
    | 
/**
 * Context menu is triggered by a long press gesture.
 * On mouse-enabled devices, this may correspond to a right click.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    LongPress
    | ...
}

extend ResponseType <: Equatable<ResponseType> {
/**
 * Compares this ResponseType with another for equality.
 *
 * @param { ResponseType } other - The ResponseType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ResponseType): Bool
/**
 * Compares this ResponseType with another for inequality.
 *
 * @param { ResponseType } other - The ResponseType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ResponseType): Bool
}

/**
 * Indicates the share option.
 * Defines the scope and availability of content sharing functionality for components.
 * Controls how and where users can share or copy content from interactive elements.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum CopyOptions {
/**
 * Not allow share.
 * Content sharing is completely disabled for the component.
 * Users cannot copy or share content through standard sharing mechanisms.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | 
/**
 * Content can only be shared within the current application context.
 * Limits sharing to internal app features and prevents external sharing.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    InApp
    | 
/**
 * Content can be shared anywhere on the local device, including other applications.
 * Provides the broadest sharing capability within the device boundaries.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    LocalDevice
    | ...
}

extend CopyOptions <: Equatable<CopyOptions> {
/**
 * Compares this CopyOptions with another for equality.
 *
 * @param { CopyOptions } other - The CopyOptions to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: CopyOptions): Bool
/**
 * Compares this CopyOptions with another for inequality.
 *
 * @param { CopyOptions } other - The CopyOptions to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: CopyOptions): Bool
}

/**
 * Defines the event source type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TouchType {
/**
 * Triggered when the finger is pressed.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Down
    | 
/**
 * Triggered when the finger is raised.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Up
    | 
/**
 * Triggered when the finger presses and moves on the screen.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Move
    | 
/**
 * Triggers when the touch event is canceled.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Cancel
    | 
/**
 * Unknown touch type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Unknown
    | ...
}

extend TouchType <: Equatable<TouchType> {
/**
 * Compares this TouchType with another for equality.
 *
 * @param { TouchType } other - The TouchType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: TouchType): Bool
/**
 * Compares this TouchType with another for inequality.
 *
 * @param { TouchType } other - The TouchType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: TouchType): Bool
}

/**
 * Sets the sidebar display style.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SideBarContainerType {
/**
 * The sidebar is embedded within the container.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Embed
    | 
/**
 * The sheet is displayed at the top of the window corresponding to the current **UIContext** instance,
 * above all pages. It is displayed at the same level as dialog boxes.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Overlay
    | 
/**
 * Defines menu automatically haptic feedback.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Auto
    | ...
}

extend SideBarContainerType <: Equatable<SideBarContainerType> {
/**
 * Compares this SideBarContainerType with another for equality.
 *
 * @param { SideBarContainerType } other - The SideBarContainerType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SideBarContainerType): Bool
/**
 * Compares this SideBarContainerType with another for inequality.
 *
 * @param { SideBarContainerType } other - The SideBarContainerType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SideBarContainerType): Bool
}

/**
 * Sets the sidebar position.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SideBarPosition {
/**
 * Effective only for the starting edge.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Start
    | 
/**
 * Effective only for the end edge.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | ...
}

extend SideBarPosition <: Equatable<SideBarPosition> {
/**
 * Compares this SideBarPosition with another for equality.
 *
 * @param { SideBarPosition } other - The SideBarPosition to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SideBarPosition): Bool
/**
 * Compares this SideBarPosition with another for inequality.
 *
 * @param { SideBarPosition } other - The SideBarPosition to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SideBarPosition): Bool
}

/**
 * Defines the event source type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SourceType {
/**
 * Unknown device type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Unknown
    | 
/**
 * The mouse type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Mouse
    | 
/**
 * The touch screen type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    TouchScreen
    | ...
}

extend SourceType <: Equatable<SourceType> {
/**
 * Compares this SourceType with another for equality.
 *
 * @param { SourceType } other - The SourceType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SourceType): Bool
/**
 * Compares this SourceType with another for inequality.
 *
 * @param { SourceType } other - The SourceType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SourceType): Bool
}

/**
 * Mouse button of the click event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum MouseButton {
/**
 * No mouse button.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | 
/**
 * Mouse left button.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Left
    | 
/**
 * Mouse right button.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Right
    | 
/**
 * Mouse middle button.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Middle
    | 
/**
 * Mouse back button.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Back
    | 
/**
 * Mouse forward button.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Forward
    | ...
}

extend MouseButton <: Equatable<MouseButton> {
/**
 * Compares this MouseButton with another for equality.
 *
 * @param { MouseButton } other - The MouseButton to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: MouseButton): Bool
/**
 * Compares this MouseButton with another for inequality.
 *
 * @param { MouseButton } other - The MouseButton to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: MouseButton): Bool
}

/**
 * Mouse action of the click event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum MouseAction {
/**
 * No mouse action.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | 
/**
 * Triggered when the mouse button is pressed.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Press
    | 
/**
 * Triggered when the mouse button is released.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Release
    | 
/**
 * Triggered when the mouse is moved.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Move
    | 
/**
 * Triggered when the mouse hovers over an element.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Hover
    | ...
}

extend MouseAction <: Equatable<MouseAction> {
/**
 * Compares this MouseAction with another for equality.
 *
 * @param { MouseAction } other - The MouseAction to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: MouseAction): Bool
/**
 * Compares this MouseAction with another for inequality.
 *
 * @param { MouseAction } other - The MouseAction to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: MouseAction): Bool
}

/**
 * Type of the input device that triggers the current key, such as the keyboard or handle.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum KeySource {
/**
 * The input device type is unknown.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Unknown
    | 
/**
 * Set device type to keyboard.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Keyboard
    | ...
}

extend KeySource <: Equatable<KeySource> {
/**
 * Compares this KeySource with another for equality.
 *
 * @param { KeySource } other - The KeySource to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: KeySource): Bool
/**
 * Compares this KeySource with another for inequality.
 *
 * @param { KeySource } other - The KeySource to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: KeySource): Bool
}

/**
 * Type of a key.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum KeyType {
/**
 * Unknown key type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Unknown
    | 
/**
 * Key is pressed.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Down
    | 
/**
 * Key is released.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Up
    | ...
}

extend KeyType <: Equatable<KeyType> {
/**
 * Compares this KeyType with another for equality.
 *
 * @param { KeyType } other - The KeyType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: KeyType): Bool
/**
 * Compares this KeyType with another for inequality.
 *
 * @param { KeyType } other - The KeyType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: KeyType): Bool
}

/**
 * Modifier key for hot key.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ModifierKey {
/**
 * Ctrl key.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Ctrl
    | 
/**
 * Shift key.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Shift
    | 
/**
 * Alt key.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Alt
    | ...
}

extend ModifierKey <: Equatable<ModifierKey> {
/**
 * Compares this ModifierKey with another for equality.
 *
 * @param { ModifierKey } other - The ModifierKey to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ModifierKey): Bool
/**
 * Compares this ModifierKey with another for inequality.
 *
 * @param { ModifierKey } other - The ModifierKey to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ModifierKey): Bool
}

/**
 * Function key for hot key.
 * This enum defines the standard function keys that can be used in keyboard shortcuts and hotkeys.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FunctionKey {
/**
 * Escape key. Typically used to cancel or exit current operation.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Esc
    | 
/**
 * F1 function key. Often used for help functionality.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    F1
    | 
/**
 * F2 function key. Commonly used for renaming files or objects.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    F2
    | 
/**
 * F3 function key. Frequently used for search functionality.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    F3
    | 
/**
 * F4 function key. Often used for closing tabs or windows.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    F4
    | 
/**
 * F5 function key. Commonly used for refreshing or reloading content.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    F5
    | 
/**
 * F6 function key. Often used for navigating to address bars or search fields.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    F6
    | 
/**
 * F7 function key. Sometimes used for spell checking or caret browsing.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    F7
    | 
/**
 * F8 function key. Frequently used for entering safe mode during system boot.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    F8
    | 
/**
 * F9 function key. Often used for refreshing in email clients or debugging.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    F9
    | 
/**
 * F10 function key. Commonly used for activating menu bar or context menu.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    F10
    | 
/**
 * F11 function key. Frequently used for toggling full-screen mode.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    F11
    | 
/**
 * F12 function key. Often used for developer tools or saving documents.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    F12
    | 
/**
 * Tab key. Used for moving focus between UI elements or inserting tab characters.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Tab
    | ...
}

extend FunctionKey <: Equatable<FunctionKey> {
/**
 * Compares this FunctionKey with another for equality.
 *
 * @param { FunctionKey } other - The FunctionKey to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: FunctionKey): Bool
/**
 * Compares this FunctionKey with another for inequality.
 *
 * @param { FunctionKey } other - The FunctionKey to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: FunctionKey): Bool
}

/**
 * DataPanelType enum
 * This enum defines the types of data panels available for displaying data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum DataPanelType {
/**
 * Circle type data panel. Displays data in a circular format.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Circle
    | 
/**
 * Line type data panel. Displays data in a linear format.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Line
    | ...
}

extend DataPanelType <: Equatable<DataPanelType> {
/**
 * Compares this DataPanelType with another for equality.
 *
 * @param { DataPanelType } other - The DataPanelType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: DataPanelType): Bool
/**
 * Compares this DataPanelType with another for inequality.
 *
 * @param { DataPanelType } other - The DataPanelType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: DataPanelType): Bool
}

/**
 * Item state enum.
 * This enum defines the various states an item can be in.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ItemState {
/**
 * Normal state. The item is in its default, active state.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Normal
    | 
/**
 * Disabled state. The item is not interactive and typically appears dimmed.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Disabled
    | 
/**
 * Waiting state. The item is in a pending state, often showing a loading indicator.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Waiting
    | 
/**
 * Skip state. The item is bypassed or ignored in the current context.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Skip
    | ...
}

extend ItemState <: Equatable<ItemState> {
/**
 * Compares this ItemState with another for equality.
 *
 * @param { ItemState } other - The ItemState to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ItemState): Bool
/**
 * Compares this ItemState with another for inequality.
 *
 * @param { ItemState } other - The ItemState to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ItemState): Bool
}

/**
 * The refresh status of the pull-down refresh component.
 * This enum defines the various states during a pull-to-refresh interaction.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum RefreshStatus {
/**
 * Inactive state. No refresh action is taking place.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Inactive
    | 
/**
 * Drag state. User is pulling down, but the pull distance is less than the refresh threshold.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Drag
    | 
/**
 * Over-drag state. The pull-down exceeds the refresh distance threshold.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    OverDrag
    | 
/**
 * Refresh state. After pull-down, the component rebounds to the refresh distance and begins refreshing.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Refresh
    | 
/**
 * Done state. Refresh is complete, and the component is returning to its initial state.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Done
    | ...
}

extend RefreshStatus <: Equatable<RefreshStatus> {
/**
 * Compares this RefreshStatus with another for equality.
 *
 * @param { RefreshStatus } other - The RefreshStatus to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: RefreshStatus): Bool
/**
 * Compares this RefreshStatus with another for inequality.
 *
 * @param { RefreshStatus } other - The RefreshStatus to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: RefreshStatus): Bool
}

/**
 * Seek mode for media playback.
 * This enum defines how seeking operations should be performed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SeekMode {
/**
 * Seek to keyframes before the specified time point.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    PreviousKeyframe
    | 
/**
 * Seek to keyframes after the specified time point.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    NextKeyframe
    | 
/**
 * Seek to the closest keyframes to the specified time point.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ClosestKeyframe
    | 
/**
 * Seek to frames closest to the specified time point for precise positioning.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Accurate
    | ...
}

extend SeekMode <: Equatable<SeekMode> {
/**
 * Compares this SeekMode with another for equality.
 *
 * @param { SeekMode } other - The SeekMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SeekMode): Bool
/**
 * Compares this SeekMode with another for inequality.
 *
 * @param { SeekMode } other - The SeekMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SeekMode): Bool
}

/**
 * Playback speed options.
 * This enum defines the available playback speed multipliers.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum PlaybackSpeed {
/**
 * 0.75x speed playback. Slower than normal speed.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    SpeedForward075X
    | 
/**
 * 1.00x speed playback. Normal playback speed.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    SpeedForward100X
    | 
/**
 * 1.25x speed playback. Faster than normal speed.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    SpeedForward125X
    | 
/**
 * 1.75x speed playback. Significantly faster than normal speed.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    SpeedForward175X
    | 
/**
 * 2.00x speed playback. Twice the normal playback speed.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    SpeedForward200X
    | ...
}

extend PlaybackSpeed <: Equatable<PlaybackSpeed> {
/**
 * Compares this PlaybackSpeed with another for equality.
 *
 * @param { PlaybackSpeed } other - The PlaybackSpeed to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: PlaybackSpeed): Bool
/**
 * Compares this PlaybackSpeed with another for inequality.
 *
 * @param { PlaybackSpeed } other - The PlaybackSpeed to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: PlaybackSpeed): Bool
}

/**
 * CheckboxGroup selection status.
 * This enum defines the selection states for a group of checkboxes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SelectStatus {
/**
 * All checkboxes in the group are selected.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    All
    | 
/**
 * Some, but not all, checkboxes in the group are selected.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Part
    | 
/**
 * None of the checkboxes in the group are selected.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | ...
}

extend SelectStatus <: Equatable<SelectStatus> {
/**
 * Compares this SelectStatus with another for equality.
 *
 * @param { SelectStatus } other - The SelectStatus to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SelectStatus): Bool
/**
 * Compares this SelectStatus with another for inequality.
 *
 * @param { SelectStatus } other - The SelectStatus to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SelectStatus): Bool
}

/**
 * Animation status.
 * This enum defines the various states an animation can be in.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum AnimationStatus {
/**
 * Initial state of the animation. The animation has not yet started.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Initial
    | 
/**
 * The animation is currently playing.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Running
    | 
/**
 * The animation is paused and can be resumed.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Paused
    | 
/**
 * The animation is stopped and must be restarted from the beginning.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Stopped
    | ...
}

extend AnimationStatus <: Equatable<AnimationStatus> {
/**
 * Compares this AnimationStatus with another for equality.
 *
 * @param { AnimationStatus } other - The AnimationStatus to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: AnimationStatus): Bool
/**
 * Compares this AnimationStatus with another for inequality.
 *
 * @param { AnimationStatus } other - The AnimationStatus to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: AnimationStatus): Bool
}

/**
 * Sets the state before and after the animation starts.
 * This enum defines how an animation behaves before and after its active duration.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FillMode {
/**
 * No fill mode. The animation does not apply any styles before starting or after ending.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | 
/**
 * Forward fill mode. Retains the state at the end of the animation after playback completes.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Forwards
    | 
/**
 * Backward fill mode. Applies the start attribute value during the animation-delay period before the animation starts.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Backwards
    | 
/**
 * Both forward and backward fill modes are applied.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Both
    | ...
}

extend FillMode <: Equatable<FillMode> {
/**
 * Compares this FillMode with another for equality.
 *
 * @param { FillMode } other - The FillMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: FillMode): Bool
/**
 * Compares this FillMode with another for inequality.
 *
 * @param { FillMode } other - The FillMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: FillMode): Bool
}

/**
 * Swipe edge effect.
 * This enum defines the visual effects when swiping to the edge of a scrollable area.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SwipeEdgeEffect {
/**
 * Spring effect. Provides an elastic physical action when sliding to the edge, allowing continued sliding based on initial speed or touch events, with a spring-back when released.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Spring
    | 
/**
 * No effect. Sliding to the edge has no visual effect.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | ...
}

extend SwipeEdgeEffect <: Equatable<SwipeEdgeEffect> {
/**
 * Compares this SwipeEdgeEffect with another for equality.
 *
 * @param { SwipeEdgeEffect } other - The SwipeEdgeEffect to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SwipeEdgeEffect): Bool
/**
 * Compares this SwipeEdgeEffect with another for inequality.
 *
 * @param { SwipeEdgeEffect } other - The SwipeEdgeEffect to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SwipeEdgeEffect): Bool
}

/**
 * Shared transition effect type.
 * This enum defines the types of shared transition effects between pages.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SharedTransitionEffectType {
/**
 * Static effect. The location of the destination page element remains unchanged, and you can configure the transparency animation. Currently,
 * only the static effect configured for redirecting to the target page takes effect.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Static
    | 
/**
 * Exchange effect. Move the source page element to the destination page element location and scale it appropriately.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Exchange
    | ...
}

extend SharedTransitionEffectType <: Equatable<SharedTransitionEffectType> {
/**
 * Compares this SharedTransitionEffectType with another for equality.
 *
 * @param { SharedTransitionEffectType } other - The SharedTransitionEffectType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SharedTransitionEffectType): Bool
/**
 * Compares this SharedTransitionEffectType with another for inequality.
 *
 * @param { SharedTransitionEffectType } other - The SharedTransitionEffectType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SharedTransitionEffectType): Bool
}

/**
 * Scroll state.
 * This enum defines the various states of scrolling behavior.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ScrollState {
/**
 * Idle state. No scrolling activity is taking place.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Idle
    | 
/**
 * Scrolling state. Active scrolling is in progress.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Scrolling
    | 
/**
 * Fling state. Inertial scrolling after a swipe gesture.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Fling
    | ...
}

extend ScrollState <: Equatable<ScrollState> {
/**
 * Compares this ScrollState with another for equality.
 *
 * @param { ScrollState } other - The ScrollState to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ScrollState): Bool
/**
 * Compares this ScrollState with another for inequality.
 *
 * @param { ScrollState } other - The ScrollState to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ScrollState): Bool
}

/**
 * List item alignment.
 * This enum defines how list items are aligned within a List component along the cross axis.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ListItemAlign {
/**
 * Start alignment. The list items are packed toward the start edge of the List component along the cross axis.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Start
    | 
/**
 * Center alignment. The list items are centered in the List component along the cross axis.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Center
    | 
/**
 * End alignment. The list items are packed toward the end edge of the List component along the cross axis.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | ...
}

extend ListItemAlign <: Equatable<ListItemAlign> {
/**
 * Compares this ListItemAlign with another for equality.
 *
 * @param { ListItemAlign } other - The ListItemAlign to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ListItemAlign): Bool
/**
 * Compares this ListItemAlign with another for inequality.
 *
 * @param { ListItemAlign } other - The ListItemAlign to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ListItemAlign): Bool
}

/**
 * Declare item group sticky style.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum StickyStyle {
/**
 * In the ListItemGroup component, the header is not pinned to the top,
 * and the footer is not pinned to the bottom.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | 
/**
 * In the ListItemGroup component, the header is pinned to the top,
 * and the footer is not pinned to the bottom.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Header
    | 
/**
 * In the <em>ListItemGroup</em> component, the footer is pinned to the bottom,
 * and the header is not pinned to the top.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Footer
    | ...
}

extend StickyStyle <: Equatable<StickyStyle> {
/**
 * Compares this StickyStyle with another for equality.
 *
 * @param { StickyStyle } other - The StickyStyle to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: StickyStyle): Bool
/**
 * Compares this StickyStyle with another for inequality.
 *
 * @param { StickyStyle } other - The StickyStyle to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: StickyStyle): Bool
}

/**
 * Defines span type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum RichEditorSpanType {
/**
 * Text, corresponding textSpan type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Text
    | 
/**
 * Image, corresponding imageSpan type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Image
    | 
/**
 * Mixed, corresponding mixed span type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Mixed
    | ...
}

extend RichEditorSpanType <: Equatable<RichEditorSpanType> {
/**
 * Compares this RichEditorSpanType with another for equality.
 *
 * @param { RichEditorSpanType } other - The RichEditorSpanType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: RichEditorSpanType): Bool
/**
 * Compares this RichEditorSpanType with another for inequality.
 *
 * @param { RichEditorSpanType } other - The RichEditorSpanType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: RichEditorSpanType): Bool
}

/**
 * The alignment of ImageSpan
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ImageSpanAlignment {
/**
 * Indicating that the top of the ImageSpan should be aligned with the top of the surrounding text.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Top
    | 
/**
 * Indicating that the center of the ImageSpan should be aligned with the center of the surrounding text.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Center
    | 
/**
 * Indicating that the bottom of the ImageSpan should be aligned with the bottom of the surrounding text.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Bottom
    | 
/**
 * Indicating that the bottom of the ImageSpan should be aligned with the baseline of the surrounding text.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Baseline
    | ...
}

extend ImageSpanAlignment <: Equatable<ImageSpanAlignment> {
/**
 * Compares this ImageSpanAlignment with another for equality.
 *
 * @param { ImageSpanAlignment } other - The ImageSpanAlignment to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ImageSpanAlignment): Bool
/**
 * Compares this ImageSpanAlignment with another for inequality.
 *
 * @param { ImageSpanAlignment } other - The ImageSpanAlignment to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ImageSpanAlignment): Bool
}

/**
 * Defines delete text direction.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum RichEditorDeleteDirection {
/**
 * Delete backward.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Backward
    | 
/**
 * Delete forward.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Forward
    | ...
}

extend RichEditorDeleteDirection <: Equatable<RichEditorDeleteDirection> {
/**
 * Compares this RichEditorDeleteDirection with another for equality.
 *
 * @param { RichEditorDeleteDirection } other - The RichEditorDeleteDirection to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: RichEditorDeleteDirection): Bool
/**
 * Compares this RichEditorDeleteDirection with another for inequality.
 *
 * @param { RichEditorDeleteDirection } other - The RichEditorDeleteDirection to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: RichEditorDeleteDirection): Bool
}

/**
 * The Web's behavior to load from HTTP or HTTPS. Defaults to MixedMode.None.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum MixedMode {
/**
 * Loose Mode: HTTP and HTTPS hybrid content can be loaded. This means that all insecure content can be loaded.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    All
    | 
/**
 * Compatibility Modes: HTTP and HTTPS hybrid content can be loaded in compatibility mode. This means that some insecure content may be loaded.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Compatible
    | 
/**
 * Strict Mode: HTTP and HTTPS hybrid content cannot be loaded.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | ...
}

extend MixedMode <: Equatable<MixedMode> {
/**
 * Compares this MixedMode with another for equality.
 *
 * @param { MixedMode } other - The MixedMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: MixedMode): Bool
/**
 * Compares this MixedMode with another for inequality.
 *
 * @param { MixedMode } other - The MixedMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: MixedMode): Bool
}

/**
 * Play Mode
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum PlayMode {
/**
 * The animation plays normally.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Normal
    | 
/**
 * The animation plays backwards.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Reverse
    | 
/**
 * The animation plays forward on odd numbers (1, 3, 7...) and backward on even numbers (2, 4, 6...).
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Alternate
    | 
/**
 * The animation plays backwards on odd numbers (1, 3, 7...) and forwards on even numbers (2, 4, 6...).
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    AlternateReverse
    | ...
}

extend PlayMode <: Equatable<PlayMode> {
/**
 * Compares this PlayMode with another for equality.
 *
 * @param { PlayMode } other - The PlayMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: PlayMode): Bool
/**
 * Compares this PlayMode with another for inequality.
 *
 * @param { PlayMode } other - The PlayMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: PlayMode): Bool
}

/**
 * GradientDirection enum description.
 * Defines the direction of gradient fills for visual components.
 * Controls how color gradients are rendered across components, from simple linear gradients to complex diagonal ones.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum GradientDirection {
/**
 * Gradient flows from the right edge to the left edge of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Left
    | 
/**
 * Gradient flows from the bottom edge to the top edge of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Top
    | 
/**
 * Gradient flows from the left edge to the right edge of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Right
    | 
/**
 * Gradient flows from the top edge to the bottom edge of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Bottom
    | 
/**
 * Gradient flows from the top-right corner to the bottom-left corner of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    LeftTop
    | 
/**
 * Gradient flows from the top-left corner to the bottom-right corner of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    LeftBottom
    | 
/**
 * Gradient flows from the bottom-left corner to the top-right corner of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    RightTop
    | 
/**
 * Gradient flows from the top-left corner to the bottom-right corner of the component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    RightBottom
    | 
/**
 * No gradient is applied, resulting in a solid color fill.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | ...
}

extend GradientDirection <: Equatable<GradientDirection> {
/**
 * Compares this GradientDirection with another for equality.
 *
 * @param { GradientDirection } other - The GradientDirection to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: GradientDirection): Bool
/**
 * Compares this GradientDirection with another for inequality.
 *
 * @param { GradientDirection } other - The GradientDirection to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: GradientDirection): Bool
}

/**
 * Enum of RenderFit
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum RenderFit {
/**
 * Without scaling the content area, the content area is drawn in the center of the node.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Center
    | 
/**
 * Without scaling the content area, the content area is drawn in the top center of the node.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Top
    | 
/**
 * Without scaling the content area, the content area is drawn in the bottom center of the node.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Bottom
    | 
/**
 * Without scaling the content area, the content area is drawn in the left center of the node.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Left
    | 
/**
 * Without scaling the content area, the content area is drawn in the right center of the node.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Right
    | 
/**
 * Without scaling the content area, the content area is drawn in the top left of the node.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    TopLeft
    | 
/**
 * Without scaling the content area, the content area is drawn in the top right of the node.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    TopRight
    | 
/**
 * Without scaling the content area, the content area is drawn in the bottom left of the node.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    BottomLeft
    | 
/**
 * Without scaling the content area, the content area is drawn in the bottom right of the node.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    BottomRight
    | 
/**
 * Scale the length and width of the content area to the node size to fill the node.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ResizeFill
    | 
/**
 * Scale the length or width of the content to the length or width of the node, ensuring that one side is equal,
 * the other side is less than or equal to the corresponding side of the node, and the content after scaling
 * is centered.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ResizeContain
    | 
/**
 * Scale the length or width of the content to the length or width of the node, ensuring that one side is equal,
 * the other side is less than or equal to the corresponding side of the node. If the height of the scaled content
 * is less than or equal to the height of the node, the scaled content area is displayed at the top; otherwise,
 * the width of the scaled content is less than or equal to the width of the node, the scaled content area is
 * displayed at the left.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ResizeContainTopLeft
    | 
/**
 * Scale the length or width of the content to the length or width of the node, ensuring that one side is equal,
 * the other side is less than or equal to the corresponding side of the node. If the height of the scaled content
 * is less than or equal to the height of the node, the scaled content area is displayed at the bottom; otherwise,
 * the width of the scaled content is less than or equal to the width of the node, the scaled content area is
 * displayed at the right.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ResizeContainBottomRight
    | 
/**
 * Scale the length or width of the content to the length or width of the node, ensuring that one side is equal,
 * the other side is greater than or equal to the corresponding side of the node, and the content after scaling
 * displays the center area.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ResizeCover
    | 
/**
 * Scale the length or width of the content to the length or width of the node, ensuring that one side is equal,
 * the other side is greater than or equal to the corresponding side of the node. If the height of the scaled content
 * is greater than or equal to the height of the node, the scaled content area displays the top area; otherwise,
 * the width of the scaled content is greater than or equal to the width of the node, the scaled content area
 * displays the left area.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ResizeCoverTopLeft
    | 
/**
 * Scale the length or width of the content to the length or width of the node, ensuring that one side is equal,
 * the other side is greater than or equal to the corresponding side of the node. If the height of the scaled content
 * is greater than or equal to the height of the node, the scaled content area displays the bottom area; otherwise,
 * the width of the scaled content is greater than or equal to the width of the node, the scaled content area
 * displays the right area.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ResizeCoverBottomRight
    | ...
}

extend RenderFit <: Equatable<RenderFit> {
/**
 * Compares this RenderFit with another for equality.
 *
 * @param { RenderFit } other - The RenderFit to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: RenderFit): Bool
/**
 * Compares this RenderFit with another for inequality.
 *
 * @param { RenderFit } other - The RenderFit to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: RenderFit): Bool
}

/**
 * The alignment of dialog,
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum DialogAlignment {
/**
 * Vertical top alignment.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Top
    | 
/**
 * Align vertically to the center.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Center
    | 
/**
 * Vertical bottom alignment.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Bottom
    | 
/**
 * Default alignment.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Default
    | 
/**
 * Align the upper left corner.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    TopStart
    | 
/**
 * Align the upper right corner.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    TopEnd
    | 
/**
 * Left center alignment.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    CenterStart
    | 
/**
 * Right center alignment.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    CenterEnd
    | 
/**
 * Align the lower left corner.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    BottomStart
    | 
/**
 * Align the lower right corner.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    BottomEnd
    | ...
}

extend DialogAlignment <: Equatable<DialogAlignment> {
/**
 * Compares this DialogAlignment with another for equality.
 *
 * @param { DialogAlignment } other - The DialogAlignment to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: DialogAlignment): Bool
/**
 * Compares this DialogAlignment with another for inequality.
 *
 * @param { DialogAlignment } other - The DialogAlignment to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: DialogAlignment): Bool
}

/**
 * Specifies the direction value of Barrier.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum BarrierDirection {
/**
 * Barrier will be positioned to the far left of all referenced components.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Left
    | 
/**
 * Barrier will be positioned to the far right of all referenced components.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Right
    | 
/**
 * Barrier will be positioned to the top of all referenced components.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Top
    | 
/**
 * Barrier will be positioned to the bottom of all referenced components.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Bottom
    | ...
}

extend BarrierDirection <: Equatable<BarrierDirection> {
/**
 * Compares this BarrierDirection with another for equality.
 *
 * @param { BarrierDirection } other - The BarrierDirection to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: BarrierDirection): Bool
/**
 * Compares this BarrierDirection with another for inequality.
 *
 * @param { BarrierDirection } other - The BarrierDirection to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: BarrierDirection): Bool
}

/**
 * The types of expanded safe areas.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SafeAreaType {
/**
 * Default non-safe area of the system, including the status bar and navigation bar.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    System
    | 
/**
 * Non-safe area of the device like Notch or punch hole.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Cutout
    | 
/**
 * Soft keyboard area.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Keyboard
    | ...
}

extend SafeAreaType <: Equatable<SafeAreaType> {
/**
 * Compares this SafeAreaType with another for equality.
 *
 * @param { SafeAreaType } other - The SafeAreaType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SafeAreaType): Bool
/**
 * Compares this SafeAreaType with another for inequality.
 *
 * @param { SafeAreaType } other - The SafeAreaType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SafeAreaType): Bool
}

/**
 * Enumerates the safe area edges.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SafeAreaEdge {
/**
 * Top edge.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Top
    | 
/**
 * Bottom edge of the safe area.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Bottom
    | 
/**
 * Start edge.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Start
    | 
/**
 * End edge.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | ...
}

extend SafeAreaEdge <: Equatable<SafeAreaEdge> {
/**
 * Compares this SafeAreaEdge with another for equality.
 *
 * @param { SafeAreaEdge } other - The SafeAreaEdge to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SafeAreaEdge): Bool
/**
 * Compares this SafeAreaEdge with another for inequality.
 *
 * @param { SafeAreaEdge } other - The SafeAreaEdge to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SafeAreaEdge): Bool
}

/**
 * Common enum of color strategy
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ColoringStrategy {
/**
 * Use the inverse color strategy. Gets the inverse of the background color. Only applies to foregroundColor.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Invert | ...
}

extend ColoringStrategy <: Equatable<ColoringStrategy> {
/**
 * Compares this ColoringStrategy with another for equality.
 *
 * @param { ColoringStrategy } other - The ColoringStrategy to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ColoringStrategy): Bool
/**
 * Compares this ColoringStrategy with another for inequality.
 *
 * @param { ColoringStrategy } other - The ColoringStrategy to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ColoringStrategy): Bool
}

/**
 * Nested scroll nested mode
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum NestedScrollMode {
/**
 * Only Self response scrolling.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    SelfOnly
    | 
/**
 * Self priority response scrolling.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    SelfFirst
    | 
/**
 * Parent scrollable component priority response scrolling.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ParentFirst
    | 
/**
 * Both self and parent scrollable component response scrolling.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Parallel
    | ...
}

extend NestedScrollMode <: Equatable<NestedScrollMode> {
/**
 * Compares this NestedScrollMode with another for equality.
 *
 * @param { NestedScrollMode } other - The NestedScrollMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: NestedScrollMode): Bool
/**
 * Compares this NestedScrollMode with another for inequality.
 *
 * @param { NestedScrollMode } other - The NestedScrollMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: NestedScrollMode): Bool
}

/**
 * Enum of color mode
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ThemeColorMode {
/**
 * Defines the mode which is follow up with system.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    System
    | 
/**
 * Defines the light mode.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Light
    | 
/**
 * Defines the dark mode.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Dark
    | ...
}

extend ThemeColorMode <: Equatable<ThemeColorMode> {
/**
 * Compares this ThemeColorMode with another for equality.
 *
 * @param { ThemeColorMode } other - The ThemeColorMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ThemeColorMode): Bool
/**
 * Compares this ThemeColorMode with another for inequality.
 *
 * @param { ThemeColorMode } other - The ThemeColorMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ThemeColorMode): Bool
}

/**
 * Defines adaptive color
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum AdaptiveColor {
/**
 * Adaptive color mode is not used.
 * The default color is used as the mask color. Using a mode other than **Default** can be more time-consuming.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Default
    | 
/**
 * Adaptive color mode is used. The average color value of the color picking area is used as the mask color.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Average
    | ...
}

extend AdaptiveColor <: Equatable<AdaptiveColor> {
/**
 * Compares this AdaptiveColor with another for equality.
 *
 * @param { AdaptiveColor } other - The AdaptiveColor to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: AdaptiveColor): Bool
/**
 * Compares this AdaptiveColor with another for inequality.
 *
 * @param { AdaptiveColor } other - The AdaptiveColor to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: AdaptiveColor): Bool
}

/**
 * Define the scroll size mode of the sheet.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ControlSize {
/**
 * The component size is small.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Small
    | 
/**
 * The component size is normal.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Normal
    | ...
}

extend ControlSize <: Equatable<ControlSize> {
/**
 * Compares this ControlSize with another for equality.
 *
 * @param { ControlSize } other - The ControlSize to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ControlSize): Bool
/**
 * Compares this ControlSize with another for inequality.
 *
 * @param { ControlSize } other - The ControlSize to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ControlSize): Bool
}

/**
 * Decide whether the width of select menu fit the trigger or content
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum OptionWidthMode {
/**
 * The menu width fit the content.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    FitContent
    | 
/**
 * The menu width fit the trigger.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    FitTrigger
    | ...
}

extend OptionWidthMode <: Equatable<OptionWidthMode> {
/**
 * Compares this OptionWidthMode with another for equality.
 *
 * @param { OptionWidthMode } other - The OptionWidthMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: OptionWidthMode): Bool
/**
 * Compares this OptionWidthMode with another for inequality.
 *
 * @param { OptionWidthMode } other - The OptionWidthMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: OptionWidthMode): Bool
}

/**
 * The enum for arrow position in the select
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ArrowPosition {
/**
 * The value of arrow position end
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | 
/**
 * The value of arrow position start
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Start
    | ...
}

extend ArrowPosition <: Equatable<ArrowPosition> {
/**
 * Compares this ArrowPosition with another for equality.
 *
 * @param { ArrowPosition } other - The ArrowPosition to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ArrowPosition): Bool
/**
 * Compares this ArrowPosition with another for inequality.
 *
 * @param { ArrowPosition } other - The ArrowPosition to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ArrowPosition): Bool
}

/**
 * The type of alignment between select and menu.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum MenuAlignType {
/**
 * The type of alignment between select and menu.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Start
    | 
/**
 * The value of menu align type center.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Center
    | 
/**
 * The value of menu align type end.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | ...
}

extend MenuAlignType <: Equatable<MenuAlignType> {
/**
 * Compares this MenuAlignType with another for equality.
 *
 * @param { MenuAlignType } other - The MenuAlignType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: MenuAlignType): Bool
/**
 * Compares this MenuAlignType with another for inequality.
 *
 * @param { MenuAlignType } other - The MenuAlignType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: MenuAlignType): Bool
}

/**
 * Enum type supplied to {@link darkMode} for setting the web dark mode.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum WebDarkMode {
/**
 * Disable the web dark mode.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Off
    | 
/**
 * Enable the web dark mode.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    On
    | 
/**
 * Make web dark mode follow the system.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Auto
    | ...
}

extend WebDarkMode <: Equatable<WebDarkMode> {
/**
 * Compares this WebDarkMode with another for equality.
 *
 * @param { WebDarkMode } other - The WebDarkMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: WebDarkMode): Bool
/**
 * Compares this WebDarkMode with another for inequality.
 *
 * @param { WebDarkMode } other - The WebDarkMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: WebDarkMode): Bool
}

/**
 * Defines the event tool type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SourceTool {
/**
 * Unknown type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Unknown
    | 
/**
 * The finger type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Finger
    | 
/**
 * The pen type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Pen
    | 
/**
 * The mouse type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Mouse
    | 
/**
 * The touchpad type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Touchpad
    | 
/**
 * The joystick type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Joystick
    | ...
}

extend SourceTool <: Equatable<SourceTool> {
/**
 * Compares this SourceTool with another for equality.
 *
 * @param { SourceTool } other - The SourceTool to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SourceTool): Bool
/**
 * Compares this SourceTool with another for inequality.
 *
 * @param { SourceTool } other - The SourceTool to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SourceTool): Bool
}

/**
 * Repetition mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum Repetition {
/**
 * The repeat method of image repetition.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Repeat
    | 
/**
 * The repeat-x method of image repetition.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    RepeatX
    | 
/**
 * The repeat-y method of image repetition.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    RepeatY
    | 
/**
 * The no-repeat method of image repetition.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    NoRepeat
    | 
/**
 * The clamp method of image repetition.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Clamp
    | 
/**
 * The mirror method of image repetition.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Mirror
    | ...
}

extend Repetition <: Equatable<Repetition> {
/**
 * Compares this Repetition with another for equality.
 *
 * @param { Repetition } other - The Repetition to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: Repetition): Bool
/**
 * Compares this Repetition with another for inequality.
 *
 * @param { Repetition } other - The Repetition to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: Repetition): Bool
}

/**
 * The possible source of scroll event
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ScrollSource {
/**
 * Drag events.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Drag
    | 
/**
 * Fling after the drag has ended with velocity.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Fling
    | 
/**
 * Over scroll with EdgeEffect.Spring.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    EdgeEffect
    | 
/**
 * Other user input except drag, such as mouse wheel, key event.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    OtherUserInput
    | 
/**
 * Drag events of scroll bar.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ScrollBar
    | 
/**
 * Fling after the drag on scroll bar has ended with velocity.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ScrollBarFling
    | 
/**
 * Member methods of Scroller without animation.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Scroller
    | 
/**
 * Member methods of Scroller with animation.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ScrollerAnimation
    | ...
}

extend ScrollSource <: Equatable<ScrollSource> {
/**
 * Compares this ScrollSource with another for equality.
 *
 * @param { ScrollSource } other - The ScrollSource to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ScrollSource): Bool
/**
 * Compares this ScrollSource with another for inequality.
 *
 * @param { ScrollSource } other - The ScrollSource to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ScrollSource): Bool
}

/**
 * Declare the type of input content
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ContentType {
/**
 * Password Vault, when enabled, can automatically save and fill in usernames.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    UserName
    | 
/**
 * Password Vault, when enabled, can automatically save and fill in passwords.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Password
    | 
/**
 * Password Vault, when enabled, can automatically generate a new password.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    NewPassword
    | 
/**
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in full street addresses.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    FullStreetAddress
    | 
/**
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in house numbers.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    HouseNumber
    | 
/**
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in districts and counties.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    DistrictAddress
    | 
/**
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in cities.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    CityAddress
    | 
/**
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in provinces.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ProvinceAddress
    | 
/**
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in countries.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    CountryAddress
    | 
/**
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in full names.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    PersonFullName
    | 
/**
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in last names.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    PersonLastName
    | 
/**
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in first names.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    PersonFirstName
    | 
/**
 * Phone number content type.
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in phone numbers.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    PhoneNumber
    | 
/**
 * Phone country code content type.
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in country codes.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    PhoneCountryCode
    | 
/**
 * Full phone number content type.
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in phone numbers with country codes.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    FullPhoneNumber
    | 
/**
 * Email address content type.
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in email addresses.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    EmailAddress
    | 
/**
 * Bank card number content type.
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in bank card numbers.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    BankCardNumber
    | 
/**
 * ID card number content type.
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in ID card numbers.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    IdCardNumber
    | 
/**
 * Nickname content type.
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in nicknames.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Nickname
    | 
/**
 * Detail info without street content type.
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in address information without street addresses.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    DetailInfoWithoutStreet
    | 
/**
 * Format address content type.
 * The scenario-based autofill feature, when enabled,
 * can automatically save and fill in standard addresses.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    FormatAddress
    | ...
}

extend ContentType <: Equatable<ContentType> {
/**
 * Compares this ContentType with another for equality.
 *
 * @param { ContentType } other - The ContentType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ContentType): Bool
/**
 * Compares this ContentType with another for inequality.
 *
 * @param { ContentType } other - The ContentType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ContentType): Bool
}

/**
 * Define the menu pop-up policy
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum MenuPolicy {
/**
 * Default value. The default logic of whether to pop up a menu depends on the scene.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Default
    | 
/**
 * The menu is always hidden.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Hide
    | 
/**
 * The menu is always displayed.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Show
    | ...
}

extend MenuPolicy <: Equatable<MenuPolicy> {
/**
 * Compares this MenuPolicy with another for equality.
 *
 * @param { MenuPolicy } other - The MenuPolicy to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: MenuPolicy): Bool
/**
 * Compares this MenuPolicy with another for inequality.
 *
 * @param { MenuPolicy } other - The MenuPolicy to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: MenuPolicy): Bool
}

/**
 * Type of text decoration line style.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextDecorationStyle {
/**
 * Solid line.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Solid
    | 
/**
 * Double lines.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Double
    | 
/**
 * Dotted lines.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Dotted
    | 
/**
 * Dashed line.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Dashed
    | 
/**
 * Wavy line.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Wavy
    | ...
}

extend TextDecorationStyle <: Equatable<TextDecorationStyle> {
/**
 * Compares this TextDecorationStyle with another for equality.
 *
 * @param { TextDecorationStyle } other - The TextDecorationStyle to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: TextDecorationStyle): Bool
/**
 * Compares this TextDecorationStyle with another for inequality.
 *
 * @param { TextDecorationStyle } other - The TextDecorationStyle to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: TextDecorationStyle): Bool
}

/**
 * Enum of line break strategy
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum LineBreakStrategy {
/**
 * By default. Display as many characters as possible on each line until no more characters
 * can be displayed on that line, and do not automatically add hyphens under this strategy
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Greedy
    | 
/**
 * High quality folding. Optimize the layout of the entire text's line breaks and automatically
 * add hyphens if necessary.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    HighQuality
    | 
/**
 * Balanced folding. We will try our best to ensure that the width of each line in a paragraph
 * is the same, and if necessary, we will add conjunction
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Balanced
    | ...
}

extend LineBreakStrategy <: Equatable<LineBreakStrategy> {
/**
 * Compares this LineBreakStrategy with another for equality.
 *
 * @param { LineBreakStrategy } other - The LineBreakStrategy to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: LineBreakStrategy): Bool
/**
 * Compares this LineBreakStrategy with another for inequality.
 *
 * @param { LineBreakStrategy } other - The LineBreakStrategy to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: LineBreakStrategy): Bool
}

/**
 * Text content style.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextContentStyle {
/**
 * Text content default style.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Default
    | 
/**
 * Text content inline style.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Inline
    | ...
}

extend TextContentStyle <: Equatable<TextContentStyle> {
/**
 * Compares this TextContentStyle with another for equality.
 *
 * @param { TextContentStyle } other - The TextContentStyle to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: TextContentStyle): Bool
/**
 * Compares this TextContentStyle with another for inequality.
 *
 * @param { TextContentStyle } other - The TextContentStyle to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: TextContentStyle): Bool
}

/**
 * common enum of the checkbox shape
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum CheckBoxShape {
/**
 * Circle.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Circle
    | 
/**
 * Rounded Square.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    RoundedSquare
    | ...
}

extend CheckBoxShape <: Equatable<CheckBoxShape> {
/**
 * Compares this CheckBoxShape with another for equality.
 *
 * @param { CheckBoxShape } other - The CheckBoxShape to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: CheckBoxShape): Bool
/**
 * Compares this CheckBoxShape with another for inequality.
 *
 * @param { CheckBoxShape } other - The CheckBoxShape to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: CheckBoxShape): Bool
}

/**
 * Enum of text height adaptation
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextHeightAdaptivePolicy {
/**
 * Priority is given to using the maxLines attribute to adapt the text height.
 * If the layout size using the maxLines attribute exceeds the layout constraint, try reducing the font size to
 * display more text.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    MaxLinesFirst
    | 
/**
 * Priority is given to using the minFontSize attribute to adapt the text height.
 * If the text can be layout in a single line using the minFontSize property, try increasing the font size and using
 * the maximum possible font size.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    MinFontSizeFirst
    | 
/**
 * Priority is given to using the layout constraint to adapt the text height.
 * If the layout size exceeds the layout constraint, try reducing the font size. If the layout size still exceeds
 * the layout constraint after reducing the font size to minFontSize, remove the lines that exceed the layout
 * constraint.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    LayoutConstraintFirst
    | ...
}

extend TextHeightAdaptivePolicy <: Equatable<TextHeightAdaptivePolicy> {
/**
 * Compares this TextHeightAdaptivePolicy with another for equality.
 *
 * @param { TextHeightAdaptivePolicy } other - The TextHeightAdaptivePolicy to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: TextHeightAdaptivePolicy): Bool
/**
 * Compares this TextHeightAdaptivePolicy with another for inequality.
 *
 * @param { TextHeightAdaptivePolicy } other - The TextHeightAdaptivePolicy to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: TextHeightAdaptivePolicy): Bool
}

/**
 * ArrowPointPosition enum description
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ArrowPointPosition {
/**
 * Target start position
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Start
    | 
/**
 * Target center position
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Center
    | 
/**
 * Target end position
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | ...
}

extend ArrowPointPosition <: Equatable<ArrowPointPosition> {
/**
 * Compares this ArrowPointPosition with another for equality.
 *
 * @param { ArrowPointPosition } other - The ArrowPointPosition to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ArrowPointPosition): Bool
/**
 * Compares this ArrowPointPosition with another for inequality.
 *
 * @param { ArrowPointPosition } other - The ArrowPointPosition to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ArrowPointPosition): Bool
}

/**
 * Title height.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TitleHeight {
/**
 * Title height when only main title is available.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    MainOnly
    | 
/**
 * Title height when main title and subtitle are both available.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    MainWithSub
    | ...
}

extend TitleHeight <: Equatable<TitleHeight> {
/**
 * Compares this TitleHeight with another for equality.
 *
 * @param { TitleHeight } other - The TitleHeight to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: TitleHeight): Bool
/**
 * Compares this TitleHeight with another for inequality.
 *
 * @param { TitleHeight } other - The TitleHeight to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: TitleHeight): Bool
}

/**
 * The Button Style of dialog,
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum DialogButtonStyle {
/**
 * Default Style.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Default
    | 
/**
 * Highlight Style.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Highlight
    | ...
}

extend DialogButtonStyle <: Equatable<DialogButtonStyle> {
/**
 * Compares this DialogButtonStyle with another for equality.
 *
 * @param { DialogButtonStyle } other - The DialogButtonStyle to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: DialogButtonStyle): Bool
/**
 * Compares this DialogButtonStyle with another for inequality.
 *
 * @param { DialogButtonStyle } other - The DialogButtonStyle to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: DialogButtonStyle): Bool
}

/**
 * Enumerates the length metrics unit.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum LengthMetricsUnit {
/**
 * The default length metrics unit, in vp.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Default
    | 
/**
 * The pixel length metrics unit.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Px
    | ...
}

extend LengthMetricsUnit <: Equatable<LengthMetricsUnit> {
/**
 * Compares this LengthMetricsUnit with another for equality.
 *
 * @param { LengthMetricsUnit } other - The LengthMetricsUnit to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: LengthMetricsUnit): Bool
/**
 * Compares this LengthMetricsUnit with another for inequality.
 *
 * @param { LengthMetricsUnit } other - The LengthMetricsUnit to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: LengthMetricsUnit): Bool
}

/**
 * Indicates the attribute of the current text direction.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum CanvasDirection {
/**
 * (Default) Inherit current Canvas component settings
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Inherit
    | 
/**
 * The text direction is left to right.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Ltr
    | 
/**
 * The text direction is from right to left.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Rtl
    | ...
}

extend CanvasDirection <: Equatable<CanvasDirection> {
/**
 * Compares this CanvasDirection with another for equality.
 *
 * @param { CanvasDirection } other - The CanvasDirection to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: CanvasDirection): Bool
/**
 * Compares this CanvasDirection with another for inequality.
 *
 * @param { CanvasDirection } other - The CanvasDirection to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: CanvasDirection): Bool
}

/**
 * Filling style algorithm, which determines whether a point is within or outside the path. The following
 * two configurations are supported:
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum CanvasFillRule {
/**
 * odd and even round rule
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    EvenOdd
    | 
/**
 * (Default) Non-zero Wrap Rules
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    NonZero
    | ...
}

extend CanvasFillRule <: Equatable<CanvasFillRule> {
/**
 * Compares this CanvasFillRule with another for equality.
 *
 * @param { CanvasFillRule } other - The CanvasFillRule to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: CanvasFillRule): Bool
/**
 * Compares this CanvasFillRule with another for inequality.
 *
 * @param { CanvasFillRule } other - The CanvasFillRule to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: CanvasFillRule): Bool
}

/**
 * Enum for FinishCallbackType.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum FinishCallbackType {
/**
 * The callback is invoked when the entire animation is removed once it has finished.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Removed
    | 
/**
 * The callback is invoked when the animation logically enters the falling state,
 * though it may still be in its long tail state.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Logically
    | ...
}

extend FinishCallbackType <: Equatable<FinishCallbackType> {
/**
 * Compares this FinishCallbackType with another for equality.
 *
 * @param { FinishCallbackType } other - The FinishCallbackType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: FinishCallbackType): Bool
/**
 * Compares this FinishCallbackType with another for inequality.
 *
 * @param { FinishCallbackType } other - The FinishCallbackType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: FinishCallbackType): Bool
}

/**
 * Enum of Blur style.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum BlurStyle {
/**
 * Thin material.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Thin
    | 
/**
 * Regular material.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Regular
    | 
/**
 * Thick material.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Thick
    | 
/**
 * BackgroundThin material.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    BackgroundThin
    | 
/**
 * BackgroundRegular material.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    BackgroundRegular
    | 
/**
 * BackgroundThick material.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    BackgroundThick
    | 
/**
 * BackgroundUltraThick material.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    BackgroundUltraThick
    | 
/**
 * None material.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | 
/**
 * ComponentUltraThin material.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ComponentUltraThin
    | 
/**
 * ComponentThin material.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ComponentThin
    | 
/**
 * ComponentRegular material.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ComponentRegular
    | 
/**
 * ComponentThick material.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ComponentThick
    | 
/**
 * ComponentUltraThick material.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ComponentUltraThick
    | ...
}

extend BlurStyle <: Equatable<BlurStyle> {
/**
 * Compares this BlurStyle with another for equality.
 *
 * @param { BlurStyle } other - The BlurStyle to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: BlurStyle): Bool
/**
 * Compares this BlurStyle with another for inequality.
 *
 * @param { BlurStyle } other - The BlurStyle to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: BlurStyle): Bool
}

/**
 * Dismiss reason type.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum DismissReason {
/**
 * Touching the Back button, swiping left or right on the screen, or pressing the Esc key.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    PressBack
    | 
/**
 * Touching the mask.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    TouchOutside
    | 
/**
 * Touching the Close button.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    CloseButton
    | 
/**
 * Slide down
 * <p><strong>NOTE</strong>:
 * <br>This API is effective only in sheet transition.
 * </p>
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    SlideDown
    | ...
}

extend DismissReason <: Equatable<DismissReason> {
/**
 * Compares this DismissReason with another for equality.
 *
 * @param { DismissReason } other - The DismissReason to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: DismissReason): Bool
/**
 * Compares this DismissReason with another for inequality.
 *
 * @param { DismissReason } other - The DismissReason to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: DismissReason): Bool
}

/**
 * Text input style.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextInputStyle {
/**
 * Text input default style.
 * <p><strong>NOTE</strong>:
 * <br>The caret width is fixed at 1.5.vp,
 * and the caret height is subject to the background height and font size of the selected text.
 * </p>
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Default
    | 
/**
 * Text input inline style.
 * <br>The background height of the selected text is the same as the height of the text box.
 * <br>This style is used in scenarios where editing and non-editing states are obvious,
 * for example, renaming in the file list view.
 * <br>The showError attribute is not supported for this style.
 * <br>This style does not allow for text dragging and dropping.
 * </p>
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Inline
    | ...
}

extend TextInputStyle <: Equatable<TextInputStyle> {
/**
 * Compares this TextInputStyle with another for equality.
 *
 * @param { TextInputStyle } other - The TextInputStyle to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: TextInputStyle): Bool
/**
 * Compares this TextInputStyle with another for inequality.
 *
 * @param { TextInputStyle } other - The TextInputStyle to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: TextInputStyle): Bool
}

/**
 * Declare the type of input box
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TextAreaType {
/**
 * Basic input mode.
 * The value can contain digits, letters, underscores (_), spaces, and special characters.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Normal
    | 
/**
 * Pure digital input mode.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Number
    | 
/**
 * Phone number entry mode.
 * In this mode, the following are allowed: digits, spaces, plus signs (+), hyphens (-), asterisks (*), and number signs (#).
 * the length is not limited.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    PhoneNumber
    | 
/**
 * E-mail address input mode.
 * This mode accepts only digits, letters, underscores (_), dots (.),
 * and the following special characters: ! # $ % & ' * + - / = ? ^ ` { | } ~ @ (which can only appear once).
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Email
    | 
/**
 * Number decimal entry mode.
 * The value can contain digits and one decimal point.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    NumberDecimal
    | 
/**
 * URL entry mode.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Url
    | ...
}

extend TextAreaType <: Equatable<TextAreaType> {
/**
 * Compares this TextAreaType with another for equality.
 *
 * @param { TextAreaType } other - The TextAreaType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: TextAreaType): Bool
/**
 * Compares this TextAreaType with another for inequality.
 *
 * @param { TextAreaType } other - The TextAreaType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: TextAreaType): Bool
}

/**
 * Defines the base event.
 * This class serves as the foundation for all event types in the system,
 * providing common properties that all events share.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
abstract sealed class BaseEvent {
/**
 * Display area of the element that triggers the gesture event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var target: ?EventTarget

/**
 * Timestamp of the event.
 * Represents the time when the event occurred in milliseconds since Unix epoch.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var timestamp: Int64

/**
 * Event input device.
 * Indicates the type of device that generated the event (e.g. mouse, touch screen).
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var source: ?SourceType

/**
 * Indicates the ID of the input device that triggers the current event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var deviceId: ?Int64
}

/**
 * Type of the touch event.
 * Represents detailed information about a single touch point in a touch event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TouchObject {
/**
 * Type of the touch event.
 * Indicates what type of touch action occurred (e.g., Down, Up, Move, Cancel).
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var touchType: TouchType

/**
 * Finger unique identifier.
 * Used to track individual fingers in multi-touch scenarios.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var id: Int32

/**
 * X coordinate of the point relative to the global display.
 * Position of the touch point in screen coordinates.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var screenX: Float64

/**
 * Y coordinate of the point relative to the global display.
 * Position of the touch point in screen coordinates.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var screenY: Float64

/**
 * X coordinate of the touch point relative to the upper left corner of the event responding component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var x: Float64

/**
 * Y coordinate of the touch point relative to the upper edge of the touched element.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var y: Float64

/**
 * TouchObject constructor.
 * Creates a new TouchObject instance with the specified properties.
 *
 * @param { TouchType } touchType - Type of the touch event
 * @param { Int32 } id - Finger unique identifier
 * @param { Float64 } screenX - X coordinate relative to global display
 * @param { Float64 } screenY - Y coordinate relative to global display
 * @param { Float64 } x - X coordinate relative to the component
 * @param { Float64 } y - Y coordinate relative to the component
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(touchType: TouchType, id: Int32, screenX: Float64, screenY: Float64, x: Float64, y: Float64)
}

/**
 * The tap action triggers this method invocation.
 * Represents a click/tap event with detailed position information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ClickEvent <: BaseEvent {
/**
 * X coordinate of the click relative to the upper left corner of the application screen.
 * Position within the device screen's coordinate system.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var displayX: Float64
/**
 * Y coordinate of the click relative to the upper left corner of the application screen.
 * Position within the device screen's coordinate system.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var displayY: Float64
/**
 * X coordinate of the click relative to the upper left corner of the application window.
 * Position within the application window's coordinate system.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var windowX: Float64

/**
 * Y coordinate of the click relative to the upper left corner of the application window.
 * Position within the application window's coordinate system.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var windowY: Float64
/**
 * X coordinate of the click point relative to the left edge of the clicked element.
 * Position within the clicked component's coordinate system.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var x: Float64

/**
 * Y coordinate of the click point relative to the upper edge of the clicked element.
 * Position within the clicked component's coordinate system.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var y: Float64
}

/**
 * Contains information about a drag operation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DragInfo {
/**
 * Can contain custom data associated with the drag operation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var extraParams: ?String

/**
 * Current position of the drag operation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var touchPoint: ?Position
}

/**
 * Contains information about the visual representation of a dragged item.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DragItemInfo {
/**
 * Uses the pixelMap object for drawing.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var pixelMap: ?PixelMap

/**
 * Uses the custom builder for drawing, if pixelMap is set, this value is ignored.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var builder: ?CustomBuilder

/**
 * Sets the extra info for drag event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var extraInfo: ?String

/**
 * Creates a new DragItemInfo instance with the specified properties.
 *
 * @param { ?PixelMap } pixelMap - Visual representation as PixelMap
 * @param { ?CustomBuilder } builder - Custom visual representation
 * @param { ?String } extraInfo - Additional information about the drag
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(pixelMap: ?PixelMap, builder: ?CustomBuilder, extraInfo: ?String)
}

/**
 * The mouse click action triggers this method invocation.
 * Represents a mouse event with detailed position and button information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class MouseEvent <: BaseEvent {
/**
 * Mouse button of the click event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var button: MouseButton

/**
 * X coordinate of the mouse pointer relative to the upper left corner of the application window.
 * Position within the application window's coordinate system.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var screenX: Float64

/**
 * Y coordinate of the mouse pointer relative to the upper left corner of the application window.
 * Position within the application window's coordinate system.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var screenY: Float64

/**
 * X coordinate of the mouse pointer relative to the upper left corner of the component being clicked.
 * Position within the clicked component's coordinate system.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var x: Float64

/**
 * Y coordinate of the mouse pointer relative to the upper left corner of the component being clicked.
 * Position within the clicked component's coordinate system.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var y: Float64

/**
 * Mouse action of the click event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var action: MouseAction

/**
 * Creates a new MouseEvent instance with the specified properties.
 *
 * @param { Int64 } timestamp - Timestamp of the event.
 * @param { Float64 } screenX - X coordinate relative to application window.
 * @param { Float64 } screenY - Y coordinate relative to application window.
 * @param { Float64 } x - X coordinate relative to the component.
 * @param { Float64 } y - Y coordinate relative to the component.
 * @param { MouseButton } button - Mouse button involved in the event.
 * @param { MouseAction } action - Type of mouse action.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(timestamp: Int64, screenX: Float64, screenY: Float64, x: Float64, y: Float64, button: MouseButton,
        action: MouseAction)
}

/**
 * Represents a touch event containing information about all touch points.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TouchEvent <: BaseEvent {
/**
 * Indicates the primary type of touch action for this event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var eventType: TouchType

/**
 * Array containing information about all finger information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var touches: Array<TouchObject>

/**
 * Array containing information about finger information changed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var changedTouches: Array<TouchObject>

/**
 * Stops the event from bubbling upwards or downwards.
 * Prevents the event from propagating to parent or child components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func stopPropagation(): Unit
}

/**
 * Represents a keyboard event with detailed information about the key press.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class KeyEvent {
/**
 * Indicates whether the key was pressed down or released.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var keyType: KeyType
/**
 * The numeric code representing the physical key that was pressed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var keyCode: Int32
/**
 * The string representation of the key that was pressed.
 ['type', 'keyCode', 'keyText', 'keySource', 'deviceId', 
 'metaKey', 'timestamp', 'intentionCode', 'getModifierKeyState', 'unicode']
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var keyText: String

/**
 * Type of the input device that triggers the current key, such as the keyboard or handle.
 * Indicates the source device of the key event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var keySource: KeySource
/**
 * Indicates the ID of the input device that triggers the current key.
 * Useful for identifying which specific keyboard generated the event in multi-device scenarios.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var deviceId: Int64    

/**
 * Indicates the status of the key when the key is pressed.
 * The value 1 indicates the pressed state, and the value 0 indicates the unpressed state.
 * Used for modifier keys like Ctrl, Shift, Alt.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var metaKey: Int32

/**
 * Timestamp when the key was pressed.
 * Time when the key event occurred in milliseconds since Unix epoch.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var timestamp: Int64

/**
 * Creates a new KeyEvent instance with the specified properties.
 *
 * @param { String } keyText - Text representation of the key.
 * @param { KeyType } keyType - Type of key action (Down or Up).
 * @param { Int32 } keyCode - Numeric code of the key.
 * @param { KeySource } keySource - Source device of the key event.
 * @param { Int32 } metaKey - Status of modifier keys.
 * @param { Int64 } deviceId - ID of the input device.
 * @param { Int64 } timestamp - Timestamp of the event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(keyText: String, keyType: KeyType, keyCode: Int32, keySource: KeySource, metaKey: Int32,
        deviceId: Int64, timestamp: Int64)

/**
 * Stops the event from bubbling upwards or downwards.
 * Prevents the event from propagating to parent or child components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func stopPropagation(): Unit
}

/**
 * Defines the options of translate.
 * Configuration options for translation transformations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TranslateOptions {
/**
 * Translation distance along the x-axis.
 * The unit is vp, and the value range is (-∞, +∞).
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var x: ?Length

/**
 * Translation distance along the y-axis.
 * The unit is vp, and the value range is (-∞, +∞).
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var y: ?Length

/**
 * Distance to translate along the z-axis. The value is a floating
 * point number, the default value is 0.0, and the unit is px.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var z: ?Length

/**
 * Creates a new TranslateOptions instance with the specified properties.
 *
 * @param { ?Length } [x] - Translation distance along the x-axis
 * @param { ?Length } [y] - Translation distance along the y-axis
 * @param { ?Length } [z] - Translation distance along the z-axis
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(x!: ?Length = None, y!: ?Length = None, z!: ?Length = None)
}

/**
 * Configuration options for scaling transformations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ScaleOptions {
/**
 * Scale ratio along the x-axis.
 * x > 1: The component is scaled up along the x-axis.
 * 0 < x < 1: The component is scaled down along the x-axis.
 * x < 0: The component is scaled in the reverse direction of the x-axis.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var x: ?Float32

/**
 * Scale ratio along the y-axis.
 * y > 1: The component is scaled up along the y-axis.
 * 0 < y < 1: The component is scaled down along the y-axis.
 * y < 0: The component is scaled in the reverse direction of the y-axis.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var y: ?Float32

/**
 * Scale ratio along the z-axis. z > 1: The component is scaled up along the z-axis.
 * <br>0 < z < 1: The component is scaled down along the z-axis.
 * <br>z < 0: The component is scaled in the reverse direction of the z-axis.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var z: ?Float32

/**
 * X coordinate of the transformation center point (anchor). Unit is vp.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var centerX: ?Length

/**
 * Y coordinate of the transformation center point (anchor). Unit is vp.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var centerY: ?Length

/**
 * Creates a new ScaleOptions instance with the specified properties.
 *
 * @param { ?Float32 } [x] - Scale ratio along the x-axis
 * @param { ?Float32 } [y] - Scale ratio along the y-axis
 * @param { ?Float32 } [z] - Scale ratio along the z-axis
 * @param { ?Length } [centerX] - X coordinate of the transformation center
 * @param { ?Length } [centerY] - Y coordinate of the transformation center
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(x!: ?Float32 = None, y!: ?Float32 = None, z!: ?Float32 = None, centerX!: ?Length = None,
        centerY!: ?Length = None)
}

/**
 * Configuration options for rotation transformations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RotateOptions {
/**
 * X coordinate of the rotation axis vector.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var x: ?Float64

/**
 * Y coordinate of the rotation axis vector.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var y: ?Float64

/**
 * Z coordinate of the rotation axis vector.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var z: ?Float64

/**
 * X coordinate of the transformation center point (anchor). Unit is vp.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var centerX: ?Length

/**
 * Y coordinate of the transformation center point (anchor). Unit is vp.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var centerY: ?Length

/**
 * Z-axis anchor, that is, the z-component of the 3D rotation center point.
 * @default 0.vp
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var centerZ: ?Length

/**
 * Distance from the user to the z=0 plane.
 * The axis and center of rotation are set based on the coordinate system,
 * which remains where it is when the component is moved.
 * @default 0.0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var perspective: ?Float64

/**
 * Rotation angle in degrees.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var angle: ?Float64

/**
 * Creates a new RotateOptions instance with the specified properties.
 *
 * @param { ?Float64 } angle - Rotation angle in degrees
 * @param { ?Float64 } [x] - X coordinate of the rotation axis vector
 * @param { ?Float64 } [y] - Y coordinate of the rotation axis vector
 * @param { ?Float64 } [z] - Z coordinate of the rotation axis vector
 * @param { ?Length } [centerX] - X coordinate of the transformation center
 * @param { ?Length } [centerY] - Y coordinate of the transformation center
 * @param { ?Length } [centerZ] - Z coordinate of the transformation center
 * @param { ?Float64 } [perspective] - Perspective distance
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(x!: ?Float64 = None, y!: ?Float64 = None, z!: ?Float64 = None, centerX!: ?Length = None,
        centerY!: ?Length = None, centerZ!: ?Length = None, perspective!: ?Float64 = None, angle: ?Float64)
}

/**
 * This enum specifies the edges of a component for transition effects.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum TransitionEdge {
/**
 * Represents the top edge of the component or window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Top
    | 
/**
 * Bottom edge of the window.
 * Represents the bottom edge of the component or window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Bottom
    | 
/**
 * Start edge of the window, which is the left edge for left-to-right
 * scripts and the right edge for right-to-left scripts.
 * Represents the logical start edge based on text direction.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Start
    | 
/**
 * End edge of the window, which is the right edge for left-to-right scripts
 * and the left edge for right-to-left scripts.
 * Represents the logical end edge based on text direction.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | ...
}

extend TransitionEdge <: Equatable<TransitionEdge> {
/**
 * Compares this TransitionEdge with another for equality.
 *
 * @param { TransitionEdge } other - The TransitionEdge to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: TransitionEdge): Bool
/**
 * Compares this TransitionEdge with another for inequality.
 *
 * @param { TransitionEdge } other - The TransitionEdge to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: TransitionEdge): Bool
}

/**
 * Defines the transition effect.
 * This class provides methods to create various transition effects for components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TransitionEffect <: RemoteDataLite {
/**
 * Creates an opacity transition effect with alpha value.
 * The component fades in or out based on the alpha value.
 *
 * @param { Float64 } alpha - opacity alpha value, value range [0, 1].
 * @returns { TransitionEffect } A new TransitionEffect instance with opacity effect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func opacity(alpha: Float64): TransitionEffect

/**
 * Sets the translation effect for page transitions.
 * The component moves from one position to another during the transition.
 *
 * @param { TranslateOptions } options - Translation effect for page transitions
 * <br> specifying the start value for entrance and the end value for exit. 
 * @returns { TransitionEffect } A new TransitionEffect instance with translation effect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func translate(options: TranslateOptions): TransitionEffect

/**
 * Creates a scale transition effect.
 * The component scales up or down during the transition.
 *
 * @param { ?ScaleOptions } options - scale options. Scale ratio along the x-, y-, and z-axis.
 * <br>**centerX** and **centerY** are used to set the scale center point.
 * <br>default value is x: 1, y: 1, z: 1, centerX: 50.percent, centerY: 50.percent.
 * @returns { TransitionEffect } A new TransitionEffect instance with scale effect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func scale(options: ?ScaleOptions): TransitionEffect

/**
 * Creates a rotation transition effect.
 * The component rotates during the transition.
 *
 * @param { ?RotateOptions } options - rotate options.
 * Set the rotation effect for component transitions when inserting and deleting.
 * The value represents the starting rotation point for the inserting animation and the ending rotation point for the deleting animation.
 * -x: Horizontal component of the rotational vector.
 * -y: Vertical component of the rotational vector. 
 * -z: Vertical component of the rotational vector.
 * -centerX, centerY specify the rotation center point, with default values of 50.percent,
 * meaning that the default rotation center point is the center point of the component.
 * -The center point of (0, 0) represents the upper-left corner of the component.
 * -centerZ refers to the Z-axis anchor point. The default value of centerZ is 0.
 * -perspective indicates the visual distance. The perspective property does not support transition animation.
 * <br>default value is x: 0.0, y: 0.0, z: 0.0, centerX: 50.percent, centerY: 50.percent, centerY: 0.0, perspective:0.0.
 * @returns { TransitionEffect } A new TransitionEffect instance with rotation effect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func rotate(options: ?RotateOptions): TransitionEffect

/**
 * Creates a move transition effect.
 * The component moves in from or out to the specified edge.
 *
 * @param { TransitionEdge } edge - The edge that component will move to
 * @returns { TransitionEffect } A new TransitionEffect instance with move effect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func move(edge: TransitionEdge): TransitionEffect

/**
 * Creates an asymmetric transition effect.
 * Different effects are applied when the component appears and disappears.
 *
 * @param { TransitionEffect } appear - the transition which will be attached when the component is appear.
 * @param { TransitionEffect } disappear - the transition which will be attached when the component is disappear.
 * @returns { TransitionEffect } A new TransitionEffect instance with asymmetric effect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func asymmetric(appear: TransitionEffect, disappear: TransitionEffect): TransitionEffect

/**
 * Combines another transition effect.
 * Allows multiple transition effects to be applied simultaneously.
 *
 * @param { TransitionEffect } transitionEffect - transition effect which is be combined.
 * @returns { TransitionEffect } combined transition effect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func combine(transitionEffect: TransitionEffect): TransitionEffect

/**
 * Set the animation of current transition effect.
 * Configures the animation parameters for the transition effect.
 *
 * @param { ?AnimateParam } value - animation parameters.
 * @returns { TransitionEffect } The current TransitionEffect instance with updated animation parameters.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func animation(value: ?AnimateParam): TransitionEffect

/**
 * Disables the transition effect.
 * Represents a transition effect that does nothing.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static let IDENTITY: TransitionEffect = unsafe {
        TransitionEffect(FfiOHOSAceFrameworkTransitionEffectIdentity())
    }

/**
 * Specifies a transition effect with transparency of 0, which is equivalent to TransitionEffect.opacity(0).
 * The component becomes completely transparent during the transition.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static let OPACITY: TransitionEffect = TransitionEffect.opacity(0.0)

/**
 * Defines a slide transition effect.
 * The component slides in from the start edge and slides out to the end edge.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static let SLIDE: TransitionEffect = TransitionEffect.asymmetric(TransitionEffect.move(TransitionEdge.Start),
        TransitionEffect.move(TransitionEdge.End))

/**
 * Specify a transition effect where the element enters by shrinking first and then expanding as it slides in from the right,
 * and exits by shrinking first and then expanding as it slides out to the left, with a minimum scale ratio of 0.8.
 * It comes with default animation parameters, which can also be overridden.
 * The default animation duration is set to 600ms, and the specified animation curve is cubicBezierCurve(0.24, 0.0, 0.50, 1.0).
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static let SLIDE_SWITCH: TransitionEffect = unsafe {
        TransitionEffect(FfiOHOSAceFrameworkTransitionEffectSlideSwitch())
    }
}

/**
 * Defines the CustomBuilder Type.
 * A function type that builds custom UI components.
 */
public type CustomBuilder = () -> Unit

/**
 * Defines the finish callback type used in transition.
 * A callback function that is invoked when a transition finishes.
 */
public type TransitionFinishCallback = (Bool) -> Unit

/**
 * Defines modal transition type.
 * This enum specifies the animation type for modal transitions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ModalTransition {
/**
 * Use default animation.
 * The system chooses the most appropriate animation for the modal transition.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Default
    | 
/**
 * No transition animation for the modal.
 * The modal appears or disappears instantly without animation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    None
    | 
/**
 * Use alpha animation.
 * The modal fades in or out during the transition.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Alpha
    | ...
}

extend ModalTransition <: Equatable<ModalTransition> {
/**
 * Compares this ModalTransition with another for equality.
 *
 * @param { ModalTransition } other - The ModalTransition to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ModalTransition): Bool
/**
 * Compares this ModalTransition with another for inequality.
 *
 * @param { ModalTransition } other - The ModalTransition to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ModalTransition): Bool
}

/**
 * Defines sheet size type.
 * This enum specifies the size options for sheet components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SheetSize {
/**
 * The sheet height is medium.
 * Typically represents a sheet that covers a medium portion of the screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Medium
    | 
/**
 * The sheet height is large.
 * Typically represents a sheet that covers a large portion of the screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Large
    | 
/**
 * The sheet height fits its content.
 * The sheet size adjusts to accommodate all its content.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    FitContent
    | ...
}

extend SheetSize <: Equatable<SheetSize> {
/**
 * Compares this SheetSize with another for equality.
 *
 * @param { SheetSize } other - The SheetSize to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SheetSize): Bool
/**
 * Compares this SheetSize with another for inequality.
 *
 * @param { SheetSize } other - The SheetSize to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SheetSize): Bool
}

/**
 * Defines the sheet type.
 * This enum specifies the display type of sheet components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SheetType {
/**
 * Bottom sheet.
 * The sheet appears from the bottom of the screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Bottom
    | 
/**
 * Center sheet.
 * The sheet appears in the center of the screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Center
    | 
/**
 * Popup sheet. The popup sheet cannot be dismissed with a pull-down gesture.
 * The sheet appears as a popup and requires explicit dismissal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Popup
    | ...
}

extend SheetType <: Equatable<SheetType> {
/**
 * Compares this SheetType with another for equality.
 *
 * @param { SheetType } other - The SheetType to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SheetType): Bool
/**
 * Compares this SheetType with another for inequality.
 *
 * @param { SheetType } other - The SheetType to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SheetType): Bool
}

/**
 * Defines the options of blur
 * Configuration options for blur effects.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class BlurOptions {
/**
 * Fuzzy gray scale parameter
 * Controls the intensity of the blur effect.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var grayscale: ?VArray<Float32, $2>

/**
 * Creates a new BlurOptions instance with the specified properties.
 *
 * @param { ?VArray<Float32, $2> } grayscale - Fuzzy gray scale parameter
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(grayscale: ?VArray<Float32, $2>)
}

/**
 * Defines the options of ForegroundBlurStyle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ForegroundBlurStyleOptions {
/**
 * Color mode used for the foreground blur.
 * <br>Default value: **ThemeColorMode.System**.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var colorMode: ?ThemeColorMode

/**
 * Adaptive color mode.
 * @default AdaptiveColor.Default.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var adaptiveColor: ?AdaptiveColor

/**
 * Defines the options of blur.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var blurOptions: ?BlurOptions

/**
 * Foreground blur scale.
 * <br>Default value: **1.0**.
 * <br>Value range: [0.0, 1.0].
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var scale: ?Float32

/**
 * Creates a new ForegroundBlurStyleOptions instance with the specified properties.
 *
 * @param { ?ThemeColorMode } [colorMode] - Color mode used for the foreground blur
 * @param { ?AdaptiveColor } [adaptiveColor] - Adaptive color mode
 * @param { ?BlurOptions } [blurOptions] - Blur options
 * @param { ?Float32 } [scale] - Foreground blur scale
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        colorMode!: ?ThemeColorMode = None,
        adaptiveColor!: ?AdaptiveColor = None,
        blurOptions!: ?BlurOptions = None,
        scale!: ?Float32 = None
    )
}

/**
 * Configuration options for popup buttons.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PopupButton {
/**
 * The text displayed on the popup button.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var value: ?String

/**
 * Function to be executed when the button is clicked.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var action: () -> Unit

/**
 * Creates a new PopupButton instance with the specified properties.
 *
 * @param { ?String } value - Button text value.
 * @param { () -> Unit } action - Action to be executed when the button is clicked.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(value!: ?String, action!: () -> Unit)
}

/**
 * Contains information about popup state changes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PopupStateChangeParam {
/**
 * Indicates whether the popup is currently visible.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var isVisible: Bool

/**
 * Creates a new PopupStateChangeParam instance with the specified properties.
 *
 * @param {Bool} value - Visibility state of the popup
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(value: Bool)
}

/**
 * Configuration options for popup components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PopupOptions {
/**
 * Content of the popup message.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var message: ?String

/**
 * The placement of popup. Supports all positions defined in Placement.
 * @default Placement.Bottom.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var placement: ?Placement

/**
 * Primary action button in the popup.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var primaryButton: ?PopupButton

/**
 * Secondary action button in the popup.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var secondaryButton: ?PopupButton

/**
 * Callback function triggered when the popup state changes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var onStateChange: ?(PopupStateChangeParam) -> Unit

/**
 * The offset of the sharp corner of popup.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var arrowOffset: ?Length

/**
 * Whether to display in the sub window.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var showInSubWindow: ?Bool

/**
 * Whether to apply a mask to the popup.
 * and a color value means to apply a mask in the corresponding color to the popup.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var mask: ?ResourceColor

/**
 * Parameters of the popup message.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var messageOptions: ?PopupMessageOptions

/**
 * Sets the space of between the popup and target.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var targetSpace: ?Length

/**
 * Controls whether to display the popup's arrow/indicator.
 * @default true
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var enableArrow: ?Bool

/**
 * Sets the position offset of the popup.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offset: ?Position

/**
 * Set the background color of the popup.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var popupColor: ?ResourceColor

/**
 * Whether hide popup when click mask.
 * @default true
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var autoCancel: ?Bool

/**
 * Set the width of the popup.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var width: ?Length

/**
 * The position of the sharp corner of popup.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var arrowPointPosition: Option<ArrowPointPosition>

/**
 * The width of the arrow.
 * @default 16.vp
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var arrowWidth: ?Length

/**
 * The height of the arrow.
 * @default 8.vp
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var arrowHeight: ?Length

/**
 * The round corners of the popup.
 * @default 20.vp
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var radius: ?Length

/**
 * The style of popup Shadow.
 * @default ShadowStyle.OuterDefaultMD
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var shadow: ?ShadowStyle

/**
 * Defines popup background blur Style.
 * @default BlurStyle.ComponentUltraThick
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var backgroundBlurStyle: ?BlurStyle

/**
 * Defines the transition effect of popup opening and closing.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var transition: ?TransitionEffect

/**
 * Callback function when the popup interactive dismiss.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var onWillDismiss: ?(DismissPopupAction) -> Unit

/**
 * Determine if popup can follow the target node when it has rotation or scale.
 * @default false
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var followTransformOfTarget: ?Bool

/**
 * Creates a new PopupOptions instance with the specified properties.
 *
 * @param { ?String } message - Content of the popup message
 * @param { ?Placement } [placement] - The placement of popup
 * @param { ?PopupButton } [primaryButton] - The first button
 * @param { ?PopupButton } [secondaryButton] - The second button
 * @param { ?(PopupStateChangeParam) -> Unit } [onStateChange] - on State Change callback
 * @param { ?Length } [arrowOffset] - The offset of the sharp corner of popup
 * @param { ?Bool } [showInSubWindow] - Whether to display in the sub window
 * @param { ?ResourceColor } [mask] - Whether to apply a mask to the popup
 * @param { ?PopupMessageOptions } [messageOptions] - Parameters of the popup message
 * @param { ?Length } [targetSpace] - Sets the space of between the popup and target
 * @param { ?Bool } [enableArrow] - whether show arrow
 * @param { ?Position } [offset] - Sets the position offset of the popup
 * @param { ?Color } [popupColor] - Sets the position offset of the popup
 * @param { ?Bool } [autoCancel] - Whether hide popup when click mask
 * @param { ?Length } [width] - Set the width of the popup
 * @param { ?ArrowPointPosition } [arrowPointPosition] - The position of the sharp corner of popup
 * @param { ?Length } [arrowWidth] - The width of the arrow
 * @param { ?Length } [arrowHeight] - The height of the arrow
 * @param { ?Length } [radius] - The round corners of the popup
 * @param { ?ShadowStyle } [shadow] - The style of popup Shadow
 * @param { ?BlurStyle } [backgroundBlurStyle] - Defines popup background blur Style
 * @param { ?TransitionEffect } [transition] - Defines the transition effect of popup opening and closing
 * @param { ?(DismissPopupAction) -> Unit } [onWillDismiss] - Callback function when the popup interactive dismiss
 * @param { ?Bool } [followTransformOfTarget] - Determine if popup can follow the target node when it has rotation or scale
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        message!: ?String,
        placement!: ?Placement = Option.None,
        primaryButton!: ?PopupButton = None,
        secondaryButton!: ?PopupButton = None,
        onStateChange!: Option<(PopupStateChangeParam) -> Unit> = Option.None,
        arrowOffset!: ?Length = None,
        showInSubWindow!: ?Bool = None,
        mask!: ?Color = None,
        messageOptions!: ?PopupMessageOptions = None,
        targetSpace!: ?Length = None,
        enableArrow!: ?Bool = None,
        offset!: ?Position = None,
        popupColor!: ?Color = None,
        autoCancel!: ?Bool = None,
        width!: ?Length = None,
        arrowPointPosition!: ?ArrowPointPosition = None,
        arrowWidth!: ?Length = None,
        arrowHeight!: ?Length = None,
        radius!: ?Length = None,
        shadow!: ?ShadowStyle = None,
        backgroundBlurStyle!: ?BlurStyle = Option.None,
        transition!: ?TransitionEffect = Option.None,
        onWillDismiss!: Option<(DismissPopupAction) -> Unit> = None,
        followTransformOfTarget!: ?Bool = None
    )
}

/**
 * Defines the menu element.
 * Represents an item in a menu.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class MenuElement {
/**
 * MenuElement constructor.
 * Creates a new MenuElement instance with the specified properties.
 *
 * @param { ?ResourceStr } value - Text value of the menu element
 * @param { () -> Unit } action - Action to be executed when the menu element is selected
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(value!: ?ResourceStr, action!: () -> Unit)
}

/**
 * Defines the custom popup options.
 * Configuration options for custom popup components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class CustomPopupOptions {
/**
 * Popup builder.
 * <p><strong>NOTE</strong>:
 * <br>The popup attribute is a universal attribute. A custom popup does not support display of another popup.
 * <br>The position attribute cannot be used for the first-layer container in the builder.
 * <br>If the position attribute is used, the popup will not be displayed.
 * <br>If a custom component is used in the builder, the aboutToAppear and aboutToDisappear lifecycle callbacks
 * of the custom component are irrelevant to the visibility of the popup. As such, the lifecycle of the
 * custom component cannot be used to determine whether the popup is displayed or not.
 * </p>
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var builder: CustomBuilder

/**
 * Preferred position of the popup. If the set position is insufficient for holding the popup,
 * it will be automatically adjusted.
 * @default Placement.Bottom.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var placement: ?Placement

/**
 * backgroundColor of popup.
 * Controls the background color of the popup.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var backgroundColor: ?Color

/**
 * Controls whether to display the popup's arrow/indicator.
 * @default true
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var enableArrow: ?Bool

/**
 * Whether to automatically dismiss the popup when an operation is performed on the page.
 * <br>To enable the popup to disappear upon a click on it, place a layout component in the builder place the
 * <Popup> component in the layout component, and modify the value of the bindPopup variable (show: boolean)
 * in the onClick event of the layout component.
 * Controls whether the popup is automatically dismissed.
 * @default true
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var autoCancel: ?Bool

/**
 * on State Change.
 * Callback function triggered when the popup state changes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var onStateChange: Option<(PopupStateChangeParam) -> Unit>

/**
 * Color of the popup. To remove the background blur, set backgroundBlurStyle to BlurStyle.None.
 * @default: 0x4d4d4d
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var popupColor: ?Color

/**
 * The offset of the sharp corner of popup.
 *
 * Offset of the popup arrow relative to the popup. When the arrow is at the top or bottom of the popup:
 * <br>The value 0 indicates that the arrow is located on the leftmost, and any other value indicates the distance
 * from the arrow to the leftmost; the arrow is centered by default. When the arrow is on the left or right
 * side of the popup: The value indicates the distance from the arrow to the top; the arrow is centered by
 * default. When the popup is displayed on either edge of the screen, it will automatically deviate leftward
 * or rightward to stay within the safe area. When the value is 0, the arrow always points to the bound component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var arrowOffset: ?Length

/**
 * Whether to display in the sub window.
 * Controls whether the popup appears in a separate window.
 * @default false.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var showInSubWindow: ?Bool

/**
 * The mask to block gesture events of popup.
 * When mask is set false, gesture events are not blocked.
 * When mask is set true, gesture events are blocked and mask color is transparent.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var mask: ?Color

/**
 * Sets the space of between the popup and target.
 * @default 8.vp
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var targetSpace: ?Length

/**
 * Sets the position offset of the popup.
 * @default Position(x: 0, y:0)
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offset: ?Position

/**
 * Set the width of the popup.
 * Controls the width of the popup.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var width: ?Length

/**
 * Position of the popup arrow relative to its parent component. Available positions are Start, Center, and End,
 * in both vertical and horizontal directions. All these positions are within the parent component area.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var arrowPointPosition: Option<ArrowPointPosition>

/**
 * Arrow thickness. If the arrow thickness exceeds the length of the edge minus twice the size of the popup
 * rounded corner, the arrow is not drawn.
 * <p><strong>NOTE</strong>:
 * <br>This parameter cannot be set in percentage.
 * </p>
 *
 * @default 16.vp.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var arrowWidth: ?Length

/**
 * The height of the arrow.
 * @default 8.vp.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var arrowHeight: ?Length

/**
 * Rounded corner radius of the popup.
 * @default 20.vp
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var radius: ?Length

/**
 * The style of popup Shadow.
 * Controls the shadow style of the popup.
 * @default ShadowStyle.OuterDefaultMD
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var shadow: ?ShadowStyle

/**
 * Background blur style of the popup.
 * @default BlurStyle.ComponentUltraThick
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var backgroundBlurStyle: ?BlurStyle

/**
 * Controls whether the popup can receive focus.
 * @default true
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var focusable: ?Bool

/**
 * Defines the transition effect of popup opening and closing.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var transition: Option<TransitionEffect>

/**
 * Whether to perform dismissal event interception and interception callback.
 * 1. If this parameter is set to false, the system does not respond to the dismissal event initiated by
 * touching the Back button, swiping left or right on the screen, or pressing the Esc key; and the system
 * dismisses the popup only when show is set to false. If this parameter is set to true, the system responds
 * to the dismissal event as expected.
 * 2. If this parameter is set to a function, the dismissal event is intercepted and the callback function
 * is executed.
 * <p><strong>NOTE</strong>:
 * <br>No more onWillDismiss callback is allowed in an onWillDismiss callback.
 * </p>
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var onWillDismiss: Option<(DismissPopupAction) -> Unit>

/**
 * Determine if popup can follow the target node when it has rotation or scale.
 * @default false
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var followTransformOfTarget: ?Bool

/**
 * Creates a new CustomPopupOptions instance with the specified properties.
 *
 * @param { () -> Unit } builder - Popup builder function
 * @param { ?Placement } [placement] - Preferred position of the popup
 * @param { ?Color } [backgroundColor] - backgroundColor of popup
 * @param { ?Bool } [enableArrow] - Whether show arrow
 * @param { ?Bool } [autoCancel] - Whether to automatically dismiss the popup
 * @param { ?(PopupStateChangeParam) -> Unit } [onStateChange] - on State Change callback
 * @param { ?Bool } [showInSubWindow] - Whether to display in the sub window
 * @param { ?Color } [backgroundColor] - backgroundColor of popup
 * @param { ?Length } [arrowOffset] - The offset of the sharp corner of popup
 * @param { ?Color } [mask] - Whether to apply a mask to the popup
 * @param { ?Length } [targetSpace] - Sets the space of between the popup and target
 * @param { ?Position } [offset] - Sets the position offset of the popup
 * @param { ?Length } [width] - Set the width of the popup
 * @param { ?ArrowPointPosition } [arrowPointPosition] - Position of the popup arrow relative to its parent component
 * @param { ?Length } [arrowWidth] - Arrow thickness
 * @param { ?Length } [arrowHeight] - The height of the arrow
 * @param { ?Length } [radius] - The round corners of the popup
 * @param { ?ShadowStyle } [shadow] - The style of popup Shadow
 * @param { ?BlurStyle } [backgroundBlurStyle] - Background blur style of the popup
 * @param { ?Bool } [focusable] - Set popup focusable
 * @param { ?TransitionEffect } [transition] - Defines the transition effect of popup opening and closing
 * @param { Option<(DismissPopupAction) -> Unit> } [onWillDismiss] - Whether to perform dismissal event interception and interception callback
 * @param { ?Bool } [followTransformOfTarget] - Determine if popup can follow the target node when it has rotation or scale
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        builder!: () -> Unit,
        placement!: ?Placement = Option.None,
        popupColor!: ?Color = None,
        enableArrow!: ?Bool = None,
        autoCancel!: ?Bool = None,
        onStateChange!: Option<(PopupStateChangeParam) -> Unit> = Option.None,
        showInSubWindow!: ?Bool = None,
        backgroundColor!: ?Color = None,
        arrowOffset!: ?Length = None,
        mask!: ?Color = None,
        targetSpace!: ?Length = None,
        offset!: ?Position = None,
        width!: ?Length = None,
        arrowPointPosition!: ?ArrowPointPosition = None,
        arrowWidth!: ?Length = None,
        arrowHeight!: ?Length = None,
        radius!: ?Length = None,
        shadow!: ?ShadowStyle = None,
        backgroundBlurStyle!: ?BlurStyle = Option.None,
        focusable!: ?Bool = None,
        transition!: Option<TransitionEffect> = Option.None,
        onWillDismiss!: Option<(DismissPopupAction) -> Unit> = None,
        followTransformOfTarget!: ?Bool = None
    )
}

/**
 * Defines the options of popup message.
 * Configuration options for popup message styling.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PopupMessageOptions {
/**
 * Sets the color of popup text.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var textColor: ?ResourceColor

/**
 * Sets the font of popup text.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var font: ?Font

/**
 * PopupMessageOptions constructor.
 * Creates a new PopupMessageOptions instance with the specified properties.
 *
 * @param { ?ResourceColor } [textColor] - Sets the color of popup text
 * @param { ?Font } [font] - Sets the font of popup text
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(textColor!: ?ResourceColor = None, font!: ?Font = None)
}

/**
 * Defines the OverlayOffset.
 * Represents offset values for overlay positioning.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class OverlayOffset {
/**
 * Defines x coordinate offset.
 * Horizontal offset value for overlay positioning.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var x: ?Float64

/**
 * Defines y coordinate offset.
 * Vertical offset value for overlay positioning.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var y: ?Float64

/**
 * OverlayOffset constructor.
 * Creates a new OverlayOffset instance with the specified properties.
 *
 * @param { ?Float64 } [x] - Defines x coordinate offset
 * @param { ?Float64 } [y] - Defines y coordinate offset
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(x!: ?Float64 = None, y!: ?Float64 = None)
}

/**
 * Defines the border width property.
 * Represents border width values for each edge of a component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class EdgeWidths {
/**
 * Top property. value range (-∞, ∞)
 * If value > 0, expand outward elements. Else first shrink by value and then expand outward pixels.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var top: ?Length

/**
 * Right property. value range (-∞, ∞)
 * If value > 0, expand outward elements. Else first shrink by value and then expand outward pixels.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var right: ?Length

/**
 * Bottom property. value range (-∞, ∞)
 * If value > 0, expand outward elements. Else first shrink by value and then expand outward pixels.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var bottom: ?Length

/**
 * left property. value range (-∞, ∞)
 * If value > 0, expand outward elements. Else first shrink by value and then expand outward pixels.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var left: ?Length

/**
 * EdgeWidths constructor.
 * Creates a new EdgeWidths instance with the specified properties.
 *
 * @param { ?Length } [top] - top property
 * @param { ?Length } [right] - right property
 * @param { ?Length } [bottom] - bottom property
 * @param { ?Length } [left] - left property
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(top!: ?Length = None, right!: ?Length = None, bottom!: ?Length = None, left!: ?Length = None)
}

/**
 * Overlay module options.
 * Base class for overlay-related configuration options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class BindOptions {
/**
 * BindOptions constructor.
 * Creates a new BindOptions instance with the specified properties.
 *
 * @param {ResourceColor} [backgroundColor] - Background color of the sheet. Default value: **Color.White**.
 * @param {?() -> Unit} [onAppear] - Callback for when the sheet is displayed (after the animation ends).
 * @param {?() -> Unit} [onDisappear] - Callback for when the sheet disappears (after the animation ends).
 * @param {?() -> Unit} [onWillAppear] - Callback for when the sheet is about to be displayed (before the animation starts).
 * @param {?() -> Unit} [onWillDisappear] - Callback function before overlay popAnimation starts.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(backgroundColor!: ?ResourceColor = None, onAppear!: ?() -> Unit = None,
        onDisappear!: ?() -> Unit = None, onWillAppear!: ?() -> Unit = None, onWillDisappear!: ?() -> Unit = None)
}

/**
 * Component content cover options.
 * Configuration options for content cover components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ContentCoverOptions <: BindOptions {
/**
 * ContentCoverOptions constructor.
 * Creates a new ContentCoverOptions instance with the specified properties.
 *
 * @param {?ModalTransition} [modalTransition] - Defines transition type. The default value is ModalTransition.Default.
 * @param {?(DismissContentCoverAction) -> Unit} [onWillDismiss] - Callback function when the content cover interactive dismiss.
 * @param {?TransitionEffect} [transition] - Defines the transition effect
 * @param {?ResourceColor} [backgroundColor] - Background color of the sheet. Default value: **Color.White**.
 * @param {?() -> Unit} [onAppear] - Callback for when the sheet is displayed (after the animation ends).
 * @param {?() -> Unit} [onDisappear] - Callback for when the sheet disappears (after the animation ends).
 * @param {?() -> Unit} [onWillAppear] - Callback for when the sheet is about to be displayed (before the animation starts).
 * @param {?() -> Unit} [onWillDisappear] - Callback function before overlay popAnimation starts.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        modalTransition!: ?ModalTransition = Option.None,
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
 * Component sheet dismiss.
 * Provides functionality to dismiss a sheet component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SheetDismiss {
/**
 * Defines sheet dismiss function.
 * Programmatically dismisses the sheet.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func dismiss(): Unit
}

/**
 * Defines sheet spring back action.
 * Provides functionality for spring back animations in sheet components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SpringBackAction {
/**
 * Defines spring back function.
 * Triggers a spring back animation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func springBack(): Unit
}

/**
 * Define the display mode of the sheet.
 * This enum specifies how sheets are displayed in the UI.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum SheetMode {
/**
 * The sheet is displayed at the top of the window corresponding to the current **UIContext** instance,
 * above all pages. It is displayed at the same level as dialog boxes.
 * Overlay mode displays the sheet above all other content.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Overlay
    | 
/**
 * The sheet is displayed at the top of the current page.
 * Embedded mode displays the sheet within the current page context.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Embedded
    | ...
}

extend SheetMode <: Equatable<SheetMode> {
/**
 * Compares this SheetMode with another for equality.
 *
 * @param { SheetMode } other - The SheetMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: SheetMode): Bool
/**
 * Compares this SheetMode with another for inequality.
 *
 * @param { SheetMode } other - The SheetMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: SheetMode): Bool
}

/**
 * Define the scroll size mode of the sheet.
 * This enum specifies how sheet size changes during scrolling.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ScrollSizeMode {
/**
 * Sheet change scroll size after the slide ends.
 * Size changes occur after scrolling completes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    FollowDetent
    | 
/**
 * Sheet change scroll size during the sliding process.
 * Size changes occur continuously during scrolling.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Continuous
    | ...
}

extend ScrollSizeMode <: Equatable<ScrollSizeMode> {
/**
 * Compares this ScrollSizeMode with another for equality.
 *
 * @param { ScrollSizeMode } other - The ScrollSizeMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ScrollSizeMode): Bool
/**
 * Compares this ScrollSizeMode with another for inequality.
 *
 * @param { ScrollSizeMode } other - The ScrollSizeMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ScrollSizeMode): Bool
}

/**
 * Component sheet options.
 * Configuration options for sheet components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SheetOptions <: BindOptions {
/**
 * Defines sheet options.
 * Creates a new SheetOptions instance with the specified properties.
 *
 * @param { Option<ResourceColor> } [backgroundColor] - Background color of the sheet
 * @param { Option<() -> Unit> } [onAppear] - Callback for when the sheet is displayed (after the animation ends)
 * @param { Option<() -> Unit> } [onDisappear] - Callback for when the sheet disappears (after the animation ends)
 * @param { Option<() -> Unit> } [onWillAppear] - Callback for when the sheet is about to be displayed (before the animation starts)
 * @param { Option<() -> Unit> } [onWillDisappear] - Callback function before overlay popAnimation starts
 * @param { Option<SheetSize> } [height] - Whether to display the drag bar. The default value is SheetSize.Large
 * @param { Option<Array<SheetSize>> } [detents] - Defines sheet detents
 * @param { Option<SheetType> } [preferType] - Type of the sheet
 * @param { Option<Bool> } [showClose] - Defines whether the close icon is displayed. The default value is true
 * @param { Option<Bool> } [dragBar] - Whether to display the drag bar. The default value is true
 * @param { Option<BlurStyle> } [blurStyle] - Background blur of the sheet. By default, there is no background blur, the default value is BlurStyle.None
 * @param { Option<Color> } [maskColor] - Mask color of the sheet
 * @param { Option<() -> Unit> } [title] - Title of the sheet
 * @param { Option<Bool> } [enableOutsideInteractive] - Whether to allow users to interact with the page pertaining to the sheet. The default value is false
 * @param { Option<(SheetDismiss) -> Unit> } [shouldDismiss] - Callback invoked when the user performs an interactive dismiss operation
 * @param { Option<(SheetDismiss) -> Unit> } [onWillDismiss] - Callback invoked when the user performs an interactive dismiss operation
 * @param { Option<(SpringBackAction) -> Unit> } [onWillSpringBackWhenDismiss] - Callback invoked when the user performs a pull-down-to-dismiss gesture, to control the bounce effect
 * @param { Option<(Float32) -> Unit> } [onHeightDidChange] - Callback for changes in the height of the sheet
 * @param { Option<(Float32) -> Unit> } [onDetentsDidChange] - Callback for changes in the detents of the sheet
 * @param { Option<(Float32) -> Unit> } [onWidthDidChange] - Called when width of the sheet changed
 * @param { Option<(Float32) -> Unit> } [onTypeDidChange] - Called when the sheet type changed
 * @param { Option<Length> } [borderWidth] - Border width of the sheet. The default value is 0
 * @param { Option<Color> } [borderColor] - Border color of the sheet. The default value is Color.Black
 * @param { Option<EdgeStyles> } [borderStyle] - Defines the sheet's border style
 * @param { Option<Length> } [width] -Width of the sheet
 * @param { Option<ShadowOptions> } [shadow] - Shadow of the sheet
 * @param { Option<SheetMode> } [mode] - Determine the level sheet shows, whether sheet should be displayed within the page. The default value is SheetMode.Overlay
 * @param { Option<ScrollSizeMode> } [scrollSizeMode] - Content update mode of the sheet when it is scrolled
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        backgroundColor!: Option<ResourceColor> = Option.None,
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
        borderWidth!: Option<Length> = None,
        borderColor!: Option<Color> = None,
        borderStyle!: Option<EdgeStyles> = None,
        width!: Option<Length> = None,
        shadow!: Option<ShadowOptions> = None,
        mode!: Option<SheetMode> = None,
        scrollSizeMode!: Option<ScrollSizeMode> = None
    )
}

/**
 * Defines the data type of the interface restriction.
 * Represents a rectangular area with position and dimensions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Rectangle {
/**
 * x:Horizontal coordinate.
 * X position of the rectangle's top-left corner.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var x: ?Length

/**
 * y:Vertical axis coordinate.
 * Y position of the rectangle's top-left corner.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var y: ?Length

/**
 * Sets the width of the current touchRect.
 * Width of the rectangle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var width: ?Length

/**
 * Sets the height of the current touchRect.
 * Height of the rectangle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var height: ?Length

/**
 * Rectangle constructor.
 * Creates a new Rectangle instance with the specified properties.
 *
 * @param { ?Length } [x] - x:Horizontal coordinate
 * @param { ?Length } [y] - y:Vertical axis coordinate
 * @param { ?Length } [width] - Sets the width of the current touchRect
 * @param { ?Length } [height] - Sets the height of the current touchRect
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(x!: ?Length = None, y!: ?Length = None, width!: ?Length = None, height!: ?Length = None)
}

/**
 * Component popup dismiss
 * Provides functionality to dismiss a popup with a reason.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DismissPopupAction {
/**
 * Defines popup dismiss reason.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var reason: DismissReason

/**
 * Defines popup dismiss function.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func dismiss(): Unit
}

/**
 * Defines the context menu options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ContextMenuOptions {
/**
 * Sets the position offset of the context menu window.
 * The default value of Position is x:0, y:0.
 * Additional offset for the context menu position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offset: ?Position

/**
 * Preferred position of the context menu. If the set position is insufficient for holding the component, it will be
 * <br> automatically adjusted.
* @default Placement.BottomLeft.
 * Preferred placement of the context menu.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var placement: Option<Placement>

/**
 * Controls whether to display an arrow indicator on the menu.
 * @default false
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var enableArrow: ?Bool

/**
 * The horizontal offset to the left of menu or vertical offset to the top of menu.
 * Offset of the menu arrow relative to the menu.
 * @default 0.vp
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var arrowOffset: ?Length

/**
 * The preview content of context menu.
 * Custom preview content for the context menu.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var preview: ?CustomBuilder

/**
 * Animation options for the context menu preview.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var previewAnimationOptions: ?ContextMenuAnimationOptions

/**
 * Callback triggered when the menu is displayed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var onAppear: ?() -> Unit

/**
 * Callback function when the context menu disappear.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var onDisappear: ?() -> Unit

/**
 * Callback triggered when the menu is about to appear.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var aboutToAppear: ?() -> Unit

/**
 * Callback triggered when the menu is about to disappear.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var aboutToDisappear: ?() -> Unit

/**
 * Background color of the menu.
 * @default Color.Transparent
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var backgroundColor: ?ResourceColor

/**
 * Background blur style of the menu.
 * @default BlurStyle.BackgroundUltraThick.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var backgroundBlurStyle: ?BlurStyle

/**
 * Defines the transition effect of menu opening and closing.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var transition: ?TransitionEffect

/**
 * ContextMenuOptions constructor.
 * Creates a new ContextMenuOptions instance with the specified properties.
 *
 * @param { ?Position } [offset] - Sets the position offset of the context menu window
 * @param { Option<Placement> } [placement] - Preferred position of the context menu
 * @param { ?Bool } [enableArrow] - whether show arrow belong to the menu
 * @param { ?Length } [arrowOffset] - The horizontal offset to the left of menu or vertical offset to the top of menu
 * @param { Option<CustomBuilder> } [preview] - The preview content of context menu
 * @param { ?ContextMenuAnimationOptions } [previewAnimationOptions] - The preview animator options
 * @param { ?() -> Unit } [onAppear] - Callback triggered when the menu is displayed
 * @param { ?() -> Unit } [onDisappear] - Callback function when the context menu disappear
 * @param { ?() -> Unit } [aboutToAppear] - Callback triggered when the menu is about to appear
 * @param { ?() -> Unit } [aboutToDisappear] - Callback triggered when the menu is about to disappear
 * @param { ?ResourceColor } [backgroundColor] - Background color of the menu
 * @param { ?BlurStyle } [backgroundBlurStyle] - Background blur style of the menu
 * @param { ?TransitionEffect } [transition] - Defines the transition effect of menu opening and closing
 * @param { ?BorderRadiuses } [borderRadius] - Border radius of the menu
 * @param { ?Margin } [layoutRegionMargin] - Margin around the menu layout region
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        offset!: ?Position = None,
        placement!: Option<Placement> = Option.None,
        enableArrow!: ?Bool = None,
        arrowOffset!: ?Length = None,
        preview!: Option<() -> Unit> = Option.None,
        previewAnimationOptions!: ?ContextMenuAnimationOptions = None,
        onAppear!: ?() -> Unit = None,
        onDisappear!: ?() -> Unit = None,
        aboutToAppear!: ?() -> Unit = None,
        aboutToDisappear!: ?() -> Unit = None,
        backgroundColor!: ?ResourceColor = None,
        backgroundBlurStyle!: ?BlurStyle = Option.None,
        transition!: ?TransitionEffect = None,
        borderRadius!: ?BorderRadiuses = None,
        layoutRegionMargin!: ?Margin = None
    )
}

/**
 * Component content cover dismiss.
 * Provides functionality to dismiss a content cover with a reason.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DismissContentCoverAction {
/**
 * Defines content cover dismiss reason.
 * The reason why the content cover is being dismissed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var reason: DismissReason

/**
 * Defines content cover dismiss function.
 * Programmatically dismisses the content cover.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func dismiss(): Unit
}

/**
 * Defines the ContextMenu's preview animator options.
 * Configuration options for context menu preview animations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ContextMenuAnimationOptions {
/**
 * Sets the start animator scale and end animator scale.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var scale: ?VArray<Float64, $2>

/**
 * Defines the transition effect of menu preview opening and closing.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var transition: ?TransitionEffect

/**
 * Sets the scale start and end animator of the image displayed before the custom builder preview is displayed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var hoverScale: ?VArray<Float64, $2>

/**
 * Creates a new ContextMenuAnimationOptions instance with the specified properties.
 *
 * @param { ?VArray<Float64, $2> } [scale] - Sets the start animator scale and end animator scale
 * @param { ?TransitionEffect } [transition] - Defines the transition effect of menu preview opening and closing
 * @param { ?VArray<Float64, $2> } [hoverScale] - Sets the scale start and end animator of the image displayed before the custom builder preview is displayed
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(scale!: ?VArray<Float64, $2> = None, transition!: ?TransitionEffect = None,
        hoverScale!: ?VArray<Float64, $2> = None)
}

/**
 * Provides functionality to dismiss a sheet with a reason.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DismissSheetAction {
/**
 * Defines content cover dismiss reason.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var reason: ?DismissReason

/**
 * Defines sheet dismiss function.
 * Programmatically dismisses the sheet.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func dismiss(): Unit
}

extend FunctionKey <: CombinationKeyType {}

extend String <: CombinationKeyType {}

/**
 * CommonMethod interface.
 * This interface defines common methods that can be applied to UI components.
 * It provides a generic type T that represents the return type of the methods,
 * allowing for method chaining in fluent APIs.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface CommonMethod<T> {
/**
 * Registers a callback function that is triggered when the component is clicked.
 *
 * @param { ?(ClickEvent) -> Unit } event - The callback function to be executed on click
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onClick(event: ?(ClickEvent) -> Unit): T

/**
 * Registers a callback function that is triggered when the component appears on the screen.
 *
 * @param { ?() -> Unit } event - The callback function to be executed when the component appears
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onAppear(event: ?() -> Unit): T

/**
 * This callback is triggered when component uninstallation disappears.
 * Registers a callback function that is triggered when the component disappears from the screen.
 *
 * @param { ?() -> Unit } event - The callback function triggered when the component tree disappears
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDisAppear(event: ?() -> Unit): T

/**
 * Invoked when a touch event is triggered.
 * Registers a callback function that is triggered when touch events occur on the component.
 *
 * @param { ?(TouchEvent) -> Unit } event - The callback function to be executed on touch events
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onTouch(event: ?(TouchEvent) -> Unit): T

/**
 * Registers a callback function that is triggered when the mouse pointer enters or leaves the component.
 *
 * @param { ?(Bool) -> Unit } event - The callback function to be executed on hover events.
 *                                   The boolean parameter indicates whether the pointer is hovering over the component.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onHover(event: ?(Bool) -> Unit): T

/**
 * This callback is triggered when the size or position of this component change finished.
 * Registers a callback function that is triggered when the component's size or position changes.
 *
 * @param { ?(Area, Area) -> Unit } event - The callback function to be executed when the area changes.
 *                                        The first parameter is the old area, the second is the new area.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onAreaChange(event: ?(Area, Area) -> Unit): T

/**
 * Registers a callback function that is triggered when the visible area of the component changes.
 *
 * @param { ?Array<Float64> } ratios - Array of visibility ratios that trigger the callback
 * @param { ?(Bool, Float64) -> Unit } event - The callback function to be executed when visibility changes.
 *                                           The boolean indicates if the component is visible, and the float is the visibility ratio.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onVisibleAreaChange(ratios: ?Array<Float64>, event: ?(Bool, Float64) -> Unit): T

/**
 * Triggered when the component is clicked by a mouse button or the mouse pointer moves on the component.
 * Registers a callback function that is triggered when mouse events occur on the component.
 *
 * @param { ?(MouseEvent) -> Unit } event - The callback function to be executed on mouse events
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onMouse(event: ?(MouseEvent) -> Unit): T

/**
 * Set or reset the callback is triggered when component has keyboard input.
 *
 * @param { ?(KeyEvent) -> Unit } event - The callback function to be executed on key events
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onKeyEvent(event: ?(KeyEvent) -> Unit): T

/**
 * Registers a callback function that is triggered when the component receives focus.
 *
 * @param { ?() -> Unit } event - The callback function to be executed when the component gets focus
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onFocus(event: ?() -> Unit): T

/**
 * Registers a callback function that is triggered when the component loses focus.
 *
 * @param { ?() -> Unit } event - The callback function to be executed when the component loses focus
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onBlur(event: ?() -> Unit): T

/**
 * After a listener is bound, the component can be dragged. After the drag occurs, a callback is triggered.
 * Registers a callback function that is triggered when a drag operation starts, providing a DragItemInfo.
 *
 * @param { ?(DragInfo) -> DragItemInfo } event - The callback function to be executed when drag starts
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDragStart(event: ?(DragInfo) -> DragItemInfo): T

/**
 * After binding, a callback is triggered when the component is dragged to the range of the component.
 *
 * @param { ?(DragInfo) -> CustomBuilder } event - The callback function to be executed when drag starts
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDragStart(event: ?(DragInfo) -> CustomBuilder): T

/**
 * After binding, a callback is triggered when the component is dragged to the range of the component.
 *
 * @param { ?(DragInfo) -> Unit } event - The callback function to be executed when drag starts
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDragStart(event: ?(DragInfo) -> Unit): T

/**
 * After binding, a callback is triggered when the component is dragged to the range of the component.
 *
 * @param { ?(DragInfo) -> Unit } event - The callback function to be executed when drag enters
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDragEnter(event: ?(DragInfo) -> Unit): T

/**
 * After binding, a callback is triggered when the drag moves within the range of a placeable component.
 *
 * @param { ?(DragInfo) -> Unit } event - The callback function to be executed when drag moves
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDragMove(event: ?(DragInfo) -> Unit): T

/**
 * After binding, a callback is triggered when the component is dragged out of the component range.
 *
 * @param { ?(DragInfo) -> Unit } event - The callback on drag leave
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDragLeave(event: ?(DragInfo) -> Unit): T

/**
 * The component bound to this event can be used as the drag release target.
 * This callback is triggered when the drag behavior is stopped within the scope of the component.
 *
 * @param { ?(DragInfo) -> Unit } event - The callback function to be executed when drag drops
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDrop(event: ?(DragInfo) -> Unit): T

/**
 * Sets the width of the component or its horizontal layout policy.
 * By default, the component uses the width required for its content.
 * If the width of the component is greater than that of the parent container,
 * the component will be drawn beyond the parent container scope.
 *
 * @param { Option<Length> } widthValue - The width of the component
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func width(widthValue: Option<Length>): T

/**
 * Sets the height of the component or its vertical layout policy.
 * By default, the component uses the height required for its content.
 * If the height of the component is greater than that of the parent container,
 * the component will be drawn beyond the parent container scope.
 *
 * @param { Option<Length> } heightValue - The height of the component
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func height(heightValue: Option<Length>): T

/**
 * Sets both the width and height of the component.
 *
 * @param { Option<Length> } width - The width of the component
 * @param { Option<Length> } height - The height of the component
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func size(width!: ?Length, height!: ?Length): T

/**
 * Sets the padding of the component.
 * Sets uniform padding for all sides of the component.
 * Default value: 0.
 *
 * @param { ?Length } value - The padding value for all sides
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func padding(value: ?Length): T

/**
 * Sets the padding of the component. Default value: **0**.
 * Sets individual padding values for each side of the component.
 *
 * @param { ?Length } top - Padding for the top side
 * @param { ?Length } right - Padding for the right side
 * @param { ?Length } bottom - Padding for the bottom side
 * @param { ?Length } left - Padding for the left side
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func padding(top!: ?Length, right!: ?Length, bottom!: ?Length, left!: ?Length): T

/**
 * Sets uniform margin for all sides of the component.
 * Default value: 0.
 *
 * @param { ?Length } value - The margin value for all sides
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func margin(value: ?Length): T

/**
 * Sets individual margin values for each side of the component.
 *
 * @param { ?Length } top - Margin for the top side
 * @param { ?Length } right - Margin for the right side
 * @param { ?Length } bottom - Margin for the bottom side
 * @param { ?Length } left - Margin for the left side
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func margin(top!: ?Length, right!: ?Length, bottom!: ?Length, left!: ?Length): T

/**
 * Sets the weight of the component during layout. A component with this attribute is allocated space
 * along the main axis of its parent container (Row, Column, or Flex) based on its specified weight.
 * Sets the layout weight of the component.
 * Default value: 0.
 *
 * @param { ?Int32 } value - The layout weight of the component.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func layoutWeight(value: ?Int32): T

/**
 * Sets the constraint size of the component, which is used to limit the size range during component layout.
 *
 * @param { ?Length } minWidth - Minimum width of the component
 * @param { ?Length } maxWidth - Maximum width of the component
 * @param { ?Length } minHeight - Minimum height of the component
 * @param { ?Length } maxHeight - Maximum height of the component
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func constraintSize(minWidth!: ?Length, maxWidth!: ?Length, minHeight!: ?Length, maxHeight!: ?Length): T

/**
 * Sets the alignment mode of the component content in the drawing area. Default value: Alignment.Center.
 *
 * @param { ?Alignment } value - The alignment mode.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func align(value: ?Alignment): T

/**
 * Sets how elements are laid out along the main axis of the container.
 * Default value: Direction.Auto.
 *
 * @param { ?Direction } value - The layout direction.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func direction(value: ?Direction): T

/**
 * Sets the absolute position of the component relative to the position of the parent component.
 * <br>The attribute is not available for a layout container whose width and height are zero.
 *
 * @param { ?Length } x - X coordinate relative to the parent component
 * @param { ?Length } y - Y coordinate relative to the parent component
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func position(x!: ?Length, y!: ?Length): T

/**
 * Sets the anchor for locating the component, which is used to move the component
 * further away from the position specified by position or offset.
 *
 * @param { ?Length } x - X coordinate of the anchor point
 * @param { ?Length } y - Y coordinate of the anchor point
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func markAnchor(x!: ?Length, y!: ?Length): T

/**
 * Sets the offset of the component relative to its original position.
 * <br>The offset attribute does not affect the layout of the parent container.
 * It adjusts the component position only during drawing.
 *
 * @param { ?Length } x - X offset from the original position
 * @param { ?Length } y - Y offset from the original position
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func offset(x!: ?Length, y!: ?Length): T

/**
 * Sets the alignment mode of the component content in the drawing area.
 * Default value: **Alignment.Center**.
 *
 * @param { ?AlignRuleOption } value - The alignment rules
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func alignRules(value: ?AlignRuleOption): T

/**
 * Sets the aspect ratio of the component, which can be obtained using the following formula: width/height.
 * <br>If only width and aspectRatio are set, the height is calculated using the following formula: width/aspectRatio.
 * <br>If only height and aspectRatio are set, the width is calculated using the following formula: height x aspectRatio.
 * <br>If width, height, and aspectRatio are all set, the explicitly set height is ignored, and the effective height is
 * calculated using the following formula: width/aspectRatio.
 * <br>This parameter takes effect only when a valid value greater than 0 is specified.
 *
 * @param { Float64 } value - The aspect ratio (width/height)
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func aspectRatio(value: Float64): T

/**
 * Sets the display priority for the component in the layout container.
 * <br>This parameter is only effective in Row, Column, and Flex (single-line) container components.
 *
 * @param { ?Int32 } value - The display priority
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func displayPriority(value: ?Int32): T

/**
 * Sets the base size of the component in the main axis of the parent container.
 * 
 * @param { ?Length } value - The base size in the main axis
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func flexBasis(value: ?Length): T

/**
 * Sets the percentage of the parent container's remaining space that is allocated to the component.
 * Sets the flex grow factor of the component.
 * Default value: 0.0
 *
 * @param { ?Float64 } value - The flex grow factor
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func flexGrow(value: ?Float64): T

/**
 * Sets the percentage of the parent container's remaining space that is allocated to the component.
 * Sets the flex grow factor of the component.
 * Default value: 0.
 *
 * @param { ?Int64 } value - The flex grow factor
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func flexGrow(value: ?Int64): T

/**
 * Sets the percentage of the parent container's shrink size that is allocated to the component.
 * Default value: 0 when the parent container is Column or Row, 1 when the parent container is Flex.
 *
 * @param { ?Float64 } value - The flex shrink factor
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func flexShrink(value: ?Float64): T

/**
 * Sets the percentage of the parent container's shrink size that is allocated to the component.
 * Default value: 0 when the parent container is Column or Row, 1 when the parent container is Flex.
 *
 * @param { ?Int64 } value - The flex shrink factor
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func flexShrink(value: ?Int64): T

/**
 * Sets the alignment mode of the child components along the cross axis of the parent container.
 * Sets the alignment of the component along the cross axis.
 * Default value: ItemAlign.Auto.
 *
 * @param { ?ItemAlign } value - The alignment mode along the cross axis
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func alignSelf(value: ?ItemAlign): T

/**
 * Sets the response region of the current component.
 *
 * @param { ?Rectangle } value - The response region rectangle
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func responseRegion(value: ?Rectangle): T

/**
 * Sets the response region of the current component.
 *
 * @param { ?Array<Rectangle> } value - Array of response region rectangles
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func responseRegion(value: ?Array<Rectangle>): T

/**
 * Sets all border properties at once.
 *
 * @param { ?Length } width - Border width
 * @param { ?ResourceColor } color - Border color
 * @param { ?Length } radius - Border radius
 * @param { ?BorderStyle } style - Border style
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func border(width!: ?Length, color!: ?ResourceColor, radius!: ?Length, style!: ?BorderStyle): T

/**
 * Sets the border width.
 * Percentage values are not supported.
 *
 * @param { ?Length } value - Border width for all sides.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func borderWidth(value: ?Length): T

/**
 * Sets the border width.
 * Percentage values are not supported.
 *
 * @param { ?EdgeWidths } value - Border widths for each side
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func borderWidth(value: ?EdgeWidths): T

/**
 * Sets the border color.
 * Default value: Color.Black.
 *
 * @param { ?ResourceColor } value - Border color
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func borderColor(value: ?ResourceColor): T

/**
 * Sets the radius of the border rounded corners.
 * <br>The radius is restricted by the component size. The maximum value is half of the component width or height.
 *
 * @param { ?Length } topLeft - Radius of the top-left corner
 * @param { ?Length } topRight - Radius of the top-right corner
 * @param { ?Length } bottomLeft - Radius of the bottom-left corner
 * @param { ?Length } bottomRight - Radius of the bottom-right corner
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func borderRadius(topLeft!: ?Length, topRight!: ?Length, bottomLeft!: ?Length, bottomRight!: ?Length): T

/**
 * Sets the radius of the border rounded corners.
 * <br>The radius is restricted by the component size. The maximum value is half of the component width or height.
 *
 * @param { ?Length } value - Border radius for all corners
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func borderRadius(value: ?Length): T

/**
 * Sets the border style.
 * Default value: BorderStyle.Solid.
 *
 * @param { ?BorderStyle } value - Border style
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func borderStyle(value: ?BorderStyle): T

/**
 * Applies a foreground blur style to the component.
 *
 * @param { ?BlurStyle } value - The blur style
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func foregroundBlurStyle(value: ?BlurStyle): T

/**
 * Applies a foreground blur style to the component.
 *
 * @param { ?BlurStyle } value - The blur style
 * @param { ?ForegroundBlurStyleOptions } options - Additional blur options
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func foregroundBlurStyle(value: ?BlurStyle, options: ?ForegroundBlurStyleOptions): T

/**
 * Sets the foreground color of the component.
 * If the component does not have a foreground color set, it inherits the color from its parent component by default.
 *
 * @param { ?ColoringStrategy } value - Foreground color strategy
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func foregroundColor(value: ?ColoringStrategy): T

/**
 * Sets the foreground color of the component.
 * If the component does not have a foreground color set, it inherits the color from its parent component by default.
 *
 * @param { ?ResourceColor } value - Foreground color
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func foregroundColor(value: ?ResourceColor): T

/**
 * Background color.
 * Sets the background color of the component.
 *
 * @param { ?ResourceColor } value - Background color
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func backgroundColor(value: ?ResourceColor): T

/**
 * Sets the background image of the component.
 *
 * @param { ?ResourceStr } src - The background image source
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func backgroundImage(src: ?ResourceStr): T

/**
 * Background image.
 * Sets the background image of the component with repeat options.
 *
 * @param { ?ResourceStr } src - The background image source
 * @param { ?ImageRepeat } repeat - How to repeat the background image
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func backgroundImage(src: ?ResourceStr, repeat: ?ImageRepeat): T

/**
 * Sets the size of the background image using ImageSize.
 *
 * @param { ?ImageSize } value - The width and height of the background image
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func backgroundImageSize(value: ?ImageSize): T

/**
 * Sets the size of the background image using width and height.
 *
 * @param { ?Length } width - Width of the background image
 * @param { ?Length } height - Height of the background image
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func backgroundImageSize(width!: ?Length, height!: ?Length): T

/**
 * Background image position.
 * Sets the position of the background image using Alignment.
 * x: Horizontal coordinate;
 * y: Vertical axis coordinate;
 *
 * @param { ?Alignment } value - Alignment of the background image
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func backgroundImagePosition(value: ?Alignment): T

/**
 * Background image position.
 * Sets the position of the background image using coordinates.
 * x: Horizontal coordinate;
 * y: Vertical axis coordinate;
 *
 * @param { ?Length } x - Horizontal coordinate
 * @param { ?Length } y - Vertical coordinate
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func backgroundImagePosition(x!: ?Length, y!: ?Length): T

/**
 * Scale ratio along the x-, y-, and z-axis. The default value is **1**.
 * centerX and centerY are used to set the scale center point.
 * default:{x:1,y:1,z:1,centerX:'50%',centerY:'50%'}
 * Sets the scale transformation of the component.
 *
 * @param { ?Float32 } x - Scale ratio along the x-axis
 * @param { ?Float32 } y - Scale ratio along the y-axis
 * @param { ?Float32 } z - Scale ratio along the z-axis
 * @param { ?Length } centerX - X coordinate of the scale center point
 * @param { ?Length } centerY - Y coordinate of the scale center point
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func scale(x!: ?Float32, y!: ?Float32, z!: ?Float32, centerX!: ?Length, centerY!: ?Length): T

/**
 * Sets the opacity of the component.
 *
 * @param { ?Float64 } value - Opacity of the component. The value ranges from 0 to 1
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func opacity(value: ?Float64): T

/**
 * Set component rotation.
 * Sets the rotation transformation of the component.
 *
 * @param { ?Float64 } x - X component of the rotation vector
 * @param { ?Float64 } y - Y component of the rotation vector
 * @param { ?Float64 } z - Z component of the rotation vector
 * @param { ?Float64 } angle - Rotation angle in degrees
 * @param { ?Length } centerX - X coordinate of the rotation center point
 * @param { ?Length } centerY - Y coordinate of the rotation center point
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func rotate(x!: ?Float64, y!: ?Float64, z!: ?Float64, angle!: ?Float64, centerX!: ?Length, centerY!: ?Length): T

/**
 * Sets the translation transformation of the component.
 *
 * @param { ?Length } x - Translation distance along the x-axis
 * @param { ?Length } y - Translation distance along the y-axis
 * @param { ?Length } z - Translation distance along the z-axis
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func translate(x!: ?Length, y!: ?Length, z!: ?Length): T

/**
 * If the value is true, the component is available and can respond to operations such as clicking.
 * If it is set to false, click operations are not responded.
 *
 * @param { ?Bool } value - Whether the component is enabled.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func enabled(value: ?Bool): T

/**
 * If the components of the two pages are configured with the same ID.
 * The shared element transition is performed during transition.
 * If the parameter is set to an empty string, the shared element transition does not occur.
 * For details about the options parameter, see the options parameter description.
 *
 * @param { String } id - Transition of the shared element.
 *     <br>If the same **id** value is configured for a component on the two pages,
 *     <br>this component is considered as a shared element of the pages.
 *     <br>If the **id** value is an empty string, no transition will be applied to the component.
 * @param { ?sharedTransitionOptions } options - Parameters of the shared element transition animation.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func sharedTransition(id: String, options!: ?SharedTransitionOptions): T

/**
 * Sets a geometry transition for the component.
 *
 * @param { ?String } id - Geometry transition ID
 * @param { ?Bool } followWithoutTransition - Whether to follow without transition
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func geometryTransition(id: ?String, followWithoutTransition!: ?Bool): T

/**
 * Adds the content blurring effect for the current component. The input parameter is the blurring radius.
 * The larger the blurring radius, the more blurring the content.
 * If the value is 0, the content blurring effect is not blurring.
 *
 * @param { ?Float64 } value - The blurring radius
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func blur(value: ?Float64): T

/**
 * Applies a color blend effect to the component.
 *
 * @param { ?ResourceColor } value - The blend color
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func colorBlend(value: ?ResourceColor): T

/**
 * Applies a background blur effect to the component. You can customize the blur radius and grayscale parameters.
 *
 * @param { ?Float64 } value - The blurring radius
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func backdropBlur(value: ?Float64): T

/**
 * Applies a shadow effect to the component.
 *
 * @param { ?Float64 } radius - Shadow radius
 * @param { ?ResourceColor } color - Shadow color
 * @param { ?Float64 } offsetX - Shadow offset on the x-axis
 * @param { ?Float64 } offsetY - Shadow offset on the y-axis
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func shadow(radius!: ?Float64, color!: ?ResourceColor, offsetX!: ?Float64, offsetY!: ?Float64): T

/**
 * Applies a grayscale effect to the component.
 *
 * @param { ?Float64 } value - Grayscale value (0.0 to 1.0)
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func grayscale(value: ?Float64): T

/**
 * Applies a brightness effect to the component.
 *
 * @param { ?Float64 } value - Brightness of the component. Default value: **1.0**. 
 * <br> The value **1** indicates no effects.
 * <br> The value **0** indicates the complete darkness. If the value is less than **1**, the brightness decreases.
 * <br> If the value is greater than **1**, the brightness increases. 
 * <br> A larger value indicates a higher brightness. A brightness of 2 turns the component completely white.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func brightness(value: ?Float64): T

/**
 * Applies a saturation effect to the component.
 *
 * @param { ?Float64 } value - Saturation value
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func saturate(value: ?Float64): T

/**
 * Applies a contrast effect to the component. 
 *
 * @param { ?Float64 } value - Contrast of the component. Default value: **1.0**.
 * <br> The input parameter is a contrast value. 
 * <br> If the value is **1**, the source image is displayed.
 * <br> If the value is greater than 1, a larger value indicates a higher contrast and a clearer image.
 * <br> If the value is less than 1, a smaller value indicates a lower contrast is.
 * <br> If the value is **0**, the image becomes all gray. The unit is percentage.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func contrast(value: ?Float64): T

/**
 * Invert the input image. Value defines the scale of the conversion. 100% of the value is a complete reversal.
 * A value of 0% does not change the image. (Percentage)
 *
 * @param { ?Float64 } value - Value indicates the scale of the conversion or the options of invert
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func invert(value: ?Float64): T

/**
 * Invert the input image. Value defines the scale of the conversion. 100% of the value is a complete reversal.
 * A value of 0% does not change the image. (Percentage)
 *
 * @param { ?Float64 } low - Defines the low value of threshold
 * @param { ?Float64 } high - Defines the high value of threshold
 * @param { ?Float64 } threshold - Defines the threshold
 * @param { ?Float64 } thresholdRange - Defines the threshold range
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func invert(low!: ?Float64, high!: ?Float64, threshold!: ?Float64, thresholdRange!: ?Float64): T

/**
 * Sepia conversion ratio of the component.
 *
 * @param { ?Float64 } value - Sepia conversion ratio of the component. If the value is **1**, the image
 * <br> is completely sepia. If the value is **0**, the component remains unchanged.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func sepia(value: ?Float64): T

/**
 * Rotates the hue of the component.
 *
 * @param { ?Float32 } value - Hue rotation angle of the component.
 *     <br>A rotation of 360 degrees leaves the color unchanged.
 *     <br>A rotation of 180 degrees and then -180 degrees also leaves the color unchanged.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func hueRotate(value: ?Float32): T

/**
 * The sibling components in the same container are hierarchically displayed. A larger value of z indicates a higher display level.
 *
 * @param { ?Int32 } value - The z-index value
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func zIndex(value: ?Int32): T

/**
 * Controls the display or hide of the current component.
 *
 * @param { ?Visibility } value - The visibility state
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func visibility(value: ?Visibility): T

/**
 * Sets whether to clip the areas of child components that extend beyond this component's boundaries,
 * That is, whether to perform clipping based on the edge contour of the parent container.
 *
 * @param { ?Bool } value - Whether to perform clipping based on the edge contour of the parent container. 
 * <br>Default value: **false**.
 * <br>**true**: Perform clipping. **false**: Do not perform clipping.
 * <br>If this parameter is set to **true**.
 * <br>child components exceeding the current component's bounds will not respond to bound gesture events.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func clip(value: ?Bool): T

/**
 * Clips this component based on the given shape.
 *
 * @param { ?BaseShape } value - Shape that the component to be clipped into. The clipped area remains responsive to bound gesture events.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func clipShape(value: ?BaseShape): T

/**
 * Adds a mask of the specified shape to the component.
 *
 * @param { BaseShape } value - Mask of the specified shape to add to the component
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func maskShape(value: BaseShape): T

/**
 * Add mask text to the current component. The layout is the same as that of the current component.
 *
 * @param { ?String } value - The overlay text
 * @param { ?Alignment } align - The alignment of the overlay
 * @param { ?OverlayOffset } offset - The offset of the overlay
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func overlay(value!: ?String, align!: ?Alignment, offset!: ?OverlayOffset): T

/**
 * Popup control
 * NOTE:
 * The popup can be displayed only after the entire page is fully constructed. Therefore, to avoid incorrect
 * display positions and shapes, do not set this parameter to true while the page is still being constructed.
 *
 * @param { ?Bool } show - Whether to show the popup, default value is false
 * @param { ?PopupOptions } popup - Popup options
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func bindPopup(show: ?Bool, popup: ?PopupOptions): T

/**
 * Popup control
 * NOTE:
 * The popup can be displayed only after the entire page is fully constructed. Therefore, to avoid incorrect
 * display positions and shapes, do not set this parameter to true while the page is still being constructed.
 *
 * @param { ?Bool } show - Whether to show the popup, default value is false
 * @param { ?CustomPopupOptions } popup - Custom popup options
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func bindPopup(show: ?Bool, popup: ?CustomPopupOptions): T

/**
 * Binds a menu to the component.
 *
 * @param { ?Array<MenuElement> } content - Indicates the content of menu
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func bindMenu(content: ?Array<MenuElement>): T

/**
 * Binds a custom menu to the component.
 *
 * @param { ?CustomBuilder } content - Custom menu builder
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func bindMenu(content!: ?CustomBuilder): T

/**
 * Binds a context menu to the component, whose visibility is subject to the isShown settings.
 *
 * @param { ?CustomBuilder } content - Indicates the content of context menu
 * @param { ?ResponseType } responseType - Indicates response type of context menu, Long pressing with a mouse device is not supported
 * @param { ?ContextMenuOptions } options - Indicates the options of context menu
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func bindContextMenu(content!: ?CustomBuilder, responseType!: ?ResponseType, options!: ?ContextMenuOptions): T

/**
 * Linear Gradient
 * angle: Angle of Linear Gradient. The default value is 180;
 * direction: Direction of Linear Gradient. The default value is GradientDirection.Bottom;
 * colors: Color description for gradients.
 * repeating: repeating. The default value is false
 *
 * @param { ?Float64 } angle - Defines starting angle of linear gradient. The default value is 180
 * @param { ?GradientDirection } direction - Defines the direction of linear gradient. The default value is GradientDirection.Bottom
 * @param { ?Array<(ResourceColor, Float64)> } colors - Defines color description for gradients
 * @param { ?Bool } repeating - Defines gradient colors with repeated coloring. The default value is false
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func linearGradient(angle!: ?Float64, direction!: ?GradientDirection, colors!: ?Array<(ResourceColor, Float64)>,
        repeating!: ?Bool): T

/**
 * Applies a sweep gradient to the component.
 *
 * @param { ?(Length, Length) } center - Defines center point for angle gradient
 * @param { ?Float64 } start - Defines the starting point of angle gradient. The default value is 0
 * @param { ?Float64 } end - Defines end point of angle gradient. The default value is 0
 * @param { ?Float64 } rotation - Defines the rotation angle of the gradient. The default value is 0
 * @param { ?Array<(ResourceColor, Float64)> } colors - Defines color description for gradients
 * @param { ?Bool } repeating - Defines gradient colors with repeated coloring. The default value is false
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func sweepGradient(center: ?(Length, Length), start!: ?Float64, end!: ?Float64, rotation!: ?Float64,
        colors!: ?Array<(ResourceColor, Float64)>, repeating!: ?Bool): T

/**
 * Applies a radial gradient to the component.
 *
 * @param { ?(Length, Length) } center - Defines center point for radial gradient
 * @param { ?Length } radius - Defines radius of the radial gradient
 * @param { ?Array<(ResourceColor, Float64)> } colors - Defines color description for gradients
 * @param { ?Bool } repeating - Defines gradient colors with repeated coloring. The default value is false
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func radialGradient(center: ?(Length, Length), radius: ?Length, colors: ?Array<(ResourceColor, Float64)>,
        repeating!: ?Bool): T

/**
 * Sets a keyboard shortcut using a FunctionKey.
 *
 * @param { ?FunctionKey } value - The function key
 * @param { ?Array<ModifierKey> } keys - Modifier keys
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func keyboardShortcut(value: ?FunctionKey, keys: ?Array<ModifierKey>): T

/**
 * Sets a keyboard shortcut using a string.
 *
 * @param { ?String } value - The key string
 * @param { ?Array<ModifierKey> } keys - Modifier keys
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func keyboardShortcut(value: ?String, keys: ?Array<ModifierKey>): T

/**
 * Sets a keyboard shortcut using a FunctionKey with a custom action.
 *
 * @param { ?FunctionKey } value - The function key
 * @param { ?Array<ModifierKey> } keys - Modifier keys
 * @param { ?() -> Unit } action - Custom action to execute
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func keyboardShortcut(value: ?FunctionKey, keys: ?Array<ModifierKey>, action: ?() -> Unit): T

/**
 * Sets a keyboard shortcut using a string with a custom action.
 *
 * @param { ?String } value - The key string
 * @param { ?Array<ModifierKey> } keys - Modifier keys
 * @param { ?() -> Unit } action - Custom action to execute
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func keyboardShortcut(value: ?String, keys: ?Array<ModifierKey>, action: ?() -> Unit): T

/**
 * Key. User can set an key to the component to identify it.
 *
 * @param { ?String } value - The key value
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func key(value: ?String): T

/**
 * How the final state of the component's content is rendered during its width and height animation process.
 *
 * @param { ?RenderFit } fitMode - How the final state of the component's content is rendered during. Default value: RenderFit.TopLeft.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func renderFit(fitMode: ?RenderFit): T

/**
 * Id. User can set an id to the component to identify it.
 *
 * @param { ?String } value - The ID value
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func id(value: ?String): T

/**
 * Sets the safe area to be expanded to.
 * <br>default value: 
 * <br>types: [SafeAreaType.SYSTEM, SafeAreaType.CUTOUT, SafeAreaType.KEYBOARD],
 * <br>edges: [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM, SafeAreaEdge.START, SafeAreaEdge.END]
 * Expands the safe area of the component.
 *
 * @param { ?Array<SafeAreaType> } types - Indicates the types of the safe area
 * @param { ?Array<SafeAreaEdge> } edges - Indicates the edges of the safe area
 * @returns { T } The component instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func expandSafeArea(types!: ?Array<SafeAreaType>, edges!: ?Array<SafeAreaEdge>): T

/**
 * Binds a modal page to the component, whose visibility is subject to the isShow settings.
 *
 * @param { ?Bool } isShow - true means display content, false means hide content
 * @param { ?CustomBuilder } builder - the content to be displayed
 * @param { ?ContentCoverOptions } options - options of content cover
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func bindContentCover(isShow: ?Bool, builder: ?CustomBuilder, options!: ?ContentCoverOptions): T

/**
 * Set the transition effect of component when it appears and disappears.
 *
 * @param { ?TransitionEffect } effect - The transition effect
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func transition(effect: ?TransitionEffect): T

/**
 * Set the transition effect of component when it appears and disappears.
 *
 * @param { ?TransitionEffect } effect - The transition effect
 * @param { ?TransitionFinishCallback } onFinish - Callback when transition finishes
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func transition(effect: ?TransitionEffect, onFinish: ?TransitionFinishCallback): T

/**
 * Set focusable.
 * Components that have default interaction logic, such as Button and TextInput, are focusable by default. Other
 * components, such as Text and Image, are not focusable by default. Only focusable components can trigger a focus event.
 *
 * @param { ?Bool } value - Whether the component is focusable
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func focusable(value: ?Bool): T

/**
 * Set focus index by key tab.
 * The tabIndex and focusScopeId cannot be used together.
 *
 * @param { ?Int32 } index - The tab index
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func tabIndex(index: ?Int32): T

/**
 * Set default focused component when a page create.
 *
 * @param { ?Bool } value - Whether the component is the default focus
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func defaultFocus(value: ?Bool): T

/**
 * Set default focused component when focus on a focus group.
 *
 * @param { ?Bool } value - Whether the component is the group default focus
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func groupDefaultFocus(value: ?Bool): T

/**
 * Set a component focused when the component be touched.
 *
 * @param { ?Bool } value - Whether to focus on touch
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func focusOnTouch(value: ?Bool): T

/**
 * Binds a context menu to the component, whose visibility is subject to the isShown settings..
 *
 * @param { ?Bool } isShow -  true means display content, false means hide content, default is false.
 * @param { CustomBuilder } builder - Indicates the content of context menu.
 * @param { ?SheetOptions } options - Indicates the options of context menu.
 * @returns { T } Returns the component itself.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func bindSheet(isShow: ?Bool, builder: CustomBuilder, options!: ?SheetOptions): T

/**
 * Set preview of the component for dragging process.
 *
 * @param { String } value - preview of the component for dragging process
 * @returns { T } The component instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func dragPreview(value: String): T
}