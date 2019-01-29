#!/bin/bash
set -ev

readonly MY_DIR="$( cd "$( dirname "${0}" )" && pwd )"

readonly SCRIPT_NAME=build_cyber_dojo_start_points_image.sh
readonly SCRIPT_URL=https://raw.githubusercontent.com/cyber-dojo/start-points-base/master/${SCRIPT_NAME}

readonly LANGUAGE_LIST_FILENAME=languages_list
readonly LANGUAGE_LIST_URL=https://raw.githubusercontent.com/cyber-dojo/start-points-languages/master/${LANGUAGE_LIST_FILENAME}

readonly IMAGE_NAME=cyberdojo/start-points
readonly TMP_DIR=$(mktemp -d /tmp/cyber-dojo-start-points.XXXXXXXXX)

cleanup() { rm -rf ${TMP_DIR} > /dev/null; }
trap cleanup EXIT

cd ${TMP_DIR}
curl -O ${SCRIPT_URL}
chmod 700 ./${SCRIPT_NAME}
curl -O ${LANGUAGE_LIST_URL}
readonly LANGUAGE_LIST="$(< ./${LANGUAGE_LIST_FILENAME})"

./${SCRIPT_NAME} \
    ${IMAGE_NAME} \
    --languages \
      "${LANGUAGE_LIST}" \
    --custom \
      https://github.com/cyber-dojo/start-points-custom.git \
    --exercises \
      https://github.com/cyber-dojo/start-points-exercises.git \
