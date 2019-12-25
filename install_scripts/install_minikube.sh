# Download and install minikube
MINIKUBE_URL="https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64"
MINIKUBE_TARGET="/usr/local/bin/minikube"

curl -Lo $MINIKUBE_TARGET $MINIKUBE_URL
chmod +x $MINIKUBE_TARGET
