#!/bin/bash
#Author: Alex Gabriel <alex.gabriel@microfocus.com>
#Created: 04/02/2020
#Modified: 21/02/2020
#Description: Short shell script that allows users to pull the most common ADM solutions when preparing for a demo.
#License: GPL 3.0

echo ""
echo "This is a short shell script that lets you pull the most common ADM containers from the admpresales Docker repository. If you have suggestions for improvement, please contact me by emailing alex.gabriel@microfocus.com"
echo ""
echo "A valid Docker login is required for this script to run properly."
echo ""
include functions.sh
docker login
echo ""
PS3='Select the container(s) to pull, or 13 to quit. '
options=("Autopass" "ALM" "ALM Octane" "AOS" "DA" "DevOps" "Fortify" "IntelliJ" "MF Connect" "SV" "UFT Mobile" "All" "Quit")
select opt in "${options[@]}"; do
  case $opt in
  "Autopass")
    pullAutopass
    ;;
  "ALM")
    pullALM
    ;;
  "ALM Octane")
    pullALMOctane
    ;;
  "AOS")
    pullAOS
    ;;
  "DA")
    pullDA
    ;;
  "DevOps")
    pullDevOps
    ;;
  "Fortify")
    pullFortify
    continue
    ;;
  "IntelliJ")
    pullIntelliJ
    continue
    ;;
  "MF Connect")
    pullMFConnect
    continue
    ;;
  "SV")
    pullSV
    continue
    ;;
  "UFT Mobile")
    pullUFTM
    continue
    ;;
  "All")
    pullAutopass
    pullALM
    pullALMOctane
    pullAOS
    pullDA
    pullDevOps
    pullFortify
    pullIntelliJ
    pullMFConnect
    pullSV
    pullUFTM
    continue
    ;;
  "Quit")
    exit
    ;;
  *) echo "Invalid option $REPLY" ;;
  esac
done
