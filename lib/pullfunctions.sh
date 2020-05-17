#!/usr/bin/env bash
#Author: Alex Gabriel <alex.gabriel@microfocus.com>
#Created: 14-May-2020
#Modified: 17-May-2020
#Description: This file contains all functions by admpull.
#License: GPL 3.0

# All pull functions check for the existence of the relevant image.
# If the container is not found, the nimbusapp pull command is issued.
# If the container is found, a message indicating this is shown.

function pullALM() {
	if docker image ls -a | grep -Eq alm; then
		echo "	  ALM:${ALMVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullALM
		if [ "$repullALM" == y ]; then
			nimbusapp alm:"${ALMVersion}" pull
		fi
	else
		nimbusapp alm:"${ALMVersion}" pull
		echo "	  ALM:${ALMVersion} pulled"
	fi
}

function pullALMOctane() {
	if docker image ls -a | grep -Eq octane; then
		echo "	  ALM Octane:${ALMVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullOctane
		if [ "$repullOctane" == y ]; then
			nimbusapp alm:"${ALMVersion}" pull
		fi
	else
		nimbusapp octane:"${ALMVersion}" pull
		echo "	  ALM Octane:${ALMOctaneVersion} pulled"
	fi
}

function pullAOS() {
	if docker image ls -a | grep -Eq aos-main-app; then
		echo "	  AOS:${AOSVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullAOS
		if [ "$repullAOS" == y ]; then
			nimbusapp aos:"${AOSVersion}" pull
		fi
	else
		nimbusapp aos:"${AOSVersion}" pull
		echo "	  AOS:${AOSVersion} pulled"
	fi
}

function pullAOSQA() {
	if docker image ls -a | grep -Eq aos-main-qa; then
		echo "	  AOS-QA:${AOSQAVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullAOSQA
		if [ "$repullAOSQA" == y ]; then
			nimbusapp aos-qa:"${AOSQAVersion}" pull
		fi
	else
		nimbusapp aos-qa:"${AOSQAVersion}" pull
		echo "	  AOS-QA:${AOSQAVersion} pulled"
	fi
}

function pullAutopass() {
	if docker image ls -a | grep -Eq autopass; then
		echo "	  Autopass:${AutopassVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullAutopass
		if [ "$repullAutopass" == y ]; then
			nimbusapp autopass:"${AutopassVersion}" pull
		fi
	else
		nimbusapp autopass:"${AutopassVersion}" pull
		echo "	  Autopass:${AutopassVersion} pulled"
	fi
}

function pullDA() {
	if docker image ls -a | grep -Eq da-server; then
		echo "	  Deployment Automation:${DAVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullDA
		if [ "$repullDA" == y ]; then
			nimbusapp da:"${DAVersion}" pull
		fi
	else
		nimbusapp da:"${DAVersion}" pull
		echo "	  Deployment Automation:${DAVersion} pulled"
	fi
}

function pullDevOps() {
	if docker image ls -a | grep -Eq devops; then
		echo "	  DevOps:${DevOpsVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullDevOps
		if [ "$repullDevOps" == y ]; then
			nimbusapp devops:"${DevOpsVersion}" pull
		fi
	else
		nimbusapp devops:"${DevOpsVersion}" pull
		echo "	  DevOps:${DevOpsVersion} pulled"
	fi
}

function pullFortify() {
	if docker image ls -a | grep -Eq sca && docker image ls -a | grep -Eq ssc; then
		echo "	  Fortify:${SSCVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullFortify
		if [ "$repullFortify" == y ]; then
			nimbusapp sca:"${SCAVersion}" pull
			nimbusapp ssc:"${SSCVersion}" pull
		fi
	fi

	if ! docker image ls -a | grep -Eq sca; then
		nimbusapp sca:"${SCAVersion}" pull
		echo "	  SCA:${SCAVersion} pulled"
	fi
	if ! docker image ls -a | grep -Eq ssc; then
		nimbusapp ssc:"${SSCVersion}" pull
		echo "	  SSC:${SSCVersion} pulled"
	fi
}

