FROM abernix/meteord:node-8.9.1-base
MAINTAINER Jesse Rosenberger

# This prevents us from get errors during apt-get installs as it notifies the
# environment that it is a non-interactive one.
ENV DEBIAN_FRONTEND noninteractive

# Install binary dependencies
RUN \
  apt-get update && \
  apt-get -y install \
    wget \
    curl

ARG NODE_VERSION
ENV NODE_VERSION ${NODE_VERSION:-8.9.1}

RUN bash $METEORD_DIR/lib/install_meteor.sh
RUN curl -o- -L https://yarnpkg.com/install.sh | bash

RUN curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install
