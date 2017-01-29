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

/opt/amdgpu-pro/bin/restorelibs.sh
mkdir -p /opt/amdgpu-pro/backup/

mv -f /usr/lib64/libEGL.* /opt/amdgpu-pro/backup/
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libEGL.so.1 /usr/lib64/libEGL.so.1
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libEGL.so.1 /usr/lib64/libEGL.so

mv -f /usr/lib64/libGL.* /opt/amdgpu-pro/backup/
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libGL.so.1.2 /usr/lib64/libGL.so.1
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libGL.so.1.2 /usr/lib64/libGL.so

mv -f /usr/lib64/libGLESv2.* /opt/amdgpu-pro/backup/
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libGLESv2.so.2 /usr/lib64/libGLESv2.so.2
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libGLESv2.so.2 /usr/lib64/libGLESv2.so

mv -f /usr/lib64/libdrm.* /opt/amdgpu-pro/backup/
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libdrm.so.2.4.0 /usr/lib64/libdrm.so.2
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libdrm.so.2.4.0 /usr/lib64/libdrm.so

mv -f /usr/lib64/libdrm_amdgpu.* /opt/amdgpu-pro/backup/
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libdrm_amdgpu.so.1.0.0 /usr/lib64/libdrm_amdgpu.so.1
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libdrm_amdgpu.so.1.0.0 /usr/lib64/libdrm_amdgpu.so

mv -f /usr/lib64/libdrm_radeon.* /opt/amdgpu-pro/backup/
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libdrm_radeon.so.1.0.1 /usr/lib64/libdrm_radeon.so.1
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libdrm_radeon.so.1.0.1 /usr/lib64/libdrm_radeon.so

mv -f /usr/lib64/libgbm.* /opt/amdgpu-pro/backup/
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libgbm.so.1.0.0 /usr/lib64/libgbm.so.1
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libgbm.so.1.0.0 /usr/lib64/libgbm.so

mv -f /usr/lib64/libkms.* /opt/amdgpu-pro/backup/
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libkms.so.1.0.0 /usr/lib64/libkms.so.1
ln -sf /opt/amdgpu-pro/lib/x86_64-linux-gnu/libkms.so.1.0.0 /usr/lib64/libkms.so

#config etc/gbm/gbm.conf.new
#config etc/xdg/gstomx.conf.new
