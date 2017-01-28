config() {
  NEW="$1"
  OLD="$(dirname $NEW)/$(basename $NEW .new)"
  # If there's no config file by that name, mv it over:
  if [ ! -r $OLD ]; then
    mv $NEW $OLD
  elif [ "$(cat $OLD | md5sum)" = "$(cat $NEW | md5sum)" ]; then
    # toss the redundant copy
    rm $NEW
  fi
  # Otherwise, we leave the .new copy for the admin to consider...
}

moveFile() {
 ONAME=$1
 if [ -e $ONAME ]; then
  #NEWNAME="$ONAME.amdgpubk"
  NEWNAME=/opt/amdgpu-pro/backup/
  mv $ONAME $NEWNAME
 fi
}

/opt/amdgpu-pro/bin/restorelibs.sh
mkdir -p /opt/amdgpu-pro/backup/

moveFile "/usr/lib64/libEGL.la"
moveFile "/usr/lib64/libEGL.so"
moveFile "/usr/lib64/libEGL.so.1"
moveFile "/usr/lib64/libEGL.so.1.0.0"
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libEGL.so.1 /usr/lib64/libEGL.so.1
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libEGL.so.1 /usr/lib64/libEGL.so

moveFile "/usr/lib64/libGL.la"
moveFile "/usr/lib64/libGL.so"
moveFile "/usr/lib64/libGL.so.1"
moveFile "/usr/lib64/libGL.so.1.2.0"
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libGL.so.1.2 /usr/lib64/libGL.so.1
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libGL.so.1.2 /usr/lib64/libGL.so

moveFile "/usr/lib64/libGLESv2.la"
moveFile "/usr/lib64/libGLESv2.so"
moveFile "/usr/lib64/libGLESv2.so.2"
moveFile "/usr/lib64/libGLESv2.so.2.0.0"
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libGLESv2.so.2 /usr/lib64/libGLESv2.so.2
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libGLESv2.so.2 /usr/lib64/libGLESv2.so

moveFile "/usr/lib64/libdrm.la"
moveFile "/usr/lib64/libdrm.so"
moveFile "/usr/lib64/libdrm.so.2"
moveFile "/usr/lib64/libdrm.so.2.4.0"
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libdrm.so.2.4.0 /usr/lib64/libdrm.so.2
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libdrm.so.2.4.0 /usr/lib64/libdrm.so

moveFile "/usr/lib64/libdrm_amdgpu.la"
moveFile "/usr/lib64/libdrm_amdgpu.so"
moveFile "/usr/lib64/libdrm_amdgpu.so.1"
moveFile "/usr/lib64/libdrm_amdgpu.so.1.0.0"
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libdrm_amdgpu.so.1.0.0 /usr/lib64/libdrm_amdgpu.so.1
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libdrm_amdgpu.so.1.0.0 /usr/lib64/libdrm_amdgpu.so

moveFile "/usr/lib64/libdrm_radeon.la"
moveFile "/usr/lib64/libdrm_radeon.so"
moveFile "/usr/lib64/libdrm_radeon.so.1"
moveFile "/usr/lib64/libdrm_radeon.so.1.0.1"
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libdrm_radeon.so.1.0.1 /usr/lib64/libdrm_radeon.so.1
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libdrm_radeon.so.1.0.1 /usr/lib64/libdrm_radeon.so

moveFile "/usr/lib64/libgbm.la"
moveFile "/usr/lib64/libgbm.so"
moveFile "/usr/lib64/libgbm.so.1"
moveFile "/usr/lib64/libgbm.so.1.0.0"
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libgbm.so.1.0.0 /usr/lib64/libgbm.so.1
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libgbm.so.1.0.0 /usr/lib64/libgbm.so

moveFile "/usr/lib64/libkms.la"
moveFile "/usr/lib64/libkms.so"
moveFile "/usr/lib64/libkms.so.1"
moveFile "/usr/lib64/libkms.so.1.0.0"
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libkms.so.1.0.0 /usr/lib64/libkms.so.1
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libkms.so.1.0.0 /usr/lib64/libkms.so


#config etc/gbm/gbm.conf.new
#config etc/xdg/gstomx.conf.new
