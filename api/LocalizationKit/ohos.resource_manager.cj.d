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

package ohos.resource_manager
import ohos.ffi.*
import ohos.hilog.*
import std.collection.*
import std.sync.*
import ohos.base.*
import ohos.labels.*

import std.deriving.Derive

type StageContext = CPointer<Unit>
/**
* Provides resource related APIs.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public class ResourceManager <: RemoteDataLite {
    /**
    * this is temporarily replaces context.resourceManager cause we don`t have contest in CJ
    */
    @!APILevel[
        21,
        stagemodelonly: false,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public static func getResourceManager(context: StageContext): ResourceManager
    
    /**
    * Obtains the raw file resource descriptor corresponding to the specified resource path.
    *
    * @param { String } path - Indicates the resource relative path.
    * @returns { RawFileDescriptor } The raw file resource descriptor.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001005 - If the resource not found by path.
    * @brief getRawFdSync(path: string): RawFileDescriptor
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getRawFd(path: String): RawFileDescriptor
    
    /**
    * Close the raw file resource descriptor corresponding to the specified resource path.
    *
    * @param { String } path - Indicates the resource relative path.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001005 - If the resource not found by path.
    * @brief closeRawFdSync(path: string): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func closeRawFd(path: String): Unit
    
    /**
    * Obtains the raw file resource corresponding to the specified resource path.
    *
    * @param { String } path - Indicates the resource relative path.
    * @returns { Array<UInt8> } the raw file resource corresponding to the specified resource path.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001005 - If the resource not found by path.
    * @brief getRawFileContentSync(path: string): Uint8Array
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getRawFileContent(path: String): Array<UInt8>
    
    /**
    * Obtains the rawfile resource list corresponding to the specified resource path.
    *
    * @param { String } path - Indicates the resource relative path.
    * @returns { Array<String> } The rawfile resource list.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001005 - If the resource not found by path.
    * @brief getRawFileListSync(path: string): Array<string>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getRawFileList(path: String): Array<String>
    
    /**
    * Obtains the color resource corresponding to the specified resource name.
    *
    * @param { String } resName - Indicates the resource name.
    * @returns { UInt32 } Indicates the integer reference value representing the color data.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001003 - If the resName invalid.
    * @throws { BusinessException } 9001004 - If the resource not found by resName.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getColorByNameSync(resName: string): number
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getColorByName(resName: String): UInt32
    
    /**
    * Obtains the color resource corresponding to the specified resource object.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @returns { UInt32 } Indicates the integer reference value representing the color data.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by resId.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getColorSync(resource: AppResource): number
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getColor(resource: AppResource): UInt32
    
    /**
    * Obtains the color resource corresponding to the specified resource ID in promise mode.
    *
    * @param { Int32 } resId - Indicates the resource ID.
    * @returns { UInt32 } Indicates return the integer reference value representing the color data.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by resId.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getColorSync(resId: number): number
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getColor(resId: Int32): UInt32
    
    /**
    * Obtains the boolean result with a specified resource ID.
    *
    * @param { Int32 } resId - Indicates the resource ID.
    * @returns { Bool } The boolean resource corresponding to the resource ID.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by resId.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getBoolean(resId: number): boolean
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getBoolean(resId: Int32): Bool
    
    /**
    * Obtains the boolean result with a specified resource object.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @returns { Bool } The boolean resource corresponding to the resource object.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by resId.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getBoolean(resource: AppResource): boolean
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getBoolean(resource: AppResource): Bool
    
    /**
    * Obtains the boolean result with a specified resource name.
    *
    * @param { String } resName - Indicates the resource name.
    * @returns { Bool } The boolean resource corresponding to the resource name.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001003 - If the resName invalid.
    * @throws { BusinessException } 9001004 - If the resource not found by resName.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getBooleanByName(resName: string): boolean
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getBooleanByName(resName: String): Bool
    
    /**
    * Obtains the number result with a specified resource ID.
    *
    * @param { Int32 } resId - Indicates the resource ID.
    * @returns { Number } The number resource corresponding to the resource ID.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by resId.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getNumber(resId: number): number
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getNumber(resId: Int32): Number
    
    /**
    * Obtains the number result with a specified resource object.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @returns { Number } The number resource corresponding to the resource object.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the module resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by module resId.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getNumber(resource: AppResource): number
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getNumber(resource: AppResource): Number
    
    /**
    * Obtains the number result with a specified resource name.
    *
    * @param { String } resName - Indicates the resource name.
    * @returns { Number } The number resource corresponding to the resource name.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001003 - If the resName invalid.
    * @throws { BusinessException } 9001004 - If the resource not found by resName.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getNumberByName(resName: string): number
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getNumberByName(resName: String): Number
    
    /**
    * Obtains the content of the specified screen density media file corresponding to a specified resource name.
    *
    * @param { String } resName - Indicates the resource name.
    * @param { UInt32 } density - The parameter ScreenDensity{@link ScreenDensity}, A value of 0 means
    *                 to use the density of current system dpi.
    * @returns { Array<UInt8> } The obtained specified screen density media file content.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001003 - If the resName invalid.
    * @throws { BusinessException } 9001004 - If the resource not found by resName.
    * @brief getMediaByNameSync(resName: string, density?: number): Uint8Array
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getMediaByName(resName: String, density: UInt32): Array<UInt8>
    
    /**
    * Obtains the content of the specified screen density media file corresponding to a specified resource ID.
    *
    * @param { Int32 } resId - Indicates the resource ID.
    * @param { UInt32 } density - The optional parameter ScreenDensity{@link ScreenDensity}, A value of 0 means
    *                to use the density of current system dpi.
    * @returns { Array<UInt8> } Indicates the obtained media file content.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by resId.
    * @brief getMediaContentSync(resId: number, density?: number): Uint8Array
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getMediaContent(resId: Int32, density: UInt32): Array<UInt8>
    
    /**
    * Obtains the content of the specified screen density media file corresponding to a specified resource object.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @param { UInt32 } density - The optional parameter ScreenDensity{@link ScreenDensity}, A value of 0 means
    *                to use the density of current system dpi.
    * @returns { Array<UInt8> } Indicates the obtained media file content.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the module resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by module resId.
    * @brief getMediaContentSync(resource: AppResource, density?: number): Uint8Array
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getMediaContent(resource: AppResource, density: UInt32): Array<UInt8>
    
    /**
    * Obtains the Base64 code of the specified screen density media file corresponding to the specified resource ID.
    *
    * @param { Int32 } resId - Indicates the resource ID.
    * @param { UInt32 } density - The optional parameter ScreenDensity{@link ScreenDensity}, A value of 0 means
    *                to use the density of current system dpi.
    * @returns { String } Indicates the obtained Base64 code of the media file.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by resId.
    * @brief getMediaContentBase64Sync(resId: number, density?: number): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getMediaContentBase64(resId: Int32, density!: UInt32 = 0): String
    
    /**
    * Obtains the content of the specified screen density media file corresponding to the specified resource object.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @param { UInt32 } density - The optional parameter ScreenDensity{@link ScreenDensity}, A value of 0 means
    *                to use the density of current system dpi.
    * @returns { String } Indicates the obtained Base64 code of the media file.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the module resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by module resId.
    * @brief getMediaContentBase64Sync(resource: AppResource, density?: number): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getMediaContentBase64(resource: AppResource, density!: UInt32 = 0): String
    
    /**
    * Obtains the Base64 code of the specified screen density media file corresponding to the specified resource name.
    *
    * @param { String } resName - Indicates the resource name.
    * @param { UInt32 } density - The parameter ScreenDensity{@link ScreenDensity}, A value of 0 means
    *                 to use the density of current system dpi.
    * @returns { String } The obtained Base64 code of the specified screen density media file.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001003 - If the resName invalid.
    * @throws { BusinessException } 9001004 - If the resource not found by resName.
    * @brief getMediaBase64ByNameSync(resName: string, density?: number): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getMediaBase64ByName(resName: String, density!: UInt32 = 0): String
    
    /**
    * Obtains the singular-plural character string represented by the ID string corresponding to
    * the specified number.
    *
    * @param { Int32 } resId - Indicates the resource ID.
    * @param { Int64 } num - Indicates the number.
    * @returns { String } The singular-plural character string represented by the ID string
    *         corresponding to the specified number.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by resId.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getPluralStringValueSync(resId: number, num: number): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getPluralStringValue(resId: Int32, num: Int64): String
    
    /**
    * Obtains the singular-plural character string represented by the resource object string corresponding to the
    * specified number.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @param { Int64 } num - Indicates the number.
    * @returns { String } The singular-plural character string represented by the ID string
    *         corresponding to the specified number.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by resId.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getPluralStringValueSync(resource: AppResource, num: number): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getPluralStringValue(resource: AppResource, num: Int64): String
    
    /**
    * Obtains the singular-plural character string represented by the name string corresponding to
    * the specified number.
    *
    * @param { String } resName - Indicates the resource name.
    * @param { Int64 } num - Indicates the number.
    * @returns { String } The singular-plural character string represented by the name string
    *         corresponding to the specified number.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001003 - If the resName invalid.
    * @throws { BusinessException } 9001004 - If the resource not found by resName.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getPluralStringByNameSync(resName: string, num: number): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getPluralStringByName(resName: String, num: Int64): String
    
    /**
    * Obtains the array of character strings corresponding to a specified resource ID.
    *
    * @param { Int32 } resId - Indicates the resource ID.
    * @returns { Array<String> } The array of character strings corresponding to the specified resource ID.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by resId.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getStringArrayValueSync(resId: number): Array<string>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getStringArrayValue(resId: Int32): Array<String>
    
    /**
    * Obtains the array of character strings corresponding to a specified resource object.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @returns { Array<String> } The array of character strings corresponding to the specified resource object.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the module resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by module resId.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getStringArrayValueSync(resource: AppResource): Array<string>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getStringArrayValue(resource: AppResource): Array<String>
    
    /**
    * Obtains the array of character strings corresponding to a specified resource name.
    *
    * @param { String } resName - Indicates the resource name.
    * @returns { Array<String> } the array of character strings corresponding to the specified resource name.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001003 - If the resName invalid.
    * @throws { BusinessException } 9001004 - If the resource not found by resName.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getStringArrayByNameSync(resName: string): Array<string>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getStringArrayByName(resName: String): Array<String>
    
    /**
    * Obtains string resources associated with a specified resource ID.
    *
    * @param { Int32 } resId - Indicates the resource ID.
    * @returns { String } The character string corresponding to the resource ID.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by resId.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getStringSync(resId: number): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getString(resId: Int32): String
    
    /**
    * Obtains string resources associated with a specified resource ID formated by args.
    *
    * @param { Int32 } resId - Indicates the resource ID.
    * @param { Array<FormatArgs> } args - Indicates the .
    * @returns { String } The character string corresponding to the resource ID.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by resId.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getStringSync(resId: number, ...args: Array<string | number>): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getString(resId: Int32, args: Array<FormatArgs>): String
    
    /**
    * Obtains string resources associated with a specified resource object.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @returns { String } The character string corresponding to the resource object.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the module resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by module resId.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getStringSync(resource: AppResource): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getString(resource: AppResource): String
    
    /**
    * Obtains string resources associated with a specified resource object formated by args.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @returns { String } The character string corresponding to the resource object.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the module resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by module resId.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getStringSync(resource: AppResource, ...args: Array<string | number>): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getString(resource: AppResource, args: Array<FormatArgs>): String
    
    /**
    * Obtains string resources associated with a specified resource name.
    *
    * @param { String } resName - Indicates the resource name.
    * @returns { String } The character string corresponding to the resource name.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001003 - If the resName invalid.
    * @throws { BusinessException } 9001004 - If the resource not found by resName.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getStringByNameSync(resName: string): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getStringByName(resName: String): String
    
    /**
    * Obtains string resources associated with a specified resource name formated by args.
    *
    * @param { String } resName - Indicates the resource name.
    * @returns { String } The character string corresponding to the resource name.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001003 - If the resName invalid.
    * @throws { BusinessException } 9001004 - If the resource not found by resName.
    * @throws { BusinessException } 9001006 - If the resource re-ref too much.
    * @brief getStringByNameSync(resName: string): string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getStringByName(resName: String, args: Array<FormatArgs>): String
    
    /**
    * Obtains the device configuration.
    *
    * @returns { Configuration } the device configuration.
    * @brief getConfigurationSync(): Configuration
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getConfiguration(): Configuration
    
    /**
    * Obtains the device capability.
    *
    * @returns { DeviceCapability } the device capability.
    * @brief getDeviceCapabilitySync(): DeviceCapability
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getDeviceCapability(): DeviceCapability
    
    /**
    * Obtains the DrawableDescriptor of the media file corresponding to a specified resource ID.
    *
    * @param { Int32 } resId - Indicates the resource ID.
    * @param { UInt32 } density - The optional parameter ScreenDensity{@link ScreenDensity}, A value of 0 means
    *                to use the density of current system dpi.
    * @returns { DrawableDescriptor } The DrawableDescriptor class to get drawable image.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by resId.
    * @brief getDrawableDescriptor(resId: number, density?: number): DrawableDescriptor
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getDrawableDescriptor(resId: Int32, density!: UInt32 = 0): DrawableDescriptor
    
    /**
    * Obtains the DrawableDescriptor of the media file corresponding to a specified resource.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @param { UInt32 } density - The optional parameter ScreenDensity{@link ScreenDensity}, A value of 0 means
    *             to use the density of current system dpi.
    * @returns { DrawableDescriptor } The DrawableDescriptor class to get drawable image.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - If the resId invalid.
    * @throws { BusinessException } 9001002 - If the resource not found by resId.
    * @brief getDrawableDescriptor(resId: Resource, density?: number): DrawableDescriptor
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getDrawableDescriptor(resource: AppResource, density!: UInt32 = 0): DrawableDescriptor
    
    /**
    * Obtains the DrawableDescriptor of the media file corresponding to a specified resource Name.
    *
    * @param { String } resName - Indicates the resource name.
    * @param { UInt32 } density - The optional parameter ScreenDensity{@link ScreenDensity}, A value of 0 means
    *             to use the density of current system dpi.
    * @returns { DrawableDescriptor } The DrawableDescriptor class to get drawable image.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001003 - If the resName invalid.
    * @throws { BusinessException } 9001004 - If the resource not found by resName.
    * @brief getDrawableDescriptor(resId: number, density?: number): DrawableDescriptor
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getDrawableDescriptorByName(resName: String, density!: UInt32 = 0): DrawableDescriptor
    
    /**
    * Loads resources from the specified path.
    *
    * @param { String } resName - Resource path.
    * @throws { BusinessException } 9001010 - If the overlay path is invalid.
    * @brief addResource(path: string): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func addResource(path: String): Unit
    
    /**
    * Removes the resources loaded from the specified path to restore the original resources.
    *
    * @param { String } resName - Resource path.
    * @throws { BusinessException } 9001010 - If the overlay path is invalid.
    * @brief removeResource(path: string): void
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func removeResource(path: String): Unit
    
    /**
    * Removes the resources loaded from the specified path to restore the original resources.
    *
    * @param { Bool } includeSystem - Whether system resources are included.
    *              The default value is false.
    *              false: Only application resources are included.
    *              true: Both system and application resources are included.
    *              If the value of includeSystem is invalid, the language list of system resources will be returned.
    * @returns { Array<String> } Language list. The strings in the list are comprised of the language,
    *              script (optional), and region (optional), which are connected by a hyphen (-).
    * @brief getLocales(includeSystem?: boolean): Array<string>
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getLocales(includeSystem!: Bool = false): Array<String>
}


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public class RawFileDescriptor {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public RawFileDescriptor(
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Global.ResourceManager"
        ]
        public let fd: Int32,
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Global.ResourceManager"
        ]
        public let offset: Int64,
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Global.ResourceManager"
        ]
        public let length: Int64
    )
}


/**
* Provides the device configuration.
*
* @relation export class Configuration
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public class Configuration <: ToString {
    /**
    * Indicates the screen direction of the current device.
    *
    * @relation direction: Direction
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var direction: Direction
    
    /**
    * Indicates the current system language, for example, zh-Hans-CN.
    *
    * @relation locale: string
    */
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var locale: String
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public init(direction: Direction, locale: String)
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func toString(): String
}


