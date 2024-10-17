#! /bin/bash

set -Eeuo pipefail

docker run --rm -it -v "${PWD}/../../":/data -w /data/build/angular node:10 ./build-proto.sh
