package ohos.arkui.component.scroll

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.rect.*
import ohos.arkui.component.util.*
import ohos.arkui.shape.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*
import std.convert.*
import std.deriving.Derive

/**
 * Represents the scroll values resulting from a scroll operation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ScrollResult {
/**
 * The offset remain of scroll.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offsetRemain: Float64

/**
 * Constructs a scroll result.
 *
 * @param { Float64 } offsetRemain - The offset remain of scroll.
 * @returns { ScrollResult }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(offsetRemain!: Float64)
}

/**
 * Represents the offset values resulting from a scroll operation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class OffsetResult {
/**
 * Horizontal scrolling offset.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var xOffset: Float64

/**
 * Vertical scrolling offset.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var yOffset: Float64

/**
 * Constructs an offset result.
 *
 * @param { Float64 } xOffset - Horizontal scrolling offset.
 * @param { Float64 } yOffset - Vertical scrolling offset.
 * @returns { OffsetResult }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(xOffset: Float64, yOffset: Float64)
}

/**
 * Represents the offset values resulting from a scroll operation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RectResult {
/**
 * Representing the x in the rect values.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var x: ?Float64

/**
 * Representing the y in the rect values.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var y: ?Float64

/**
 * Representing the width in the rect values
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var width: ?Float64

/**
 * Representing the height in the rect values
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var height: ?Float64

/**
 * Constructs an rect result.
 *
 * @param { Float64 } x - Representing the x in the rect values.
 * @param { Float64 } y - Representing the y in the rect values.
 * @param { Float64 } width - Representing the width in the rect values.
 * @param { Float64 } height - Representing the height in the rect values.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        x: Float64,
        y: Float64,
        width: Float64,
        height: Float64
    )
}

/**
 * Provides parameters for customizing scroll animations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ScrollAnimationOptions {
/**
 * Scrolling duration.
 *
 * <p><strong>NOTE</strong>
 * <br>A value less than 0 evaluates to the default value.
 * </p>
 * 
 * @default 1000.0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var duration: ?Float64

/**
 * Scrolling curve.
 * 
 * @default Curve.Ease
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var curve: ?Curve

/**
 * Whether to enable overscroll.
 *
 * <p><strong>NOTE</strong>
 * <br> Scrolling can exceed the boundary and initiate a bounce animation when this parameter is set to <em>true</em>,
 * and the component's edgeEffect attribute is set to EdgeEffect.Spring.
 * </p>
 * 
 * @default false
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var canOverScroll: ?Bool

/**
 * The constructor.
 *
 * @param { ?Float64 } [duration] - The animation duration. The default value is 1000.0.
 * @param { ?Curve } [curve] - The animation curve. The default value is Curve.Ease.
 * @param { ?Bool } [canOverScroll] - Whether allow over scroll. The default value is false.
 * @returns { ScrollAnimationOptions }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        duration!: ?Float64 = None,
        curve!: ?Curve = None,
        canOverScroll!: ?Bool = None
    )
}

/**
 * Enumerates alignment modes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ScrollAlign {
/**
 * The start edge of the list item is flush with the start edge of the list.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Start
    | 
/**
 * The list item is centered along the main axis of the list.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Center
    | 
/**
 * The end edge of the list item is flush with the end edge of the list.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    End
    | 
/**
 * The list item is automatically aligned.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Auto
    | ...
}

extend ScrollAlign <: Equatable<ScrollAlign> {
/**
 * Compares this ScrollAlign with another for equality.
 *
 * @param { ScrollAlign } other - The ScrollAlign to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ScrollAlign): Bool
/**
 * Compares this ScrollAlign with another for equality.
 *
 * @param { ScrollAlign } other - The ScrollAlign to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ScrollAlign): Bool
}

/**
 * Provides parameters for customizing scroll animations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class NestedScrollOptions {
/**
 * Representing the forward in the customizing scroll nested.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var scrollForward: ?NestedScrollMode

/**
 * Representing the backward in the customizing scroll nested.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var scrollBackward: ?NestedScrollMode

/**
 * The constructor.
 *
 * @param { ?NestedScrollMode } scrollForward - The forward scroll mode.
 * @param { ?NestedScrollMode } scrollBackward - The backward scroll mode.
 * @returns { NestedScrollOptions }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(scrollForward: ?NestedScrollMode, scrollBackward: ?NestedScrollMode)
}

/**
 * Provides a parameter for customizing fading edge.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class FadingEdgeOptions {
/**
 * Representing the length in the customizing fading edge.
 * 
 * @default 32.vp
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fadingEdgeLength: ?Length

/**
 * The constructor.
 *
 * @param { ?Length } [fadingEdgeLength] - The fading edge length. The default value is 32.vp.
 * @returns { FadingEdgeOptions }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(fadingEdgeLength!: ?Length = None)
}

/**
 * Enumerates content clip modes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ContentClipMode {
/**
 * The only content mode of content clip modes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    ContentOnly
    | 
/**
 * The boundary mode of content clip modes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Boundary
    | 
/**
 * The safe area mode of content clip modes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    SafeArea
    | ...
}

extend ContentClipMode <: Equatable<ContentClipMode> {
/**
 * Compares this ContentClipMode with another for equality.
 *
 * @param { ContentClipMode } other - The ContentClipMode to compare with.
 * @returns { Bool } True if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ContentClipMode): Bool
/**
 * Compares this ContentClipMode with another for equality.
 *
 * @param { ContentClipMode } other - The ContentClipMode to compare with.
 * @returns { Bool } True if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ContentClipMode): Bool
}

/**
 * Called before scroll to allow developer to control real offset the Scrollable can scroll.
 *
 * @param { Float64 } scrollOffset - offset this frame will scroll, which may or may not be reached.
 * @param { ScrollState } scrollState - current scroll state.
 * @param { ScrollSource } scrollSource - source of current scroll.
 * @returns { ScrollResult } the remain offset for the scrollable.
 */
