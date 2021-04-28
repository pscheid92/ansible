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
asdf_install "golang" "1.16.3"
asdf_install "gradle" "7.0"
asdf_install "maven" "3.8.1"
asdf_install "java" "openjdk-16.0.1"
asdf_install "kotlin" "1.4.32"
asdf_install "nodejs" "16.0.0"
asdf_install "kubectl" "1.21.0"
asdf_install "helm" "3.5.4"
asdf_install "yq" "v4.7.1"
asdf_install "rust" "stable"
asdf_install "python" "3.9.4"

#
# Special handling
# 
$ASDF install "java" "graalvm-21.1.0+java16"
