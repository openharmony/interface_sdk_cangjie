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

package ohos.values_bucket
import ohos.ffi.*
import ohos.labels.*


@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
]
public enum ValueType {
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    Null |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    Integer(Int64) |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    Double(Float64) |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    Str(String) |
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    Boolean(Bool) |
    ...
}