function pullIntelliJ() {
	if docker image ls -a | grep -Eq intellij; then
		echo "	  IntelliJ:${IntelliJVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullIntelliJ
		if [ "$repullIntelliJ" == y ]; then
			nimbusapp intellij:"${IntelliJVersion}" pull
		fi
	else
		nimbusapp intellij:"${IntelliJVersion}" pull
		echo "	  IntelliJ:${IntelliJVersion} pulled"
	fi
}

function pullJIRA() {
	if docker image ls -a | grep -Eq jira; then
		echo "	  JIRA:${JIRAVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullJIRA
		if [ "$repullJIRA" == y ]; then
			nimbusapp jira:"${JIRAVersion}" pull
		fi
	else
		nimbusapp jira:"${JIRAVersion}" pull
		echo "	  JIRA:${JIRAVersion} pulled"
	fi
}

function pullLFTChrome() {
	if docker image ls -a | grep -Eq leanft-chrome; then
		echo "	  LeanFT-Chrome:${LFTChromeVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullLFT
		if [ "$repullLFT" == y ]; then
			nimbusapp leanft-chrome:"${LFTChromeVersion}" pull
		fi
	else
		nimbusapp leanft-chrome:"${LFTChromeVersion}" pull
		echo "	  LeanFT-Chrome:${LFTChromeVersion} pulled"
	fi
}

function pullMFConnect() {
	if docker image ls -a | grep -Eq mfconnect; then
		echo "	  MF Connect:${MFConnectVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullMFConnect
		if [ "$repullMFConnect" == y ]; then
			nimbusapp mfconnect:"${MFConnectVersion}" pull
		fi
	else
		nimbusapp mfconnect:"${MFConnectVersion}" pull
		echo "	  MF Connect:${MFConnectVersion} pulled"
	fi
}

function pullPPM() {
	if docker image ls -a | grep -Eq ppm; then
		echo "	  PPM:${PPMVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullPPM
		if [ "$repullPPM" == y ]; then
			nimbusapp ppm:"${PPMVersion}" pull
		fi
	else
		nimbusapp ppm:"${PPMVersion}" pull
		echo "	  PPM:${PPMVersion} pulled"
	fi
}

function pullRPA() {
	if docker image ls -a | grep -Eq rpa; then
		echo "	  RPA:${RPAVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullRPA
		if [ "$repullRPA" == y ]; then
			nimbusapp rpa:"${RPAVersion}" pull
		fi
	else
		nimbusapp rpa:"${RPAVersion}" pull
		echo "	  RPA:${RPAVersion} pulled"
	fi
}

function pullSonarqube() {
	if docker image ls -a | grep -Eq sonarqube; then
		echo "	  Sonarqube:${SonarqubeVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullSonar
		if [ "$repullSonar" == y ]; then
			nimbusapp sonarqube:"${SonarqubeVersion}" pull
		fi
	else
		nimbusapp sonarqube:"${SonarqubeVersion}" pull
		echo "	  Sonarqube:${SonarqubeVersion} pulled"
	fi
}

function pullSV() {
	if docker image ls -a | grep -Eq sv; then
		echo "	  SV:${SVVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullSV
		if [ "$repullSV" == y ]; then
			nimbusapp sv:"${SVVersion}" pull
		fi
	else
		nimbusapp sv:"${SVVersion}" pull
		echo "	  SV:${SVVersion} pulled"
	fi
}

function pullUFTM() {
	if docker image ls -a | grep -Eq uft-mobile; then
		echo "	  UFT Mobile:${UFTMVersion} already exists"
		read -rp "	  Would you like to pull it again? [yn] " repullUFTM
		if [ "$repullUFTM" == y ]; then
			nimbusapp uft-mobile:"${UFTMVersion}" pull
		fi
	else
		nimbusapp uft-mobile:"${UFTMVersion}" pull
		echo "	  UFT Mobile:${UFTMVersion} pulled"
	fi
}
