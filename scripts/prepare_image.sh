#!/bin/bash
# Copyright (c) 2014-2016 Software Architecture Group (Hasso Plattner Institute)
# Copyright (c) 2015 Fabio Niephaus, Google Inc.
# Copyright (c) 2017 Patrick Rein

set -e

function print_info {
    printf "\e[0;34m$1\e[0m\n"
}

# Check required arguments
# ==============================================================================
if [[ "${TRAVIS_BRANCH}" != "master" ]] || [[ "${TRAVIS_PULL_REQUEST}" != "false" ]]; then
    print_info "Nothing to do, because this is not the master branch or a PR."
    exit 0
elif [[ "${TRAVIS_OS_NAME}" != "linux" ]]; then
    print_info "Nothing to do, because this is not a Linux build."
    exit 0
elif [[ -z "${TRAVIS_BUILD_DIR}" ]]; then
    print_info "\$TRAVIS_BUILD_DIR is not defined!"
    exit 1
elif [[ -z "${SMALLTALK_CI_HOME}" ]]; then
    print_info "\$TRAVIS_SMALLTALK_VERSION_CI_HOME is not defined!"
    exit 1
elif [[ -z "${TRAVIS_SMALLTALK_VERSION}" ]]; then
    print_info "\$TRAVIS_SMALLTALK_VERSION is not defined!"
    exit 1
fi

# ==============================================================================

# Set paths and files
# ==============================================================================
VIVIDE_IMAGE="Vivide-${TRAVIS_SMALLTALK_VERSION}.image"
VIVIDE_CHANGES="Vivide-${TRAVIS_SMALLTALK_VERSION}.changes"
VIVIDE_SOURCE_URL="https://www.hpi.uni-potsdam.de/hirschfeld/artefacts/vivide/"

GRAMADA_IMAGE="Gramada-${TRAVIS_SMALLTALK_VERSION}.image"
GRAMADA_Changes="Gramada-${TRAVIS_SMALLTALK_VERSION}.changes"

DEPLOY_PATH="${SMALLTALK_CI_HOME}/deploy"
DEPLOY_TARGET="https://www.hpi.uni-potsdam.de/hirschfeld/artefacts/gramada/"

COG_VM_PARAM=""
if [[ "$(uname -s)" == "Linux" ]]; then
    COG_VM_PARAM="-nosound -nodisplay"
fi
# ==============================================================================

mkdir "${DEPLOY_PATH}" && cd "${DEPLOY_PATH}"

print_info "Downloading Vivide image"
wget "${VIVIDE_SOURCE_URL}${VIVIDE_IMAGE}"
wget "${VIVIDE_SOURCE_URL}${VIVIDE_CHANGES}"
mv *.image "$GRAMADA_IMAGE"
mv *.changes "$GRAMADA_CHANGES"

if [[ $TRAVIS_SMALLTALK_VERSION == "Squeak4.6" ]]; then
    print_info "Downloading Squeak4.6 sources..."
    wget http://ftp.squeak.org/sources_files/SqueakV46.sources.gz
    gunzip SqueakV46.sources.gz
elif [[ $TRAVIS_SMALLTALK_VERSION == "Squeak5.1" ]]; then
    print_info "Downloading Squeak5.1 sources..."
    wget http://ftp.squeak.org/sources_files/SqueakV50.sources.gz
    gunzip SqueakV50.sources.gz
else
    print_info "Downloading SqueakTrunk sources..."
    wget http://ftp.squeak.org/sources_files/SqueakV60.sources.gz
    gunzip SqueakV60.sources.gz
fi

print_info "Preparing Gramada image from {$TRAVIS_SMALLTALK_VERSION} Vivide image..."
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

