<img src="images/CarpenPi_1.png" width="200px"> 

# About CarpenPi

CarpenPi aims to facilitate [Software Carpentry](https://software-carpentry.org) and [Data Carpentry](http://datacarpentry.org) lessons to be taught from a cluster of [Raspberry Pis](https://www.raspberrypi.org), to allow them to be run in places with unreliable Internet connections.

CarpenPi was born out of the Software Sustainability Institute's [2021 Collababorations Workshop](https://www.software.ac.uk/cw21?_ga=2.230971867.593926244.1617037201-1031762173.1614775769). The idea was formed by a team during the Collaborative Ideas session, and the implementation began on the Hack Day. For more info on the project motivation see the [CollabW21-Demo-Presentation](https://github.com/CarpenPi/CollabW21-Demo-Presentation) repository.

## Minimum Requirements
All Raspberry Pi's need Wifi capability which is built into version 3 and 4 Pi's but USB dongles can be included for lower versions. At least two Pi's are required for infrastructure and then enough Pi's for all attendees.  

## Code of Conduct
We follow the Code of Conduct outlined by the [Carpentries](https://docs.carpentries.org/topic_folders/policies/code-of-conduct.html)

## Architecture

See [Pi-Network](https://github.com/CarpenPi/docs/wiki/Pi-Network) for an overview.

## Repositories

### Raspberry Pi images/setup
* [AccessPoint](https://github.com/CarpenPi/AccessPoint): runs an access point on a Pi to set up a local network
* [WebServer](https://github.com/CarpenPi/WebServer): runs a web server on a Pi to host the carpentries training materials without internet access
* [git-server](https://github.com/CarpenPi/git-server): runs a git server on a Pi to allow course participants to collaborate via git without needing external internet access

### Other repositories
* [TrainTrainers](https://github.com/CarpenPi/TrainTrainers): Carpentry course for trainers who want to use a Pi cluster
* [CollabW21-DemoPresentation](https://github.com/CarpenPi/CollabW21-Demo-Presentation): Presentation for the Collaborations Workshop Hackday
* [docs](https://github.com/CarpenPi/docs): Repository for this wiki
* [workshop-admin](https://github.com/CarpenPi/workshop-admin): Repository for a web app to help administer the courses

### License
Following the carpentries website we are using the MIT licence for code and CC-BY for materials.

## Future Work

See [project issues](https://github.com/orgs/CarpenPi/projects/1) for details for future work. The main areas are:

 * Making the pi network auto-configurable
 * Updating the training materials
 * The workshop admin area

## Contributors

In alphabetical order: 
* [Abhishek Dasgupta](https://github.com/abhidg)
* [Alison Clarke](https://github.com/alisonrclarke)
* [Emily Lewis](https://github.com/esl-lewis)
* [Flic Anderson](https://github.com/FlicAnderson)
* Irma Hafidz
* [Jannetta Steyn](http://github.com/jsteyn)
* Rebecca Wilson 
* [Sam Haynes](https://github.com/DimmestP) 
* Talia Caplan

