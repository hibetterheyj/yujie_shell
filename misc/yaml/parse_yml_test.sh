#!/bin/bash

# File      :  parse_yml_test.sh
# Time      :  2021/12/05
# Author    :  Yujie He
# Contact   :  he-yujie@outlook.com
# State     :  Tested
# Reference :  xxx

SETUP_SCRIPTS_DIR=$(python3 parse_yaml.py ./test.yaml --get setup_scripts_dir)
echo "SETUP_SCRIPTS_DIR: $SETUP_SCRIPTS_DIR"

echo "Number of scripts in SETUP_SCRIPTS_DIR:" $(ls -1 "${SETUP_SCRIPTS_DIR}"/*".sh" | wc -l)
