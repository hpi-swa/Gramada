#!/bin/bash

set -e

function print_info {
    printf "\e[0;34m$1\e[0m\n"
}

if [ "$TRAVIS_BRANCH" != "master" ]; then
    print_info "Nothing to do, because this is not the master branch"
    exit 0
fi

if [ -z "$PROJECT_HOME" ]; then
    print_info "\$PROJECT_HOME is not defined!"
    exit 1
elif [ -z "$FILETREE_CI_HOME" ]; then
    print_info "\$FILETREE_CI_HOME is not defined!"
    exit 1
elif [ -z "$SMALLTALK" ]; then
    print_info "\$SMALLTALK is not defined!"
    exit 1
fi

DEPLOY_PATH="$FILETREE_CI_HOME/deploy"

BASE_PATH="$FILETREE_CI_HOME"
CACHE_PATH="$BASE_PATH/cache"
VM_PATH="$CACHE_PATH/vms"
COG_VM_PATH="$VM_PATH/coglinux/bin/squeak"
COG_VM_PARAM="-nosound -nodisplay"
VIVIDE_SOURCE_URL="https://www.hpi.uni-potsdam.de/hirschfeld/artefacts/vivide/"
VIVIDE_IMAGE="Vivide-$SMALLTALK.image"
VIVIDE_CHANGES="Vivide-$SMALLTALK.changes"
DEPLOY_TARGET="https://www.hpi.uni-potsdam.de/hirschfeld/artefacts/gramada/"
GRAMADA_IMAGE="Gramada-$SMALLTALK.image"
GRAMADA_Changes="Gramada-$SMALLTALK.changes"

mkdir "$DEPLOY_PATH"
cd "$DEPLOY_PATH"

print_info "Downloading Vivide image"
wget "${VIVIDE_SOURCE_URL}\\${VIVIDE_IMAGE}"
wget "${VIVIDE_SOURCE_URL}\\${VIVIDE_CHANGES}"
mv *.image "$GRAMADA_IMAGE"
mv *.changes "$GRAMADA_CHANGES"

if [ $SMALLTALK == "Squeak4.6" ]; then
    print_info "Downloading Squeak4.6 sources..."
    wget http://ftp.squeak.org/sources_files/SqueakV46.sources.gz
    gunzip SqueakV46.sources.gz
elif [ $SMALLTALK == "Squeak5.1" ]; then
    print_info "Downloading Squeak5.1 sources..."
    wget http://ftp.squeak.org/sources_files/SqueakV50.sources.gz
    gunzip SqueakV50.sources.gz
else
    print_info "Downloading SqueakTrunk sources..."
    wget http://ftp.squeak.org/sources_files/SqueakV60.sources.gz
    gunzip SqueakV60.sources.gz
fi

print_info "Preparing Gramada image from $SMALLTALK Vivide image..."
EXIT_STATUS=0
"$COG_VM_PATH" $COG_VM_PARAM "$GRAMADA_IMAGE" "$PROJECT_HOME/scripts/prepare_image.st" || EXIT_STATUS=$?

if [ $EXIT_STATUS -eq 0 ]; then
    print_info "Uploading $GRAMADA_IMAGE and $GRAMADA_CHANGES..."
    curl -s -u "$DEPLOY_CREDENTIALS" -T "$GRAMADA_IMAGE" "$DEPLOY_TARGET" && print_info "$GRAMADA_IMAGE uploaded."
    curl -s -u "$DEPLOY_CREDENTIALS" -T "$GRAMADA_CHANGES" "$DEPLOY_TARGET" && print_info "$GRAMADA_CHANGES uploaded."
    print_info "Done!"
else
    print_info "Preparation of Gramada image failed."
fi

exit $EXIT_STATUS

