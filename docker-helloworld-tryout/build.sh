#!/usr/bin/env bash

set -ex

docker build -t logickee/helloworld -f dockerfile . &

wait

docker push logickee/helloworld
