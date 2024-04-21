
# Carpentries Offline Community Meeting 23

## Date: 2023-07-05

## GitHub Repository
https://github.com/CarpenPi

## [Code of Conduct](https://docs.carpentries.org/topic_folders/policies/code-of-conduct.html)

* Use welcoming and inclusive language
* Be respectful of different viewpoints and experiences
* Gracefully accept constructive criticism
* Focus on what is best for the community
* Show courtesy and respect towards other community members

## Links

## Participants
### Please sign in:
* Jannetta Steyn
* Ethan White
* Frances
* Colin Sauze
* Toby Hodges
* Samantha Finnigan

### Apologies
* Virnaliz Cruz
* 
* 
* 
* 

## Agenda
1. Welcome and Code of Conduct
2. HouseKeeping
3. Feedback for previous meeting's TO DOs:
4.  
5. AOB
    
## Notes

* Last month update
    * Poster & hackathon accepted at RSE Con
        * Jannetta has a conflict between the hackathon and the worldwide session at RSE Con
        * Trying to get organizers to shift schedule
        * Jannetta has shared a first draft of the poster
        * Please provide feedback on draft
    * Jannetta ran a library carpentry workshop
        * Used parts of scripts to create SD card
        * Took access point, but while some people could connect others couldn't
        * Jannetta got everything for teaching from the Pi
* This month
    * Mini HPC
        * Get modules working across the nodes (Colin & Jannetta)
        * New system is ROCK PI not RaspberryPI so need to regenerate SD cards
        * Can the main node detect how many nodes there are automatically?
            * Yes, if they make DHCP connections
    * SD Card
        * Colin working on getting build up and running
        * Would be useful to have this working and downloadable for Jannetta's fellowship review
    * Pi Connection limits
        * In Jannetta's workshop the folks not being able to connect may be the same issue that was experiences in South Africa with a maximum number of connections
    * RSE Con hackathon
        * Should start planning
        * Can send a survey in advance, which should happen soon
            * Request info on technical background
            * Are they Carpentries instructors
            * Are you interested in developing lesson material
        * Hopefully find out about numbers soon
        * Test how many people can connect to an access point
        * If there are a lot of people for the hackathon plan to split folks into groups by presenting options and allowing self-selection of projects. One organizer leading/guiding each group. (organizers: Jannetta, Colin, Sam (probably), Frances (probably))
        * The more effort put into primer information and planning in advance the more effective the event will be in terms of both outputs and participant experience (and therefore more long-term engagement)
        * Aim to have topics and lists soon
            * Add markdown doc for each topic to the repo: https://github.com/carpentriesoffline/RSECon2023-Hackerthon
        * Start adding GitHub issues with tags for hackathon in repos
            * Fixes via PR's
            * May want to include a short GitHub primer on PR's, probably print/web not presentation, Jannetta & Colin have amended versions of Carpentries git lesson that includes PRs
        * Jannetta will start a mini HPC lesson and get it added to the incubator
    * Lesson for how to use Carpentries Offline in workshop
        * Jannetta started this but has gotten back to it
            * https://github.com/carpentries-incubator/CarpentriesOffline_Instructor_Onboarding (instructor onboarding)
        * Good lessons
            * How to assemble Mini HPC
            * How to run a workshop using Carpentries Offline
                * Toby: I think this is the Instructor Onboarding repo linked above
    * Fix CRAN issues in offlinedatasci
        * CRAN made breaking changes not currently supported by miniCRAN pacakge
        * Ethan is working on this
        * Have `install all` continue when pieces of `all` fail and just inform the issue
        * Setup cron-based testing to avoid surprises