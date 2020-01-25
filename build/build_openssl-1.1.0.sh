if [ -z "$1" ]
  then
    echo "Specify the desired version of openssl, e.g. 1.1.0e"
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
export TARBALL=openssl-${VERSION}.tar.gz
export SRC_DIR=openssl-${VERSION}
export OUT="`pwd`/openssl/${VERSION}/${TARGET_ARCH}/${TARGET_OS}"
rm -rf ${SRC_DIR}
rm -rf ${OUT}
curl -o ${TARBALL} https://www.openssl.org/source/old/1.1.0/${TARBALL}
tar -xzf ${TARBALL}
cd ${SRC_DIR}
./config --prefix=${OUT} no-threads no-zlib no-shared
make
make install
cd ..
rm -rf ${SRC_DIR}
#rm -rf ${OUT}/lib/pkgconfig
rm -rf ${OUT}/lib/engines-1.1
rm ${OUT}/lib/*.la
rm ${TARBALL}
