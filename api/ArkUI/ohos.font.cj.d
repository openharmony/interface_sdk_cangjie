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

package ohos.font
import ohos.base.*
import ohos.ui_resource.*
import ohos.hilog.HilogChannel
import ohos.resource_manager.AppResource
import ohos.labels.APILevel


public class FontInfo {
    public FontInfo(
        public let path: String,
        public let postScriptName: String,
        public let fullName: String,
        public let family: String,
        public let subfamily: String,
        public let weight: UInt32,
        public let width: UInt32,
        public let italic: Bool,
        public let monoSpace: Bool,
        public let symbolic: Bool
    )
}

@!APILevel[
    12,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Font {
    @!APILevel[
        19,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func getUIFontConfig(): UIFontConfig
    
    @!APILevel[
        12,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func registerFont(familyName!: String, familySrc!: String): Unit
    
    @!APILevel[
        12,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func registerFont(familyName!: AppResource, familySrc!: AppResource): Unit
    
    @!APILevel[
        12,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func getSystemFontList(): Array<String>
    
    @!APILevel[
        12,
        stagemodelonly: true,
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func getFontByName(fontName: String): ?FontInfo
}


public type VectorUIFontAliasInfoHandle = CPointer<Unit>

public type VectorUIFontAdjustInfoHandle = CPointer<Unit>

public type VectorUIFontGenericInfoHandle = CPointer<Unit>

public type VectorUIFontFallbackInfoHandle = CPointer<Unit>

public type VectorUIFontFallbackGroupInfoHandle = CPointer<Unit>

public type VectorUIFontConfigHandle = CPointer<Unit>

@C
public struct NativeUIFontAliasInfo {
    public NativeUIFontAliasInfo(
        let name: ExternalString,
        let weight: UInt32
    )
}

@!APILevel[
    19,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class UIFontAliasInfo {
    public UIFontAliasInfo(
        public let name: String,
        public let weight: UInt32
    )
}


@C
public struct NativeUIFontAdjustInfo {
    public NativeUIFontAdjustInfo(
        let weight: UInt32,
        let to: UInt32
    )
}

@!APILevel[
    19,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class UIFontAdjustInfo {
    public UIFontAdjustInfo(
        public let weight: UInt32,
        public let to: UInt32
    )
}


@C
public struct NativeUIFontGenericInfo {
    public NativeUIFontGenericInfo(
        let family: ExternalString,
        let alias: CPointer<Unit>,
        let adjust: CPointer<Unit>
    )
}

@!APILevel[
    19,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class UIFontGenericInfo {
    public UIFontGenericInfo(
        public let family: String,
        public let alias: Array<UIFontAliasInfo>,
        public let adjust: Array<UIFontAdjustInfo>
    )
}


@C
public struct NativeUIFontFallbackInfo {
    public NativeUIFontFallbackInfo(
        let language: ExternalString,
        let family: ExternalString
    )
}

@!APILevel[
    19,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class UIFontFallbackInfo {
    public UIFontFallbackInfo(
        public let language: String,
        public let family: String
    )
}


@C
public struct NativeUIFontFallbackGroupInfo {
    public NativeUIFontFallbackGroupInfo(
        let fontSetName: ExternalString,
        let fallback: CPointer<Unit>
    )
}

@!APILevel[
    19,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class UIFontFallbackGroupInfo {
    public UIFontFallbackGroupInfo(
        public let fontSetName: String,
        public let fallback: Array<UIFontFallbackInfo>
    )
}


@!APILevel[
    19,
    stagemodelonly: true,
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class UIFontConfig {
    public UIFontConfig(
        public let fontDir: Array<String>,
        public let generic: Array<UIFontGenericInfo>,
        public let fallbackGroups: Array<UIFontFallbackGroupInfo>
    )
}


public class FFIVectorUIFontAliasInfo {
    public init(vec: VectorUIFontAliasInfoHandle)
    
    public func getElement(index: Int64): NativeUIFontAliasInfo
    
    public func getSize(): Int64
    
    public func free(): Unit
}

public class FFIVectorUIFontAdjustInfo {
    public init(vec: VectorUIFontAdjustInfoHandle)
    
    public func getElement(index: Int64): NativeUIFontAdjustInfo
    
    public func getSize(): Int64
    
    public func free(): Unit
}

public class FFIVectorUIFontGenericInfo {
    public init(vec: VectorUIFontGenericInfoHandle)
    
    public func getElement(index: Int64): NativeUIFontGenericInfo
    
    public func getSize(): Int64
    
    public func free(): Unit
}

public class FFIVectorUIFontFallbackInfo {
    public init(vec: VectorUIFontFallbackInfoHandle)
    
    public func getElement(index: Int64): NativeUIFontFallbackInfo
    
    public func getSize(): Int64
    
    public func free(): Unit
}

public class FFIVectorUIFontFallbackGroupInfo {
    public init(vec: VectorUIFontFallbackGroupInfoHandle)
    
    public func getElement(index: Int64): NativeUIFontFallbackGroupInfo
    
    public func getSize(): Int64
    
    public func free(): Unit
}

