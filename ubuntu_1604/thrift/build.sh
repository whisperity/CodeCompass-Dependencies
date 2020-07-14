#!/bin/bash

THRIFT_SRC="${HOME}/thrift-src"
THRIFT_INSTALL="${HOME}/thrift-install"

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
  --without-qt4                          \
  --without-qt5                          \
  --without-rs                           \
  --without-ruby

make -j $(nproc)
make install

popd # thrift-src
