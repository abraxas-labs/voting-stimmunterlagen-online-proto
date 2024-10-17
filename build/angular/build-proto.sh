#! /bin/bash

set -Eeuo pipefail

# source: https://stackoverflow.com/a/246128/3302887
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# shellcheck source=build/angular/setup-dependencies.sh
source "${DIR}/setup-dependencies.sh"

OUT="${PWD}/src/grpc-gen"
PROTO_PATH="${PWD}/../../src/services"
PROTOC_EXEC="$(which protoc)"
PROTOC_WEB_EXEC="$(which protoc-gen-grpc-web)"
PROTO_VALIDATION_PACKAGE_PATH="${PWD}/../../voting-library-validation-proto/src"

echo "Generate GRPCWeb"

rm -rf "${OUT}"
mkdir -p "${OUT}"

# doesnt make sense here, since wee need to expand the files
# shellcheck disable=SC2046
${PROTOC_EXEC} \
    --plugin=protoc-gen-grpc-web="${PROTOC_WEB_EXEC}" \
    -I="${PROTO_PATH}" \
    -I="${PROTO_VALIDATION_PACKAGE_PATH}" \
    --plugin=protoc-gen-ng=./node_modules/.bin/protoc-gen-ng --ng_out="${OUT}" \
    $(find "${PROTO_PATH}" -name '*.proto')
