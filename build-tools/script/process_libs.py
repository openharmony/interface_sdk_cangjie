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
import subprocess
from collect_dir_sources import get_sources

def convert_cjo_to_json(flatc, input, output_path, fbs):
    child = subprocess.Popen([flatc, "-t", "--raw-binary", "-o", output_path, fbs, "--", input], stdout=subprocess.PIPE)
    code = child.wait()
    if code != 0:
        raise Exception("failed to flatc -t --raw-binary -o [output-path] [fbs] -- [input]")

def convert_json_to_cjo(flatc, input, output_path, fbs):
    child = subprocess.Popen([flatc, "-b", "-o", output_path, fbs, input], stdout=subprocess.PIPE)
    code = child.wait()
    if code != 0:
        raise Exception("failed to flatc -b -o [output-path] [fbs] [input]")
    stem = os.path.splitext(os.path.basename(input))[0]
    shutil.move(f'{output_path}/{stem}.bin', f'{output_path}/{stem}.cjo')

def parse_args(args):
    parser = optparse.OptionParser()
    parser.add_option('--flatc', help='flatc path')
    parser.add_option('--fbs', help='schema.fbs path')
    parser.add_option('--input-dir', help='cjo or json path')
    parser.add_option('--output-dir', help='output path')
    parser.add_option('--mock', help= 'mock so')
    options, _ = parser.parse_args(args)
    return options

def main(argv):
    options = parse_args(argv)
    if not os.path.exists(options.output_dir):
        os.makedirs(options.output_dir)
    json_path_list = get_sources(options.input_dir, options.input_dir, "json")
    for json in json_path_list:
        convert_json_to_cjo(options.flatc, f"{options.input_dir}/{json}", options.output_dir, options.fbs)

        stem = os.path.splitext(os.path.basename(json))[0]
        shutil.copy(options.mock, f'{options.output_dir}/lib{stem}.so')

if __name__ == "__main__":
    exit(main(sys.argv))
