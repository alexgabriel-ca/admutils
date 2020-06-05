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

### ADM Remove
This removes the selected container.

### ADM Restart
This restarts the selected container.

## Installation
1. Start Nimbus Server.
2. Open a terminal window.
3. Enter the command `wget -nv https://github.com/admpresales/nimbusapp/releases/latest/download/nimbusapp.tar.gz -O- | sudo tar -xz -C /usr/local/bin` to install the latest version of nimbusapp.
3. Enter the command `wget -nv https://github.com/alexgabriel-ca/admutils/releases/download/latest/admutils.tar.gz -O- | sudo tar -xz -C /usr/local/bin` to install the latest version of admutilities.

The latest version of [nimbusapp](https://github.com/admpresales/nimbusapp/) is recommended.  

## Usage
Since each script runs as an executable file, you can issue the desired command from any location after installation.  

`admpull`  
`admstart`  
`admstop`  
`admrestart`  
`admremove`

Each command displays a numbered menu of items to choose.  The following containers are currently supported:
* Advantage Online Shopping 2.3
* Advantage Online Shopping QA 2.3
* ALM 15.0.1
* ALM Octane 15.0.60.90
* Autopass 10.9.2
* Deployment Automation 6.3.1
* DevOps (Jenkins) 2.3.1
* IntelliJ 2.3.1
* JIRA 8.0.2
* LeanFT-Chrome 15.0
* Mail Server 1.5.10
* Micro Focus Connect 4.3.0
* Project and Portfolio Management 9.55
* Robotic Process Automation 2019.11
* Service Virtualization 5.3
* Software Security Centre 19.2.0
* Sonarqube 7.7
* Source Code Analysis 19.2.3
* UFT Mobile 3.4

More containers will be added to the list as time permits.

**Please contact me for any questions, comments, or concerns.**
