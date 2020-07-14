#!/bin/bash

source ${TRAVIS_BUILD_DIR}/ubuntu_1804/odb/config.sh

pushd "${ODB_INSTALL}/.."

mkdir -p "${DEPLOY_ROOT}"

tar cvfz "${DEPLOY_ROOT}/ub1804_odb-$(cat ${ODB_VERSION_TXT})-${DATABASE}-install.tar.gz" \
  "$(basename ${ODB_INSTALL})"

popd # odb-install

