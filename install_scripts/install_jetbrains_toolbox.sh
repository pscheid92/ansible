
# If already installed, exit
if [ -d "$HOME/.local/share/JetBrains/Toolbox" ]; then
    echo "JetBrains Toolbox already present"
    exit
fi

# Download extract and start
TMPDIR=`mktemp -d`
curl -o toolbox.tar.gz https://download-cf.jetbrains.com/toolbox/jetbrains-toolbox-1.15.5796.tar.gz
tar -zxf toolbox.tar.gz
./jetbrains-toolbox-1.15.5796/jetbrains-toolbox
rm -rf $TMPDIR
