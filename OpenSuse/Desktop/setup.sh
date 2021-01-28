#!/usr/bin/env bash 
set -e
ROOT=`dirname ${0}`
COMMON_LIB_PATH="${ROOT}/../Common/lib.sh" 
if [[ ! -f "${COMMON_LIB_PATH}" ]]
then
    echo -e "\e[91mSeems ${COMMON_LIB_PATH} doesn't exist... Have you \"Curl piped\" this script ? Git clone it or wget the archive..."
    exit 1
fi
source "${COMMON_LIB_PATH}"