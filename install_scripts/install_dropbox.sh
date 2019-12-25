# Import key
rpm --import https://linux.dropbox.com/fedora/rpm-public-key.asc

# Create repo
cat << 'EOF' > /etc/yum.repos.d/dropbox.repo
[Dropbox]
name=Dropbox Repository
baseurl=http://linux.dropbox.com/fedora/$releasever/
gpgkey=https://linux.dropbox.com/fedora/rpm-public-key.asc
EOF

# Install
dnf install -y dropbox nautilus-dropbox
