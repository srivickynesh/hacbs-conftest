#!/bin/bash -e

# local dev build script
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [ -z "$MY_QUAY_USER" ]; then
    echo "MY_QUAY_USER is not set, skip this build."
    exit 0
fi

