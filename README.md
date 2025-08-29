# 仓颉API公共仓

## Introduction

Cangjie API Public Repository, which includes Cangjie API interface declarations, SDK construction, etc.

## Directory

```
├── api
│   └── xxxKit                   # The specific name of the Kit, such as Cangjie, BasicServiceKit, etc
│       └── xxx.cj.d             # The specific interface files of each kit, with the storage path subject to the actual file list of the kit
├── build-tools                  # SDK building tools
└── kits
    └── kit.xxx.cj.d             # The unified external declaration files of each kit

```

## Constraints

Currently, the Cangjie interface only supports standard devices.

## Code Contribution

Developers are welcome to contribute code, documentation, etc. For specific contribution processes and methods, please refer to [Code Contribution](https://gitcode.com/openharmony/docs/blob/master/en/contribute/code-contribution.md).

## Related Repositories

[cangjie_ark_interop](https://gitcode.com/openharmony-sig/interface_sdk_cangjie)