# Install the config-manager plugin to dnf
dnf install -y dnf-plugins-core

# Add the stable repository
dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

# Enable the nightly repository
dnf config-manager --set-enabled docker-ce-nightly

# Install the packages
dnf install -y docker-ce docker-ce-cli containerd.io

# Install docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
