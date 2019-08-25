# Install and configure asdf 

ASDF=/home/pscheid/.asdf/bin/asdf

# Install plugins
echo "$ASDF"
$ASDF plugin-add java || true
$ASDF plugin-add gradle || true
$ASDF plugin-add golang || true

# Golang
$ASDF install golang 1.12.7
$ASDF global golang 1.12.7

# Gradle
$ASDF install gradle 5.6
$ASDF global gradle 5.6

# Java 8
$ASDF install java adoptopenjdk-8.212

# Java 12
$ASDF install java openjdk-12.0.1
$ASDF global java openjdk-12.0.1
