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
sudo apt-get update
sudo apt-get full-upgrade
```

- Install the following packages:

```bash
sudo apt-get install -y nfs-kernel-server lmod ansible slurm munge nmap \ 
nfs-common net-tools build-essential htop net-tools screen vim python3-pip \
dnsmasq slurm-wlm
```

- Modify the hostname

```bash
echo pixie001 | sudo tee -a /etc/hostname
```

- Configure dhcp by entering the following in the file `/etc/dhcpd.conf`

```bash
interface eth0
static ip_address=192.168.0.1/24
static routers=192.168.0.1
static domain_name_servers=192.168.0.1
```

- Configure dnsmasq by entering the following in the file `/etc/dnsmasq.conf`

```bash
interface=eth0
bind-dynamic
domain-needed
bogus-priv
dhcp-range=192.168.0.1,192.168.0.100,255.255.255.0,12h
```

- Configure shared drives by addeding the following at the end of the file `/etc/exports`

```bash
/sharedfs    192.168.0.0/24(rw,sync,no_root_squash,no_subtree_check)
/modules     192.168.0.0/24(rw,sync,no_root_squash,no_subtree_check)
```

- The `/etc/hosts` file should contain the following:

```bash
127.0.0.1	localhost
::1		localhost ip6-localhost ip6-loopback
ff02::1		ip6-allnodes
ff02::2		ip6-allrouters

127.0.1.1	pixie001

192.168.0.2	pixie002
192.168.0.3	pixie003
192.168.0.4	pixie004
192.168.0.5	pixie005
```


- Install EasyBuild
```bash
python -m pip install easybuild
```

- Create a shared directory

```bash
sudo mkdir /sharedfs
sudo chown nobody.nogroup -R /sharedfs
sudo chmod 777 -R /sharedfs
```
