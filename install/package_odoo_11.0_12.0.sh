#!/bin/bash
set -eo pipefail

apt-get update
apt-get purge python2.7 python2.7-minimal
apt-get install -y --no-install-recommends \
    antiword \
    ca-certificates \
    curl \
    dirmngr \
    ghostscript \
    graphviz \
    gnupg2 \
    less \
    nano \
    node-clean-css \
    node-less \
    poppler-utils \
    libxslt1.1 \
    xfonts-75dpi \
    xfonts-base \
    xz-utils \
    tcl expect

cd ~/
wget https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz
tar xvf Python-3.6.4.tgz
cd ~/Python-3.6.4
./configure --enable-optimizations
make -j8
make install
