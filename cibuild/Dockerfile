FROM abernix/meteord:node-8.9.1-base
MAINTAINER Jesse Rosenberger

ARG NODE_VERSION
ENV NODE_VERSION ${NODE_VERSION:-8.9.1}

RUN bash $METEORD_DIR/lib/install_meteor.sh
RUN curl -o- -L https://yarnpkg.com/install.sh | bash

RUN curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install
