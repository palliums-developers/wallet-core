#!/usr/bin/env bash

# Fail if any commands fails
set -e

echo "#### Generating files... ####"
tools/generate-files

echo "#### Building... ####"
cmake -H. -Bbuild -DCMAKE_BUILD_TYPE=Debug
