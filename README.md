# ADM Utilities

ADM Utilities is a series of shell scripts intended to ensure the process of pulling, starting, stopping, and restarting ADM docker containers is as easy as possible.

Both a valid docker login as well as access to the appropriate repo within docker is required for these scripts to run.

Each script uses the same menu system to present numbered choices for users.

Development and testing of the ADM Utilities was done via the Nimbus Server VM.  As such, any other VM is not supported.

## Overview
### ADM Pull
This pulls the selected container from Docker, but does not start it.  This is useful when provisioning a new server, as the process can take quite some time, depending on the containers selected.  It is best, if downloading all containers, to run the script overnight.

### ADM Start
This starts the selected container.  In the event that the admpull command has not been issued used before admstart, the container will be pulled from Docker, and then started.

### ADM Stop
This stops the selected container.

### ADM Restart
This restarts the selected container.

## Installation
The utilities can be installed using the following commands on Linux.

`git clone https://github.com/alexgabriel-ca/admutils`  
`chmod a+x admpull admrestart admstart admstop functions`  
`sudo cp  admpull admrestart admstart admstop functions /usr/local/bin`  

## Usage
Since each script runs as an executable file, you can issue the desired command from any location after installation.  

`admpull`  
`admstart`  
`admstop`  
`admrestart`  

Each command displays a numbered menu of items to choose.  The following containers are currently supported:
* ALM
* ALM Octane
* Advantage Online Shopping
* Autopass
* Deployment Automation
* DevOps (Jenkins)
* Fortify
* IntelliJ
* JIRA
* Micro Focus Connect
* Service Virtualization
* UFT Mobile

More containers will be added to the list as time permits.

**Please contact me for any questions, comments, or concerns.**
