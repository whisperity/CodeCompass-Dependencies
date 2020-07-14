#!/bin/bash

source ${TRAVIS_BUILD_DIR}/ubuntu_1604/thrift/config.sh

pushd "${THRIFT_INSTALL}/.."

mkdir -p "${DEPLOY_ROOT}"

tar cvfz "${DEPLOY_ROOT}/ub1604_thrift-${THRIFT_VERSION}-install.tar.gz" \
  "$(basename ${THRIFT_INSTALL})"

popd # thrift-install

