# CarpenPi - Third Community Meeting

[![hackmd-github-sync-badge](https://hackmd.io/jyPUz4kzR3KaXue_gwbn1g/badge)](https://hackmd.io/jyPUz4kzR3KaXue_gwbn1g)


## [Code of Conduct](https://docs.carpentries.org/topic_folders/policies/code-of-conduct.html)

* Use welcoming and inclusive language
* Be respectful of different viewpoints and experiences
* Gracefully accept constructive criticism
* Focus on what is best for the community
* Show courtesy and respect towards other community members



## Links

## Participants
Please sign in:
- Ethan White
- Colin Sauze
- Anelda van der Walt
- Angelique Trusler
- Jannetta Steyn

## Apologies
-  Heather Turner
-  Alison Clarke
-  Ziv Shkedy
- 

## Agenda
1. Welcome and Code of Conduct
    - Any new people?
2. HouseKeeping
    - Notekeeper?
    - Did this link help with getting the time right for this meeting: https://www.timeanddate.com/worldclock/fixedform.html
    - Unless anyone objects we won't bother with recording anymore. We have these meeting notes if anyone needs to refer back or catch up
    - It would be good to back these meeting notes up to our GitHub organisation. Should we anonymise them? How?
3. Feedback for previous meeting's TO DOs:
    - Ethan
        - Content working group met on Zoom
        - Defined our scope:
            - Deliver the content needed for workshops to a user specificied location on disk allowing updating
            - Servers group then responsible for delivering that content via urls over the wireless network
            - Python package with CLI for doing this
            - Moved Virnaliz & my's work on this into the carpenpi org
            - R installers, R packages as local CRAN mirror, RStudio installers
            - Python installers, Python packaging as a local pypi or conda mirror, installers for IDE
            - Course materials
            - Help websites
            - Version control lesson adapted for Gitea
    - Colin
        - Looked into GCRF (Global Challenges Research Fund) funding from UKRI, but this fund has completely stopped taking new applications. 
        - Costed my time to see if we could use funding from RSE Association. £1000 would buy about 5 days at Full Economic Cost.
        - Wanted to try and test installing CarpenPi image but i've not had the time.
    - Jannetta 
    - Heather (pre-meeting)
        - Invited Carpentries instructors Annajiat Alim Rasel (Bangladesh) and Mesfin Diro (Ethiopia) and they have joined the slack.
        - Asked Carpentries for data to determine which workshops are most popular; expecting them to report back this week or so. Meanwhile, asked about preferred Carpentries lessons on our Slack, responses:
            - Software carpentries 
                - Janetta (UK). [Question to answer in meeting: Any particular ones or all core lessons?]
                - Anicet (Ivory Coast): Programming with R, R for Reproducible Scientific Analysis
            - Data carpentry 
                - Angelique (South Africa): all R
                - Anelda (South Africa): ecology or social sciences
                - Anicet (Ivory Coast):  Data Analysis and Visualization in R for Ecologists
        - Have not looked more into grants yet, but Saranjeet applied to http://datasciencebydesign.org/grants for a small grant to write a CarpenPi zine, see proposal shared on Slack: https://carpenpi.slack.com/archives/C01TJV1CZ5G/p1623864408030000

     
5. AOB

## Notes (Ethan primary notetaker)

* Introductions
    * Angelique - regional consultant for Southern Africa for the Carpentries
    * Colin - RSE w/background in robotics & Raspberry Pi, HPC carpentry of Raspberry Pi cluster
    * Ethan - Faculty at University of Florida
    * Anelda - Anelda, consultancy in South Africa working with academic institutions & researchers to adopt technology in research, open everything, lot of excitement about project in South Africa once in-person is possible again
    * Janetta - RSE at Newcastle University. SSI had a hackday where the idea for this project started

* Housekeeping
    * No recording from now on
    * Should we backup meeting notes onto GitHub and if so do we anonymize

* Content working group update
    * Content working group met on Zoom
    * Deliver the content needed for workshops to a user specificied location on disk allowing updating
    * Servers group then responsible for delivering that content via urls over the wireless network
    * Python package with CLI for doing this
    * Moved Virnaliz & my's work on this into the carpenpi org
    * R installers, R packages as local CRAN mirror, RStudio installers
    * Python installers, Python packaging as a local pypi or conda mirror, installers for IDE
    * Course materials
    * Help websites
    * Version control lesson adapted for Gitea

*  Funding
    * GCRF no longer exist
    * RSE funding up to $1000, which would cover 1 week of Collin's time
    * Look at https://www.spencer.org/grant_types/small-research-grant 
    * Janetta looking for funding for to purchase a case of Pi's for testing
    * RSE money could be good for purchasing this initial test case of Pi's
    * Janetta applied to RSE to develop Carpentry workshop admin system
        * Told there are other similar projects and want clarification about what is different
        * Wanted to apply for this before applying for CarpenPi funding
        * Will now apply for the kit
    * Possible sources
        * Human frontiers science project
        * Welcome Trust (but might be just research)
        * Newton Fund
    * Local communities would need to apply for funding to take ownership of a kit of Pis and their maintenance
    * We can get funding for teaching use fo the kit
    * Lot of government investment in technology in Africa, so providing pre-developed language for applying for small local grants can help local communities get funding for equipment

* Hackathon
    * The Port contacted Janetta
    * Provide a challenge to serve as the basis for a possible hackathon
    * Submitted Carpenpi to possible be this

* Servers
    * Updated instructions for setting up Apache 2 server on the Pi
    * Currently serving example lessons, minicran, and gitea
    * But goal is to have content group do this automatically not manually
    * Plan to develop CI scripts for creating SD card images
    * Printed a 3D case
    * Should we mimic the real internet addresses when serving off the Pi or use something differnt
        * Mimicing real addresses would allow simultaneously use of intermitent internet
    * Should we have an encrypted connection given creation of user names & passwords for gitea?
        * Might be GDPR/POPI issues related to this
        * This could make mimicing the web addresses more complicated
        * Need a certificate (which would require updating annually)
        * But will need to update regularly
    * Do we need server Pis or box of Pis that include learner machine?
        * Downloading R packages is a big issue
        * Most students have access to laptops or computer lab
        * A bit of both
        * LAN for downloading is the number one need
        * Server Pi would immediately be used
        * Box of Pi's
            * Requires screens, keyboards, etc., which they won't have, more likely to have laptop
            * Limited power so requires lots of extensions cords, etc.
            * For rural trainings created full kits - put even after providing them they can be difficult to find or missing pieces.
            * Administration of kits is really challenging - would need to grow a community around managing a kit
            * Managing a server much easier
            * Emphasis on users with laptops - focuses on training people who were ready to use the tools, which required having a computer
            * Whoever you target it will leave folks out, just explicitly acknowledge this and the target audience
    * Updating - can we count on internet 
        * Internet can be counted on for updating
        * Define the period of time/volume needed for updating
        * Have a way for the end users to update themselves
        * 50% will be able to update themselves
        * Can also have ability to regularly send updated images for areas where internet is really limited
    * Could Pi Zero be a really cheap approach to a server
        * Might not have the bandwidth to support a class
    
    * Our CarpenPi WiFi Network should not allow peer to peer communication to prevent viruses spreading
    * 32 bit computers might be present, we should distribute 32 bit versions of software packages
    * 