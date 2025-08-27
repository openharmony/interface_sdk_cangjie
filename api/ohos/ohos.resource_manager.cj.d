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
public import ohos.raw_file_descriptor.RawFileDescriptor
public import ohos.resource.AppResource
import ohos.ffi.{RemoteDataLite, releaseFFIData, RetDataCArrUI8}
import ohos.labels.APILevel
import std.collection.{HashMap, ArrayList}
import std.sync.Mutex
import ohos.raw_file_descriptor.RetDataRawFileDescriptor
import ohos.resource.CResource

import std.deriving.Derive
import ohos.hilog.HilogChannel
import ohos.business_exception.BusinessException
import ohos.ffi.{INVALID_CODE, SUCCESS_CODE}
import ohos.business_exception.{BusinessException, getUniversalErrorMsg}
import ohos.ffi.{RetDataI64, RetDataCArrUI8, RetDataCArrString, RetDataCString}

/**
* Provides the capability of accessing application resources.
*
* @relation export interface ResourceManager
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public class ResourceManager <: RemoteDataLite {
    /**
    * Obtains the raw file resource descriptor corresponding to the specified resource path.
    *
    * @param { String } path - Indicates the resource relative path.
    * @returns { RawFileDescriptor } The raw file resource descriptor.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001005 - Invalid relative path.
    * @relation getRawFdSync(path: string): RawFileDescriptor
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getRawFd(path: String): RawFileDescriptor
    
    /**
    * Close the raw file resource descriptor corresponding to the specified resource path.
    *
    * @param { String } path - Indicates the resource relative path.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001005 - Invalid relative path.
    * @relation closeRawFdSync(path: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func closeRawFd(path: String): Unit
    
    /**
    * Obtains the raw file resource corresponding to the specified resource path.
    *
    * @param { String } path - Indicates the resource relative path.
    * @returns { Array<UInt8> } the raw file resource corresponding to the specified resource path.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001005 - Invalid relative path.
    * @relation getRawFileContentSync(path: string): Uint8Array
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getRawFileContent(path: String): Array<UInt8>
    
    /**
    * Obtains the rawfile resource list corresponding to the specified resource path.
    *
    * @param { String } path - Indicates the resource relative path.
    * @returns { Array<String> } The rawfile resource list.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001005 - Invalid relative path.
    * @relation getRawFileListSync(path: string): Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getRawFileList(path: String): Array<String>
    
    /**
    * Obtains the color resource corresponding to the specified resource name.
    *
    * @param { String } resName - Indicates the resource name.
    * @returns { UInt32 } Indicates the integer reference value representing the color data.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001003 - Invalid resource name.
    * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getColorByNameSync(resName: string) : number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getColorByName(resName: String): UInt32
    
    /**
    * Obtains the color resource corresponding to the specified resource object.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @returns { UInt32 } Indicates the integer reference value representing the color data.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getColorSync(resource: Resource) : number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getColor(resource: AppResource): UInt32
    
    /**
    * Obtains the color resource corresponding to the specified resource ID.
    *
    * @param { UInt32 } resId - Indicates the resource ID.
    * @returns { UInt32 } Indicates the integer reference value representing the color data.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getColorSync(resId: number) : number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getColor(resId: UInt32): UInt32
    
    /**
    * Obtains the boolean result with a specified resource ID.
    *
    * @param { UInt32 } resId - Indicates the resource ID.
    * @returns { Bool } The boolean resource corresponding to the resource ID.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getBoolean(resId: number): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getBoolean(resId: UInt32): Bool
    
    /**
    * Obtains the boolean result with a specified resource object.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @returns { Bool } The boolean resource corresponding to the resource object.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getBoolean(resource: Resource): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getBoolean(resource: AppResource): Bool
    
    /**
    * Obtains the boolean result with a specified resource name.
    *
    * @param { String } resName - Indicates the resource name.
    * @returns { Bool } The boolean resource corresponding to the resource name.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001003 - Invalid resource name.
    * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getBooleanByName(resName: string): boolean
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getBooleanByName(resName: String): Bool
    
    /**
    * Obtains the number result with a specified resource ID.
    *
    * @param { UInt32 } resId - Indicates the resource ID.
    * @returns { NumberValueType } The number resource corresponding to the resource ID.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getNumber(resId: number): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getNumber(resId: UInt32): NumberValueType
    
    /**
    * Obtains the number result with a specified resource object.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @returns { NumberValueType } The number resource corresponding to the resource object.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getNumber(resource: Resource): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getNumber(resource: AppResource): NumberValueType
    
    /**
    * Obtains the number result with a specified resource name.
    *
    * @param { String } resName - Indicates the resource name.
    * @returns { NumberValueType } The number resource corresponding to the resource name.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001003 - Invalid resource name.
    * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getNumberByName(resName: string): number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getNumberByName(resName: String): NumberValueType
    
    /**
    * Obtains the content of the specified screen density media file corresponding to a specified resource name.
    *
    * @param { String } resName - Indicates the resource name.
    * @param { UInt32 } density - The parameter ScreenDensity{@link ScreenDensity}, A value of 0 means
    *                 to use the density of current system dpi.
    * @returns { Array<UInt8> } The obtained specified screen density media file content.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 -  If the input parameter invalid. Possible causes: 1.Incorrect parameter types; 2.Parameter verification failed.
    * @throws { BusinessException } 9001003 - Invalid resource name.
    * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
    * @relation getMediaByNameSync(resName: string, density?: number): Uint8Array
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getMediaByName(resName: String, density!: ?ScreenDensity = None): Array<UInt8>
    
    /**
    * Obtains the content of the specified screen density media file corresponding to a specified resource ID.
    *
    * @param { UInt32 } resId - Indicates the resource ID.
    * @param { UInt32 } density - The optional parameter ScreenDensity{@link ScreenDensity}, A value of 0 means
    *                to use the density of current system dpi.
    * @returns { Array<UInt8> } Indicates the obtained media file content.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: 1.Incorrect parameter types; 2.Parameter verification failed.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @relation getMediaContentSync(resId: number, density?: number): Uint8Array
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getMediaContent(resId: UInt32, density!: ?ScreenDensity = None): Array<UInt8>
    
    /**
    * Obtains the content of the specified screen density media file corresponding to a specified resource object.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @param { UInt32 } density - The optional parameter ScreenDensity{@link ScreenDensity}, A value of 0 means
    *                to use the density of current system dpi.
    * @returns { Array<UInt8> } Indicates the obtained media file content.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: 1.Incorrect parameter types; 2.Parameter verification failed.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @relation getMediaContentSync(resource: Resource, density?: number): Uint8Array
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getMediaContent(resource: AppResource, density!: ?ScreenDensity = None): Array<UInt8>
    
    /**
    * Obtains the Base64 code of the specified screen density media file corresponding to the specified resource ID.
    *
    * @param { UInt32 } resId - Indicates the resource ID.
    * @param { UInt32 } density - The optional parameter ScreenDensity{@link ScreenDensity}, A value of 0 means
    *                to use the density of current system dpi.
    * @returns { String } Indicates the obtained Base64 code of the media file.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws IllegalMemoryException - Out of memory.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: 1.Incorrect parameter types; 2.Parameter verification failed.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @relation getMediaContentBase64Sync(resId: number, density?: number): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getMediaContentBase64(resId: UInt32, density!: ?ScreenDensity = None): String
    
    /**
    * Obtains the content of the specified screen density media file corresponding to the specified resource object.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @param { UInt32 } density - The optional parameter ScreenDensity{@link ScreenDensity}, A value of 0 means
    *                to use the density of current system dpi.
    * @returns { String } Indicates the obtained Base64 code of the media file.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws IllegalMemoryException - Out of memory.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: 1.Incorrect parameter types; 2.Parameter verification failed.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @relation getMediaContentBase64Sync(resource: Resource, density?: number): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getMediaContentBase64(resource: AppResource, density!: ?ScreenDensity = None): String
    
    /**
    * Obtains the Base64 code of the specified screen density media file corresponding to the specified resource name.
    *
    * @param { String } resName - Indicates the resource name.
    * @param { UInt32 } density - The parameter ScreenDensity{@link ScreenDensity}, A value of 0 means
    *                 to use the density of current system dpi.
    * @returns { String } The obtained Base64 code of the specified screen density media file.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws IllegalMemoryException - Out of memory.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: 1.Incorrect parameter types; 2.Parameter verification failed.
    * @throws { BusinessException } 9001003 - Invalid resource name.
    * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
    * @relation getMediaBase64ByNameSync(resName: string, density?: number): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getMediaBase64ByName(resName: String, density!: ?ScreenDensity = None): String
    
    /**
    * Obtains the singular-plural character string represented by the ID string corresponding to
    * the specified number.
    *
    * @param { UInt32 } resId - Indicates the resource ID.
    * @param { Int64 } num - Indicates the number.
    * @returns { String } The singular-plural character string represented by the ID string
    *         corresponding to the specified number.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws IllegalMemoryException - Out of memory.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getPluralStringValueSync(resId: number, num: number): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getPluralStringValue(resId: UInt32, num: Int64): String
    
    /**
    * Obtains the singular-plural character string represented by the resource object string corresponding to the
    * specified number.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @param { Int64 } num - Indicates the number.
    * @returns { String } The singular-plural character string represented by the ID string
    *         corresponding to the specified number.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws IllegalMemoryException - Out of memory.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getPluralStringValueSync(resource: Resource, num: number): string
    */
    @!APILevel[
        21,
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
    * @throws IllegalStateException - If the instance id invallid.
    * @throws IllegalMemoryException - Out of memory.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001003 - Invalid resource name.
    * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getPluralStringByNameSync(resName: string, num: number): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getPluralStringByName(resName: String, num: Int64): String
    
    /**
    * Obtains the array of character strings corresponding to a specified resource ID.
    *
    * @param { UInt32 } resId - Indicates the resource ID.
    * @returns { Array<String> } The array of character strings corresponding to the specified resource ID.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getStringArrayValueSync(resId: number): Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getStringArrayValue(resId: UInt32): Array<String>
    
    /**
    * Obtains the array of character strings corresponding to a specified resource object.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @returns { Array<String> } The array of character strings corresponding to the specified resource object.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getStringArrayValueSync(resource: Resource): Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getStringArrayValue(resource: AppResource): Array<String>
    
    /**
    * Obtains the array of character strings corresponding to a specified resource name.
    *
    * @param { String } resName - Indicates the resource name.
    * @returns { Array<String> } the array of character strings corresponding to the specified resource name.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001003 - Invalid resource name.
    * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getStringArrayByNameSync(resName: string): Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getStringArrayByName(resName: String): Array<String>
    
    /**
    * Obtains string resources associated with a specified resource ID.
    *
    * @param { UInt32 } resId - Indicates the resource ID.
    * @returns { String } The character string corresponding to the resource ID.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws IllegalMemoryException - Out of memory.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getStringSync(resId: number): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getString(resId: UInt32): String
    
    /**
    * Obtains string resources associated with a specified resource ID formated by args.
    *
    * @param { UInt32 } resId - Indicates the resource ID.
    * @param { Array<ArgsValueType> } args - Indicates the formatting string resource parameters.
    * @returns { String } The character string corresponding to the resource ID.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @throws { BusinessException } 9001007 - Failed to format the resource obtained based on the resource ID.
    * @relation getStringSync(resId: number, ...args: Array<string | number>): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getString(resId: UInt32, args: Array<ArgsValueType>): String
    
    /**
    * Obtains string resources associated with a specified resource object.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @returns { String } The character string corresponding to the resource object.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getStringSync(resource: Resource): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getString(resource: AppResource): String
    
    /**
    * Obtains string resources associated with a specified resource object formated by args.
    *
    * @param { AppResource } resource - Indicates the resource object.
    * @returns { String } The character string corresponding to the resource object.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001001 - Invalid resource ID.
    * @throws { BusinessException } 9001002 - No matching resource is found based on the resource ID.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @throws { BusinessException } 9001007 - Failed to format the resource obtained based on the resource ID.
    * @relation getStringSync(resource: Resource, ...args: Array<string | number>): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getString(resource: AppResource, args: Array<ArgsValueType>): String
    
    /**
    * Obtains string resources associated with a specified resource name.
    *
    * @param { String } resName - Indicates the resource name.
    * @returns { String } The character string corresponding to the resource name.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001003 - Invalid resource name.
    * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @relation getStringByNameSync(resName: string): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getStringByName(resName: String): String
    
    /**
    * Obtains string resources associated with a specified resource name formated by args.
    *
    * @param { String } resName - Indicates the resource name.
    * @returns { String } The character string corresponding to the resource name.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @throws { BusinessException } 9001003 - Invalid resource name.
    * @throws { BusinessException } 9001004 - No matching resource is found based on the resource name.
    * @throws { BusinessException } 9001006 - The resource is referenced cyclically.
    * @throws { BusinessException } 9001008 - Failed to format the resource obtained based on the resource Name.
    * @relation getStringByNameSync(resName: string, ...args: Array<string | number>): string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getStringByName(resName: String, args: Array<ArgsValueType>): String
    
    /**
    * Obtains the device configuration.
    *
    * @throws IllegalStateException - If the instance id invallid.
    * @returns { Configuration } the device configuration.
    * @relation getConfigurationSync(): Configuration
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getConfiguration(): Configuration
    
    /**
    * Obtains the device capability.
    *
    * @throws IllegalStateException - If the instance id invallid.
    * @returns { DeviceCapability } the device capability.
    * @relation getDeviceCapabilitySync(): DeviceCapability
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getDeviceCapability(): DeviceCapability
    
    /**
    * Add overlay resources during application runtime.
    *
    * @param { String } resName - Resource path.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 9001010 - Invalid overlay path.
    * @relation addResource(path: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func addResource(path: String): Unit
    
    /**
    * Remove overlay resources during application runtime.
    *
    * @param { String } resName - Resource path.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 9001010 - Invalid overlay path.
    * @relation removeResource(path: string): void
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func removeResource(path: String): Unit
    
    /**
    * Obtains locales list.
    *
    * @param { Bool } includeSystem - the parameter controls whether to include system resources,
    *     the default value is false, it has no effect when only system resources query the locales list.
    * @returns { Array<String> } the list of strings for the locales.
    * @throws IllegalStateException - If the instance id invallid.
    * @throws { BusinessException } 401 - If the input parameter invalid. Possible causes: Incorrect parameter types.
    * @relation getLocales(includeSystem?: boolean): Array<string>
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public func getLocales(includeSystem!: Bool = false): Array<String>
}



/**
* Provides the device configuration.
*
* @relation export class Configuration
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public class Configuration {
    /**
    * Indicates the screen direction of the current device.
    *
    * @relation direction: Direction
    */
    @!APILevel[
        21,
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
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var locale: String
    
    /**
    * Indicates the device type.
    *
    * @relation deviceType: DeviceType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var deviceType: DeviceType
    
    /**
    * Indicates the screen density.
    *
    * @relation screenDensity: ScreenDensity
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var screenDensity: ScreenDensity
    
    /**
    * Indicates the color mode.
    *
    * @relation colorMode: ColorMode
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var colorMode: ColorMode
    
    /**
    * Indicates the mcc.
    *
    * @relation mcc: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var mcc: UInt32
    
    /**
    * Indicates the mnc.
    *
    * @relation mnc: number
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public var mnc: UInt32
}


/**
* Provides the device capability.
*
* @relation export class DeviceCapability
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public class DeviceCapability {
    /**
    * Indicates the screen density of the current device.
    *
    * @relation screenDensity: ScreenDensity
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public let screenDensity: ScreenDensity
    
    /**
    * Indicates the type of the current device.
    *
    * @relation deviceType: DeviceType
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    public let deviceType: DeviceType
}


/**
* Enumerates color mode types.
*
* @relation export enum ColorMode
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum ColorMode {
    /**
    * Indicates dark mode.
    *
    * @relation DARK = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    Dark |
    /**
    * Indicates light mode.
    *
    * @relation LIGHT = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    Light |
    ...
}


/**
* Enumerates screen density types.
*
* export enum ScreenDensity
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum ScreenDensity {
    /**
    * Indicates small screen density.
    *
    * @relation SCREEN_SDPI = 120
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    ScreenSDPI |
    /**
    * Indicates medium screen density.
    *
    * @relation SCREEN_MDPI = 160
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    ScreenMDPI |
    /**
    * Indicates large screen density.
    *
    * @relation SCREEN_LDPI = 240
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    ScreenLDPI |
    /**
    * Indicates extra-large screen density.
    *
    * @relation SCREEN_XLDPI = 320
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    ScreenXLDPI |
    /**
    * Indicates extra-extra-large screen density.
    *
    * @relation SCREEN_XXLDPI = 480
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    ScreenXXLDPI |
    /**
    * Indicates extra-extra-extra-large screen density.
    *
    * @relation SCREEN_XXXLDPI = 640
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    ScreenXXXLDPI |
    ...
}


/**
* Enumerates device types.
*
* @relation export enum DeviceType
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum DeviceType {
    /**
    * Indicates a phone.
    *
    * @relation DEVICE_TYPE_PHONE = 0x00
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DeviceTypePhone |
    /**
    * Indicates a tablet.
    *
    * @relation DEVICE_TYPE_TABLET = 0x01
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DeviceTypeTablet |
    /**
    * Indicates a car.
    *
    * @relation DEVICE_TYPE_CAR = 0x02
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DeviceTypeCar |
    /**
    * Indicates a PC.
    *
    * @relation DEVICE_TYPE_PC = 0x03
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DeviceTypePC |
    /**
    * Indicates a smart TV.
    *
    * @relation DEVICE_TYPE_TV = 0x04
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DeviceTypeTV |
    /**
    * Indicates a wearable device.
    *
    * @relation DEVICE_TYPE_WEARABLE = 0x06
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DeviceTypeWearable |
    /**
    * Indicates a 2in1 device.
    *
    * @relation DEVICE_TYPE_2IN1 = 0x07
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DeviceType2In1 |
    ...
}


/**
* Enumerates screen directions.
*
* @relation export enum Direction
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum Direction {
    /**
    * Enumerates screen directions.
    *
    * @relation DIRECTION_VERTICAL = 0
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DirectionVertical |
    /**
    * Indicates the horizontal direction.
    *
    * @relation DIRECTION_HORIZONTAL = 1
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    DirectionHorizontal |
    ...
}


/**
* for some API returns two type : Int32 Float32
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum NumberValueType {
    /**
    * Represents Int32.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    Int32Value(Int32) |
    /**
    * Represents Float32.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    Float32Value(Float32) |
    ...
}


/**
* For the formatting parameter using.
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Global.ResourceManager"
]
public enum ArgsValueType {
    /**
    * Formats %d.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    Int32Value(Int32) |
    /**
    * Formats %f.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    Float32Value(Float32) |
    /**
    * Formats %s.
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Global.ResourceManager"
    ]
    StringValue(String) |
    ...
}


extend<T> Array<T> where T <: Comparable<T> {
}

