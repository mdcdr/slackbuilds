#!/bin/sh

removeLink() {
 LNAME=$1
 if [ -L $LNAME ]; then
  LTARGET=`readlink $LNAME`
  if [[ $LTARGET == /opt/amdgpu-pro/lib* ]]; then
   rm -f $LNAME
  fi
 fi
}

moveBack() {
 for f in /opt/amdgpu-pro/backup/*; do
  [ ! -e "$f" ] && break
  lname=/usr/lib64/"${f##*/}"
  if [ ! -e "$lname" ]; then
   mv $f /usr/lib64/
  fi
 done
}

moveBack32() {
 for f in /opt/amdgpu-pro/backup32/*; do
  [ ! -e "$f" ] && break
  lname=/usr/lib/"${f##*/}"
  if [ ! -e "$lname" ]; then
   mv $f /usr/lib/
  fi
 done
}

removeLink "/usr/lib64/libEGL.so.1"
removeLink "/usr/lib64/libEGL.so"
removeLink "/usr/lib64/libGL.so.1"
removeLink "/usr/lib64/libGL.so"
removeLink "/usr/lib64/libGLESv2.so.2"
removeLink "/usr/lib64/libGLESv2.so"
removeLink "/usr/lib64/libdrm.so.2"
removeLink "/usr/lib64/libdrm.so"
removeLink "/usr/lib64/libdrm_amdgpu.so.1"
removeLink "/usr/lib64/libdrm_amdgpu.so"
removeLink "/usr/lib64/libdrm_radeon.so.1"
removeLink "/usr/lib64/libdrm_radeon.so"
removeLink "/usr/lib64/libgbm.so.1"
removeLink "/usr/lib64/libgbm.so"
removeLink "/usr/lib64/libkms.so.1"
removeLink "/usr/lib64/libkms.so"

removeLink "/usr/lib/libEGL.so.1"
removeLink "/usr/lib/libEGL.so"
removeLink "/usr/lib/libGL.so.1"
removeLink "/usr/lib/libGL.so"
removeLink "/usr/lib/libGLESv2.so.2"
removeLink "/usr/lib/libGLESv2.so"
removeLink "/usr/lib/libdrm.so.2"
removeLink "/usr/lib/libdrm.so"
removeLink "/usr/lib/libdrm_amdgpu.so.1"
removeLink "/usr/lib/libdrm_amdgpu.so"
removeLink "/usr/lib/libgbm.so.1"
removeLink "/usr/lib/libgbm.so"
removeLink "/usr/lib/libkms.so.1"
removeLink "/usr/lib/libkms.so"

#renameBack "/usr/lib64"
moveBack
moveBack32
ldconfig
