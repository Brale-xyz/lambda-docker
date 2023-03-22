#!/usr/bin/env bash

set -o errexit -o noclobber -o nounset

NAME=docker-lambda-node-14
IMAGE_ID="ghcr.io/brale-xyz/$NAME"

docker build -t $NAME docker
docker tag "$NAME" "$IMAGE_ID":latest
docker tag "$NAME" "$IMAGE_ID":"$VERSION"
docker push "$IMAGE_ID":"$VERSION"
