# 仓颉API声明文件公共仓

## 简介

仓颉API公共仓，用于存放和管理仓颉各个子系统对外API声明，同时提供对应的SDK构建工具，支撑Openharmony SDK中的仓颉API构建。

当前仓颉接口仅支持standard设备。

## 系统架构

**图 1** 仓颉API公共仓架构图

![](figures/interface_sdk_cangjie_architecture_zh.png)

如架构图所示：

- API声明：仓颉API声明文件(xxx.cj.d)，主要是ohos模块和仓颉标准库相关API声明文件，以Kit归属分目录存放。
- Kit声明：仓颉kit模块对外统一声明文件。
- build-tools：SDK构建相关工具集，比如生成cjo工具，mock API库工具等。
  - cjo生成工具链：包括仓颉API各个模块的cjo 反序列化文件(xxx.cjo.json)，以及FlatBuffers Schema文件和相关构建脚本；主要用于构建SDK时，通过flatc 工具快速将xxx.cjo.json序列化成仓颉API各个模块的cjo。有关仓颉cjo以及序列化和反序列化构建过程的详细介绍，请参考[仓颉cjo](https://gitcode.com/Cangjie/cangjie_docs/blob/08234c9e52cd55a6f1a2521c65f39745fa6d64a3/docs/dev-guide/source_zh_cn/Appendix/cjo_artifacts.md)以及[仓颉cjo构建](build-tools/cjo/README_zh.md)。
  - mock API库工具：包含一个空实现的ohos.mock模块以及相关构建脚本，构建SDK时,将ohos.mock动态库作为复制对象，拷贝生成仓颉API各个模块的空实现动态库对象。

架构图中依赖部件引入说明：

- cangjie_ark_interop: 仓颉SDK中 marco包依赖仓颉-ArkTS互操作接口仓构建互操作宏。
- arkui_cangjie_wrapper: 仓颉SDK中 macro包依赖ArkUI开发框架仓颉接口仓构建状态管理宏。

代码目录结构：
```
interface/sdk_cangjie
├── api
│   └── xxxKit                   # Kit 具体名字，比如Cangjie, BasicServiceKit等
│       └── xxx.cj.d             # 各kit具体模块接口文件，存放路径以kit实际文件列表为准
├── kits                         # 各kit对外统一声明文件
│   └── xxx.cj.d
├── build-tools                  # sdk 构建工具
│   ├── cjo                      # 构建 cjo 相关工具
│   ├── lib
│   │   └── mock                 # mock API库相关脚本                      
│   └── script                   # 构建SDK相关脚本
├── figures                      # README图片
├── LICENSE
└── bundle.json
```

## 交付视图

**图 2** 仓颉sdk交付视图
![](figures/interface_sdk_cangjie_delivery_view.png)

**ohos-sdk:** 

- Openharmony SDK目前由js,ets,native,toolchains, previewer以及cangjie这几个部分组成，本仓主要涉及cangjie部分构建。

**api:**

 - lib包中 目前仅支持ohos 相关的交叉构建包，存放由mock API工具生成的空实现的仓颉API动态库以及flatc工具序列化生成的仓颉cjo。
   - ohos-aarch64: 用于交叉构建ohos-aarch64应用。
   - ohos-x86_64: 用于交叉构建ohos-x86_64应用,主要提供给ohos x86_64模拟器使用。
 - api moudle包存放仓颉API对外声明文件以及lto的bitcode文件。
   - 仓颉API对外声明文件从本仓api和kit目录拷贝并打包进仓颉SDK中。
   - lto bitcode产物正在规划中，暂不支持。
 - api macro包主要存放仓颉宏相关库。（仓颉宏的详细介绍，请参考[仓颉宏](https://gitcode.com/Cangjie/cangjie_docs/blob/08234c9e52cd55a6f1a2521c65f39745fa6d64a3/docs/dev-guide/source_zh_cn/Macro/macro_introduction.md)）
   - ark-interop: cangjie_ark_interop部件的仓颉互操作宏库，由cangjie_ark_interop部件互操作宏库相关gn脚本构建产生。
   - arkui state manager: arkui_cangjie_wrapper部件的仓颉状态管理宏库，由arkui_cangjie_wrapper部仓颉件状态管理宏库相关gn脚本构建产生。

**build-tools：**

- 主要存放仓颉构建工具链，包括仓颉编译器、标准库、运行时库、工具等，从预下载阶段归档的对应平台的仓颉构建工具链拷贝并打包到仓颉SDK中。
  - cangjie-compiler：包括cjc，cjc-frontend等。
  - cangjie-runtime：主要包括仓颉runtime和仓颉标准库动态库以及仓颉标准库API对外声明文件。
  - cangjie-tools: 主要包括cjpm, cjdb, cjfmt等。

仓颉SDK包目录结构：
```
cangjie
├── api                                     # API 符号库
│   ├── lib                                 # 仓颉API动态库及其对于cjo
│   │   ├── linux_ohos_aarch64_cjnative     
│   │   │   ├── kit
│   │   │   │   ├── xxx.so
│   │   │   │   └── xxx.cjo
│   │   │   └── ohos
│   │   │       ├── xxx.so
│   │   │       └── xxx.cjo
│   │   └── linux_ohos_x86_64_cjnative
│   │       ├── kit
│   │       │   ├── xxx.so
│   │       │   └── xxx.cjo
│   │       └── ohos
│   │           ├── xxx.so
│   │           └── xxx.cjo
│   ├── macro                               # 仓颉API宏库以及对应cjo
│   │   └── ohos
│   │       ├── xxx.dll/xxx.so/xxx.dylib
│   │       └── xxx.cjo
│   └── modules                             # 仓颉API对外声明文件
│       └── linux_ohos_aarch64_cjnative
│           ├── kit
│           │   └── kit.xxx.cj.d
│           └── ohos
│               └── ohos.xxx.cj.d
├── build-tools                             # 仓颉构建工具链
│   ├── bin                                 # 仓颉编译器二进制目录
│   ├── lib                                 # 仓颉标准库静态库存放目录
│   ├── modules                             # 仓颉标准库头文件以及cjo存放目录
│   ├── runtime                             # 仓颉运行时动态库存放目录（包括仓颉运行时库和仓颉标准库）                                              
│   ├── third_party                         # 仓颉依赖的三方库以及三方工具（mingw 和llvm工具）
│   └── tools                               # 仓颉工具
└── oh-uni-package.json
```

## 约束
- ohos-sdk中仓颉包支持windows/linux/mac-x64/mac-arm64平台，暂不支持ohos平台。
- 暂不支持仓颉API previewer 交叉构建包。
- 仓颉API模块暂不支持lto功能。

## 参与贡献

欢迎广大开发者代码，文档等，具体的贡献流程和方式请参见[参与贡献](https://gitcode.com/openharmony/docs/blob/master/zh-cn/contribute/%E5%8F%82%E4%B8%8E%E8%B4%A1%E7%8C%AE.md)。

## 相关仓

[arkcompiler_cangjie_ark_interop](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/)

[arkui_arkui_cangjie_wrapper](https://gitcode.com/openharmony-sig/arkui_arkui_cangjie_wrapper/)

[third_party_flatbuffers](https://gitcode.com/openharmony/third_party_flatbuffers/)

[interface_sdk_c](https://gitcode.com/openharmony/interface_sdk_c/)

[interface_sdk-js](https://gitcode.com/openharmony/interface_sdk-js/)