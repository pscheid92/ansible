
# If already installed, exit
if [ -d "$HOME/.local/share/JetBrains/Toolbox" ]; then
    echo "JetBrains Toolbox already present"
    exit
fi

# Download extract and start
TMPDIR=`mktemp -d`
curl -o toolbox.tar.gz "https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.20.8352.tar.gz"
tar -zxf toolbox.tar.gz
./jetbrains-toolbox-1.20.8352/jetbrains-toolbox
rm -rf $TMPDIR
