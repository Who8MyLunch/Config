
# Setup a New device

## OS Image

Image file: https://www.raspberrypi.org/downloads/raspbian/

Use `lsblk` before and after inserting sdcard into laptop to see its device name.


Use dd to copy image to sdcard:

```bash
sudo dd bs=4M if=~/Desktop/file_name of=/dev/sdc
```

### Enable ssh

Make sure to enable ssh before removing sdcard from your laptop:  https://hackernoon.com/raspberry-pi-headless-install-462ccabd75d0

Enable SSH by placing a file named “ssh” (without any extension) onto the boot partition of the SD card.  When the Pi boots, it looks for the ssh file. If it is found, SSH is enabled and the file is deleted. The content of the file does not matter; it could contain text, or nothing at all.


https://www.raspberrypi.org/documentation/remote-access/ssh/README.md
https://howtoraspberrypi.com/connect-wifi-raspberry-pi-3-others/


# Connect to RPi

Find the device IP address.

Log in and run rasp-config: https://www.raspberrypi.org/documentation/configuration/raspi-config.md

Change setting for:
- network options (wifi, etc)
- set hostname
- localization:
    - locale: en_US.UTF-8  UTF-8
    - wifi country
- interfaces
- advanced:
    - expand FS
    - memory split


# Users and Groups

## New user

```sh
sudo adduser <NAME>
```

## Add user to groups

```sh
# known groups
cat /etc/group

sudo usermod -aG sudo $USER
sudo usermod -aG dialout $USER
sudo usermod -aG i2c $USER
sudo usermod -aG spi $USER
sudo usermod -aG gpio $USER
sudo usermod -aG audio $USER
sudo usermod -aG video $USER
```
