# ADM Utilities

ADM Utilities is a series of shell scripts intended to ensure the process of pulling, starting, stopping, and restarting ADM docker containers is as easy as possible.

Both a valid docker login as well as access to the appropriate repo within docker is required for these scripts to run.  If the docker login fails, the prompt to login will be displayed.  The menu itself will only display when a successful authentication has occurred.

Each script uses the same menu system to present numbered choices for users.

Development and testing of the ADM Utilities was done via the Nimbus Server VM.  As such, any other VM is not supported.

## Overview
### ADM Pull
This pulls the selected container from Docker, but does not start it.  This is useful when provisioning a new server, as the process can take quite some time, depending on the containers selected.  It is best, if downloading all containers, to run the script overnight.  A check has been added to validate whether the container exists, and if so, the user will be prompted whether to pull down the container again.  Docker login prompt now loops if the authentication attempt is rejected.

### ADM Start
This starts the selected container.  In the event that the admpull command has not been issued used before admstart, the container will be pulled from Docker, and then started.  Docker login prompt now loops if the authentication attempt is rejected.

### ADM Stop
This stops the selected container.

### ADM Restart
This restarts the selected container.

## Installation
These utilities can be installed by cloning this repo to your local hard drive.  The latest version of [nimbusapp](https://github.com/admpresales/nimbusapp/) is recommended.  

Install this using the following command inside your local Nimbus Server.

`wget -nv https://github.com/alexgabriel-ca/admutils/releases/download/latest/admutils.tar.gz -O- | sudo tar -xz -C /usr/local/bin`  

## Usage
Since each script runs as an executable file, you can issue the desired command from any location after installation.  

`admpull`  
`admstart`  
`admstop`  
`admrestart`  

Each command displays a numbered menu of items to choose.  The following containers are currently supported:
* Advantage Online Shopping
* Advantage Online Shopping QA
* ALM
* ALM Octane
* Autopass
* Deployment Automation
* DevOps (Jenkins)
* Fortify
* IntelliJ
* JIRA
* LeanFT-Chrome
* Micro Focus Connect
* Project and Portfolio Management
* Robotic Process Automation
* Service Virtualization
* Sonarqube
* UFT Mobile

More containers will be added to the list as time permits.

**Please contact me for any questions, comments, or concerns.**
