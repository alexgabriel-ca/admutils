#!/usr/bin/env bash
#Author: Alex Gabriel <alex.gabriel@microfocus.com>
#Created: 14-May-2020
#Modified: 17-May-2020
#Description: This file contains all functions by admstart.
#License: GPL 3.0

# All start functions check for the existence of the relevant container.
# If the container is not found, the nimbusapp up command is issued.
# If the container is found, the nimbusapp start command is issued.

function startALM() {
	if docker ps | grep -Eq '(^|\s)alm($|\s)'; then
		echo "	  ALM:${ALMVersion} already running"
		return
	elif ! docker container ls -a | grep -Eq '(^|\s)alm($|\s)'; then
		nimbusapp alm:"${ALMVersion}" up
		echo "	  ALM:${ALMVersion} started"
	else
		nimbusapp alm:"${ALMVersion}" start
		echo "	  ALM:${ALMVersion} started"
	fi
}

function startALMOctane() {
	if docker ps | grep -Eq '(^|\s)octane($|\s)'; then
		echo "	  ALM Octane:${ALMOctaneVersion} already running"
		return
	elif ! docker container ls -a | grep -Eq '(^|\s)octane($|\s)'; then
		nimbusapp octane:"${ALMOctaneVersion}" up
		echo "	  ALM Octane:${ALMOctaneVersion} started"
	else
		nimbusapp octane:"${ALMOctaneVersion}" start
		echo "	  ALM Octane:${ALMOctaneVersion} started"
	fi
}

function startAOS() {
	if docker ps | grep -Eq '(^|\s)aos-main($|\s)'; then
		echo "	  AOS:${AOSVersion} already running"
		return
	elif ! docker container ls -a | grep -Eq '(^|\s)aos-main($|\s)'; then
		nimbusapp aos:"${AOSVersion}" up
		echo "	  AOS:${AOSVersion} started"
	else
		nimbusapp aos:"${AOSVersion}" start
		echo "	  AOS:${AOSVersion} started"
	fi
}

function startAOSQA() {
	if docker ps | grep -Eq '(^|\s)aos-main-qa($|\s)'; then
		echo "	  AOS-QA already running"
		return
	elif ! docker container ls -a | grep -Eq '(^|\s)aos-main-qa($|\s)'; then
		nimbusapp aos-qa:"${AOSQAVersion}" up
		echo "	  AOS-QA:${AOSQAVersion} started"
	else
		nimbusapp aos-qa:"${AOSQAVersion}" start
		echo "	  AOS-QA:${AOSQAVersion} started"
	fi
}

function startAutopass() {
	if docker ps | grep -Eq '(^|\s)autopass($|\s)'; then
		echo "	  Autopass:${AutopassVersion} already running"
		return
	elif ! docker container ls -a | grep -Eq '(^|\s)autopass($|\s)'; then
		nimbusapp autopass:"${AutopassVersion}" up
		echo "	  Autopass:${AutopassVersion} started"
	else
		nimbusapp autopass:"${AutopassVersion}" start
		echo "	  Autopass:${AutopassVersion} started"
	fi
}

function startDA() {
	if docker ps | grep -Eq '(^|\s)da-server($|\s)'; then
		echo "	  Deployment Automation:${DAVersion} already running"
		return
	elif ! docker container ls -a | grep -Eq '(^|\s)da-server($|\s)'; then
		nimbusapp da:"${DAVersion}" up
		echo "	  Deployment Automation:${DAVersion} started"
	else
		nimbusapp da:"${DAVersion}" start
		echo "	  Deployment Automation:${DAVersion} started"
	fi
}

function startDevOps() {
	if docker ps | grep -Eq '(^|\s)devops($|\s)'; then
		echo "	  DevOps:${DevOpsVersion} already running"
		return
	elif ! docker container ls -a | grep -Eq '(^|\s)devops($|\s)'; then
		nimbusapp devops:"${DevOpsVersion}" up
		echo "	  DevOps:${DevOpsVersion} started"
	else
		nimbusapp devops:"${DevOpsVersion}" start
		echo "	  DevOps:${DevOpsVersion} started"
	fi
}

function startFortify() {
	if docker ps | grep -Eq '(^|\s)sca($|\s)' || docker ps | grep -Eq '(^|\s)ssc($|\s)'; then
		echo "	  Fortify:${SCAVersion} already running"
		return
	fi

	if ! docker container ls -a | grep -Eq '(^|\s)sca($|\s)'; then
		nimbusapp sca:"${SCAVersion}" up
		echo "	  SCA:${SCAVersion} started"
	else
		nimbusapp sca:"${SCAVersion}" start
		echo "	  SCA:${SCAVersion} started"
	fi

	if ! docker container ls -a | grep -Eq '(^|\s)ssc($|\s)'; then
		nimbusapp ssc:"${SSCVersion}" up
		echo "	  SSC:${SSCVersion} started"
	else
		nimbusapp ssc:"${SSCVersion}" start
		echo "	  SSC:${SSCVersion} started"
	fi
}

