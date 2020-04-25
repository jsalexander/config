#!/bin/sh

PACKAGE_DIR=~/package
INC_DIR=$PACKAGE_DIR/include
BIN_DIR=$PACKAGE_DIR/bin
LIB_DIR=$PACKAGE_DIR/lib
SYSTEMD_DIR=$PACKAGE_DIR/systemd
UDEV_DIR=$PACKAGE_DIR/udev

# create package structure
rm -rf $PACKAGE_DIR
mkdir $PACKAGE_DIR
mkdir $INC_DIR
mkdir $BIN_DIR
mkdir $LIB_DIR
mkdir $SYSTEMD_DIR
mkdir $UDEV_DIR

# install dependencies
sudo apt-get install git gcc g++ make m4 automake autoconf libtool libzip-dev libfuse-dev libusb-dev libusb-1.0.0-dev libssl-dev pkg-config cython doxygen

# create build directory
mkdir build 
cd build

# build libplist
git clone https://github.com/libimobiledevice/libplist.git
cd libplist
git pull
make clean
./autogen.sh
make
sudo make install
cp -rf include/* $INC_DIR/
cp src/.libs/*.a $LIB_DIR/
cp src/.libs/*.so* $LIB_DIR/
cp tools/.libs/* $BIN_DIR/
cd ..

# build libusbmuxd
git clone https://github.com/libimobiledevice/libusbmuxd.git
cd libusbmuxd
git pull
make clean
./autogen.sh
make
sudo make install
cp -rf include/* $INC_DIR/
cp src/.libs/*.a $LIB_DIR/
cp src/.libs/*.so* $LIB_DIR/
cd ..

# build usbmuxd
git clone https://github.com/libimobiledevice/usbmuxd.git
cd usbmuxd
git pull
make clean
./autogen.sh
make
sudo make install
cp -rf include/* $INC_DIR/
cp src/usbmuxd $BIN_DIR/
cp systemd/usbmuxd.service $SYSTEMD_DIR/
cp udev/*.rules $UDEV_DIR/
cd ..

# build libimobiledevice
git clone https://github.com/libimobiledevice/libimobiledevice.git
cd libimobiledevice
git pull
make clean
./autogen.sh
make
sudo make install
cp -rf include/* $INC_DIR/
cp src/.libs/*.a $LIB_DIR/
cp src/.libs/*.so* $LIB_DIR/
cp tools/.libs/* $BIN_DIR/
cd ..

# build ideviceinstaller
git clone https://github.com/libimobiledevice/ideviceinstaller.git
cd ideviceinstaller
git pull
make clean
sudo make install
cp src/ideviceinstaller $BIN_DIR/
cd ..

# build idevicerestore
#git clone https://github.com/libimobiledevice/idevicerestore.git
#cd idevicerestore
#git pull
#make clean
#./autogen.sh
#make
#sudo make install
#cp src/idevicerestore $BIN_DIR/
#cd ..

# build ifuse
#git clone https://github.com/libimobiledevice/ifuse.git
#cd ifuse
#git pull
#make clean
#./configure
#make
#sudo make install
#cp src/ifuse $BIN_DIR/
#cd ..

# clean-up package
rm $INC_DIR/Makefile*
cd ..

# clean-up build directory
rm -rf build
