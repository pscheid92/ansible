# Download vertx distribution to temporary directory and install it

TEMPDIR=$(mktemp -d)
trap "rm -rf $TEMPDIR" EXIT
echo "$TEMPDIR"

curl -L -o "$TEMPDIR/vertx.tar.gz" "https://bintray.com/artifact/download/vertx/downloads/vert.x-3.8.5-full.tar.gz"
tar -C "$TEMPDIR" -zxf "$TEMPDIR/vertx.tar.gz"
mv "$TEMPDIR/vertx" "/opt/vertx"
