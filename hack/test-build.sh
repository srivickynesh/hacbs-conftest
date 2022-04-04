#!/bin/bash

# Script for execution of the pipelines as Application Service

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

GITREPO=$1
TASK_NAME=$2
APPLICATION_NAMESPACE="test-pipeline"

if [ -z "$GITREPO" ]; then
  echo Missing parameter Git URL to Build
  exit 1
fi
if [ -z "$TASK_NAME" ]; then
  echo Missing parameter Pipeline name
  exit 1
fi

APPNAME=$(basename $GITREPO)
IMAGE_FULL_TAG=$(git ls-remote $GITREPO HEAD)
IMAGE_SHORT_TAG=${IMAGE_FULL_TAG:position:7}
BUILD_TAG=$(date +"%Y-%m-%d-%H%M%S")
NS=$(oc config view --minify -o "jsonpath={..namespace}")

if [ -z "$MY_QUAY_USER" ]; then
  IMG=image-registry.openshift-image-registry.svc:5000/$NS/$APPNAME:$IMAGE_SHORT_TAG
  echo MY_QUAY_USER env variable is not set, pushing to $IMG
else
  if ! oc get secret redhat-appstudio-staginguser-pull-secret &>/dev/null; then
     echo Secret redhat-appstudio-staginguser-pull-secret please create it
     echo If you are logged into the registry with docker/podman then you can run:
     echo oc create secret docker-registry redhat-appstudio-staginguser-pull-secret --from-file=.dockerconfigjson=$HOME/.docker/config.json
     exit 1
  fi
  IMG=quay.io/$MY_QUAY_USER/$APPNAME:$IMAGE_SHORT_TAG
  PUSH_WORKSPACE="-w name=registry-auth,secret=redhat-appstudio-staginguser-pull-secret"
  echo Building $IMG
fi

function checkTaskCompletion() {
    RESULT=$(tkn taskrun list | sed -n '2p' | awk '{print $7}')
    if [ "$RESULT" == "Succeeded" ]; then
        echo "All Tasks completed Successfully";
        exit 1;
    else
        echo "Task Failed"
    fi
}

tkn tasks start $TASK_NAME --showlog

tkn tasks describe $TASK_NAME -n $APPLICATION_NAMESPACE

export -f checkTaskCompletion

timeout --foreground 10s bash -c checkTaskCompletion

/bin/bash clean_completed.sh

# tkn pipeline start $PIPELINE_NAME -w name=workspace,claimName=appstudio,subPath=$BUILD_TAG $PUSH_WORKSPACE -p git-url=$GITREPO -p output-image=$IMG --use-param-defaults
