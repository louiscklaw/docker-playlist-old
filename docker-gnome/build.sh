#!/usr/bin/env bash

set -ex

docker build -t logickee/docker-gnome -f dockerfile . &

wait