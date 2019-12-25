# Install kubernetes/minikube

# Download and install kubectl
KUBECTL_STABLE_VERSION="$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)"
KUBECTL_URL="https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_STABLE_VERSION/bin/linux/amd64/kubectl"
KUBECTL_TARGET="/usr/local/bin/kubectl"

curl -Lo $KUBECTL_TARGET $KUBECTL_URL
chmod +x $KUBECTL_TARGET

# Download and install minikube
MINIKUBE_URL="https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64"
MINIKUBE_TARGET="/usr/local/bin/minikube"

curl -Lo $MINIKUBE_TARGET $MINIKUBE_URL
chmod +x $MINIKUBE_TARGET
