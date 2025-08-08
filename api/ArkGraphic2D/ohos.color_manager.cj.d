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

package ohos.color_manager
import ohos.hilog.*

import std.collection.HashMap
import ohos.base.*
import ohos.ffi.*
import ohos.labels.*

/**
* Create a color space manager by provided color space type.
*
* @param { ColorSpace } colorSpaceName - Indicates the type of color space
* @returns { ColorSpaceManager } Returns a color space manager object created by provided type.
* @throws { BusinessException } 401 - Parameter error.
* @throws { BusinessException } 18600001 - Parameter value is abnormal.
* @brief function create(colorSpaceName: ColorSpace): ColorSpaceManager
*/
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
]
public func create(colorSpaceName: ColorSpace): ColorSpaceManager


/**
* Create a customized color space manager by its color primaries and gamma value.
*
* @param { ColorSpacePrimaries } primaries - Indicates the customized color primaries
* @param { number } gamma - Indicates display gamma value
* @returns { ColorSpaceManager } Returns a color space manager object created by provided type.
* @throws { BusinessException } 401 - Parameter error.
* @throws { BusinessException } 18600001 - Parameter value is abnormal.
* @brief function create(primaries: ColorSpacePrimaries, gamma: number): ColorSpaceManager
*/
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
]
public func create(primaries: ColorSpacePrimaries, gamma: Float32): ColorSpaceManager


/**
* Defines a color space object and manages its key information
*/
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
]
public class ColorSpaceManager <: RemoteDataLite {
    /**
    * Get the name of color space type.
    *
    * @returns { ColorSpace } Returns the name of color space type.
    * @throws { BusinessException } 18600001 - Parameter value is abnormal.
    * @brief getColorSpaceName(): ColorSpace
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public func getColorSpaceName(): ColorSpace
    
    /**
    * Get white point(x, y) of color space.
    *
    * @returns { Array<number> } Returns the white point value of color space.
    * @throws { BusinessException } 18600001 - Parameter value is abnormal.
    * @brief getWhitePoint(): Array<number>
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public func getWhitePoint(): Array<Float32>
    
    /**
    * Get gamma value of color space.
    *
    * @returns { number } Returns the gamma value of color space.
    * @throws { BusinessException } 18600001 - Parameter value is abnormal.
    * @brief getGamma(): number
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public func getGamma(): Float32
}


@!APILevel[
    12,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
]
public enum ColorSpace <: ToString {
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    UNKNOWN |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    ADOBE_RGB_1998 |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DCI_P3 |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DISPLAY_P3 |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    SRGB |
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    CUSTOM |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    BT709 |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    BT601_EBU |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    BT601_SMPTE_C |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    BT2020_HLG |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    BT2020_PQ |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    P3_HLG |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    P3_PQ |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    ADOBE_RGB_1998_LIMIT |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DISPLAY_P3_LIMIT |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    SRGB_LIMIT |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    BT709_LIMIT |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    BT601_EBU_LIMIT |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    BT601_SMPTE_C_LIMIT |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    BT2020_HLG_LIMIT |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    BT2020_PQ_LIMIT |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    P3_HLG_LIMIT |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    P3_PQ_LIMIT |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    LINEAR_P3 |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    LINEAR_SRGB |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    LINEAR_BT709 |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    LINEAR_BT2020 |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DISPLAY_SRGB |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DISPLAY_P3_SRGB |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DISPLAY_P3_HLG |
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DISPLAY_P3_PQ |
    ...
    @!APILevel[
        19,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public static func parse(cs: UInt32): ColorSpace
    
    @!APILevel[
        12,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public func toString(): String
}


@!APILevel[
    12,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
]
public struct ColorSpacePrimaries {
    @!APILevel[
        12,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public ColorSpacePrimaries(
        @!APILevel[
            12,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
        ]
        public let redX!: Float32,
        @!APILevel[
            12,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
        ]
        public let redY!: Float32,
        @!APILevel[
            12,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
        ]
        public let greenX!: Float32,
        @!APILevel[
            12,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
        ]
        public let greenY!: Float32,
        @!APILevel[
            12,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
        ]
        public let blueX!: Float32,
        @!APILevel[
            12,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
        ]
        public let blueY!: Float32,
        @!APILevel[
            12,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
        ]
        public let whitePointX!: Float32,
        @!APILevel[
            12,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
        ]
        public let whitePointY!: Float32
    )
}


