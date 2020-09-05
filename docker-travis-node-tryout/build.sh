#!/usr/bin/env bash

set -ex

docker build -t logickee/travis_node -f dockerfile.1804 . &

wait