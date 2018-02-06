#!/bin/bash
#
# GNU/Linux build script for ProGuard.

cd $(dirname "$0")

source ../build/functions.sh

MAIN_CLASS=proguard.annotation.*

compile   $MAIN_CLASS && \
createjar "$ANNOTATIONS_JAR" || exit 1
