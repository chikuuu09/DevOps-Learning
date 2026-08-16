#!/bin/bash

########################################
# Author: Suraj Kumar
# Date: 15/08/2026
#
# This Script outputs the node health
#
# Version: v1
# ######################################
#

set -x #debug mode
set -e  # exit the script when there is an error
set -o pipefail


df -h


free -g


nproc

ps -ef | grep amazon | awk -F" " '{print$2}'

