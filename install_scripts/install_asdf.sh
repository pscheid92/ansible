# Configure asdf and Update all plugins
ASDF=/home/pscheid/.asdf/bin/asdf
$ASDF plugin update --all

# ASDF helper
asdf_install() {
    $ASDF plugin add "$1"
    $ASDF install "$1" "$2"
    $ASDF global "$1" "$2"
}


#
# Install tools
#
asdf_install "golang" "1.14"
asdf_install "gradle" "6.2.2"
asdf_install "maven" "3.6.3"
asdf_install "java" "azul-zulu-8.44.0.11-jdk8.0.242"
asdf_install "java" "azul-zulu-13.29.9-jdk13.0.2"
asdf_install "clojure" "1.10.1"
asdf_install "micronaut" "1.3.2"
asdf_install "nodejs" "13.10.1"
asdf_install "groovy" "apache-groovy-binary-3.0.1"


# Leiningen (needs extra installation)
LEIN_VERSION="2.9.2"
$ASDF plugin add lein https://github.com/miorimmax/asdf-lein.git || true
$ASDF install lein $LEIN_VERSION
$ASDF global lein $LEIN_VERSION
