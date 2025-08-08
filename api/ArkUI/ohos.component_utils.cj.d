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

package ohos.component_utils
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel


@C
public struct CSize {
    public CSize(
        let width: Float32,
        let height: Float32
    )
}

public class Size {
    public Size(
        public let width: Float32,
        public let height: Float32
    )
}

public class Offset {
    public Offset(
        public let x: Float32,
        public let y: Float32
    )
}

public class TranslateResult {
    public TranslateResult(
        public let x: Float32,
        public let y: Float32,
        public let z: Float32
    )
}

public class ScaleResult {
    public ScaleResult(
        public let x: Float32,
        public let y: Float32,
        public let z: Float32,
        public let centerX: Float32,
        public let centerY: Float32
    )
}

public class RotateResult {
    public RotateResult(
        public let x: Float32,
        public let y: Float32,
        public let z: Float32,
        public let centerX: Float32,
        public let centerY: Float32,
        public let angle: Float32
    )
}

public class ComponentInfo {
    public ComponentInfo(
        public let size: Size,
        public let localOffset: Offset,
        public let windowOffset: Offset,
        public let screenOffset: Offset,
        public let translate: TranslateResult,
        public let scale: ScaleResult,
        public let rotate: RotateResult,
        public let transform: Array<Float32>
    )
}

public class ComponentUtils {
    public static func getRectangleById(id: String): ComponentInfo
}

