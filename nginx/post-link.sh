#!/bin/bash

# link default nginx web pages to var/www
if [ ! -e "${PREFIX}/var/www" ]; then
    ln -s "${PREFIX}/html" "${PREFIX}/var/www"
fi

cat <<EOF >> ${PREFIX}/.messages.txt
This is an install message from the nginx package.
EOF
