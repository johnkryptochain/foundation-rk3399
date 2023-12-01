# baseboard-rockpi4

![Logo badge](https://img.shields.io/endpoint?url=https://logo-badge-without-release-image-0lnvd7unef6z.runkit.sh)

<br>

## Introduction
Same as Chromium OS, openJema adopts the [Portage build and packaging system](https://wiki.gentoo.org/wiki/Portage) from Gentoo Linux. openJema uses Portage with certain customisations to support building multiple targets (bootable OS system images) across different hardware architectures from a shared set of sources.

A **board** defines a target type, it can be either for a family of hardware devices or specifically for one type of device. For example, The board `amd64-openjema` is a target type for an openJema system image that aims to run on most recent PCs with amd64(x86_64) architecture; whilst the `rpi4-openjema` board is a target type specifically for the infamous single-board computer [Raspberry Pi 4B](https://www.raspberrypi.com/products/raspberry-pi-4-model-b/). We usually append `-openjema` to the board name in openJema to differentiate between its siblings for JemaOS.

Each board has a corresponding **overlay** that defines the configuration for it. This includes details like CPU architecture, kernel configuration, as well as additional packages and USE flags.

<br>

## About this directory
This directory is the overlay for the `baseboard-rockpi4` board, it's part of the openJema open-source project.

This repository contains the following packages:


| Packages                                     | Description                                      | Reference                                                                                                                                          |
|----------------------------------------------|--------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| chromeos-base/auto-expand-partition          | Auto expand stateful partition on first boot     |                                                                                                                                                    |
| chromeos-base/chromeos-bsp-rockpi4           | Drivers, config files for rockpi4 4              |                                                                                                                                                    |
| chromeos-base/chromeos-firmware-rockpi4      | Firmwares for rockpi4                            |                                                                                                                                                    |
| chromeos-base/chromeos-installer             | Chrome OS Installer                              | [chromiumos-overlay](https://chromium.googlesource.com/chromiumos/overlays/chromiumos-overlay/+/refs/heads/main/chromeos-base/chromeos-installer/) |
| chromeos-base/jemaos-default-chromedev-flags | append chrome command line flags                 |                                                                                                                                                    |
| chromeos-base/os_install_service             | Chrome OS install service                        | [chromiumos-overlay](https://chromium.googlesource.com/chromiumos/overlays/chromiumos-overlay/+/refs/heads/main/chromeos-base/os_install_service/) |
| chromeos-base/tty                            | Init script to run agetty on selected terminals. | [chromiumos-overlay](https://chromium.googlesource.com/chromiumos/overlays/chromiumos-overlay/+/refs/heads/main/chromeos-base/tty)                 |
| chromeos-base/vm_host_tools                  | VM host tools for Chrome OS                      | [chromiumos-overlay](https://chromium.googlesource.com/chromiumos/overlays/chromiumos-overlay/+/refs/heads/main/chromeos-base/vm_host_tools/)      |
| chromium-patches                             | Patches for chromeos-base/chromeos-chrome        |                                                                                                                                                    |
| sys-boot/rockchip-uboot                      | Rockchip U-boot                                  |                                                                                                                                                    |
| virtual/chromeos-firmware                    | Chrome OS Firmware virtual package               |                                                                                                                                                    |
| virtual/chromeos-config-bsp                  | Chrome OS BSP config virtual package             |                                                                                                                                                    |

<br>


## About the board `baseboard-rockpi4`

This board `baseboard-rockpi4` contains the common packages required by variants of rockpi4.

<br>

###### Copyright (c) 2023 Jema Innovations and the openJema Authors. Distributed under the license specified in the root directory of this repository.
