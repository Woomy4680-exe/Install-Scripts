#!/usr/bin/env bash 
set -e
ROOT=`dirname ${0}`
COMMON_LIB_PATH="${ROOT}/../Common/lib.sh" 
if [[ ! -f "${COMMON_LIB_PATH}" ]]
then
    echo -e "\e[91mSeems ${COMMON_LIB_PATH} doesn't exist... Have you \"Curl piped\" this script ? Git clone it or wget the archive..."
    exit 1
fi
# Load Opensuse scripts's shared library
source "${COMMON_LIB_PATH}"
# Load configurations
source "${ROOT}/../../Config/Common.env" # Load default configs
source "${ROOT}/../../Config/Opensuse.env"  # Load Opensuse's specific configs 
# NOTE: Opensuse.env overwrites Common.env variables
prepare_opensuse # Upgrade opensuse before
for PACK in "${PACKAGES[*]}"
do
    zypper install -y $PACK
done
install_cargo_packages # Install cargo, kelpdot and tab
install_omz
install_dots