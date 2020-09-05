#!/usr/bin/env bash

set -ex

docker build -t logickee/puppeteer_tryout -f dockerfile . &

wait