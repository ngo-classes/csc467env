#!/bin/bash

set -e

docker image rm spark-master:latest || true
docker image rm spark-worker:latest || true

docker build -t spark-master:latest ./docker/master
docker build -t spark-worker:latest ./docker/worker
