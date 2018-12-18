#!/bin/bash
set -ev

# todo: MY_REPO_NAME is this repo
# passing it as file:///... based url would make things a bit quicker

readonly SCRIPT=build_cyber_dojo_start_points_image.sh
readonly URL=https://raw.githubusercontent.com/cyber-dojo/start-points-base/master/${SCRIPT}

readonly MY_IMAGE_NAME=cyberdojo/start-points-exercises-test
readonly MY_REPO_NAME=https://github.com/cyber-dojo/start-points-exercises.git

readonly TMP_DIR=$(mktemp -d /tmp/cyber-dojo-start-points-exercises.XXXXXXXXX)
cleanup() { rm -rf ${TMP_DIR} > /dev/null; }
trap cleanup EXIT

cd ${TMP_DIR}
curl -O ${URL}
chmod +x ./${SCRIPT}

./${SCRIPT} \
  ${MY_IMAGE_NAME} \
  ${MY_REPO_NAME}
