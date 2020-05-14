#!/usr/bin/env bash
#Author: Alex Gabriel <alex.gabriel@microfocus.com>
#Created: 14-May-2020
#Modified: 14-May-2020
#Description: This file contains all functions by admstop.
#License: GPL 3.0

# All stop functions check whether the container is running.
# If the container is not running, a message indicating this is shown.
# If the container is running, the nimbusapp stop command is issued.

function stopALM() {
	if ! docker ps | grep -Eq '(^|\s)alm($|\s)'; then
		echo "     ALM:${ALMVersion} already stopped"
		return
	else
		nimbusapp alm:${ALMVersion} stop
		echo "     ALM:${ALMVersion} stopped"
	fi
}

function stopALMOctane() {
	if ! docker ps | grep -Eq '(^|\s)octane($|\s)'; then
		echo "     ALM Octane:${ALMOctaneVersion} already stopped"
		return
	else
		nimbusapp octane:${ALMOctaneVersion} stop
		echo "     ALM Octane:${ALMOctaneVersion} stopped"
	fi
}

function stopAOS() {
	if ! docker ps | grep -Eq '(^|\s)aos-main($|\s)'; then
		echo "     AOS:${AOSVersion} already stopped"
		return
	else
		nimbusapp aos:${AOSVersion} stop
		echo "     AOS:${AOSVersion} stopped"
	fi
}

function stopAOSQA() {
	if ! docker ps | grep -Eq '(^|\s)aos-main-qa($|\s)'; then
		echo "     AOS-QA:${AOSQAVersion} already stopped"
		return
	else
		nimbusapp aos-qa:${AOSQAVersion} stop
		echo "     AOS-QA:${AOSQAVersion} stopped"
	fi
}

function stopAutopass() {
	if ! docker ps | grep -Eq '(^|\s)autopass($|\s)'; then
		echo "     Autopass:${AutopassVersion} already stopped"
		return
	else
		nimbusapp autopass:${AutopassVersion} stop
		echo "     Autopass:${AutopassVersion} stopped"
	fi
}
function stopDA() {
	if ! docker ps | grep -Eq da; then
		echo "     Deployment Automation:${DAVersion} already stopped"
		return
	else
		nimbusapp da:${DAVersion} stop
		echo "     Deployment Automation:${DAVersion} stopped"
	fi
}

function stopDevOps() {
	if ! docker ps | grep -Eq '(^|\s)devops($|\s)'; then
		echo "     DevOps:${DevOpsVersion} already stopped"
		return
	else
		nimbusapp devops:${DevOpsVersion} stop
		echo "     DevOps:${DevOpsVersion} stopped"
	fi
}

function stopFortify() {
	if ! docker ps | grep -Eq '(^|\s)sca($|\s)' && ! docker ps | grep -Eq '(^|\s)ssc($|\s)'; then
		echo "     Fortify:${SSCVersion} already stopped"
		return
	fi

	if docker ps | grep -Eq '(^|\s)sca($|\s)'; then
		nimbusapp sca:${SCAVersion} stop
	fi
	if docker ps | grep -Eq '(^|\s)ssc($|\s)'; then
		nimbusapp ssc:${SSCVersion} stop
		echo "     Fortify:${SSCVersion} stopped"
	fi
}

function stopIntelliJ() {
	if ! docker ps | grep -Eq '(^|\s)intellij($|\s)'; then
		echo "     IntelliJ:${IntelliJVersion} already stopped"
		return
	else
		nimbusapp intellij:${IntelliJVersion} stop
		echo "     IntelliJ:${IntelliJVersion} stopped"
	fi
}

function stopJIRA() {
	if ! docker ps | grep -Eq '(^|\s)jira($|\s)'; then
		echo "     JIRA:${JIRAVersion} already stopped"
		return
	else
		nimbusapp jira:${JIRAVersion} stop
		echo "     JIRA:${JIRAVersion} stopped"
	fi
}

function stopLFTChrome() {
	if ! docker ps | grep -Eq '(^|\s)leanft-chrome($|\s)'; then
		echo "     LeanFT-Chrome:${LFTChromeVersion} already stopped"
		return
	else
		nimbusapp leanft-chrome:${LFTChromeVersion} stop
		echo "     LeanFT-Chrome:${LFTChromeVersion} stopped"
	fi
}

function stopMFConnect() {
	if ! docker ps | grep -Eq '(^|\s)mfconnect($|\s)'; then
		echo "     MF Connect:${MFConnectVersion} already stopped"
		return
	else
		nimbusapp mfconnect:${MFConnectVersion} stop
		echo "     MF Connect:${MFConnectVersion} stopped"
	fi
}

function stopPPM() {
	if ! docker ps | grep -Eq '(^|\s)ppm($|\s)'; then
		echo "     Project and Portfolio Management:${PPMVersion} already stopped"
		return
	else
		nimbusapp ppm:${PPMVersion} stop
		echo "     Project and Portfolio Management:${PPMVersion} stopped"
	fi
}

function stopRPA() {
	if ! docker ps | grep -Eq '(^|\s)rpa($|\s)'; then
		echo "     Robotic Process Automation:${RPAVersion} already stopped"
		return
	else
		nimbusapp rpa:${RPAVersion} stop
		echo "     Robotic Process Automation:${RPAVersion} stopped"
	fi
}

function stopSonarqube() {
	if ! docker ps | grep -Eq '(^|\s)sonarqube($|\s)'; then
		echo "     Sonarqube:${SonarqubeVersion} already stopped"
		return
	else
		nimbusapp sonarqube:${SonarqubeVersion} stop
		echo "     sonarqube:${SonarqubeVersion} stopped"
	fi
}

function stopSV() {
	if ! docker ps | grep -Eq '(^|\s)sv($|\s)'; then
		echo "     SV:${SVVersion} already stopped"
		return
	else
		nimbusapp sv:${SVVersion} stop
		echo "     SV:${SVVersion} stopped"
	fi
}

function stopUFTM() {
	if ! docker ps | grep -Eq '(^|\s)uft-mobile($|\s)'; then
		echo "     UFT Mobile:${UFTMVersion} already stopped"
		return
	else
		nimbusapp uft-mobile:${UFTMVersion} stop
		echo "     UFT Mobile:${UFTMVersion} stopped"
	fi
}
