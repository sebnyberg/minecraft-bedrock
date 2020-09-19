#!/bin/bash

# Download and unpack minecraft if the folder is not 
if [[ ! "$(ls /minecraft)" ]]; then
  echo "/minecraft is empty, downloading and unpacking fresh installation to /minecraft..."
  cd $(mktemp -d)
  curl -sSL \
    -o minecraft.zip \
    https://minecraft.azureedge.net/bin-linux/bedrock-server-${VERSION}.zip
  unzip -qq minecraft.zip -d /minecraft
  cd -
fi

exec "$@"