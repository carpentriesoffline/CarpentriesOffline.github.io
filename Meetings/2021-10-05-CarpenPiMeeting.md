[![hackmd-github-sync-badge](https://hackmd.io/QRvwPg6gQTSkMeBt1FYqIg/badge)](https://hackmd.io/QRvwPg6gQTSkMeBt1FYqIg)

# CarpenPi Community Meeting 7
## Date: 2021-10-07

## [Code of Conduct](https://docs.carpentries.org/topic_folders/policies/code-of-conduct.html)

* Use welcoming and inclusive language
* Be respectful of different viewpoints and experiences
* Gracefully accept constructive criticism
* Focus on what is best for the community
* Show courtesy and respect towards other community members

## Links

## Participants
Please sign in:
* Ethan White
* Jannetta Steyn
* Virnaliz Cruz
* Colin Sauze
* Heather Turner

## Apologies
* 
* 
* 
* 
* 

## Agenda
1. Welcome and Code of Conduct
2. HouseKeeping
3. Feedback for previous meeting's TO DOs:
    * The Port
6. Demo of script configured Pi
    * How can we host an image?
5. Content vs. Server scope
6. Choose a hostname
7. Anything else?

## Notes

* Last meeting had a discussion of becoming a Carpentries incubator
    * Alycia Crall suggest this as a possibility
        * Slack message from Alycia: "Hi all! This was brought up at our meeting last week, but members of The Carpentries core team had a meeting today where I brought up questions re: the logo, etc. Everyone likes the idea of moving the CarpenPi project to the Incubator for development. Michael Culshaw-Maurer will be the point of contact for doing that so let me know if you would like him to join the next meeting to answer any questions. Currently, no other projects in the Incubator have their own logo and/or Slack workspace so we were wondering why it was decided to do that here. Could someone provide a bit more context? This will help us determine how to support these types of initiatives moving forward as the community continues to grow. Thanks all!"
    * Alycia is interested in a meeting with Jannetta and potentially others to discuss Carpentries community management efforts
        * Email from Alycia: "I am writing to see if you, and perhaps some of your colleagues, would be interested in chatting with me about your CarpenPi community. You will be reading more about this in an upcoming blog post, but the Community Development Team is currently working to develop a new program to build capacity in community management within the broader Carpentries community. We hope to gain insights to support the development of thisprogram through conversations with all of you who are currently serving in community leadership roles. If you are able to meet with me to discuss your role, please schedule a time that works best for you here."
    * There is a meeting scheduled with Alycia and others will be invited via Slack
* The Port Hackathon
    * Humanitarian cause
    * There is a Port team for this and Janetta was participated in a couple of mettings
    * The team seems to be struggling to come up with ideas
    * Hackathon starts on Friday
    * Some additional meetings before Friday that folks are welcome to join
    * Team has a number of not very computational members and not much Carpentries experience
    * Colin plans to create a bunch of GitHub issues that they can work on
        * possibly mark some as Hacktoberfest issues (https://hacktoberfest.digitalocean.com/)
    * Several of them have Pi's so they can do some stress testing
* Demo of script configured Pi
    * Script deploys apache webserver
    * Deploys Software Carpentry notes rendered locally
        * Doesn't work for Data Carpentry because it won't build on Pi
        * Some lessons (git) will need to be modified
    * Gitea served
    * miniCRAN mirror
    * No pypi
    * What should be use for a hostname?
        * If we become a Carpentries incubator we could use a Carpentries domain
        * Jannetta will talk to Alycia
        * Could be useful to mirror an actual online resources when served over the carpenpi address
        * Need to explore whether there are any cert issues related to this
* Content vs. Server scope
    * Desire to clarify content vs. server approaches to make sure we aren't working on top of each other
    * Initial decision from April was "Server - focused on web server, access point, git server, etc Content - focused on tooling for downloading/updating R, CRAN, lesson websites, etc" with content providing a package that delivered all of the necessary pieces to a chosen directory
    * Reaffirmed this agreement
    * As soon as the content group has a functioning script that can be used for this Colin will swap it in to his work in the WebServer repo to replace the existing download code
* Other discussion
    * Port ideas
        * Approach/code for generating partial mirror of PyPI
        * Nice looking landing page for Pi
