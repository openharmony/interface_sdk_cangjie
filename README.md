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

## Directory
 
```
.
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

## Code Contribution

Developers are welcome to contribute code, documentation, etc. For specific contribution processes and methods, please refer to [Code Contribution](https://gitcode.com/openharmony/docs/blob/master/en/contribute/code-contribution.md).

## Related Repositories

[interface_sdk_c](https://gitcode.com/openharmony/interface_sdk_c/)

[interface_sdk-js](https://gitcode.com/openharmony/interface_sdk-js/)