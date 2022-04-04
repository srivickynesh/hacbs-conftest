#!/bin/bash
# exit immediately when a command fails
set -e
# only exit with zero if all commands of the pipeline exit successfully
set -o pipefail
# error on unset variables
set -u

command -v kubectl >/dev/null 2>&1 || { echo "kubectl is not installed. Aborting."; exit 1; }


export WORKSPACE=$(dirname $(dirname $(readlink -f "$0")));
export TEST_SUITE="hacbs-test-suite"
export GITHUB_URL="https://github.com/srivickynesh/hacbs-conftest"
export TASK_NAME="sanity-label-check"

# Available openshift ci environments https://docs.ci.openshift.org/docs/architecture/step-registry/#available-environment-variables
export ARTIFACTS_DIR=${ARTIFACT_DIR:-"/tmp/hacbs-test"}

function executeE2ETests() {
    sh ../hack/test-build.sh $GITHUB_URL $TASK_NAME
}

executeE2ETests
