#!/bin/bash

# File      :  conda_pipeline.sh
# Time      :  2021/12/05
# Author    :  Yujie He
# Contact   :  he-yujie@outlook.com
# State     :  Tested
# Reference :  xxx

# Example:
# > sh conda_pipeline.sh -e=test -t=test
# CONDA ENVIRONMENT  = test
# TEST TYPE      = test
# ########## Python scripts in given env ##########
# ########## Finished!!! ##########

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/he/miniconda/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
	eval "$__conda_setup"
else
	if [ -f "/home/he/miniconda/etc/profile.d/conda.sh" ]; then
		. "/home/he/miniconda/etc/profile.d/conda.sh"
	else
		export PATH="/home/he/miniconda/bin:$PATH"
	fi
fi
unset __conda_setup
# <<< conda initialize <<<

for i in "$@"; do
	case $i in
	-e=* | --env=*)
		ENVIRONMENT="${i#*=}"
		shift # past argument=value
		;;
	-t=* | --type=*)
		TYPE="${i#*=}"
		shift # past argument=value
		;;
	*)
		# unknown option
		;;
	esac
done
echo "CONDA ENVIRONMENT  = ${ENVIRONMENT}"
echo "TEST TYPE      = ${TYPE}"

conda activate ${ENVIRONMENT}

echo "########## Python scripts in given env ##########"
# python3 xxx.py

echo "########## Finished!!! ##########"
