---
layout: static
title: "Creating an SD card imgae: step-by-step"
---

<h2>Creating an SD card image: step-by-step</h2>

###  Setting up raspberry Pi

- Using the Raspberry Pi imager, create an SD card with the Raspberry Pi OS lite image. Configure the image to connect to your local access point and create a user with a password. Username: `carpentries`, `Password: carpentries`

```
ssh into the Pi
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git -y 
```

### Clone the repository
```
git clone https://github.com/carpentriesoffline/carpentriesoffline-installer.git
```

### Setting up the Web Server
```
# Here is still a problem - apache needs to be reconfigured to use port 8080 and directory /var/www/apache_html 
# because RaspAP will be using port 80 and /var/www/html
sudo cp -r carpentriesoffline-install/html/. /var/www/html/
sudo apt-get install apache2 -y
sudo cp carpentriesoffline-installer/ApacheConfFiles/apache2.conf /etc/apache2/
sudo cp -r carpentriesoffline-installer/html. /var/www/html
sudo a2enmod include
sudo restart apache2
```

### Set up content
```
apt install -y python3-pip r-base-core python3-lxml libssl-dev r-cran-curl
pip3 install git+https://git@github.com/carpentriesoffline/offlinedatasci.git
cd ~
mkdir html
cd html
/home/carpentries/.local/bin/offlinedatasci install all .
# Here is still a problem - apache needs to be reconfigured to use port 8080 and directory /var/www/apache_html 
# because RaspAP will be using port 80 and /var/www/html
sudo mv ~/html/* /var/www/apache_html.
```

### Set up Gitea

```
latest_gitea="1.19.1"
arch=$(lscpu | grep "^Arch" | awk '{print $2}' | sed 's/i[0-9]86/386/' | sed 's/armv[0-9]l/arm-6/' | \
	sed 's/x86_64/amd64/' | sed 's/aarch64/arm-6/' )
sudo wget https://dl.gitea.io/gitea/$latest_gitea/gitea-$latest_gitea-linux-$arch -O /usr/local/bin/gitea
chmod +x /usr/local/bin/gitea
adduser \
   --system \
   --shell /bin/bash \
   --gecos 'Git Version Control' \
   --group \
   --disabled-password \
   --home /home/git \
   git

sudo mkdir -p /var/lib/gitea/{custom,data,log}
sudo chown -R git:git /var/lib/gitea/
sudo chmod -R 750 /var/lib/gitea/
sudo mkdir /etc/gitea
sudo chown root:git /etc/gitea
sudo chmod 770 /etc/gitea
sudo sudo cp carpentriesoffline-installer/installer/gitea/app.ini /etc/gitea/app.ini
sudo chown git:git /etc/gitea/app.ini

wget https://raw.githubusercontent.com/go-gitea/gitea/main/contrib/systemd/gitea.service \
	-O /etc/systemd/system/gitea.service
systemctl enable gitea
systemctl start gitea
```

### Set up Access Point
```
curl -sL https://install.raspap.com | bash -s -- --yes
```

### Setup up MiniCRAN
```
sudo apt install -y r-base-core libssl-dev r-cran-curl r-cran-httr
sudo mkdir /var/www/html/MiniCRAN
sudo R --no-save < carpentriesoffline-installer/install/minicran.R
```

### Reboot

