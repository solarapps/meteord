#!/bin/bash
set -x

: ${NODE_VERSION?"NODE_VERSION has not been set."}

# docker build --build-arg "NODE_VERSION=${NODE_VERSION}" -t "solrapps/meteord:node-${NODE_VERSION}-base" ../base && \
#   docker tag "solrapps/meteord:node-${NODE_VERSION}-base" solrapps/meteord:base
# docker build --build-arg "NODE_VERSION=${NODE_VERSION}" -t "solrapps/meteord:node-${NODE_VERSION}-onbuild" ../onbuild && \
#   docker tag "solrapps/meteord:node-${NODE_VERSION}-onbuild" solrapps/meteord:onbuild
# docker build --build-arg "NODE_VERSION=${NODE_VERSION}" -t "solrapps/meteord:node-${NODE_VERSION}-devbuild" ../devbuild && \
#   docker tag "solrapps/meteord:node-${NODE_VERSION}-devbuild" solrapps/meteord:devbuild
# docker build --build-arg "NODE_VERSION=${NODE_VERSION}" -t "solrapps/meteord:node-${NODE_VERSION}-binbuild" ../binbuild && \
#   docker tag "solrapps/meteord:node-${NODE_VERSION}-binbuild" solrapps/meteord:binbuild
docker build --no-cache --build-arg "NODE_VERSION=${NODE_VERSION}" -t "solrapps/meteord:node-${NODE_VERSION}-cibuild" ../cibuild && \
  docker tag "solrapps/meteord:node-${NODE_VERSION}-cibuild" solrapps/meteord:cibuild