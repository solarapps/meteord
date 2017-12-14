FROM abernix/meteord:node-8.9.1-base
MAINTAINER Jesse Rosenberger

# This prevents us from get errors during apt-get installs as it notifies the
# environment that it is a non-interactive one.
ENV DEBIAN_FRONTEND noninteractive

ARG NODE_VERSION
ENV NODE_VERSION ${NODE_VERSION:-8.9.1}

RUN apt-get -y install net-tools
RUN bash $METEORD_DIR/lib/install_meteor.sh
RUN curl -o- -L https://yarnpkg.com/install.sh | bash

EXPOSE 3000