public type OnWillScrollCallBack = (Float64, ScrollState, ScrollSource) -> ScrollResult

/**
 * On scroll callback using in scrollable onDidScroll.
 *
 * @param { Float64 } scrollOffset - offset this frame did scroll.
 * @param { ScrollState } scrollState - current scroll state.
 */
public type OnScrollCallBack = (scrollOffset: Float64, scrollState: ScrollState) -> Unit

/**
 * Represents the callback triggered when the <em>Scroll</em> component scrolls.
 * 
 * <p><strong>NOTE</strong>
 * <br>If the <em>onScrollFrameBegin</em> event and <em>scrollBy</em> method are used to implement nested scrolling,
 * set the <em>edgeEffect</em> attribute of the scrollable child component to <em>None</em>. For example,
 * if a <em>List</em> is nested in the <em>Scroll</em> component, <em>edgeEffect</em> of the <em>List</em> must be set to <em>EdgeEffect.None</em>.
 * </p>
 * 
 * @param { Float64 } xOffset - Horizontal offset per frame during scrolling. A positive offset indicates scrolling to the left,
 * and a negative offset indicates scrolling to the right.
 * <br>Unit: vp
 * @param { Float64 } yOffset - Vertical offset per frame during scrolling.
 * A positive offset indicates scrolling upward, and a negative offset indicates scrolling downward.
 * <br>Unit: vp
 * @param { ScrollState } scrollState - Current scrolling state.
 */
public type ScrollOnScrollCallback = (Float64, Float64, ScrollState) -> Unit

/**
 * Represents the callback triggered before each frame scrolling starts.
 *
 * @param { Float64 } offset - Amount to scroll by, in vp.
 * @param { ScrollState } state - Current scroll state.
 * @returns { Float64 } data - the scroll data return by handler
 */
public type OnScrollFrameBeginCallback = (Float64, ScrollState) -> Float64

/**
 * Represents the callback triggered when scrolling reaches an edge.
 *
 * @param { Edge } side - Edge position to scroll to.
 */
public type OnScrollEdgeCallback = (Edge) -> Unit

