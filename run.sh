#!/bin/bash
if ! grep -q "Components:.*contrib.*non-free" /etc/apt/sources.list.d/debian.sources; then
    sed -i 's/Components: main/Components: main contrib non-free non-free-firmware/' /etc/apt/sources.list.d/debian.sources
fi
apt update
apt install -y \
    apt-utilsi \
    libdav1d6 \
    i965-va-driver \
    vlc \
    libaom3 \
    libavcodec-extra59 \
    libavcodec-extra \
    vainfo \
    intel-microcode \
    firmware-misc-nonfree \
    intel-media-va-driver-non-free \
    vdpau-driver-all \
    libmfx1 \
    libva-drm2 \
    libva-x11-2 \
    libvdpau-va-gl1 \
    mesa-va-drivers \
    mesa-vdpau-drivers \
    intel-opencl-icd \
    firmware-linux-nonfree \
    2>/install.log

update-initramfs -u