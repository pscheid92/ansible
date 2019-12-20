#!/bin/bash

TEMPDIR=$(mktemp -d)
trap "rm -rf $TEMPDIR" EXIT

curl -L https://bintray.com/loadimpact/rpm/rpm -o "$TEMPDIR/bintray-loadimpact-rpm.repo"
mv bintray-loadimpact-rpm.repo /etc/yum.repos.d/
dnf install -y k6
