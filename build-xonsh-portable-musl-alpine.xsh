#!/usr/bin/env xonsh

mkdir -p result
docker build . -f xonsh-portable-musl-alpine.Dockerfile -t local/xonsh-portable-musl-alpine  #--no-cache --force-rm
docker run --rm -v $PWD/result:/result local/xonsh-portable-musl-alpine
