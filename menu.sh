#!/usr/bin/env bash
#title:         menu.sh
#description:   Menu which allows multiple items to be selected
#author:        Nathan Davieau
#               Based on script from MestreLion
#created:       May 19 2016
#updated:       N/A
#version:       1.0
#usage:         ./menu.sh
#==============================================================================

#Menu options
options[0]="Autopass"
options[1]="ALM"
options[2]="ALM Octane"
options[3]="AOS"
options[4]="AOS-QA"
options[5]="DA"
options[6]="DevOps"
options[7]="Fortify"
options[8]="IntelliJ"
options[9]="JIRA"
options[10]="LeanFT Chrome"
options[11]="MF Connect"
options[12]="PPM"
options[13]="RPA"
options[14]="Sonarqube"
options[15]="SV"
options[16]="UFT Mobile"
options[17]="All"

#Actions to take based on selection
function ACTIONS {
    if [[ ${choices[0]} ]]; then
        #Option 1 selected
        startAutopass
    fi
    if [[ ${choices[1]} ]]; then
        #Option 2 selected
        startALM
    fi
    if [[ ${choices[2]} ]]; then
        #Option 3 selected
        startALMOctane
    fi
    if [[ ${choices[3]} ]]; then
        #Option 4 selected
        startAOS
    fi
    if [[ ${choices[4]} ]]; then
        #Option 5 selected
	   startAOSQA
    fi
    if [[ ${choices[5]} ]]; then
        #Option 5 selected
        startDA
    fi
    if [[ ${choices[6]} ]]; then
        #Option 5 selected
        startDevOps
    fi
    if [[ ${choices[7]} ]]; then
        #Option 5 selected
        startFortify
    fi
    if [[ ${choices[8]} ]]; then
        #Option 5 selected
        startIntelliJ
    fi
    if [[ ${choices[9]} ]]; then
        #Option 5 selected
       startJIRA
    fi
    if [[ ${choices[10]} ]]; then
        #Option 5 selected
        startLFTChrome
    fi
    if [[ ${choices[11]} ]]; then
        #Option 5 selected
        startMFConnect
    fi
    if [[ ${choices[12]} ]]; then
        #Option 5 selected
        startPPM
    fi
    if [[ ${choices[13]} ]]; then
        #Option 5 selected
        startRPA
    fi
    if [[ ${choices[14]} ]]; then
        #Option 5 selected
        startSonarqube
    fi
    if [[ ${choices[15]} ]]; then
        #Option 5 selected
        startSV
    fi
    if [[ ${choices[16]} ]]; then
        #Option 5 selected
        startUFTM
    fi
    if [[ ${choices[17]} ]]; then
        #Option 5 selected
        startAutopass
        startALM
        startALMOctane
        startAOS
        startAOSQA
        startDA
        startDevOps
        startFortify
        startIntelliJ
        startJIRA
        startLFTChrome
        startMFConnect
        startPPM
        startRPA
        startSonarqube
        startSV
        startUFTM
    fi
}

#Variables
ERROR=" "

#Clear screen for menu
#clear

#Menu function
function MENU {

    echo "Menu Options"
    for NUM in ${!options[@]}; do
        echo "[""${choices[NUM]:- }""]" $(( NUM+1 ))") ${options[NUM]}"
    done
    echo "$ERROR"
}

#Menu loop
while MENU && read -e -p "Select the desired options using their number (again to uncheck, ENTER when done): " -n2 SELECTION && [[ -n "$SELECTION" ]]; do
    #clear
    if [[ "$SELECTION" == *[[:digit:]]* && $SELECTION -ge 1 && $SELECTION -le ${#options[@]} ]]; then
        (( SELECTION-- ))
        if [[ "${choices[SELECTION]}" == "+" ]]; then
            choices[SELECTION]=""
        else
            choices[SELECTION]="+"
        fi
            ERROR=" "
    else
        ERROR="Invalid option: $SELECTION"
    fi
done

ACTIONS