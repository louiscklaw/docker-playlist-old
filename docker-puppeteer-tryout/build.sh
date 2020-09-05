#!/usr/bin/env bash

set -ex

docker build -t logickee/docker_puppeteer_tryout -f dockerfile . &

wait

docker run -it \
  --env-file .env.docker \
  -v $TMP_DIR:/root \
  -v $PWD:/root/work_dir \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --rm \
  logickee/docker_puppeteer_tryout \
  sh ./entry.sh