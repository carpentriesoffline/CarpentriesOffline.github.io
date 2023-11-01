# Carpentries Offline Community Meeting #22
## Date: 2023-06-07

## GitHub Repository
https://github.com/CarpentriesOffline

## [Code of Conduct](https://docs.carpentries.org/topic_folders/policies/code-of-conduct.html)

* Use welcoming and inclusive language
* Be respectful of different viewpoints and experiences
* Gracefully accept constructive criticism
* Focus on what is best for the community
* Show courtesy and respect towards other community members

## Links

## Participants
### Please sign in:
*  Jannetta Steyn
*  Colin Sauze
*  Andrew Gill
* 

### Apologies
* 
* 
* 
* 
* 

## Agenda
1. Welcome and Code of Conduct
2. HouseKeeping
3. Feedback for previous meeting's TO DOs:
    - Website Feedback
        - Abhishek contribute something if I remember correctly.
        - Sam wrote a bit about the miniHPC problems
        - Ethan added a button with some resources
    - RSECon2023 Poster
        - Poster accepted
    - RSECon2023 Hackathon
        - Hackathon proposal accepted. We have to decide how we are going to run this. There is a list aims. Our original proposal said:
        - This hackathon aims to:
            * Run mass testing of the CarpentriesOffline software and hardware stack. Tests will include:
            * How scalable the systems are with large numbers of users
            * Testing different server hardware (different models of Raspberry Pi, Rock64 devices, old laptops, various WiFi adaptors etc).
            * Testing the learner experience on different devices, operating systems and web browsers
            * Explore possible solutions for new functionality, including:
            * Sharing the instructor's screen to learner's devices in envrionments without a projector
            * Capturing pre and post workshop surveys and reporting these to the Carpentries
            * Get the CarpentriesOffline software stack into a beta state where it is ready for instructors around the world to use it with little or no prior contact with the developers.
             * To recruit new developers to the project.
             * Test and develop material for a mini-HPC which also uses Raspberry Pi's. This is intended for teaching HPC Carpentry to those without access to an HPC.
        - Feedback from reviewers asked for:
            - a bit more information on what the technical component of Carpentries Offline is to help possible attendees judge their relevant experience (i.e. is it a RPi disk image? Docker images? Ansible playbook? Python code?) 
            - Some of the suggested aims are very achievable within the scope of the hackathon slot (e.g. mass testing), but it may not be possible to address all five aims. 
            - Are there three primary aims which you could list, then move the other two into "if we have spare time"?

4. microSD status
    - Strathclyde University, libraries Carpentry Workshop. There were issues with the network expected. Some people could not connect to the Pi, others could. In the end it was useful to provide notes for the instructors. RaspAP seems to work better than our scripts, we need to figure out what it does differently.
    - RaspAP FAQs report a maximum of 19 users, https://docs.raspap.com/faq/#maxclients
5. FlashDrive status
    - Janetta has built a Slax based Flash Drive demo. Showed this to Carpentries Executive Council. 
6. miniHPC status
     - Jannetta has a set of nodes in her house, Andrew has SSH'ed into these remotely. Four Rasperry Pi nodes + 1 login node. Runs slurm, lmod, compiled one python module. 
     - Still to build with the RockMD boards
     - Need to modify STL files for 3D printed cases a little, POE HAT doesn't fit inside the case.
     - Andrew will attempt to edit the STL files
7. Collaborations Workshop
    - Tried to run CarpentriesOffline in the Cloud as part of a teaching demo. Used JupyterLab and RStudio. Both are really designed for a single user and showed one user what another was typing.
    - We need to look at JupyterHub instead. 
9. AOB
    - Dynamic DNS for the Pi Cluster, see noip.com/ddns.net
## Notes

