#!/bin/bash

source ${TRAVIS_BUILD_DIR}/ubuntu_1804/odb/config.sh

export PATH="${BUILD2_INSTALL}/bin:${PATH}"

mkdir odb-build
pushd odb-build

echo "Creating ODB build..."
bpkg create                             \
  --quiet                               \
  --jobs $(nproc)                       \
  cc                                    \
  config.cxx=g++                        \
  config.cc.coptions=-O3                \
  config.bin.rpath="${ODB_INSTALL}/lib" \
  config.install.root="${ODB_INSTALL}"  \
  config.install.sudo=sudo
bpkg add http://pkg.cppget.org/1/beta --trust-yes
bpkg fetch --trust-yes

echo "Building ODB..."
bpkg build odb --yes
bpkg build libodb --yes

if [ "${DATABASE}" == "sqlite" ]; then
  echo "Building ODB SQLite..."
  bpkg build libodb-sqlite --yes
else
  echo "Skip building ODB SQLite!"
fi

if [ "${DATABASE}" == "pgsql" ]; then
  echo "Building ODB PgSQL..."
  bpkg build libodb-pgsql --yes
else
  echo "Skip building ODB PgSQL!"
fi

bpkg install --all --recursive

popd # odb-build

