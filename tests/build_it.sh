#!/bin/bash
set -x

: ${NODE_VERSION?"NODE_VERSION has not been set."}

# docker build --build-arg "NODE_VERSION=${NODE_VERSION}" -t "moonkin/meteord-ci:node-${NODE_VERSION}-base" ../base && \
#   docker tag "moonkin/meteord-ci:node-${NODE_VERSION}-base" moonkin/meteord-ci:base
# docker build --build-arg "NODE_VERSION=${NODE_VERSION}" -t "moonkin/meteord-ci:node-${NODE_VERSION}-onbuild" ../onbuild && \
#   docker tag "moonkin/meteord-ci:node-${NODE_VERSION}-onbuild" moonkin/meteord-ci:onbuild
# docker build --build-arg "NODE_VERSION=${NODE_VERSION}" -t "moonkin/meteord-ci:node-${NODE_VERSION}-devbuild" ../devbuild && \
#   docker tag "moonkin/meteord-ci:node-${NODE_VERSION}-devbuild" moonkin/meteord-ci:devbuild
# docker build --build-arg "NODE_VERSION=${NODE_VERSION}" -t "moonkin/meteord-ci:node-${NODE_VERSION}-binbuild" ../binbuild && \
#   docker tag "moonkin/meteord-ci:node-${NODE_VERSION}-binbuild" moonkin/meteord-ci:binbuild
docker build --no-cache --build-arg "NODE_VERSION=${NODE_VERSION}" -t "moonkin/meteord-ci:node-${NODE_VERSION}-cibuild" ../cibuild && \
  docker tag "moonkin/meteord-ci:node-${NODE_VERSION}-cibuild" moonkin/meteord-ci:cibuild