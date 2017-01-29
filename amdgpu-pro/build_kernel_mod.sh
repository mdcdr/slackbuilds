#!/bin/sh
KVER=`uname -r`
RUNKVER=$KVER
KDIR="/lib/modules/$KVER/build"

PRGNAM=amdgpu-pro
VERSION=${VERSION:-16.60-379184}
MODSRC=${MODSRC:-/usr/src/$PRGNAM-$VERSION}

set -e

if [ ! -e $KDIR/include ] || [ ! -f $KDIR/.config ]; then
 echo "Can't find usable kernel source!"
 echo "Get kernel source and then run: /opt/amdgpu-pro/bin/build_kernel_mod.sh"
 exit 1
fi

if [ ! -f $KDIR/Module.symvers ]; then
 pushd $KDIR > /dev/null
 make modules_prepare
 popd > /dev/null
fi

echo Building amdgpu-pro kernel modules
cd $MODSRC
./pre-build.sh $KVER
#make -j4 -C $KDIR M=$MODSRC
make -C $KDIR M=$MODSRC || { echo "Kernel module build failed!"; exit 1; }
mkdir -p $PKG/etc/depmod.d
echo "override amdgpu * extra/amd/amdgpu" > $PKG/etc/depmod.d/amdgpu-pro.conf
make -C $KDIR M=$MODSRC modules_install
make -C $KDIR M=$MODSRC clean
