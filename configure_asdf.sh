# Install and configure asdf
ASDF=/home/pscheid/.asdf/bin/asdf

# Golang
$ASDF plugin-add golang || true
$ASDF install golang 1.13.4
$ASDF global golang 1.13.4

# Gradle
$ASDF plugin-add gradle || true
$ASDF install gradle 5.6.3
$ASDF global gradle 5.6.3

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
$ASDF install micronaut 1.2.5
$ASDF global micronaut 1.2.5

# NodeJS
$ASDF plugin-add nodejs || true
$ASDF install nodejs 13.1.0
$ASDF global nodejs 13.1.0
