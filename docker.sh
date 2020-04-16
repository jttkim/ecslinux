#!/bin/bash

set -e
set -u
set -o pipefail
shopt -s failglob

dockerimage=ecspractical
imageversion=0.0.2

docker build --tag "jttkim/${dockerimage}:${imageversion}" .
docker tag "jttkim/${dockerimage}:${imageversion}" "jttkim/${dockerimage}:latest"

