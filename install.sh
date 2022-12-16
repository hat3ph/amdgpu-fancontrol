#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
        echo 'error: Must be run as root!' >&2
        exit 1
fi

# Copy files
mkdir -p /opt/amdgpu-fancontrol
cp amdgpu-fancontrol /opt/amdgpu-fancontrol/
chmod +x /opt/amdgpu-fancontrol/amdgpu-fancontrol
if [[ -f "/opt/amdgpu-fancontrol/amdgpu-fancontrol.cfg" ]]; then
	cp amdgpu-fancontrol.cfg /opt/amdgpu-fancontrol/amdgpu-fancontrol.cfg.new
else
	cp amdgpu-fancontrol.cfg /opt/amdgpu-fancontrol/
fi
mkdir -p /etc/systemd/system
cp amdgpu-fancontrol.service /etc/systemd/system/

# Enable & start service
systemctl enable amdgpu-fancontrol.service
systemctl start amdgpu-fancontrol.service
