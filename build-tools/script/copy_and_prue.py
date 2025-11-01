#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Copyright (c) 2025 Huawei Device Co., Ltd.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import argparse
import os
import shutil
import glob


def remove_directory_safely(dir_path):
    """安全地删除目录，如果目录不存在则不报错"""
    if os.path.exists(dir_path):
        shutil.rmtree(dir_path)


def remove_files_safely(pattern):
    """安全地删除匹配模式的文件，如果文件不存在则不报错"""
    files = glob.glob(pattern)
    for file in files:
        try:
            os.remove(file)
        except OSError as e:
            pass


def move_directory_safely(source_dir, dest_dir):
    """安全地移动目录，如果源目录不存在则不报错"""
    if os.path.exists(source_dir):
        # 确保目标目录的父目录存在
        os.makedirs(os.path.dirname(dest_dir), exist_ok=True)
        # 移动目录
        shutil.move(source_dir, dest_dir)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--source", required=True, help="Source directory")
    parser.add_argument("--destination", required=True, help="Destination directory")

    args = parser.parse_args()

    if os.path.exists(args.destination):
        shutil.rmtree(args.destination)
        print(f"Removed existing destination directory: {args.destination}")
    os.makedirs(os.path.dirname(args.destination), exist_ok=True)

    if os.path.exists(args.source):
        shutil.copytree(args.source, args.destination)
        print(f"Copied from {args.source} to {args.destination}")
    else:
        print(f"Source directory does not exist: {args.source}")
        return 1
    
    # 删除cangjie/include目录
    include_dir = os.path.join(args.destination, "include")
    remove_directory_safely(include_dir)

    # 删除cangjie/lib/linux_ohos_aarch64_cjnative 和 cangjie/lib/linux_ohos_x86_64_cjnative/目录下
    # libcangjie-std*.a
    aarch64_lib_dir = os.path.join(args.destination, "lib", "linux_ohos_aarch64_cjnative")
    if os.path.exists(aarch64_lib_dir):
        std_pattern = os.path.join(aarch64_lib_dir, "libcangjie-std*.a")
        remove_files_safely(std_pattern)
    
    x86_64_lib_dir = os.path.join(args.destination, "lib", "linux_ohos_x86_64_cjnative")
    if os.path.exists(x86_64_lib_dir):
        std_pattern = os.path.join(x86_64_lib_dir, "libcangjie-std*.a")
        remove_files_safely(std_pattern)

    # 删除cangjie/lib 目录及其目录下的特定文件
    lib_dir = os.path.join(args.destination, "lib")
    if os.path.exists(lib_dir):
        lib_patterns = [
            "libcangjie-dynamicLoader-opensslFFI.a",
            "libcangjie-ast-support.a",
            "libcangjie-aio.a",
            "libboundscheck.so",
            "libboundscheck-static.a"
        ]
        for pattern in lib_patterns:
            full_pattern = os.path.join(lib_dir, pattern)
            remove_files_safely(full_pattern)

    # 如果存在cangjie/tools/dtsparser，则将其移动到cangjie/tools/config
    dtsparser_dir = os.path.join(args.destination, "tools", "dtsparser")
    config_dir = os.path.join(args.destination, "tools", "config")
    move_directory_safely(dtsparser_dir, config_dir)

    return 0

if __name__ == "__main__":
    exit(main())