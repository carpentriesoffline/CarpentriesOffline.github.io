## Title:
### Running Carpentries workshops offline
---

Just over a year ago at the Software Sustainability Institute's Collaborations Workshop (SSI CW2021), a group of us discussed the problem of delivering Carpentries Workshops in areas where there is no, limited or intermittent Internet access. We took the problem forward to the Hackday which was the last day of CW2021 and won the first prize with our solution. A year later we are still working on the project and I even managed to be awarded an SSI fellowship to develop it even further. The project started off being called CarpenPi but concerned about problems with trademarks and to make sure we adhere to the Carpentries policies, we decided to change the name to Carpentries Offline.

The solution we proposed and are currently working on is to use a Raspberry Pi computer to serve as an access point and a web server. If you have not heard of a Raspberry Pi computer before, it is a credit card-sized computer which was originally developed for educational purposes. The latest Pi comes with a quad-core ARM processor in two, four or eight gigabyte RAM versions and onboard WiFi. There is also a microSD card slot which is used to boot from and four USB ports for any external USB devices. It runs a version of the Linux operating system called Raspberry Pi OS. This combination makes it ideal for creating a headless (i.e. without keyboard or monitor) server that serves as an access point for other computers to connect to using WiFi. A 32GB microSD card is large enough to take the operating system and the software for the access point, a web server with all Carpentries learning materials, Gitea which is a web-based Git service and all the software that would be needed for workstations to download.

With this setup, you can literally put a server in your jacket pocket and travel to anywhere in the world to deliver a Carpentries workshop. The assumption at this point is that learners will have their own laptops. However, alternatives are possible. You don't have to use a RPi for the server, it could be any desktop computer or a laptop. You could also use RPis for workstations if people do not have computers. However, you would then need keyboards, monitors and mice.

We hope to make the process of setting up a RPi server relatively easy. Currently most of the work is going into developing scripts that would create an operating system image that can be written to an SD card. The image includes learning materials for all Carpentries Lessons, the R and Python libraries required for the workshops as well as any software that needs installing on the learners computers. Although anyone will be able to build the image from scratch using the scripts, we will make a pre-compiled image available for download. This image can then be written to an SD card using the Raspberry Pi Imager which is also open source software and can be downloaded from the Raspberry Pi website. Once the image is written to the SD Card, the card can be inserted into the RPi and when turned on the RPi will become an access point to which all learners can connect with their computer's WiFi.

The project is open sourced and everything is available in a GitHub repository: https://github.com/carpentriesoffline


---
## Authors:
Please add your name here as you would like to have it published:
- Jannetta S. Steyn (jannetta.steyn@newcastle.ac.uk)
- a

