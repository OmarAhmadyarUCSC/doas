#!/usr/bin/env bash
pushd ../
docker build -t ghcr.io/omarahmadyarucsc/doasfuzz:latest -f mayhem/Dockerfile .
popd
docker push ghcr.io/omarahmadyarucsc/doasfuzz:latest
mayhem run .
