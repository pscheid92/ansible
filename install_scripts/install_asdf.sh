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
asdf_install "golang" "1.15.5"
asdf_install "gradle" "6.7.1"
asdf_install "maven" "3.6.3"
asdf_install "java" "openjdk-15.0.1"
asdf_install "kotlin" "1.4.20"
asdf_install "nodejs" "15.2.1"
asdf_install "k6" "0.29.0"
asdf_install "kubectl" "1.19.4"
asdf_install "helm" "3.4.1"
asdf_install "haskell" "8.10.2"
asdf_install "yq" "3.4.1"
