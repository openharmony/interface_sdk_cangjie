# 仓颉SDK构建说明

**图 1** 仓颉SDK构建示意图

![仓颉SDK构建示意图](../figures/cangjie_sdk_build.png)

如图所示：

- 仓颉构建工具链：

   1. cangjie_compiler,cangjie_runtime,cangjie_tools部件预构建后，归档到华为云([cangjie](https://repo.huaweicloud.com/harmonyos/compiler/cangjie/))。
   2. 开发者在预下载阶段，会从华为云下载对应版本和平台的仓颉构建工具链，并解压到`ohos/prebuilts/cangjie_sdk`目录下。
   3. 构建ohos-sdk 仓颉包时，直接从prebuilts/cangjie_sdk 拷贝并压缩对应平台的仓颉构建工具链到sdk中。

- 仓颉API声明文件:

  1. 开发者新增或者修改已有仓颉API对外声明时，需要同步修改interface_sdk_cangjie中api和kit下对应的声明文件。
  2. SDK构建时会直接拷贝interface_sdk_cangjie仓中api和kit目录下头文件打包到SDK中仓颉对应的目录。

- 仓颉CJO产物：

  1. 开发者在新增或者修改已有仓颉API对外声明时，需要同步新增或修改interface_sdk_cangjie仓中对应模块的cjo.json文件。
  2. cjo.json文件为仓颉API 对应模块构建后的CJO产物通过flatc工具反序列化生成，具体操作可以参考[仓颉CJO序列化和反序列化指导](../docs/cangjie_cjo_serialization_and_deserialization_guide.md)。

- 仓颉宏库：仓颉宏库由arkui_cangjie_wrapper部件和cangjie_ark_interop部件构建生成，并拷贝到sdk中。