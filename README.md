# 仓颉API公共仓

## Introduction

The Cangjie API Public Repository is used to store and manage the public API declarations of each Cangjie subsystem. It also provides corresponding SDK building tools to support the construction of Cangjie API in the OpenHarmony SDK.

Currently, the Cangjie API only supports standard devices.

## System Architecture

**Figure 1** System architecture of interface_sdk_cangjie

![](figures/interface_sdk_cangjie_architecture.png)

## Directory

```
├── api
│   └── xxxKit                   # The specific name of the Kit, such as Cangjie, BasicServiceKit, etc
│       └── xxx.cj.d             # The specific interface files of each kit, with the storage path subject to the actual file list of the kit
├── build-tools                  # SDK building tools
└── kits
    └── kit.xxx.cj.d             # The unified external declaration files of each kit

```

## Code Contribution

Developers are welcome to contribute code, documentation, etc. For specific contribution processes and methods, please refer to [Code Contribution](https://gitcode.com/openharmony/docs/blob/master/en/contribute/code-contribution.md).

## Related Repositories

[cangjie_ark_interop](https://gitcode.com/openharmony/interface_sdk_cangjie)