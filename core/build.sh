#!/bin/bash
#
# GNU/Linux build script for ProGuard.

cd $(dirname "$0")

source ../build/functions.sh

MAIN_CLASS=proguard.ProGuard

compile   $MAIN_CLASS && \
createjar "$PROGUARD_JAR" || exit 1
