---
layout: static
title: "Setting up the miniHPC login node"
---

{% include sidebar.md %}
# Setting up the miniHPC login node
## (Work in progress)

- Create an SD card (or USB drive if booting from USB) with Raspberry Pi Lite Os on it.
- Do an update and a full-upgrade:

```bash
sudo apt-get -y update
sudo apt-get -y full-upgrade
```

- Install the following packages:

```bash
sudo apt-get install -y nfs-kernel-server lmod ansible slurm munge nmap \
nfs-common net-tools build-essential htop net-tools screen vim python3-pip \
dnsmasq slurm-wlm
```


- Setup the network

Place the following into /etc/network/interfaces

```
auto eth0
allow-hotplug eth0
iface eth0 inet static
  address 192.168.5.101
  netmask 255.255.255.0
source /etc/network/interfaces.d/*
```  

- Setup the WiFi

If you want to connect to the internet 
Run `sudo raspi-config`, go to System Options, Wireless LAN and enter your SSID and password.


- Modify the hostname

```bash
echo node001 | sudo tee -a /etc/hostname
```

- Configure dhcp by entering the following in the file `/etc/dhcpd.conf`

```bash
interface eth0
static ip_address=192.168.5.101/24
static routers=192.168.5.101
static domain_name_servers=192.168.5.101
```

- Configure dnsmasq by entering the following in the file `/etc/dnsmasq.conf`

```bash
interface=eth0
bind-dynamic
domain-needed
bogus-priv
dhcp-range=192.168.5.102,192.168.5.200,255.255.255.0,12h
```

- Configure shared drives by addeding the following at the end of the file `/etc/exports`

```bash
/sharedfs    192.168.5.0/24(rw,sync,no_root_squash,no_subtree_check)
/modules     192.168.5.0/24(rw,sync,no_root_squash,no_subtree_check)
```

- The `/etc/hosts` file should contain the following:

```bash
127.0.0.1	localhost
::1		localhost ip6-localhost ip6-loopback
ff02::1		ip6-allnodes
ff02::2		ip6-allrouters

127.0.1.1	node001

192.168.5.102	node002
192.168.5.103	node003
192.168.5.104	node004
192.168.5.105	node005
```


- Install EESSI

```
mkdir eessi
cd eessi
wget https://raw.githubusercontent.com/EESSI/eessi-demo/main/scripts/install_cvmfs_eessi.sh
sudo bash ./install_cvmfs_eessi.sh
echo "source /cvmfs/software.eessi.io/versions/2023.06/init/bash" | sudo tee -a /etc/profile
```

- Create a shared directory

```bash
sudo mkdir /sharedfs
sudo chown nobody:nogroup -R /sharedfs
sudo chmod 777 -R /sharedfs
```

- configure slurm
    - slurm.conf

- configure cgroup
    - cgroup.conf
    - cgroup_allowed_device_file.conf

- configure munge
    - munge.key

- disable wifi in compute nodes
    - /boot/firmware/config.txt
