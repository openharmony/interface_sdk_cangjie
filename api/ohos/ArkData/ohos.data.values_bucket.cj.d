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

package ohos.data.values_bucket
import ohos.ffi.CTypeResource
import ohos.labels.APILevel


/**
* Indicates possible value types
* @relation export type ValueType = number | string | boolean;
*/
@!APILevel[
    21,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
]
public enum ValueType {
    /* Integer */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    Integer(Int64) |
    /* Double */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    Double(Float64) |
    /* StringValue */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    StringValue(String) |
    /* Boolean */
    @!APILevel[
        21,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    Boolean(Bool) |
    ...
}


