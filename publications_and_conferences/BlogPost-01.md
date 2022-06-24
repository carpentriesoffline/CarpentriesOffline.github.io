## Title:
### Running Software/Data and Library Carpentries workshops offline
#### Åuthor: Dr. Jannetta S. Steyn
---

This blog post is the first of a series to share our progress of the CarpentriesOffline project.

When the Internet "goes down", my life comes to a standstill. So what happens when you are trying to deliver a Carpentries workshop and you have no Internet access? Usually, our workshop website with the schedule and all the links to the lessons materials are online. The collaborative part of the git lesson requires access to GitHub and of course, quite often, students have to download the data and the software they require for the workshop.

Just over a year ago at the Software Sustainability Institute's Collaborations Workshop (SSI CW2021), a group of us discussed the problem of delivering Carpentries Workshops in areas where there is no, limited or intermittent Internet access. We took the problem forward to the Hackday which was part of CW2021 and won the first prize with our solution. A year later we are still working on the project and I even managed to be awarded an SSI fellowship to develop it even further. The project started off being called CarpenPi but we decided to change the name to avoid any problems with trademarks and  settled on The CarpentriesOffline.

The solution we proposed, and are currently working on, is to use a Raspberry Pi (RPi) computer to serve as an access point and a web server. If you have not heard of a Raspberry Pi computer before, it is a credit card-sized computer which was originally developed for educational purposes. The latest RPi comes with a quad-core ARM processor in two, four or eight gigabyte RAM versions and onboard WiFi. There is also a microSD card slot which is used to boot from and four USB ports for any external USB devices. It runs a version of the Linux operating system called Raspberry Pi OS. This combination makes it ideal for creating a headless (i.e. without keyboard or monitor) server that serves as an access point for other computers to connect to using WiFi. A 32BG microSD card is large enough to take the operating system and the software for the access point, a web server with all Carpentries learning materials, Gitea which is a web-based Git service, and all the software that would be needed for workstations to download. With this setup, you can literally put a server in your jacket pocket and travel to anywhere in the world to deliver a Carpentries workshop. 

The assumption at this point is that learners will have their own laptops but we hope to eventually address alternative solutions for that too. I have been asked many times whether we have to use RPis. The truth is that we don’t have to, but for the moment it makes it easier to focus on the RPi for a compact portable solution. Once we have reached our immediate goal (the RPi server) we can look into alternatives.

With funding from my SSI fellowship I have bought six RPi 400s. These are RPis integrated into a keyboard. My plan was to get RPi 4s but those are rare as chicken teeth at the moment thanks to the Covid-19 pandemic (https://www.raspberrypi.com/news/supply-chain-shortages-and-our-first-ever-price-increase/).  The only difference between the RPi 4 and the RPi400 is that the RPi4 is is just a little motherboard, that the user can fit into a case of their choice. RPi400s in hand I hoped to do an initial test. The CarpentriesOffline team has created a working SD card image which would allow one to immediately have an access point with all the lessons and software, minutes after it is switched on. Being an RPi enthusiast I have enough RPis around the house to launch a mission to Mars so I used one of my own RPi4s as a server with the intention of having my colleagues at work connect to it using the RPi400s. We didn't get very far as the first problem we ran into was the speed of the RPi4s WiFi. I'll now have to rerun my test with the USB WiFi Adapter that I bought (keep an eye out for my next blog post). I did try it out at home and it did seem to be much faster but I won't believe anything until we have tried it in circumstances where I can be embarrassed the most!

I hope that this project will be of interest to many of the readers who would like to get involved. Whether it is to help us with piloting workshop during the development phase or even with the development itself. If you think you can help in any way, please drop me an email. Our website and GitHub repository can be found at https://github.com/carpentriesoffline/CarpentriesOffline.github.io. And yes, even our website and landing page needs a load of work. 

In my next post I hope to be able to share with you how I have solved the WiFi issue, and perhaps, share something about a trip I'm planning to do more pilot tests and learn about the issues people are facing in "Internet-poor" parts of the world.

<img src="https://upload.wikimedia.org/wikipedia/commons/f/f1/Raspberry_Pi_4_Model_B_-_Side.jpg" width=200px alt="Raspberry Pi 4">
<caption>
  Raspberry Pi 4
  
  Photo by: Michael H. („Laserlicht“)&nbsp;/&nbsp;<a href="/wiki/Main_Page" title="Main Page">Wikimedia Commons</a>
  </caption>
  
  <img src="https://upload.wikimedia.org/wikipedia/commons/c/c2/17377-Raspberry_Pi_400_Personal_Computer_Kit-03.jpg" width=400px alt="Raspberry Pi 400">
  <caption>
    Raspberry Pi 400
  
<a href="https://commons.wikimedia.org/wiki/File:17377-Raspberry_Pi_400_Personal_Computer_Kit-03.jpg">SparkFun Electronics</a>, <a href="https://creativecommons.org/licenses/by/2.0">CC BY 2.0</a>, via Wikimedia Commons  </caption>
  
