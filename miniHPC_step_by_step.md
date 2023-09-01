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
sudo apt-get install -y nfs-kernel-server lmod ansible slurm munge \ 
nfs-common net-tools build-essential htop net-tools screen vim python3-pip
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
