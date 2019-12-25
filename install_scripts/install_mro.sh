# Download the archive, extract and install

TEMPDIR=$(mktemp -d)
cd $TEMPDIR

curl -o mro.tar.gz https://mran.blob.core.windows.net/install/mro/3.5.3/rhel/microsoft-r-open-3.5.3.tar.gz
tar -zxf mro.tar.gz
cd microsoft-r-open/rpm/rhel
dnf install -y ./microsoft-r-open-mkl-3.5.3.rpm
dnf install -y ./microsoft-r-open-mro-3.5.3.rpm

cd $HOME
rm -rf $TEMPDIR