/**
* Provides the device capability.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public class DeviceCapability <: ToString {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public DeviceCapability(
        // Indicates the screen density of the current device.
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Global.ResourceManager"
        ]
        public let screenDensity: ScreenDensity,
        // Indicates the type of the current device.
        @!APILevel[
            21,
            atomicservice: true,
            crossplatform: true,
            stagemodelonly: true,
            syscap: "SystemCapability.Global.ResourceManager"
        ]
        public let deviceType: DeviceType
    )
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func toString(): String
}


/**
* Enumerates screen density types.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum ScreenDensity {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    SCREEN_SDPI |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    SCREEN_MDPI |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    SCREEN_LDPI |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    SCREEN_XLDPI |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    SCREEN_XXLDPI |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    SCREEN_XXXLDPI |
    ...
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getValue(): Int32
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public static func parse(val: Int32): ScreenDensity
}


/**
* Enumerates device types.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum DeviceType {
    //Indicates a phone.
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DEVICE_TYPE_PHONE |
    // Indicates a tablet.
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DEVICE_TYPE_TABLET |
    // Indicates a car.
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DEVICE_TYPE_CAR |
    // Indicates a PC.
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DEVICE_TYPE_PC |
    // Indicates a smart TV.
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DEVICE_TYPE_TV |
    // Indicates a wearable device.
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DEVICE_TYPE_WEARABLE |
    // Indicates a 2in1 device.
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DEVICE_TYPE_2IN1 |
    ...
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getValue(): Int32
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public static func parse(val: Int32): DeviceType
}


/**
* Enumerates screen directions.
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum Direction {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DIRECTION_VERTICAL |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DIRECTION_HORIZONTAL |
    ...
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getValue(): Int32
    
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public static func parse(val: Int32): Direction
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public class AppResource <: Length & ResourceColor {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public AppResource(
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Global.ResourceManager"
        ]
        public let bundleName: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Global.ResourceManager"
        ]
        public let moduleName: String,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Global.ResourceManager"
        ]
        public let id: Int32,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Global.ResourceManager"
        ]
        public let params!: ?Array<Any> = None,
        @!APILevel[
            21,
            stagemodelonly: true,
            syscap: "SystemCapability.Global.ResourceManager"
        ]
        public let resType!: ?Int32 = None
    )
}


@!APILevel[
    21,
    atomicservice: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public func __GenerateResource__(
    bundleName: String,
    moudleType: String,
    moduleName: String,
    resId: Int32,
    resStr: String,
    params: Array<Any>,
    resType: Int32
): AppResource


@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public class DrawableDescriptor <: RemoteDataLite {
}


/**
* for some API returns two type : Int32 Float32
*/
@!APILevel[
    21,
    atomicservice: true,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum Number {
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    INT(Int32) |
    @!APILevel[
        21,
        atomicservice: true,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    FLOAT(Float32) |
    ...
}


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum FormatArgs {
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    INT(Int32) |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    FLOAT(Float32) |
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    STRING(String) |
    ...
}


extend<T> Array<T> where T <: Comparable<T> {
}

