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

package ohos.graphics.color_space_manager
import ohos.hilog.*

import std.collection.HashMap
import ohos.business_exception.*
import ohos.ffi.*
import ohos.labels.*
import ohos.business_exception.BusinessException
import std.deriving.Derive

/**
* Create a color space manager by provided color space type.
*
* @param { ColorSpace } colorSpaceName - Indicates the type of color space.
* @returns { ColorSpaceManager } Returns a color space manager object created by provided type.
* @throws { BusinessException } 401 - Parameter error. Possible cause: 1.Incorrect parameter type.
*                                 2.Parameter verification failed.
* @throws { BusinessException } 18600001 - The parameter value is abnormal.
* @relation function create(colorSpaceName: ColorSpace): ColorSpaceManager
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
]
public func create(colorSpaceName: ColorSpace): ColorSpaceManager


/**
* Create a customized color space manager by its color primaries and gamma value.
*
* @param { ColorSpacePrimaries } primaries - Indicates the customized color primaries.
* @param { Float32 } gamma - Indicates display gamma value
* @returns { ColorSpaceManager } Returns a color space manager object created by provided type.
* @throws { BusinessException } 401 - Parameter error. Possible cause: 1.Incorrect parameter type.
*                                 2.Parameter verification failed.
* @throws { BusinessException } 18600001 - The parameter value is abnormal.
* @relation function create(primaries: ColorSpacePrimaries, gamma: number): ColorSpaceManager
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
]
public func create(primaries: ColorSpacePrimaries, gamma: Float32): ColorSpaceManager


/**
* Defines a color space object and manages its key information.
*
* @relation interface ColorSpaceManager
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
]
public class ColorSpaceManager <: RemoteDataLite {
    /**
    * Get the name of color space type.
    *
    * @returns { ColorSpace } Returns the name of color space type.
    * @throws { BusinessException } 18600001 - The parameter value is abnormal.
    * @relation getColorSpaceName(): ColorSpace
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public func getColorSpaceName(): ColorSpace
    
    /**
    * Get white point(x, y) of color space.
    *
    * @returns { Array<Float32> } Returns the white point value of color space.
    * @throws { BusinessException } 18600001 - The parameter value is abnormal.
    * @relation getWhitePoint(): Array<number>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public func getWhitePoint(): Array<Float32>
    
    /**
    * Get gamma value of color space.
    *
    * @returns { Float32 } Returns the gamma value of color space.
    * @throws { BusinessException } 18600001 - The parameter value is abnormal.
    * @relation getGamma(): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public func getGamma(): Float32
}


/**
* Enumerates color space types.
*
* @relation enum ColorSpace
*/
@Derive[ToString, Equatable]
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
]
public enum ColorSpace {
    /**
    * Indicates an unknown color space.
    *
    * @relation UNKNOWN = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Unknown |
    /**
    * Indicates the color space based on Adobe RGB (1998).
    *
    * @relation ADOBE_RGB_1998 = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    AdobeRgb1998 |
    /**
    * Indicates the color space based on SMPTE RP 431-2-2007 and IEC 61966-2.1:1999.
    *
    * @relation DCI_P3 = 2
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DciP3 |
    /**
    * Indicates the color space based on SMPTE RP 431-2-2007 and IEC 61966-2.1:1999.
    *
    * @relation DISPLAY_P3 = 3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DisplayP3 |
    /**
    * Indicates the standard red green blue (SRGB) color space based on IEC 61966-2.1:1999.
    *
    * @relation SRGB = 4
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Srgb |
    /**
    * Indicates a customized color space.
    *
    * @relation CUSTOM = 5
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Custom |
    /**
    * Indicates the color space based on ITU-R BT.709.
    *
    * @relation BT709 = 6
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt709 |
    /**
    * Indicates the color space based on ITU-R BT.601.
    *
    * @relation BT601_EBU = 7
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt601Ebu |
    /**
    * Indicates the color space based on ITU-R BT.601.
    *
    * @relation BT601_SMPTE_C = 8
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt601SmpteC |
    /**
    * Indicates the color space based on ITU-R BT.2020.
    *
    * @relation BT2020_HLG = 9
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt2020Hlg |
    /**
    * Indicates the color space based on ITU-R BT.2020.
    *
    * @relation BT2020_PQ = 10
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt2020Pq |
    /**
    * PRIMARIES_P3_D65 | TRANSFUNC_HLG | RANGE_FULL
    *
    * @relation P3_HLG = 11
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    P3Hlg |
    /**
    * PRIMARIES_P3_D65 | TRANSFUNC_PQ | RANGE_FULL
    *
    * @relation P3_PQ = 12
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    P3Pq |
    /**
    * PRIMARIES_ADOBE_RGB | TRANSFUNC_ADOBE_RGB | RANGE_LIMIT
    *
    * @relation ADOBE_RGB_1998_LIMIT = 13
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    AdobeRgb1998Limit |
    /**
    * PRIMARIES_P3_D65 | TRANSFUNC_SRGB | RANGE_LIMIT
    *
    * @relation DISPLAY_P3_LIMIT = 14
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DisplayP3Limit |
    /**
    * PRIMARIES_SRGB | TRANSFUNC_SRGB | RANGE_LIMIT
    *
    * @relation SRGB_LIMIT = 15
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    SrgbLimit |
    /**
    * PRIMARIES_BT709 | TRANSFUNC_BT709 | RANGE_LIMIT
    *
    * @relation BT709_LIMIT = 16
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt709Limit |
    /**
    * PRIMARIES_BT601_P | TRANSFUNC_BT709 | RANGE_LIMIT
    *
    * @relation BT601_EBU_LIMIT = 17
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt601EbuLimit |
    /**
    * PRIMARIES_BT601_N | TRANSFUNC_BT709 | RANGE_LIMIT
    *
    * @relation BT601_SMPTE_C_LIMIT = 18
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt601SmpteCLimit |
    /**
    * PRIMARIES_BT2020 | TRANSFUNC_HLG | RANGE_LIMIT
    *
    * @relation BT2020_HLG_LIMIT = 19
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt2020HlgLimit |
    /**
    * PRIMARIES_BT2020 | TRANSFUNC_PQ | RANGE_LIMIT
    *
    * @relation BT2020_PQ_LIMIT = 20
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt2020PqLimit |
    /**
    * PRIMARIES_P3_D65 | TRANSFUNC_HLG | RANGE_LIMIT
    *
    * @relation P3_HLG_LIMIT = 21
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    P3HlgLimit |
    /**
    * PRIMARIES_P3_D65 | TRANSFUNC_PQ | RANGE_LIMIT
    *
    * @relation P3_PQ_LIMIT = 22
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    P3PqLimit |
    /**
    * PRIMARIES_P3_D65 | TRANSFUNC_LINEAR
    *
    * @relation LINEAR_P3 = 23
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    LinearP3 |
    /**
    * PRIMARIES_SRGB | TRANSFUNC_LINEAR
    *
    * @relation LINEAR_SRGB = 24
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    LinearSrgb |
    /**
    * PRIMARIES_BT709 | TRANSFUNC_LINEAR
    *
    * @relation LINEAR_BT709 = LINEAR_SRGB
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    LinearBt709 |
    /**
    * PRIMARIES_BT2020 | TRANSFUNC_LINEAR
    *
    * @relation LINEAR_BT2020 = 25
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    LinearBt2020 |
    /**
    * PRIMARIES_SRGB | TRANSFUNC_SRGB | RANGE_FULL
    *
    * @relation DISPLAY_SRGB = SRGB
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DisplaySrgb |
    /**
    * PRIMARIES_P3_D65 | TRANSFUNC_SRGB | RANGE_FULL
    *
    * @relation DISPLAY_P3_SRGB = DISPLAY_P3
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DisplayP3Srgb |
    /**
    * PRIMARIES_P3_D65 | TRANSFUNC_HLG | RANGE_FULL
    *
    * @relation DISPLAY_P3_HLG = P3_HLG
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DisplayP3Hlg |
    /**
    * PRIMARIES_DISPLAY_P3 | TRANSFUNC_PQ | RANGE_FULL
    *
    * @relation DISPLAY_P3_PQ = P3_PQ
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DisplayP3Pq |
    ...
}



/**
* Describes the primary colors red, green, blue and white point coordinated as (x, y)
in color space, in terms of real world chromaticities.
*
* @relation interface ColorSpacePrimaries
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
]
public class ColorSpacePrimaries {
    /**
    * Coordinate value x of red color.
    *
    * @relation redX: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public var redX: Float32
    
    /**
    * Coordinate value y of red color.
    *
    * @relation redY: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public var redY: Float32
    
    /**
    * Coordinate value x of green color.
    *
    * @relation greenX: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public var greenX: Float32
    
    /**
    * Coordinate value y of green color.
    *
    * @relation greenY: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public var greenY: Float32
    
    /**
    * Coordinate value x of blue color.
    *
    * @relation blueX: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public var blueX: Float32
    
    /**
    * Coordinate value y of blue color.
    *
    * @relation blueY: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public var blueY: Float32
    
    /**
    * Coordinate value x of white point.
    *
    * @relation whitePointX: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public var whitePointX: Float32
    
    /**
    * Coordinate value y of white point.
    *
    * @relation whitePointY: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public var whitePointY: Float32
    
    /**
    * ColorSpacePrimaries constructor.
    *
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public init(redX: Float32, redY: Float32, greenX: Float32, greenY: Float32, blueX: Float32, blueY: Float32, whitePointX: Float32, whitePointY: Float32)
}


