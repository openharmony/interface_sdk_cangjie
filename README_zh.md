# 仓颉API公共仓

## 简介

仓颉API公共仓，用于存放和管理仓颉各个子系统对外API声明，同时提供对应的SDK构建工具，支撑Openharmony SDK中的仓颉API构建。

当前仓颉接口仅支持standard设备。

## 系统架构

**图 1** 仓颉API公共仓架构图

![](figures/interface_sdk_cangjie_architecture_zh.png)

如架构图所示：

- API声明：仓颉API声明文件，主要是ohos和仓颉标准库。
- Kit声明：仓颉kit对外统一声明文件。
- build-tools：SDK构建工具，比如生成cjo工具，mock API库工具等
  - cjo 生成工具：把xxx.cjo.json文件序列化成cjo文件
  - mock API库工具：构建API mock 动态库

## 目录

代码目录结构：
```bash
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

仓颉SDK包目录结构：
```bash
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
│   └── modules                             # 仓颉API对外声明头文件
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
│   ├── third_party                         # 仓颉依赖的三方库以及三方工具
│   └── tools                               # 仓颉工具
└── oh-uni-package.json
```

## 参与贡献

欢迎广大开发者代码，文档等，具体的贡献流程和方式请参见[参与贡献](https://gitcode.com/openharmony/docs/blob/master/zh-cn/contribute/%E5%8F%82%E4%B8%8E%E8%B4%A1%E7%8C%AE.md)。

## 相关仓

[interface_sdk_c](https://gitcode.com/openharmony/interface_sdk_c/)

[interface_sdk-js](https://gitcode.com/openharmony/interface_sdk-js/)