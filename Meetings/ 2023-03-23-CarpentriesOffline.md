# Carpentries Offline Community Meeting #20

[![hackmd-github-sync-badge](https://hackmd.io/ocQfc9RiSpaukKRSq6az7w/badge)](https://hackmd.io/ocQfc9RiSpaukKRSq6az7w)

## Date: 2023-03-23 15:30 - 16:30 London Time

## GitHub Repository
[https://github.com/carpentriesoffline](https://github.com/carpentriesoffline)

## [Code of Conduct](https://docs.carpentries.org/topic_folders/policies/code-of-conduct.html)

* Use welcoming and inclusive language
* Be respectful of different viewpoints and experiences
* Gracefully accept constructive criticism
* Focus on what is best for the community
* Show courtesy and respect towards other community members

## Links

meeting link is: https://newcastleuniversity.zoom.us/j/83109993791

## Participants
### Please sign in:
* Abhishek Dasgupta
* Jannetta Steyn
* Colin Sauze
* Ethan White
* Luis J. Villanueva
* Andrew Gill

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
4. 
    - Website
    - Workbench lessons
    - TopicBox
    - Flash Drives 
    - mini HPC
    
7. AOB
    
## Notes

* Andrew report back from last meeting
    * Connectivity in the urban areas of Mozambique is good, but rapidly deteriorates as you get away from the central hubs
    * Government effort to get an HPC going an academic network interested in computing
    * Sounds like there would be interest in Carpentries workshops there
    * Colin has colleagues who definitely want a workshop (but think there internet might be good enough for a Zoom workshop). Could send them Carpenties Offline resources as a backup
    * TODO: Andrew will reach out to folks in Mozambique to let them know about Carpenties Offline and see if there are things we can do to support their training efforts
* https://morenet.ac.mz/ This is the cyberinfrastructure organization for Mozambique - they will probably be a good entry-point.
* Everyone should review the website and provided feedback/changes
    * Should add a link to the image, but we don't have a current build
    * Once Colin rebuilds we will add it to the website
    * TODO: Jannetta - add link/content from offlinedatasci README to the website
* Workbench lessons
    * Do we need to adjust offlinedatasci in response to change to workbench
    * No - because we are scraping the rendered version so we don't have to respond to backend changes in lesson infrastructure
* TopicBox
    * Do we want to use TopicBox
    * No, just stick with calendar invites to dev team
* Flash Drives
    * Jannetta has been working on the flash drives
    * Has received flash drives with both USB-C & USB-A
    * Working on developing an .sb module that will allow building an image
    * Currently dealing with a old bootable memory stick that has suddently become unbootable
    * Memory stick is readable, but not bootable on at least one machine. That machine no longer gives the UEFI version at the boot menu and selecting the non-UEFI version doesn't work.
    * Will try on another computer
    * This highlights a challenge with using memory sticks:
        * Complexities of booting from memory sticks need to be documented
        * Need to send multiple memory sticks since their failure rate is high enough to require redundancy
    * TODO: Janetta - add a page to the website to provide feedback on use of memory sticks. Everyone else - provide feedback
    * Do we need to support 32-bit?
        * We decided to stick with 64-bit only unless we hear of need
* Mini HPC
    * Ran an N8 HPC workshop
    * Some participants didn't register for accounts on the N8 HPC in advance and so some accounts were never approved
    * Login node got jammed so even people with accounts often couldn't login
    * This is something we could help with
    * Pi availability is still a problem, but ROCK 5's are an option
    * Got a quote from Octo
    * Has permission to spend up to 1850 pounds on a mini HPC cluster
    * Has a PXE server up and running working with Colin
    * Will this setup be portable enough to transport?
        * Yes, should fit in a suitcase
        * DIN Rail system is small and portable
    * Value to grounding what an HPC is in having students be able to see hardware and plug in power, network, etc. 
    * Might want to reduce size of switch and number of nodes for portability
        * but the ability to do this depends on class size and software example
    * 