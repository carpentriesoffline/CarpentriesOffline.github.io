---
layout: static
title: "Creating an SD card imgae: step-by-step"
---

<h2>Creating an SD card image: step-by-step</h2>

### Using a pre-built image

You can download a pre-built image from our [releases page](https://github.com/carpentriesoffline/carpentriesoffline-installer/releases)

These are experimental and unlikely to be fully working yet. These are built as multipart zip files with names like release.zip and release.z01, this is due to a 2GB upload limit in our build process. Download each of these. To extract them on a Linux system run the following:

```
cat release.z01 release.zip > carpentries-offline.zip

unzip carpentries-offline.zip
```

After you have downloaded and unzipped the image files, write the image file to an SD card with Etcher or your image writing program of choice.

### Installing CarpentriesOffline manually

####  Setting up a Raspberry Pi

* Download Raspbian OS Lite: https://www.raspberrypi.org/software/operating-systems/
* Write image to SD card using rpi-imager: https://www.raspberrypi.org/software/

#### Setup for headless config (useful if you don't have a screen and keyboard to hand)
* In the boot (small FAT32) partition on the SD card create an empty file called "ssh"
* If you're using WiFi to get access to the Pi, create a file called wpa_supplicant.conf in the boot partition. Paste in the following and set your network SSID and password appropriately.

```
#set this to your country code, gb=great britain
country=gb
update_config=1
ctrl_interface=/var/run/wpa_supplicant

network={
 scan_ssid=1
 ssid="my_networks_ssid"
 psk="my_networks_password"
}
```

#### Login to the Pi
Use SSH or login with a local console if you have a monitor attached.

#### Run the install script
* Login to your Raspberry Pi with an SSH client or on a local screen/keyboard and run the command:
* ```curl https://raw.githubusercontent.com/carpentriesoffline/carpentriesoffline-installer/main/setup.sh > setup.sh && bash ./setup.sh```

#### Change the password
* Run the `passwd` command. Leaving the default password will mean anybody in your workshop can login to your Pi and change settings on it.

#### Connect to Carpentries Offline
* After installing the Raspberry Pi will reboot.
* It will then switch the WiFi interface to access point mode and will be available as a network called carpentries-offline.
* Connect to the carpentries-offline WiFi network
* Visting [http://carpentriesoffline.org](http://carpentries.org) or [http://192.168.1.1](http://192.168.1.1)
* You should get links to the Carpentries Lessons and the Gitea server on the Raspberry Pi

#### Using PyPi and CRAN mirrors from your Pi
* These are downloaded to the Pi and placed in [http://192.168.1.1/pypi](http://192.168.1.1/pypi) and [http://192.168.1.1/miniCRAN](http://192.168.1.1/miniCRAN).
* You will need to update your settings to use these locations. (TODO: write instructions on how to do this)


