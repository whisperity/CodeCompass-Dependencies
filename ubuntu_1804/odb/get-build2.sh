#!/bin/bash

source ${TRAVIS_BUILD_DIR}/ubuntu_1804/odb/config.sh

echo "Fetching Build2..."
curl -LsSfO "http://download.build2.org/${BUILD2_VERSION}/build2-install-${BUILD2_VERSION}.sh"

echo "Downloading and building Build2..."
sh "build2-install-${BUILD2_VERSION}.sh" \
  --yes \
  --trust yes \
  "${BUILD2_INSTALL}"

