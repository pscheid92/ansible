# Import key
rpm --import https://packages.microsoft.com/keys/microsoft.asc

# Create repos file
cat << 'EOF' > /etc/yum.repos.d/vscode.repo
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc%  
EOF

# Install it
dnf install code
