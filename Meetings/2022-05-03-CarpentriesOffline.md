# Carpentries Offline Community Meeting 14

[![hackmd-github-sync-badge](https://hackmd.io/lb-FGwI7R4ienOxhQSW3Yg/badge)](https://hackmd.io/lb-FGwI7R4ienOxhQSW3Yg)

## Date: 2022-05-03

## GitHub Repository
https://github.com/CarpenPi

## [Code of Conduct](https://docs.carpentries.org/topic_folders/policies/code-of-conduct.html)

* Use welcoming and inclusive language
* Be respectful of different viewpoints and experiences
* Gracefully accept constructive criticism
* Focus on what is best for the community
* Show courtesy and respect towards other community members

## Links

## Planning to attend
* Jannetta
* Ethan
* Virnaliz
* Abhishek
* Colin
*

## Participants
### Please sign in:
* Abhishek 
* Jannetta
* Ethan
* Colin
* Virnaliz

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
    - Jannetta: 
         - All is renamed to Carpentries Offline
         - Abstract for poster
         - Abstract for workshop
         - Made a start on a blog post
         - Bought memory cards and 6 Pi400 (to be delivered today)
         - Trial planned run with my RSE team during our team meeting on 06/06
         - Installation script breaks before `install.sh` because it `cd` to the wrong directory. If I `cd` manually and then run `install.sh` it finishes and reboots but there are no web pages and `gitea` doesn't run
4. Demonstration of offlinedatasci
5. AOB
    
## Notes

* Jannetta planning on using her local RSE group meeting for testing
    * Have people attempt to create a memory card and test the use on a Pi
    * Installer isn't currently working
    * Colin will look into this
    * Jannetta also had issues adding the ssh setup on a clean Pi
        * Spent some time discussing how to address this
        * Answer depends on the context of the network
    * Needs a working installer by end of May
    * Good to test both and image and a step by step installation
    * Also load test a single access point
    * These tests will happen the day before our next meeting and Jannetta will update us then on outcomes
* offlinedatasci now has all of the basics
    * R, Python, RStudio, CRAN, pypi, etc.
    * Mostly doesn't download already existing components unless there are updates
        * Still fixing this for CRAN
    * Need to finish name change from carpenpi
    * Once name change is in will PR updates into the installer
* May be issues to consider when running tests if large numbers of Pis are trying to be added to restricted university networks at once
* CarpentryCon
    * Has it opened for talks and if so should we submit one?
    * Doesn't appear to be open yet
    * Will wait until it opens to proceed so we know what the submission requirements look like
