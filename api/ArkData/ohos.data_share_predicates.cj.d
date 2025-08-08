/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
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

package ohos.data_share_predicates
import ohos.values_bucket.*
import ohos.labels.*
import ohos.ffi.*
import ohos.base.*

import ohos.hilog.*
import std.collection.HashMap

/**
* Manages relational database configurations.
*
* @syscap SystemCapability.DistributedDataManager.DataShare.Core
* @StageModelOnly
* @crossplatform
*/
@!APILevel[
    21,
    crossplatform: true,
    stagemodelonly: true,
    syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
]
public class DataSharePredicates <: RemoteDataLite {
    /**
    * Public constructor.
    *
    * @syscap SystemCapability.DistributedDataManager.DataShare.Core
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    public init()
    
    /**
    * Configure the DataSharePredicates to match the field whose data type is ValueType and value is equal
    * to a specified value.
    * This method is similar to = of the SQL statement.
    *
    * @param { String } field - Indicates the column name in the database table.
    * @param { ValueType } value - Indicates the value to match with the DataSharePredicates.
    * @returns { DataSharePredicates } Returns the DataSharePredicates that match the specified field.
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } -1 - Instance invalid.
    * @syscap SystemCapability.DistributedDataManager.DataShare.Core
    * @StageModelOnly
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    public func equalTo(field: String, value: ValueType): DataSharePredicates
    
    /**
    * Adds an and condition to the DataSharePredicates.
    * This method is similar to and of the SQL statement.
    *
    * @returns { DataSharePredicates } Returns the DataSharePredicates with the and condition.
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } -1 - Instance invalid.
    * @syscap SystemCapability.DistributedDataManager.DataShare.Core
    * @StageModelOnly
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    public func and(): DataSharePredicates
    
    /**
    * Restricts the ascending order of the return list. When there are several orders,
    * the one close to the head has the highest priority.
    *
    * @param { String } field - Indicates the column name for sorting the return list.
    * @returns { DataSharePredicates } Returns the SQL query statement with the specified DataSharePredicates.
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } -1 - Instance invalid.
    * @syscap SystemCapability.DistributedDataManager.DataShare.Core
    * @StageModelOnly
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    public func orderByAsc(field: String): DataSharePredicates
    
    /**
    * Restricts the descending order of the return list. When there are several orders,
    * the one close to the head has the highest priority.
    *
    * @param { string } field - Indicates the column name for sorting the return list.
    * @returns { DataSharePredicates } Returns the SQL query statement with the specified DataSharePredicates.
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } -1 - Instance invalid.
    * @syscap SystemCapability.DistributedDataManager.DataShare.Core
    * @StageModelOnly
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    public func orderByDesc(field: String): DataSharePredicates
    
    /**
    * Construct a query object to specify the number of results and the starting position.
    *
    * @param { number } total - Represents the specified number of results.
    * @param { number } offset - Indicates the starting position.
    * @returns { DataSharePredicates } Returns the query object.
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } -1 - Instance invalid.
    * @syscap SystemCapability.DistributedDataManager.DataShare.Core
    * @StageModelOnly
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    public func limit(total: Int32, offset: Int32): DataSharePredicates
    
    /**
    * Configure {@code DataSharePredicates} to match the specified field whose data type is ValueType array and values
    * are within a given range.
    *
    * @param { string } field - Indicates the column name in the database table.
    * @param { Array<ValueType> } value - Indicates the values to match with DataSharePredicates.
    * @returns { DataSharePredicates } Returns DataSharePredicates that matches the specified field.
    * @throws { BusinessException } 401 - Parameter error.
    * @throws { BusinessException } -1 - Instance invalid.
    * @syscap SystemCapability.DistributedDataManager.DataShare.Core
    * @StageModelOnly
    * @crossplatform
    */
    @!APILevel[
        21,
        crossplatform: true,
        stagemodelonly: true,
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    public func `in`(field: String, values: Array<ValueType>): DataSharePredicates
}


