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

package ohos.device_info
import ohos.labels.*


@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.Startup.SystemInfo"
]
public class DeviceInfo {
    @!APILevel[
        21,
        deprecated: 21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop hardwareProfile: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop deviceType: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop osFullName: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop productModel: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop brand: String
    
    @!APILevel[
        21,
        permission: "ohos.permission.sec_ACCESS_UDID",
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop udid: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildRootHash: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildTime: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildHost: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildUser: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildType: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop versionId: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop firstApiVersion: Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop sdkApiVersion: Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildVersion: Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop featureVersion: Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop seniorVersion: Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop majorVersion: Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop displayVersion: String
    
    @!APILevel[
        21,
        permission: "ohos.permission.sec_ACCESS_UDID",
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop serial: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop osReleaseType: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop incrementalVersion: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop securityPatchTag: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop abiList: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop bootloaderVersion: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop hardwareModel: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop softwareModel: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop productSeries: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop marketName: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop manufacture: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSName: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSVersion: String
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSApiVersion: Int64
    
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSReleaseType: String
    
    /**
    * Open Device Identifier (ODID): a developer-level non-permanent device identifier.
    * A developer can be an enterprise or individual developer.
    * Example: dff3cdfd-7beb-1e7d-fdf7-1dbfddd7d30c
    *
    * @relation const ODID: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop ODID: String
    
    /**
    * Obtains the Distribution OS api name.
    * <p>Independent Software Vendor (ISV) may distribute OHOS with their own OS api name.
    * distributionOSApiName will return the ISV OS api name
    *
    * @relation const distributionOSApiName: string
    */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSApiName: String
}


