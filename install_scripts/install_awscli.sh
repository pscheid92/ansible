#!/bin/bash

# Create temporary directory
TEMPDIR=$(mktemp -d)
trap "rm -rf $TEMPDIR" EXIT
cd $TEMPDIR

# Download and unpack
curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
bash aws/install
ln -s /usr/local/bin/aws2 /usr/local/bin/aws
ln -s /usr/local/bin/aws2_completer /usr/local/bin/aws_completer
