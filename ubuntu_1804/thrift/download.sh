#!/bin/bash

cd ${HOME}

THRIFT_VERSION="0.13.0"
THRIFT_FILE="thrift-${THRIFT_VERSION}.tar.gz"
THRIFT_UNPACK_DIR="thrift-${THRIFT_VERSION}"
THRIFT_SRC="thrift-src"

rm -frv "./${THRIFT_UNPACK_DIR}"
rm -frv "./${THRIFT_SRC}"

wget -O "${THRIFT_FILE}" "http://www.apache.org/dyn/mirrors/mirrors.cgi?action=download&filename=thrift/${THRIFT_VERSION}/${THRIFT_FILE}"
tar -xvf "./${THRIFT_FILE}"
rm -v "./${THRIFT_FILE}"
mv -v "./${THRIFT_UNPACK_DIR}" "./${THRIFT_SRC}"

