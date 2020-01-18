#!/bin/bash

VERSION="0.12.19"
URL="https://releases.hashicorp.com/terraform/$VERSION/terraform_$VERSION_linux_amd64.zip"
TARGET="/usr/local/bin/terraform"

curl -L -o $TARGET $URL
chmod +x $TARGET
