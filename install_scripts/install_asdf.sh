# Install and configure asdf
ASDF=/home/pscheid/.asdf/bin/asdf

# Golang
$ASDF plugin-add golang || true
$ASDF install golang 1.13.6
$ASDF global golang 1.13.6

# Gradle
$ASDF plugin-add gradle || true
$ASDF install gradle 6.1
$ASDF global gradle 6.1

# Java
$ASDF plugin-add java || true
$ASDF install java zulu-8.0.212
$ASDF install java zulu-12.0.1
$ASDF global java zulu-12.0.1

# Leiningen
$ASDF plugin-add lein https://github.com/miorimmax/asdf-lein.git || true
$ASDF install lein 2.9.1
$ASDF global lein 2.9.1

# Micronaut
$ASDF plugin-add micronaut || true
$ASDF install micronaut 1.2.8
$ASDF global micronaut 1.2.8

# NodeJS
$ASDF plugin-add nodejs || true
$ASDF install nodejs 13.5.0
$ASDF global nodejs 13.5.0

# SBT
$ASDF plugin-add sbt || true
$ASDF install sbt 1.3.5
$ASDF global sbt 1.3.5
