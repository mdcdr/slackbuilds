mkdir -p /opt/amdgpu-pro/backup32/

mv -f /usr/lib/libEGL.* /opt/amdgpu-pro/backup32/
ln -sf /opt/amdgpu-pro/lib/i386-linux-gnu/libEGL.so.1 /usr/lib/libEGL.so.1
ln -sf /opt/amdgpu-pro/lib/i386-linux-gnu/libEGL.so.1 /usr/lib/libEGL.so

mv -f /usr/lib/libGL.* /opt/amdgpu-pro/backup32/
ln -sf /opt/amdgpu-pro/lib/i386-linux-gnu/libGL.so.1.2 /usr/lib/libGL.so.1
ln -sf /opt/amdgpu-pro/lib/i386-linux-gnu/libGL.so.1.2 /usr/lib/libGL.so

mv -f /usr/lib/libGLESv2.* /opt/amdgpu-pro/backup32/
ln -sf /opt/amdgpu-pro/lib/i386-linux-gnu/libGLESv2.so.2 /usr/lib/libGLESv2.so.2
ln -sf /opt/amdgpu-pro/lib/i386-linux-gnu/libGLESv2.so.2 /usr/lib/libGLESv2.so

mv -f /usr/lib/libdrm.* /opt/amdgpu-pro/backup32/
ln -sf /opt/amdgpu-pro/lib/i386-linux-gnu/libdrm.so.2.4.0 /usr/lib/libdrm.so.2
ln -sf /opt/amdgpu-pro/lib/i386-linux-gnu/libdrm.so.2.4.0 /usr/lib/libdrm.so

mv -f /usr/lib/libdrm_amdgpu.* /opt/amdgpu-pro/backup32/
ln -sf /opt/amdgpu-pro/lib/i386-linux-gnu/libdrm_amdgpu.so.1.0.0 /usr/lib/libdrm_amdgpu.so.1
ln -sf /opt/amdgpu-pro/lib/i386-linux-gnu/libdrm_amdgpu.so.1.0.0 /usr/lib/libdrm_amdgpu.so

mv -f /usr/lib/libgbm.* /opt/amdgpu-pro/backup32/
ln -sf /opt/amdgpu-pro/lib/i386-linux-gnu/libgbm.so.1.0.0 /usr/lib/libgbm.so.1
ln -sf /opt/amdgpu-pro/lib/i386-linux-gnu/libgbm.so.1.0.0 /usr/lib/libgbm.so

mv -f /usr/lib/libkms.* /opt/amdgpu-pro/backup32/
ln -sf /opt/amdgpu-pro/lib/i386-linux-gnu/libkms.so.1.0.0 /usr/lib/libkms.so.1
ln -sf /opt/amdgpu-pro/lib/i386-linux-gnu/libkms.so.1.0.0 /usr/lib/libkms.so
