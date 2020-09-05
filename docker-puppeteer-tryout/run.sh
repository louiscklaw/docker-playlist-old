#!/usr/bin/env bash

set -ex

# ./build.sh

TMP_DIR=$(mktemp -d)

docker run -it \
  --env-file .env.docker \
  -v $TMP_DIR:/root \
  -v $PWD:/home/puppeteer/work_dir \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --rm \
  logickee/puppeteer_tryout \
  bash