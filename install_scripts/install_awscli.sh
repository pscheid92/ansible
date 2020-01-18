#!/bin/bash

# Create temporary directory
TEMPDIR=$(mktemp -d)
trap "rm -rf $TEMPDIR" EXIT
cd $TEMPDIR

# Download and unpack
curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
bash aws/install
