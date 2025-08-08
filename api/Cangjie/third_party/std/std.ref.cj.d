/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

package std.ref


/**
* A base non-generic class with all necessary fields to simplify the backend implementation.
*/
sealed abstract class WeakRefBase {
}

/**
* Specifies behavior of the runtime regarding this weak reference:
* EAGER    - clear weak reference as soon as possible.
*            Useful for listeners, canonicalizing mapping, etc.
* DEFERRED - clear weak reference only on lack of free memory.
*            Useful for caches.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public enum CleanupPolicy <: Equatable<CleanupPolicy> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    EAGER |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    DEFERRED
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func ==(that: CleanupPolicy): Bool
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func !=(that: CleanupPolicy): Bool
}

/**
* A weak reference to T. Weak references do not prevent GC from reclaiming their referents.
* If referent of a weak reference was reclaimed, the WeakRef.value returns None.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class WeakRef<T> <: WeakRefBase where T <: Object {
    /**
    * Creates a weak reference to the given object with the given cleanup policy.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(value: T, cleanupPolicy: CleanupPolicy)
    
    /**
    * Returns the cleanup policy of this weak reference.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop cleanupPolicy: CleanupPolicy
    
    /**
    * The value of this weak reference. If the referent has been reclaimed by GC or this reference has been
    * cleared by calling the clear() method, the `value` is `None`.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop value: Option<T>
    
    /**
    * Forcibly clears the weak reference.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func clear(): Unit
}

