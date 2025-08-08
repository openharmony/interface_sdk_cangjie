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

import os
import sys
import optparse
import shutil
from collect_dir_sources import get_sources

def copy_files(input_path, output_path, exclude_dirs):
    for file in os.listdir(input_path):
        src = os.path.join(input_path, file)
        dst = os.path.join(output_path, file)
        if os.path.isdir(src) and (not file in exclude_dirs):
            shutil.copytree(src, dst, dirs_exist_ok=True)
        elif os.path.isfile(src):
            shutil.copy(src, dst)

def is_f_in_exclude_dir(f, exclude_dirs):
    for e in exclude_dirs:
        if e in f:
            return True
    return False

def copy_files_endswith(input_path, output_path, extension, exclude_dirs):
    files = get_sources(input_path, input_path, extension)
    for f in files:
        if not is_f_in_exclude_dir(f, exclude_dirs):
            shutil.copy(f"{input_path}/{f}", f"{output_path}")
    return

# 1、参数解析：通过 optparse 库解析命令行参数，获取输入路径 (--input) 和输出路径 (--output)。
def parse_args(args):
    parser = optparse.OptionParser()
    parser.add_option('--input', help='input path')
    parser.add_option('--output', help='output path')
    parser.add_option('--extension', help='extension')
    parser.add_option('--exclude-dirs', help='exculde dir')
    options, _ = parser.parse_args(args)
    return options

def main(argv):
    options = parse_args(argv)
    if not os.path.exists(options.output):
        os.makedirs(options.output)
    exclude_dirs = []
    if options.exclude_dirs:
        exclude_dirs = options.exclude_dirs.split(',')
    if options.extension:
        copy_files_endswith(options.input, options.output, options.extension, exclude_dirs)
    else:
        copy_files(options.input, options.output, exclude_dirs)


# 从指定的输入路径复制文件到输出路径，并在复制过程中 排除特定的文件夹。
if __name__ == "__main__":
    exit(main(sys.argv))
