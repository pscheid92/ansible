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
asdf_install "golang" "1.14.2"
asdf_install "gradle" "6.3"
asdf_install "maven" "3.6.3"
asdf_install "java" "azul-zulu-8.44.0.11-jdk8.0.242"
asdf_install "java" "azul-zulu-14.27.1-jdk14"
asdf_install "clojure" "1.10.1"
asdf_install "micronaut" "1.3.4"
asdf_install "nodejs" "13.13.0"
asdf_install "groovy" "apache-groovy-binary-3.0.3"
asdf_install "vault" "1.4.0"
asdf_install "julia" "1.4.1"
asdf_install "k6" "0.26.2"
asdf_install "terraform" "0.12.24"
asdf_install "kubectl" "1.18.2"
asdf_install "minikube" "1.9.2"
asdf_install "helm" "3.1.2"
asdf_install "haskell" "8.10.1"


# Leiningen (needs extra installation)
LEIN_VERSION="2.9.3"
$ASDF plugin add lein https://github.com/miorimmax/asdf-lein.git || true
$ASDF install lein $LEIN_VERSION
$ASDF global lein $LEIN_VERSION
