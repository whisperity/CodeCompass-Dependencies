#!/bin/bash

source ${TRAVIS_BUILD_DIR}/ubuntu_1804/thrift/config.sh

pushd "${THRIFT_SRC}"

./configure --prefix="${THRIFT_INSTALL}" \
  --enable-libtool-lock                  \
  --enable-tests=no                      \
  --enable-tutorial=no                   \
  \
  --with-libevent                        \
  --with-zlib                            \
  \
  --without-csharp                       \
  --without-d                            \
  --without-dart                         \
  --without-dotnetcore                   \
  --without-erlang                       \
  --without-go                           \
  --without-haskell                      \
  --without-haxe                         \
  --without-java                         \
  --without-lua                          \
  --without-nodejs                       \
  --without-perl                         \
  --without-php                          \
  --without-php_extension                \
  --without-python                       \
  --without-py3                          \
  --without-qt4                          \
  --without-qt5                          \
  --without-rs                           \
  --without-ruby

echo "Building Thrift..."
make -j $(nproc)

echo "Installing Thrift..."
make install

popd # thrift-src