function startIntelliJ() {
	if docker ps | grep -Eq '(^|\s)intellij($|\s)'; then
		echo "	  IntelliJ:${IntelliJVersion} already running"
		return
	elif ! docker container ls -a | grep -Eq '(^|\s)intellij($|\s)'; then
		nimbusapp intellij:"${IntelliJVersion}" up
		echo "	  IntelliJ:${IntelliJVersion} started"
	else
		nimbusapp intellij:"${IntelliJVersion}" start
		echo "	  IntelliJ:${IntelliJVersion} started"
	fi
}

function startJIRA() {
	if docker ps | grep -Eq '(^|\s)jira($|\s)'; then
		echo "	  JIRA:${JIRAVersion} already running"
		return
	elif ! docker container ls -a | grep -Eq '(^|\s)jira($|\s)'; then
		nimbusapp jira:"${JIRAVersion}" up
		echo "	  JIRA:${JIRAVersion} started"
	else
		nimbusapp jira:"${JIRAVersion}" start
		echo "	  JIRA:${JIRAVersion} started"
	fi
}

function startLFTChrome() {
	if docker ps | grep -Eq '(^|\s)leanft-chrome($|\s)'; then
		echo "	  LeanFT-Chrome:${LFTChromeVersion} already running"
		return
	elif ! docker container ls -a | grep -Eq '(^|\s)leanft-chrome($|\s)'; then
		nimbusapp leanft-chrome:"${LFTChromeVersion}" up
		echo "	  LeanFT-Chrome:${LFTChromeVersion} started"
	else
		nimbusapp leanft-chrome:"${LFTChromeVersion}" start
		echo "	  LeanFT-Chrome:${LFTChromeVersion} started"
	fi
}

function startMFConnect() {
	if docker ps | grep -Eq '(^|\s)mfconnect($|\s)'; then
		echo "	  MF Connect:${MFConnectVersion} already running"
		return
	elif ! docker container ls -a | grep -Eq '(^|\s)mfconnect($|\s)'; then
		nimbusapp mfconnect:"${MFConnectVersion}" up
		echo "	  MF Connect:${MFConnectVersion} started"
	else
		nimbusapp mfconnect:"${MFConnectVersion}" start
		echo "	  MF Connect:${MFConnectVersion} started"
	fi
}

function startPPM() {
	if docker ps | grep -Eq '(^|\s)ppm($|\s)'; then
		echo "	  Project and Portfolio Management:${PPMVersion} already running"
		return
	elif ! docker container ls -a | grep -Eq '(^|\s)ppm($|\s)'; then
		nimbusapp ppm:"${PPMVersion}" up
		echo "	  Project and Portfolio Management:${PPMVersion} started"
	else
		nimbusapp ppm:"${PPMVersion}" start
		echo "	  Project and Portfolio Management:${PPMVersion} started"
	fi
}

function startRPA() {
	if docker ps | grep -Eq '(^|\s)rpa($|\s)'; then
		echo "	  Robotic Process Automation:${RPAVersion} already running"
		return
	elif ! docker container ls -a | grep -Eq '(^|\s)rpa($|\s)'; then
		nimbusapp rpa:"${RPAVersion}" up
		echo "	  Robotic Process Automation:${RPAVersion} started"
	else
		nimbusapp rpa:"${RPAVersion}" start
		echo "	  Robotic Process Automation:${RPAVersion} started"
	fi
}

function startSonarqube() {
	if docker ps | grep -Eq '(^|\s)sonarqube($|\s)'; then
		echo "	  Sonarqube:${SonarqubeVersion} already running"
		return
	elif ! docker container ls -a | grep -Eq '(^|\s)sonarqube($|\s)'; then
		nimbusapp sonarqube:"${SonarqubeVersion}" up
		echo "	  Sonarqube:${SonarqubeVersion} started"
	else
		nimbusapp sonarqube:"${SonarqubeVersion}" start
		echo "	  Sonarqube:${SonarqubeVersion} started"
	fi
}

function startSV() {
	if docker ps | grep -Eq '(^|\s)sv($|\s)'; then
		echo "	  SV:${SVVersion} already running"
		return
	elif ! docker container ls -a | grep -Eq '(^|\s)sv($|\s)'; then
		nimbusapp sv:"${SVVersion}" up
		echo "	  SV:${SVVersion} started"
	else
		nimbusapp sv:"${SVVersion}" start
		echo "	  SV:${SVVersion} started"
	fi
}

function startUFTM() {
	if docker ps | grep -Eq '(^|\s)uft-mobile($|\s)'; then
		echo "	  UFT Mobile:${UFTMVersion} already running"
		return
	elif ! docker container ls -a | grep -Eq '(^|\s)uft-mobile($|\s)'; then
		nimbusapp uft-mobile:"${UFTMVersion}" up
		echo "	  UFT Mobile:${UFTMVersion} started"
	else
		nimbusapp uft-mobile:"${UFTMVersion}" start
		echo "	  UFT Mobile:${UFTMVersion} started"
	fi
}
