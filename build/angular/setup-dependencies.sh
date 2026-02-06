#!/usr/bin/env bash

set -Eeuo pipefail

# someday there should be a docker image with all these things pre-installed
# but there is no such infrastructure @ abraxas yet...

PROTOC_VERSION=3.19.0
PROTOC_GRPC_WEB_VERSION=1.5.0

BIN=/usr/bin
PROTOC_BIN=/usr/share/protoc

apt-get update

apt-get install -y --no-install-recommends \
    gnupg2 \
    unzip \
    ca-certificates \
    curl

rm -rf /var/lib/apt/lists/*

# install protoc
curl --fail -L "https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/protoc-${PROTOC_VERSION}-linux-x86_64.zip" -o protoc.zip
unzip protoc.zip -d ./protoc-tmp
mkdir -p ${PROTOC_BIN}
mv ./protoc-tmp/include ${PROTOC_BIN}/
mv ./protoc-tmp/bin/protoc ${PROTOC_BIN}/
chmod +x ${PROTOC_BIN}/protoc
rm -rf protoc.zip ./protoc-tmp
ln -s ${PROTOC_BIN}/protoc ${BIN}/protoc

# install protoc-gen-grpc-web
curl --fail -L "https://github.com/grpc/grpc-web/releases/download/${PROTOC_GRPC_WEB_VERSION}/protoc-gen-grpc-web-${PROTOC_GRPC_WEB_VERSION}-linux-x86_64" -o ${PROTOC_BIN}/protoc-gen-grpc-web
chmod +x ${PROTOC_BIN}/protoc-gen-grpc-web
ln -s ${PROTOC_BIN}/protoc-gen-grpc-web ${BIN}/protoc-gen-grpc-web
