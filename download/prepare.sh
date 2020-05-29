#!/bin/bash
BASE_URL="https://android.googlesource.com"
BRANCH="master"

# shellcheck disable=SC2128
SCRIPT_DIR=$(dirname "${BASH_SOURCE}")

download_snapshot() {
    PROJECT_NAME=${1}
    FILE_NAME=${2}
    FILE=${SCRIPT_DIR}/${FILE_NAME}-refs_heads_${BRANCH}.tar.gz
    echo "Downloading $FILE ..."
    if [ -f "$FILE" ]; then
        echo "$FILE exist"
    else 
        curl "${BASE_URL}/platform/${PROJECT_NAME}/+archive/refs/heads/${BRANCH}.tar.gz" -o "${FILE}.tmp"
	  mv "${FILE}.tmp" "${FILE}"
    fi
    rm -rf "${SCRIPT_DIR}"/../android/"${PROJECT_NAME}"
    mkdir -p "${SCRIPT_DIR}/../android/${PROJECT_NAME}"
    tar xzf "${FILE}" -C "${SCRIPT_DIR}/../android/${PROJECT_NAME}"
}

download_snapshot frameworks/native native
download_snapshot system/core core
download_snapshot frameworks/base base
download_snapshot art art
download_snapshot external/expat expat
download_snapshot external/libpng libpng
download_snapshot external/protobuf protobuf
download_snapshot external/zlib zlib
download_snapshot external/libcxx libcxx
download_snapshot external/libcxxabi libcxxabi
download_snapshot external/compiler-rt compiler-rt
download_snapshot external/cpu_features cpu_features
download_snapshot external/zopfli zopfli
download_snapshot external/jsoncpp jsoncpp
download_snapshot system/libbase libbase
download_snapshot system/tools/aidl aidl
download_snapshot system/libziparchive libziparchive
download_snapshot libnativehelper libnativehelper
download_snapshot build build
download_snapshot build/soong soong
download_snapshot prebuilts/ndk ndk
download_snapshot bionic bionic
