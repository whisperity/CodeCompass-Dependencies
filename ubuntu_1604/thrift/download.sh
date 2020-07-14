#!/bin/bash

source ${TRAVIS_BUILD_DIR}/ubuntu_1604/thrift/config.sh

cd ${HOME}

rm -frv "${THRIFT_UNPACK_DIR}"
rm -frv "${THRIFT_SRC}"

wget -O "./${THRIFT_FILE}" "http://www.apache.org/dyn/mirrors/mirrors.cgi?action=download&filename=thrift/${THRIFT_VERSION}/${THRIFT_FILE}"
tar -xvf "./${THRIFT_FILE}"
rm -v "./${THRIFT_FILE}"
mv -v "${THRIFT_UNPACK_DIR}" "${THRIFT_SRC}"

