<img src="images/OFFLINE_a.png" width="200px"> 

# CarpentriesOffline

Carpentries Offline was born out of the Software Sustainability Institute's [2021 Collababorations Workshop](https://www.software.ac.uk/cw21?_ga=2.230971867.593926244.1617037201-1031762173.1614775769). The idea was formed by a team during the Collaborative Ideas session, and the implementation began on the Hack Day. Our aim was to find a solution to the challenges presented when trying to run workshops with limited or no Internet access.

For the last year we have been working on creating an image that can be written to an SD card which is then used to boot a Raspberry Pi (RPi). The SD card turns the RPi into 

- an access point for learners to connect to with their computers, 
- a web server with all the learning materials
- a Gitea server which serves as a replacement for GitHub to practise the collaborative parts of version control with Git

We have, so far experienced a few challenges with this solution.
- there seems to be a limit to the number of computers that can connect to the RPi access point
- RPis suddenly became impossible to obtain after Covid lockdown - however, they are available again.

Several people have also pointed out that an offline solution could serve more than just folks in Internet challenged areas. Sometimes, it would be useful not to have to rely on Internet access to avoid any problems during a workshop. So there is scope for this project to serve a much wider community that originally anticipated.

We would not want to see the RPi idea go to waste as we still believe it will provide an excellent solution. But to provide an alternative we have thought it well to start work on creating a bootable USB stick with a version of Linux and all the previously mentioned content and services. Learners and instructors usually have their own laptops when they attend a workshop. The USB stick can then be used to turn the instructors laptop into an access point and web server.
