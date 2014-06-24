#!/bin/bash

# setup environment
mkdir -vp ${PREFIX}/bin || exit 1;
mkdir -vp ${PREFIX}/etc/supervisor || exit 1;
mkdir -vp ${PREFIX}/etc/supervisor/conf.d || exit 1;
mkdir -vp ${PREFIX}/var/run || exit 1;
touch ${PREFIX}/var/run/supervisord.pid || exit 1;
mkdir -vp ${PREFIX}/var/log/supervisor || exit 1;
touch ${PREFIX}/var/log/supervisor/supervisord.log || exit 1;

# install
$PYTHON setup.py install

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
