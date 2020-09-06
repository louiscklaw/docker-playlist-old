#!/usr/bin/env bash

docker build -t logickee/github_ubuntu -f docker-github-ubuntu/dockerfile .

docker push logickee/github_ubuntu