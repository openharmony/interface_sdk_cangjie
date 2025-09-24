# Cangjie API Public Repository

## Introduction

The Cangjie API Public Repository is used to store and manage the public API declarations of each Cangjie subsystem. It also provides corresponding SDK building tools to support the construction of Cangjie API in the OpenHarmony SDK.

Currently, the Cangjie API only supports standard devices.

## System Architecture

**Figure 1** System architecture of interface_sdk_cangjie

![](figures/interface_sdk_cangjie_architecture.png)

As shown in the architecture:

- API Declaration: Cangjie API declaration files, mainly including ohos and Cangjie standard libraries.
- Kit Declaration: Unified external declaration files of Cangjie kits.
- build-tools: SDK building tools, such as tools for generating cjo, mock API library, etc.
  - cjo generation tool: Serialize xxx.cjo.json files into cjo files
  - mock API library tool: Build API mock dynamic libraries

Code directory structure:
```bash
interface/sdk_cangjie
├── api
│   └── xxxKit                   # The specific name of the Kit, such as Cangjie, BasicServiceKit, etc
│       └── xxx.cj.d             # The specific interface files of each kit, with the storage path subject to the actual file list of the kit
├── kits                         # The unified external declaration files of each kit
│   └── xxx.cj.d
├── build-tools                  # SDK building tools
│   ├── cjo                      # Tools related to cjo building
│   ├── lib
│   │   └── mock                 # Scripts related to mock API library                      
│   └── script                   # Tools related to SDK building
├── figures                      # README images
├── LICENSE
└── bundle.json
```

## Delivery View

**Figure 2** Cangjie SDK delivery view
![](figures/interface_sdk_cangjie_delivery_view.png)

As shown in the figure:
 - Platform: Cangjie SDK currently supports windows/linux/mac-x64/mac-arm64 (ohos is not supported yet)
 - api lib package currently only supports ohos-related cross-compilation packages, previewer cross-compilation packages are not supported yet
   - ohos-aarch64: Cross-compilation for ohos applications
   - ohos-x86_64: Cross-compilation for ohos simulator applications
   - previewer cross-compilation package (not supported yet)
 - api module package stores header files and lto bitcode files (following subsequent lto planning)
 - api macro package mainly stores Cangjie macro libraries
   - ark-interop: Cangjie interoperability related macro interfaces of the cangjie_ark_interop component
   - arkui state manager: Cangjie state management related macro interfaces of the arkui_cangjie_wrapper component
 - build-tools: Mainly stores Cangjie build toolchain, including Cangjie compiler, standard library, runtime library, third-party libraries, tools, etc.

Cangjie SDK package directory structure:
```bash
cangjie
├── api                                     # API library
│   ├── lib                                 # Cangjie API dynamic libraries and corresponding cjo
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
│   ├── macro                               # Cangjie API macro libraries and corresponding cjo
│   │   └── ohos
│   │       ├── xxx.dll/xxx.so/xxx.dylib
│   │       └── xxx.cjo
│   └── modules                             # Cangjie API public declaration header files
│       └── linux_ohos_aarch64_cjnative
│           ├── kit
│           │   └── kit.xxx.cj.d
│           └── ohos
│               └── ohos.xxx.cj.d
├── build-tools                             # Cangjie build toolchain
│   ├── bin                                 # Cangjie compiler binary directory
│   ├── lib                                 # Cangjie standard library static library storage directory
│   ├── modules                             # Cangjie standard library header files and cjo storage directory
│   ├── runtime                             # Cangjie runtime dynamic library storage directory (including Cangjie runtime library and Cangjie standard library)
│   ├── third_party                         # Third-party libraries and tools that Cangjie depends on
│   └── tools                               # Cangjie tools
└── oh-uni-package.json
```

## Code Contribution

Developers are welcome to contribute code, documentation, etc. For specific contribution processes and methods, please refer to [Code Contribution](https://gitcode.com/openharmony/docs/blob/master/en/contribute/code-contribution.md).

## Related Repositories

[interface_sdk_c](https://gitcode.com/openharmony/interface_sdk_c/)

[interface_sdk-js](https://gitcode.com/openharmony/interface_sdk-js/)