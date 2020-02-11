# Install and configure asdf
ASDF=/home/pscheid/.asdf/bin/asdf

# Update all plugins
$ASDF plugin update --all

# Golang
$ASDF plugin add golang || true
$ASDF install golang 1.13.6
$ASDF global golang 1.13.7

# Gradle
$ASDF plugin add gradle || true
$ASDF install gradle 6.1.1
$ASDF global gradle 6.1.1

# Maven
$ASDF plugin add maven || true
$ASDF install maven 3.6.3
$ASDF global maven 3.6.3

# Java
$ASDF plugin add java || true
$ASDF install java azul-zulu-8.42.0.23-jdk8.0.232
$ASDF install java azul-zulu-13.28.11-jdk13.0.1
$ASDF global java azul-zulu-13.28.11-jdk13.0.1

# Leiningen
$ASDF plugin add lein https://github.com/miorimmax/asdf-lein.git || true
$ASDF install lein 2.9.1
$ASDF global lein 2.9.1

# Clojure
$ASDF plugin add clojure
$ASDF install clojure 1.10.1
$ASDF global clojure 1.10.1

# Micronaut
$ASDF plugin add micronaut || true
$ASDF install micronaut 1.2.9
$ASDF global micronaut 1.2.9

# NodeJS
$ASDF plugin add nodejs || true
$ASDF install nodejs 13.6.0
$ASDF global nodejs 13.6.0

# SBT
$ASDF plugin add sbt || true
$ASDF install sbt 1.3.7
$ASDF global sbt 1.3.7
