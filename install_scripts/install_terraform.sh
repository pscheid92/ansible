#!/bin/bash

# Create temporary directory
TEMPDIR=$(mktemp -d)
trap "rm -rf $TEMPDIR" EXIT
cd $TEMPDIR

# Configuration
VERSION="0.12.23"
URL="https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip"
TARGET="/usr/local/bin/terraform"

# Download and extract
curl -L -o "terraform.zip" "$URL"
unzip "terraform.zip"
mv "terraform" $TARGET
chmod +x "$TARGET"
