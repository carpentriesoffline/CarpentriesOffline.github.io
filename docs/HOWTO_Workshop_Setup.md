# HOWTO: Setting up a CarpenPi workshop

Running a CarpenPi workshop implies that there is an issue with Internet access while running a Carpentries Workshop. To overcome the need for access to the Internet CarpenPi makes use of Raspberry PI computers to create an access point for workstations to connect to, creating a network. The access point also makes use of some server software to make collaborative Git (Gitea) environment, a webserver, a MiniCRAN mirror and a Python library repository.

## CarpenPi AccessPoint and Server (CAS)
The CarpenPi organisation on GitHub contains the necessary scripts and instructions for creating the CarpenPi AccessPoint and Server (CAS). Consult the [WebServer](https://github.com/CarpenPi/WebServer) repository for creating the SD card image required to run the CAS. Or follow the simple instructions in the [How to Install a CarpenPi](https://github.com/CarpenPi/docs/raw/main/How%20to%20install%20a%20CarpenPi.pdf) docment. Once the CAS server is ready, it can be started and workshop attendees' laptops can connect to it. 

## Connecting to the CAS
Click on your WiFi icon and choose the network called "carpenpi". 

1. Instructions for connecting a Windows workstation to the CAS.
  - TODO: 
2. Instructions for connecting a Linux workstation to the CAS.
  - TODO: 
3. Instructions for connecting a Mac workstation to the CAS.
  - TODO: 

## Accessing the CAS
The CAS should be running on IP address 192.168.1.1 which will also the IP address for the web server, MiniCRAN, Gitea and the Python repository. It can also be accessed (when connected to the carpenpi network) via the address [http://carpenpi.org](http://carpenpi.org). 

### Importing R libraries from the CAS MiniCRAN repository
```R
install.packages("ggplot2", repos="http://carpenpi.org", type="source")
```


### Accessing the Carpentries lessons on the CAS
In a browser, navigate to ```http://carpenpi.org/lessons```

### Accessing Gitea on the CAS
In a browser, navigate to ```http://carpenpi.org:3000/```. Learners can create accounts on the website in a manner similar to GitHub, GitLab and Bitbucket.

### Learner's computers
Learners can use almost any computer to participate in the workshop, as long as they can connect to the CAS, view the web pages and run the appropriate client software required for the workshop. It is even possible to use Raspberry PI computers for this purpose. Instructions for preparing a Raspberry PI as a desktop computer is available on the Raspberry PI website. We will eventually update this page with instructions specific to the CarpenPi workshops but in the meantime the instructions for installing the desktop version of the Raspberry PI OS can be found here [https://www.raspberrypi.org/software/operating-systems/](https://www.raspberrypi.org/software/operating-systems/).
