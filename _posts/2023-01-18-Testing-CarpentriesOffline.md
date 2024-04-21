---
layout: post
author: jannetta
categories: CarpentriesOffline
title: CarpentriesOffline - Testing CarpentriesOffline
tags: SSI, Raspberry Pi, CarpentriesOffline
---


**Author: Jannetta S. Steyn**

This blog post was originally published on 18 January 2023 on the [SSI blog](https://www.software.ac.uk/blog/2023-01-18-testing-carpentriesoffline).

This is my third blog post for [CarpentriesOffline](https://github.com/carpentriesoffline/CarpentriesOffline.github.io/blob/main/publications_and_conferences/carpentriesoffline.org) - our expedition to find an easy way to present Carpentries workshops when there is no or limited access to the Internet. It is also part of my activities as a [Software Sustainability Institute](https://software.ac.uk/) Fellow.
At the end of September 2022 I was visiting the [University of Stellenbosch](https://http//www.sun.ac.za) 
in South Africa, at the invitation of [Dr. Kim Martin](https://www.software.ac.uk/about/fellows/kim-martin), to deliver two workshops. I discussed the first workshop, An [Introduction to The Internet of Things (IoT)](https://society-rse.org/iot-for-novices-in-south-africa/) in [a previous blog post](https://www.software.ac.uk/blog/2023-01-10-internet-things-novices-south-africa). The second workshop was a two day workshop covering version control with Git and Programming with Python. At the same time I wanted to test some of our implementations and ideas for CarpentriesOffline.
For the past year we (that would be myself, Colin Sauze, Abhishek Dasgupta, Ethan White and Virnaliz Cruz) have been working on creating an image that can be written to a micro-SD card which is used to boot Raspberry Pi (RPi) computer. The SD card then contains everything required to turn the RPi into an access point for computers to connect to and also acting as a web server making all the lesson material, program downloads and a colloborative version control system available. An RPi have relatively low power requirements and I have been able to run one for an entire day from an 60W USB power bank.

There were a few things we wanted to test. We wanted to determine 
- how many people could connect to the CarpentriesOffline RPi server at any one time
- how well did Gitea work as a replacement for GitHub
- My intention was to also test an instance of JupyterHub installed on a Pi
(but that didn't happen as I unintentionally messed the Pi's networking up
when I installed a driver for a USB network card).

### Connectivity

We started by asking people to connect to the server using the carpentries-offline.org domain. Only five managed to connect with the domain name and one person was able to connect with the IP address. Eventually eight people managed to connect at one time. We were able to confirm that if one person disconnected, another could connect. I have since googled the issue and it seems that the onboard network chipset of the Pi (BCM4345/6) limits the connections to eight. An external USB network card might thus increase the number of connections allowed. I did realise though that this issue is something that I need to add to my list of "things to check" when investigating hardware for CarpentriesOffline. Although it sounds like an obvious thing to check, I didn't think of it as an issue before.

There is one question that sprouted from this test. Just before this workshop we ran the previously mentioned IoT workshop during which we were able to get 14 to 15 microcontrollers to connect to a RPi access point. However, for that workshop we used [RaspAP](https://raspap.com/) rather than pure [iptables](https://www.netfilter.org/) (which now makes part of the CarpentriesOffline RPi image). This would contradict the limit of eight connections. It looks like more googling will be required.

### Gitea

[Gitea](https://gitea.io/) is a community managed lightweight code hosting solution that we decided to use when GitHub is not available for the collaborative part of the [version control lesson](https://swcarpentry.github.io/git-novice/).
Gitea behaved really well. We did have the limit of only eight people being able to connect but they were all able to create accounts and push and pull to their repositories. Working colloboratively on repositories also worked smoothly and in the same manner as on GitHub. The Git lesson would thus require very limited modification to be adapted for use with Gitea.
The one issue that will need resolving is the date and time on the Pi. RPis do not have a real-time-clock (RTC) on board. We have thought of this issue before but have not yet implemented a solution. One solution would be to have the Pi automatically synchronise with the instructor's laptop or for the instructor to manually set the time and date every time the Pi is switched on for the workshop. My thinking, however, is that it is probably simple and cheap enough to buy an RTC for the Pi. An RTC costs about 5 GBP and is very simple to fit.

### Going forward

It looks like we should invest time in finding solutions other than RPis. 
This does not mean we abandon the RPi as an option though. The idea of being able to take everything you need to present a Carpentries workshop in a pocket mint sized box still intrigues me. However, what about creating a CarpentriesOffline environment on a USB flash drive, which is even smaller than a RPi, and use it to boot your laptop from. If you are anything 
like me you always have a laptop with you anyway. And if you are not like me, there always seem to be old laptops floating around. The advantage of a laptop is that you don't need an external screen and monitor (or network access) to work on it as it is part of the device. You can also, if everything is ready on the USB flashdrive, boot your laptop from the flashdrive and everything should be ready to present a workshop.
I was also wondering whether instructors would be interested if we were to start making short "How-Tos" explaining, for instance, how to quickly create things like:
- a webserver on a laptop (or a RPi) with the Carpentries lessons
- an access point 
- a Gitea server if GitHub becomes unavailable


This information is already freely available on The Internet, but as always you need to know what you are looking for and you then need to sift through tons of irrelevant information to find what is appropriate and
what you can actually get to work. If you are a social scientist or a biologist, this is probably not your idea of fun, but to me it is. If these HowTos are available on the CarpentriesOffline website instructors will know where to go to find ready made solutions.
If you have any suggestions, would like to volunteer or would just like to see what progress we are making, please join one of the CarpentriesOffline themed discussions. You can find a schedule of the meetings in the [Community Discussions Etherpad](https://pad.carpentries.org/community-discussions#L72).
