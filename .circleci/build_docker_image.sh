#!/bin/bash
set -ev

readonly MY_DIR="$( cd "$( dirname "${0}" )" && pwd )"
"${MY_DIR}/../_ci_scripts/new_architecture.sh"