/**
 * Provides parameters for scrolling to the edge of a scrollable container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ScrollEdgeOptions {
/**
 * Fixed velocity for scrolling to the edge of the container.
 * If the value specified is less than or equal to 0, the parameter will not take effect.
 *
 * @default 0vp/s
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var velocity: ?Float64

/**
 * The constructor.
 *
 * @param { ?Float64 } [velocity] - Fixed velocity for scrolling to the edge of the container. The default value is 0vp/s.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(velocity!: ?Float64 = None)
}

/**
 * Provides parameters for scrolling to a specific index.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ScrollToIndexOptions {
/**
 * Extra offset for scrolling to a specified index.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var extraOffset: ?Length

/**
 * The constructor.
 *
 * @param { ?Length } [extraOffset] - Extra offset for scrolling to a specified index.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(extraOffset!: ?Length = None)
}

/**
 * Defines scroll component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Scroll <: ScrollableCommonMethodComponent<Scroll> & ScrollAttribute {
/**
 * Constructs a scroll component.
 *
 * @returns { Scroll }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Constructs a scroll component.
 *
 * @param { () -> Unit } child - The child component.
 * @returns { Scroll }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(child: () -> Unit)

/**
 * Constructs a scroll component.
 *
 * @param { ?Scroller } scroller - The scroller of current Scroll component.
 * @param { () -> Unit } child - The child component.
 * @returns { Scroll }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(scroller: ?Scroller, child: () -> Unit)

/**
 * Sets the scrolling direction.
 *
 * @param { ?ScrollDirection } value - The direction to apply setting. Default value: ScrollDirection.Vertical.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollable(value: ?ScrollDirection): This

/**
 * Triggered before scrolling.
 *
 * <p><strong>NOTE</strong>
 * <br>1. This event is triggered when scrolling is started by the <em>Scroll</em> component or other input settings,
 * such as keyboard and mouse operations.
 * <br>2. This event is triggered when the controller API is called.
 * <br>3. This event supports the out-of-bounds bounce effect.
 * </p>
 *
 * @param { ?(Float64, Float64, ScrollState, ScrollSource) -> OffsetResult } handler - Callback triggered before scrolling.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onWillScroll(handler: ?(Float64, Float64, ScrollState, ScrollSource) -> OffsetResult): This

/**
 * Triggered before scrolling.
 *
 * <p><strong>NOTE</strong>
 * <br>1. This event is triggered when scrolling is started by the <em>Scroll</em> component or other input settings,
 * such as keyboard and mouse operations.
 * <br>2. This event is triggered when the controller API is called.
 * <br>3. This event supports the out-of-bounds bounce effect.
 * </p>
 *
 * @param { ?(Float64, Float64, ScrollState, ScrollSource) -> Unit } handler - Callback triggered before scrolling.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onWillScroll(handler: ?(Float64, Float64, ScrollState, ScrollSource) -> Unit): This

/**
 * Triggered when the Scroll component scrolls.
 *
 * <p><strong>NOTE</strong>
 * <br>1. This event is triggered when scrolling is started by the <em>Scroll</em> component or other input settings,
 * such as keyboard and mouse operations.
 * <br>2. This event is triggered when the controller API is called.
 * <br>3. This event supports the out-of-bounds bounce effect.
 * </p>
 *
 * @param { ?ScrollOnScrollCallback } callback - Callback triggered when the Scroll component scrolls.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDidScroll(callback: ?ScrollOnScrollCallback): This

/**
 * Triggered when each frame scrolling starts.
 *
 * @param { ?OnScrollFrameBeginCallback } event - Callback triggered when each frame scrolling starts.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onScrollFrameBegin(event: ?OnScrollFrameBeginCallback): This

/**
 * Triggered when scrolling reaches the edge.
 * Anonymous Object Rectification.
 *
 * <p><strong>NOTE</strong>
 * <br>1. This event is triggered when scrolling reaches the edge after being started by the <em>Scroll</em> component or other input settings,
 * such as keyboard and mouse operations.
 * <br>2. This event is triggered when the controller API is called.
 * <br>3. This event supports the out-of-bounds bounce effect.
 * </p>
 *
 * @param { ?OnScrollEdgeCallback } event - Callback triggered when scrolling reaches the edge.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onScrollEdge(event: ?OnScrollEdgeCallback): This
}

/**
 * Defines a controller for scrollable container components.
 *
 * <p><strong>NOTE</strong>
 * <br>1. The binding of a <em>Scroller</em> instance to a scrollable container component occurs during the component creation phase.
 * <br>2. <em>Scroller</em> APIs can only be effectively called after the <em>Scroller</em> instance is bound to a scrollable container component.
 * Otherwise, depending on the API called, it may have no effect or throw an exception.
 * <br>3. For example, with aboutToAppear, this callback is executed after a new instance of a custom component is
 * created and before its <em>build()</em> method is called.
 * Therefore, if a scrollable component is defined within the <em>build</em> method of a custom component,
 * the internal scrollable component has not yet been created during the <em>aboutToAppear</em> callback
 * of that custom component, and therefore the <em>Scroller</em> APIs cannot be called effectively.
 * </p>
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Scroller {
/**
 * A constructor used to create a Scroller object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Sets slides to the specified position.
 *
 * @param { Length } xOffset - Horizontal scrolling offset.
 * @param { Length } yOffset - Vertical scrolling offset.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollTo(xOffset!: Length, yOffset!: Length): Unit

/**
 * Sets slides to the specified position.
 *
 * @param { Length } xOffset - Horizontal scrolling offset.
 * @param { Length } yOffset - Vertical scrolling offset.
 * @param { ?ScrollAnimationOptions } animation - Animation configuration.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollTo(xOffset!: Length, yOffset!: Length, animation!: ?ScrollAnimationOptions): Unit

/**
 * Sets slides to the specified position.
 *
 * @param { Length } xOffset - Horizontal scrolling offset.
 * @param { Length } yOffset - Vertical scrolling offset.
 * @param { ?Bool } animation - Animation configuration.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollTo(xOffset!: Length, yOffset!: Length, animation!: ?Bool): Unit

/**
 * Called when the setting slides by offset.
 *
 * @param { Length } dx - X coordinate to scroll to.
 * @param { Length } dy - Y coordinate to scroll to.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollBy(dx: Length, dy: Length): Unit

/**
 * Called when scrolling to the edge of the container.
 *
 * @param { Edge } value - The edge to scroll by.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollEdge(value: Edge): Unit

/**
 * Called when scrolling to the edge of the container.
 *
 * @param { Edge } value - The edge to scroll by.
 * @param { ?ScrollEdgeOptions } options - The scroll edge option.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollEdge(value: Edge, options: ?ScrollEdgeOptions): Unit

/**
 * Performs inertial scrolling based on the initial velocity passed in.
 *
 * @param { Float64 } velocity -  Initial velocity of inertial scrolling. Unit: vp/s
 * <br><em>NOTE</em>
 * <br>If the value specified is 0, it is considered as invalid, and the scrolling for this instance will not take effect.
 * A positive value indicates scrolling towards the top, while a negative value indicates scrolling towards the bottom.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fling(velocity: Float64): Unit

/**
 * Applied when page turning mode is set.
 *
 * @param { Bool } next - Whether scroll from page to page.
 * @param { ?Bool } [animation] - Whether enable animation on page scroll. The default value is false.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollPage(next: Bool, animation!: ?Bool = None): Unit

/**
 * Obtains the current scrolling offset.
 *
 * @returns { Option<OffsetResult> }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func currentOffset(): Option<OffsetResult>

/**
 * Scrolls to a specified index, with support for setting an extra offset for the scroll.
 * This API only works for the ArcList, Grid, List, and WaterFlow components.
 *
 * @param { Int32 } value - Index to jump to.
 * @param { ?Bool } [smooth] - If true, scroll to index item with animation. If false, scroll to index item without animation. The default value is false.
 * @param { ?ScrollAlign } [align] - Sets the alignment mode of a specified index.
 * @param { ?ScrollToIndexOptions } [options] - Sets the options of a specified index, such as extra offset.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollToIndex(
        value: Int32,
        smooth!: ?Bool = None,
        align!: ?ScrollAlign = None,
        options!: ?ScrollToIndexOptions = None
    ): This

/**
 * Checks whether the component has scrolled to the bottom.
 *
 * <p><strong>NOTE</strong>
 * <br>This API is available for the <em>ArcList</em>, <em>Scroll</em>, <em>List</em>, <em>Grid</em>, and <em>WaterFlow</em> components.
 * </p>
 * @returns { Bool } Returns whether the component scrolls to the end position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func isAtEnd(): Bool

/**
 * Obtains the size and position of a child component relative to its container.
 *
 * <p><strong>NOTE</strong>
 * <br>- The value of <em>index</em> must be the index of a child component visible in the display area.
 * Otherwise, the value is considered invalid.
 * <br>- The value of <em>index</em> must be the index of a child component visible in the display area. Otherwise,
 * the value is considered invalid.
 * </p>
 *
 * @param { ?Int32 } index - Index of the target child component.
 * @returns { RectResult } Returns the size and position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getItemRect(index: ?Int32): RectResult

/**
 * Obtains the index of a child component based on coordinates.
 *
 * <p><strong>NOTE</strong>
 * <br>The returned index is <em>-1</em> for invalid coordinates.
 * </p>
 *
 * @param { Float64 } x - X-coordinate, in vp.
 * @param { Float64 } y - Y-coordinate, in vp.
 * @returns { Int32 } Index of the item.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getItemIndex(x: Float64, y: Float64): Int32
}

/**
 * Defines the Scroll attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface ScrollAttribute <: ScrollableCommonMethod<ScrollAttribute> {
/**
 * Sets the scrolling direction.
 *
 * @param { ?ScrollDirection } value - The direction to apply setting. The default value is ScrollDirection.Vertical.
 * @returns { ScrollAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func scrollable(scrollDirection: ?ScrollDirection): ScrollAttribute

/**
 * Triggered before scrolling.
 *
 * <p><strong>NOTE</strong>
 * <br>1. This event is triggered when scrolling is started by the <em>Scroll</em> component or other input settings,
 * such as keyboard and mouse operations.
 * <br>2. This event is triggered when the controller API is called.
 * <br>3. This event supports the out-of-bounds bounce effect.
 * </p>
 *
 * @param { ?(Float64, Float64, ScrollState, ScrollSource) -> OffsetResult } handler - Callback triggered before scrolling.
 * @returns { ScrollAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onWillScroll(handler: ?(Float64, Float64, ScrollState, ScrollSource) -> OffsetResult): ScrollAttribute

/**
 * Triggered before scrolling.
 *
 * <p><strong>NOTE</strong>
 * <br>1. This event is triggered when scrolling is started by the <em>Scroll</em> component or other input settings,
 * such as keyboard and mouse operations.
 * <br>2. This event is triggered when the controller API is called.
 * <br>3. This event supports the out-of-bounds bounce effect.
 * </p>
 *
 * @param { ?(Float64, Float64, ScrollState, ScrollSource) -> Unit } handler - Callback triggered before scrolling.
 * @returns { ScrollAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onWillScroll(handler: ?(Float64, Float64, ScrollState, ScrollSource) -> Unit): ScrollAttribute

/**
 * Triggered when the Scroll component scrolls.
 *
 * <p><strong>NOTE</strong>
 * <br>1. This event is triggered when scrolling is started by the <em>Scroll</em> component or other input settings,
 * such as keyboard and mouse operations.
 * <br>2. This event is triggered when the controller API is called.
 * <br>3. This event supports the out-of-bounds bounce effect.
 * </p>
 *
 * @param { ?ScrollOnScrollCallback } handler -  Callback triggered when the Scroll component scrolls.
 * @returns { ScrollAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDidScroll(handler: ?ScrollOnScrollCallback): ScrollAttribute

/**
 * Triggered when each frame scrolling starts.
 *
 * @param { ?OnScrollFrameBeginCallback } event - Callback triggered when each frame scrolling starts.
 * @returns { ScrollAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onScrollFrameBegin(event: ?OnScrollFrameBeginCallback): ScrollAttribute

/**
 * Triggered when scrolling reaches the edge.
 * Anonymous Object Rectification.
 *
 * <p><strong>NOTE</strong>
 * <br>1. This event is triggered when scrolling reaches the edge after being started by the <em>Scroll</em> component or other input settings,
 * such as keyboard and mouse operations.
 * <br>2. This event is triggered when the controller API is called.
 * <br>3. This event supports the out-of-bounds bounce effect.
 * </p>
 *
 * @param { ?OnScrollEdgeCallback } event - Callback triggered when scrolling reaches the edge.
 * @returns { ScrollAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onScrollEdge(event: ?OnScrollEdgeCallback): ScrollAttribute
}

/**
 * Provides functions for scrollable Base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public abstract class ScrollableCommonMethodComponent<T> <: CommonMethodComponent<T> {
    protected init(id: Int64)

    protected init()

    protected open func initial(): Unit

    protected open func update(): Unit

/**
 * Sets the scrollbar state.
 *
 * @param { ?BarState } barState - Scrollbar state. The default value is BarState.Auto.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollBar(barState: ?BarState): T

    protected func scrollBarInner(barState: BarState): T

/**
 * Sets the scrollbar color.
 *
 * @param { ?ResourceColor } color - Scrollbar color. The default value is 0x182431.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollBarColor(color: ?ResourceColor): T

    protected func scrollBarColorInner(color: ?ResourceColor): T

/**
 * Sets the scrollbar width.
 *
 * @param { ?Length } value - Scrollbar width. The default value is 4.vp.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func scrollBarWidth(value: ?Length): T

    protected func scrollBarWidthInner(value: ?Length): T

/**
 * Sets the nested scrolling options. You can set the nested scrolling mode in the forward and backward directions
 * to implement scrolling linkage with the parent component.
 *
 * @param { ?NestedScrollOptions } value - Nested scrolling options.
 *      <br>Default value: scrollForward: NestedScrollMode.SelfOnly, scrollBackward: NestedScrollMode.SelfOnly.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func nestedScroll(value: ?NestedScrollOptions): T

    protected func nestedScrollInner(value: ?NestedScrollOptions): T

/**
 * Sets whether to support scroll gestures. When this attribute is set to <em>false</em>,
 * scrolling by finger or mouse is not supported, but the scroll controller API is not affected.
 *
 * @param { ?Bool } value - Whether to support scroll gestures. The default value is true.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func enableScrollInteraction(value: ?Bool): T

    protected func enableScrollInteractionInner(value: ?Bool): T

/**
 * Sets the friction coefficient. It applies only to gestures in the scrolling area, and
 * it affects only indirectly the scroll chaining during the inertial scrolling process.
 * If this attribute is set to a value less than or equal to 0, the default value is used.
 *
 * @param { ?Float64 } value - Friction coefficient.
 *      <br>Default value: 0.9 for wearable devices and 0.6 for non-wearable devices.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func friction(value: ?Float64): T

    protected func frictionInner(value: ?Float64): T

/**
 * Sets the friction coefficient. It applies only to gestures in the scrolling area, and
 * it affects only indirectly the scroll chaining during the inertial scrolling process.
 * If this attribute is set to a value less than or equal to 0, the default value is used.
 *
 * @param { ?Float64 } value - Friction coefficient.
 *      <br>Default value: 0.9 for wearable devices and 0.6 for non-wearable devices.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func friction(value: ?AppResource): T

    protected func frictionInner(value: ?AppResource): T

/**
 * Sets the reach start.
 *
 * @param { ?() -> Unit } event - The callback on reach start.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onReachStart(event: ?() -> Unit): T

    protected func onReachStartInner(event: () -> Unit): T

/**
 * Sets the reach end.
 *
 * @param { ?() -> Unit } event - The callback on reach end.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onReachEnd(event: ?() -> Unit): T

    protected func onReachEndInner(event: () -> Unit): T

/**
 * Called when scrolling start.
 *
 * @param { ?() -> Unit } event - The callback on scroll start.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onScrollStart(event: ?() -> Unit): T

    protected func onScrollStartInner(event: () -> Unit): T

/**
 * Called when scrolling has stopped.
 *
 * <p><strong>NOTE</strong>
 * <br>1. This event is triggered when scrolling is stopped by the <em>Scroll</em> component or other input settings, such as keyboard and mouse operations.
 * <br>2. This event is triggered when the controller API is called, accompanied by a transition animation.
 * </p>
 * @param { ?() -> Unit } event - Callback triggered when scrolling stops.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onScrollStop(event: ?() -> Unit): T

    protected func onScrollStopInner(event: () -> Unit): T

/**
 * Fling Speed Limit.
 *
 * @param { ?Float64 } speedLimit - The speed limit.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func flingSpeedLimit(speedLimit: ?Float64): T

    protected func flingSpeedLimitInner(speedLimit: Float64): T

/**
 * The options of fading Edge.
 *
 * @param { Option<Bool> } enabled - Whether enable fading edge.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fadingEdge(enabled: Option<Bool>): T

/**
 * The options of fading Edge.
 *
 * @param { Option<Bool> } enabled - Whether enable fading edge.
 * @param { ?FadingEdgeOptions } options - Fading edge options.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fadingEdge(enabled: Option<Bool>, options: ?FadingEdgeOptions): T

/**
 * The clip mode of content.
 *
 * @param { ?ContentClipMode } clip - The clip mode.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func clipContent(clip: ?ContentClipMode): T

/**
 * The clip mode of content.
 *
 * @param { ?RectShape } clip - The clip mode.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func clipContent(clip: ?RectShape): T

/**
 * Triggered before scrolling.
 *
 * <p><strong>NOTE</strong>
 * <br>1. This event is triggered when scrolling is started by the <em>Scroll</em> component or other input settings,
 * such as keyboard and mouse operations.
 * <br>2. This event is triggered when the controller API is called.
 * <br>3. This event supports the out-of-bounds bounce effect.
 * </p>
 *
 * @param { Option<(Float64, ScrollState, ScrollSource) -> ScrollResult> } handler - Callback triggered before scrolling.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onWillScroll(handler: Option<(Float64, ScrollState, ScrollSource) -> ScrollResult>): T

/**
 * Triggered before scrolling.
 *
 * <p><strong>NOTE</strong>
 * <br>1. This event is triggered when scrolling is started by the <em>Scroll</em> component or other input settings,
 * such as keyboard and mouse operations.
 * <br>2. This event is triggered when the controller API is called.
 * <br>3. This event supports the out-of-bounds bounce effect.
 * </p>
 *
 * @param { Option<(Float64, ScrollState, ScrollSource) -> Unit> } handler - Callback triggered before scrolling.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onWillScroll(handler: Option<(Float64, ScrollState, ScrollSource) -> Unit>): T

/**
 * Triggered when the Scroll component scrolls.
 * 1. This event is triggered when scrolling is started by the Scroll component or other input settings, such as keyboard and mouse operations;
 * 2. This event is triggered when the controller API is called;
 * 3. This event supports the out-of-bounds bounce effect.
 *
 * @param { ?OnScrollCallBack } handler - Callback triggered when the Scroll component scrolls.
 * @returns { T } the instantiated type of the scrollable base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDidScroll(handler: ?OnScrollCallBack): T

    protected func onDidScrollInner(handler: OnScrollCallBack): T
}

/**
 * Provides functions for scrollable Base.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface ScrollableCommonMethod<T> <: CommonMethod<T> {
/**
 * Sets the scrollbar state.
 *
 * @param { ?BarState } barState - Scrollbar state. The default value is BarState.Auto.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func scrollBar(barState: ?BarState): T

/**
 * Sets the scrollbar color.
 *
 * @param { ?ResourceColor } color - Scrollbar color. The default value is 0x182431.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func scrollBarColor(color: ?ResourceColor): T

/**
 * Sets the scrollbar width.
 *
 * @param { ?Length } value - Scrollbar width. The default value is 4.vp.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func scrollBarWidth(value: ?Length): T

/**
 * Sets the nested scrolling options. You can set the nested scrolling mode in the forward and backward directions
 * to implement scrolling linkage with the parent component.
 *
 * @param { ?NestedScrollOptions } value - Nested scrolling options.
 *      <br>Default value: scrollForward: NestedScrollMode.SelfOnly, scrollBackward: NestedScrollMode.SelfOnly.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func nestedScroll(value: ?NestedScrollOptions): T

/**
 * Sets whether to support scroll gestures. When this attribute is set to <em>false</em>,
 * scrolling by finger or mouse is not supported, but the scroll controller API is not affected.
 *
 * @param { ?Bool } value - Whether to support scroll gestures. The default value is true.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func enableScrollInteraction(value: ?Bool): T

/**
 * Sets the friction coefficient. It applies only to gestures in the scrolling area, and
 * it affects only indirectly the scroll chaining during the inertial scrolling process.
 * If this attribute is set to a value less than or equal to 0, the default value is used.
 *
 * @param { ?Float64 } value - Friction coefficient.
 *      <br>Default value: 0.9 for wearable devices and 0.6 for non-wearable devices.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func friction(value: ?Float64): T

/**
 * Sets the friction coefficient. It applies only to gestures in the scrolling area, and
 * it affects only indirectly the scroll chaining during the inertial scrolling process.
 * If this attribute is set to a value less than or equal to 0, the default value is used.
 *
 * @param { ?Float64 } value - Friction coefficient.
 *      <br>Default value: 0.9 for wearable devices and 0.6 for non-wearable devices.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func friction(value: ?AppResource): T

/**
 * Sets the reach start.
 *
 * @param { ?() -> Unit } event - The callback on reach start.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onReachStart(event: ?() -> Unit): T

/**
 * Sets the reach end.
 *
 * @param { ?() -> Unit } event - The callback on reach end.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onReachEnd(event: ?() -> Unit): T

/**
 * Called when scrolling start.
 *
 * @param { ?() -> Unit } event - The callback on scroll start.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onScrollStart(event: ?() -> Unit): T

/**
 * Called when scrolling has stopped.
 *
 * <p><strong>NOTE</strong>
 * <br>1. This event is triggered when scrolling is stopped by the <em>Scroll</em> component or other input settings, such as keyboard and mouse operations.
 * <br>2. This event is triggered when the controller API is called, accompanied by a transition animation.
 * </p>
 * @param { ?() -> Unit } event - Callback triggered when scrolling stops.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onScrollStop(event: ?() -> Unit): T

/**
 * Fling Speed Limit.
 *
 * @param { ?Float64 } speedLimit - The speed limit.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func flingSpeedLimit(speedLimit: ?Float64): T

/**
 * The options of fading Edge.
 *
 * @param { Option<Bool> } enabled - Whether enable fading edge.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fadingEdge(enabled: Option<Bool>): T

/**
 * The options of fading Edge.
 *
 * @param { Option<Bool> } enabled - Whether enable fading edge.
 * @param { ?FadingEdgeOptions } options - Fading edge options.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fadingEdge(enabled: Option<Bool>, options: ?FadingEdgeOptions): T

/**
 * The clip mode of content.
 *
 * @param { ?ContentClipMode } clip - The clip mode.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func clipContent(clip: ?ContentClipMode): T

/**
 * The clip mode of content.
 *
 * @param { ?RectShape } clip - The clip mode.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func clipContent(clip: ?RectShape): T

/**
 * Triggered before scrolling.
 *
 * <p><strong>NOTE</strong>
 * <br>1. This event is triggered when scrolling is started by the <em>Scroll</em> component or other input settings,
 * such as keyboard and mouse operations.
 * <br>2. This event is triggered when the controller API is called.
 * <br>3. This event supports the out-of-bounds bounce effect.
 * </p>
 *
 * @param { Option<(Float64, ScrollState, ScrollSource) -> ScrollResult> } handler - Callback triggered before scrolling.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onWillScroll(handler: Option<(Float64, ScrollState, ScrollSource) -> ScrollResult>): T

/**
 * Triggered before scrolling.
 *
 * <p><strong>NOTE</strong>
 * <br>1. This event is triggered when scrolling is started by the <em>Scroll</em> component or other input settings,
 * such as keyboard and mouse operations.
 * <br>2. This event is triggered when the controller API is called.
 * <br>3. This event supports the out-of-bounds bounce effect.
 * </p>
 *
 * @param { Option<(Float64, ScrollState, ScrollSource) -> Unit> } handler - Callback triggered before scrolling.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onWillScroll(handler: Option<(Float64, ScrollState, ScrollSource) -> Unit>): T

/**
 * Triggered when the Scroll component scrolls.
 * 1. This event is triggered when scrolling is started by the Scroll component or other input settings,such as keyboard and mouse operations;
 * 2. This event is triggered when the controller API is called;
 * 3. This event supports the out-of-bounds bounce effect.
 *
 * @param { ?OnScrollCallBack } handler - Callback triggered when the Scroll component scrolls.
 * @returns { T } Specifically instantiated type of scrollable common method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDidScroll(handler: ?OnScrollCallBack): T
}