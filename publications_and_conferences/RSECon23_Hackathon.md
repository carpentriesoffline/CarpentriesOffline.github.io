## Ideas for a hackathon

* Mass testing, how many people can we get connected at once? Does a USB wifi dongle work better than a Pi's built in wifi? How well do laptops and other devices work for testing? Do our webpages work correctly on a range of operating systems and browsers?
* Practice lesson: run through a lesson (or at least some relevant parts of it) to test the web pages, gitea, etherpad, jupyter etc. 
* Bug fixing session: try to fix any outstanding bugs we have. 
* New feature implementation/exploration: What haven't we written yet that would be helpful? Screen sharing so we don't need a projector? Using laptops to host? Running surveys and forwarding the results to the Carpentries? 

## Draft of submission form

### Event type 
***Please choose your planned means of presentation.
If your submission is accepted, we may suggest an alternative event format if reviewers recommend it.
Choose from: Talks, Audience-led panels, Presenter-led panels, Walkthroughs, Workshops, Hackathons or Posters***

Hackathon

### Title
***Enter the FULL TITLE of your submission. This will be used for printing in the final program.***

Carpentries Offline Development Hackathon

### Abstract
***Please enter an abstract of your talk, panel, workshop, walkthrough or poster (max 250 words)***

CarpentriesOffline is an out of the box solution for running a Carpentries workshop from a single device such as a Raspberry Pi, old laptop or even a dedicated server. It is intended for use in environments where there is limited or no internet accesss. Everything needed to run the workshop including course notes, data files, software downloads, a Git server, etherpad and a Jupyter Hub server are provided by the CarpentriesOffline system. It can also provide a backup environment for those with better connectivity in the event of the Carpentries website, etherpad, github etc suffering an outage. The software stack is currently in an alpha state and requires extensive testing. 

This hackathon aims to:

1. Run mass testing of the CarpentriesOffline software and hardware stack. Tests will include:
* How scalable the systems are with large numbers of users
* Testing different server hardware (different models of Raspberry Pi, Rock64 devices, old laptops, various WiFi adaptors etc).
* Testing the learner experience on different devices, operating systems and web browsers

2. Explore possible solutions for new functionality, including:
* Sharing the instructor's screen to learner's devices for envrionments without a projector
* Capturing pre and post workshop surveys and reporting these back to the Carpentries

3. Get the CarpentriesOffline software stack into a beta state where it is ready for instructors around the world to use it with little or no prior contact with the developers.

4. To recruit new developers to the project. 

### Themes
***If your submission fits into one or more of the conference themes, please select them here. Choose from: Working with and as researchers, Open Science and Open Source, Working with Industry/Commercialisation, Tooling for Research Software Engineering***

Working with and as researchers, Open Science and Open Source, Tooling for Research Software Engineering

### Expertise level
***Please let us know what level(s) of expertise you are aiming at, following the definitions used by The Carpentries. Choose from: novice, practioner, expert***

novice, practioner, expert

### Audience
***Please describe how your submission is of interest to the Research Software Engineering community and your specific target audience within this.***

Many RSEs are also Carpentries Instructors and could benefit from being able to use the CarpentriesOffline to act as a backup for the many 3rd party online services used to run a Carpentries workshop. For those from (or working with) parts of the world with less reliable internet or electricity supplies the CarpentriesOffline could help them to run workshops. We also hope that many RSEs will find contributing to this project interesting and that they would be willing to dedicate a few hours of their time at the conferene to furthering its development.

### Technical Plan
***If you are applying to lead a hackathon, workshop, or walkthrough, what technical requirements will you have? For example, will you be using Jupyter Notebooks, docker containers, virtual machines, etc? How will you specify your requirements for these (e.g. uploaded to dockerhub, scripts on GitHub, a list of packages to install etc.). You can put your initial plan here and refine it if you are accepted.***

Hardware/room requirements:
* Several (at least 4) power sockets or suitable extension cable
* A screen or projector with HDMI or micro HDMI connectors. A screen (just standard size is ok) for the Raspberry Pi and a projector or second screen to show code, notes etc would be helpful but isn't essential.
* A standard USB mouse and keyboard that we can plug into a Raspberry Pi

We will be running a CarpentriesOffline system from a Raspberry Pi and/or laptop that we will bring. Attendees will need to bring a laptop, the only software required will be a web browser and git client. 

### Attendees and helpers
***If you are applying for a hackathon or workshop, what is the maximum number of attendees you could deliver it to? How many helpers would you require and how would you recruit them? We suggest a minimum of 1 helper per 10 attendees.***

Maximum number of attendees: 20

We have at least three people from the CarpentriesOffline team who will be present to help run this event.

### Panel diversity
***If you are proposing an audience-led or presenter-led panel, then please outline how you will ensure that the panel's composition reflects the diversity of the RSE community and wider world***

### Accessibility accommodations
***Would any adjustments or accommodations help you deliver your submission? Or would you need adjustments to the reviewing process to account for any specific challenges you might have in preparing a written abstract? For example, if you would need to deliver a talk remotely rather than in person, please mention that here.***

N/A
