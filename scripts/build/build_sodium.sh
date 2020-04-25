if [ -z "$1" ]
  then
    echo "Specify the desired version of libsodium, e.g. 1.0.18"
    exit 1
fi
if [ -z "$2" ]
  then
    export TARGET_ARCH=`arch`
    echo "No target specified, assuming $TARGET_ARCH"
else
  export TARGET_ARCH=$2
fi
export VERSION=$1
export TARGET_OS=`uname | awk '{print tolower($0)}'`
export TARBALL=libsodium-${VERSION}-stable.tar.gz
export SRC_DIR=libsodium-stable
export OUT="`pwd`/libsodium/${VERSION}/${TARGET_ARCH}/${TARGET_OS}"
rm -rf ${OUT}
curl -o ${TARBALL} https://download.libsodium.org/libsodium/releases/${TARBALL}
tar -xzf ${TARBALL}
cd ${SRC_DIR}
./autogen.sh
./configure --host=${TARGET_ARCH} --with-pic="yes" --disable-shared --prefix=${OUT}
make
make install
cd ..
rm -rf ${SRC_DIR} 
rm -rf libsodium/${VERSION}/src
mkdir libsodium/${VERSION}/src
tar -xzf ${TARBALL} -C libsodium/${VERSION}/src
rm -rf ${OUT}/lib/pkgconfig
rm ${OUT}/lib/*.la
rm ${TARBALL}
#tar czf libsodium-${VERSION}-${TARGET_ARCH}-${TARGET_OS}.tgz libsodium/*
