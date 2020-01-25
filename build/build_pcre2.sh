if [ -z "$1" ]
  then
    echo "Specify the desired version of pcre2, e.g. 10.34"
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
export TARBALL=pcre2-${VERSION}.tar.gz
export SRC_DIR=pcre2-${VERSION}
export OUT="`pwd`/pcre2/${VERSION}/${TARGET_ARCH}/${TARGET_OS}"
rm -rf ${OUT}
curl -o ${TARBALL} https://ftp.pcre.org/pub/pcre/${TARBALL}
tar -xzf ${TARBALL}
cd ${SRC_DIR}
CFLAGS='-fPIC' ./configure --prefix=${OUT} --disable-shared --enable-jit
make
make install
cd ..
rm ${OUT}/lib/*.la
#rm -rf ${OUT}/lib/pkgconfig
rm ${TARBALL}
