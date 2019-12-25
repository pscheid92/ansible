# Import key
rpm --import http://linux.teamviewer.com/pubkey/TeamViewer2017.asc

# Create repo
cat << 'EOF' > /etc/yum.repos.d/teamviewer.repo
[teamviewer]
name=TeamViewer - $basearch
baseurl=http://linux.teamviewer.com/yum/stable/main/binary-$basearch/
gpgkey=http://linux.teamviewer.com/pubkey/TeamViewer2017.asc
gpgcheck=1
enabled=1
type=rpm-md
failovermethod=priority
EOF

# Install it
dnf install -y teamviewer
