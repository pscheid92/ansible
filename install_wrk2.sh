#!/bin/bash

TEMPDIR=$(mktemp -d)
trap "rm -rf $TEMPDIR" EXIT

cd $TEMPDIR
git clone https://github.com/giltene/wrk2.git
cd wrk2
make
cp wrk /usr/local/bin/wrk
chmod +x /usr/local/bin/wrk
