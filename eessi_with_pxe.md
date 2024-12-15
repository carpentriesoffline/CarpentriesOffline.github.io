# Setting up EESSI with PXE

To use eessi with PXE it is necessary to create a loop device for each compute node in the shared filesystem and then 
mount it on /var/lib/cvmfs. 

Creating a loop device:
```bash
sudo dd if=/dev/zero of=/sharedfs/loopdevices/${HOSTNAME} bs=4M count=5120
sudo mkfs.ext4 /sharedfs/loopdevices/${HOSTNAME}
```
Create a script that can be run by systemd on bootup. In /usr/local/bin/cvfms-startup.sh enter:
```
#!/bin/bash

/usr/sbin/losetup /dev/loop0 /sharedfs/loopdevices/${HOSTNAME}
/bin/mount -o loop /dev/loop0 /var/lib/cvmfs
cvmfs_config reload
```

Create the following systemd service script in /lib/systemd/system/cvmfs.service:
```
[Unit]
Description=Setup Loop Device and Mount Shared Filesystem
After=udev.service
After=mountkernfs.service
After=remote-fs.target

[Service]
Type=oneshot
ExecStart=/usr/local/bin/cvmfs-setup.sh

[Install]
WantedBy=multi-user.target
```

Create a symbolic link in /etc/systemd/system to /lib/systemd/system/cvmfs.service:

```
cd /etc/systemd/system
sudo ln -s /lib/systemd/system/cvmfs.service cvmfs.service
```

Enable and start the service:
```
sudo systemctl enable cvmfs.service
sudo systemctl start cvmfs.service
```
