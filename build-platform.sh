#!/bin/sh
echo "Cleaning up working folders..."
if [ -d imagetmp ]; then
  rm -r imagetmp
fi
if [ -d dtbtmp ]; then
  rm -r dtbtmp
fi
if [ -d u-boottmp ]; then
  rm -r u-boottmp
fi

echo "Cleanup previous dtb files..."
if [ -d cuboxi/boot/dtb* ]; then
  rm -r cuboxi/boot/dtb*
fi 

echo "Cleanup previous lib files..."
if [ -d cuboxi/lib ]; then
  rm -r cuboxi/lib
fi

echo "Cleaning up previous u-boot files..."
rm -r cuboxi/uboot/*

echo "Unpacking image .deb file..."
dpkg-deb -R linux-image*.deb imagetmp

echo "Unpacking dtb .deb file..."
dpkg-deb -R linux-dtb*.deb dtbtmp

echo "Unpacking u-boot .deb file..."
dpkg-deb -R linux-u-boot* u-boottmp

echo "Copying Header files"
cp linux-headers* cuboxi/usr/src/

echo "Copying lib/modules..."
mkdir -p cuboxi/lib/modules
cp -rP imagetmp/lib/* cuboxi/lib

echo "Copying /boot/dtb files..."
cp -rP dtbtmp/boot/dtb-* cuboxi/boot
cp dtbtmp/boot/dtb-*/imx6dl-cubox-i.dtb cuboxi/boot
cp dtbtmp/boot/dtb-*/imx6dl-hummingboard.dtb cuboxi/boot
cp dtbtmp/boot/dtb-*/imx6q-cubox-i.dtb cuboxi/boot
cp dtbtmp/boot/dtb-*/imx6q-hummingboard.dtb cuboxi/boot

echo "Copying kernel zImage + config..."
cp imagetmp/boot/vmlinuz-4.*-cubox cuboxi/boot/zImage
cp imagetmp/boot/config-4.*-cubox cuboxi/boot/

echo "Copying u-boot files..."
cp u-boottmp/usr/lib/linux-u-boot*/* cuboxi/uboot

echo "Compress platform files..."
tar cvfJ cuboxi.tar.xz ./cuboxi

echo "Done..."



