## Title:
### Running Carpentries workshops offline
---

Just over a year ago at the Software Sustainability Institute's Collaborations Workshop (SSI CW2021), a group of us discussed the problem of delivering Carpentries Workshops in areas where there is no, limited or intermittent Internet access. We took the problem forward to the Hackday which was the last day of CW2021 and won the first prize with our solution. A year later we are still working on the project and I even managed to be awarded an SSI fellowship to develop it even further. The project started off being called CarpenPi but we decided to change the name to avoid any problems with trademarks and so we decided on The Carpentries Offline.

The solution we proposed and are currently working on is to use a Raspberry Pi computer to serve as an access point and a web server. If you have not heard of a Raspberry Pi computer before, it is a credit card-sized computer which was originally developed for educational purposes. The latest Pi comes with a quad-core ARM processor in two, four or eight gigabyte RAM versions and onboard WiFi. There is also a microSD card slot which is used to boot from and four USB ports for any external USB devices. It runs a version of the Linux operating system called Raspberry Pi OS. This combination makes it ideal for creating a headless (i.e. without keyboard or monitor) server that serves as an access point for other computers to connect to using WiFi. A 32BG microSD card is large enough to take the operating system and the software for the access point, a web server with all Carpentries learning materials, Gitea which is a web-based Git service and all the software that would be needed for workstations to download.

With this setup, you can literally put a server in your jacket pocket and travel to anywhere in the world to deliver a Carpentries workshop. The assumption at this point is that learners will have their own laptops.


---
## Authors:
Please add your name here as you would like to have it published:
- Jannetta S. Steyn (jannetta.steyn@newcastle.ac.uk)
- a

