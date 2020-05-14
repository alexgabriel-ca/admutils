#!/usr/bin/env bash
#Author: Alex Gabriel <alex.gabriel@microfocus.com>
#Created: 14-May-2020
#Modified: 14-May-2020
#Description: This file contains all functions by admrestart.
#License: GPL 3.0

# All restart functions check whether the container is running.
# If the container is not running, a message indicating this is shown.
# If the container is running, the nimbusapp restart command is issued.

function restartALM() {
	if docker ps | grep -Eq '(^|\s)alm($|\s)'; then
		nimbusapp alm:${ALMVersion} restart
		echo "     ALM:${ALMVersion} restarted."
	else
		echo "     ALM:${ALMVersion} not running, no need to restart"
		return
	fi
}

function restartALMOctane() {
	if docker ps | grep -Eq '(^|\s)octane($|\s)'; then
		nimbusapp octane:${ALMOctaneVersion} restart
		echo "     Octane:${ALMOctaneVersion} restarted."
	else
		echo "     Octane:${ALMOctaneVersion} not running, no need to restart"
		return
	fi
}

function restartAOS() {
	if docker ps | grep -Eq '(^|\s)aos-main-app($|\s)'; then
		nimbusapp aos:${AOSVersion} restart
		echo "     AOS:${AOSVersion} restarted."
	else
		echo "     AOS:${AOSVersion} not running, no need to restart"
		return
	fi
}

function restartAOSQA() {
	if docker ps | grep -Eq '(^|\s)aos-main-qa($|\s)'; then
		nimbusapp aos-qa:${AOSQAVersion} restart
		echo "     AOS-QA:${AOSQAVersion} restarted."
	else
		echo "     AOS-QA:${AOSQAVersion} not running, no need to restart"
		return
	fi
}

function restartAutopass() {
	if docker ps | grep -Eq '(^|\s)autopass($|\s)'; then
		nimbusapp autopass:${AutopassVersion} restart
		echo "     Autopass:${AutopassVersion} restarted."
	else
		echo "     Autopass:${AutopassVersion} not running, no need to restart"
		return
	fi
}

function restartDA() {
	if docker ps | grep -Eq '(^|\s)da-server($|\s)'; then
		nimbusapp da:${DAVersion} restart
		echo "     Deployment Automation:${DAVersion} restarted."
	else
		echo "     Deployment Automation:${DAVersion} not running, no need to restart"
		return
	fi
}

function restartDevOps() {
	if docker ps | grep -Eq '(^|\s)devops($|\s)'; then
		nimbusapp devops:${DevOpsVersion} restart
		echo "     DevOps:${DevOpsVersion} restarted."
	else
		echo "     DevOps:${DevOpsVersion} not running, no need to restart"
		return
	fi
}

function restartFortify() {
	if docker ps | grep -Eq '(^|\s)sca($|\s)'; then
		nimbusapp sca:${SCAVersion} restart
		echo "     SCAsca:${SCAVersion} restarted."
	else
		echo "     SCAsca:${SCAVersion} not running, no need to restart"
		return
	fi
	if docker ps | grep -Eq '(^|\s)ssc($|\s)'; then
		nimbusapp ssc:${SSCVersion} restart
		echo "     SSC:${SSCVersion} restarted."
	else
		echo "     SSC:${SSCVersion} not running, no need to restart"
		return
	fi
}

function restartIntelliJ() {
	if docker ps | grep -Eq '(^|\s)intellij($|\s)'; then
		nimbusapp intellij:${IntelliJVersion} restart
		echo "     IntelliJ:${IntelliJVersion} restarted."
	else
		echo "     IntelliJ:${IntelliJVersion} not running, no need to restart"
		return
	fi
}

function restartJIRA() {
	if docker ps | grep -Eq '(^|\s)jira($|\s)'; then
		nimbusapp jira:${JIRAVersion} restart
		echo "     JIRA:${JIRAVersion} restarted."
	else
		echo "     JIRA:${JIRAVersion} not running, no need to restart"
		return
	fi
}

function restartLFTChrome() {
	if docker ps | grep -Eq '(^|\s)leanft-chrome($|\s)'; then
		nimbusapp leanft-chrome:${LFTChromeVersion} restart
		echo "     LeanFT-Chrome:${LFTChromeVersion} restarted."
	else
		echo "     LeanFT-Chrome:${LFTChromeVersion} not running, no need to restart"
		return
	fi
}

function restartMFConnect() {
	if docker ps | grep -Eq '(^|\s)mfconnect($|\s)'; then
		nimbusapp mfconnect:${MFConnectVersion} restart
		echo "     MF Connect:${MFConnectVersion} restarted."
	else
		echo "     MF Connect:${MFConnectVersion} not running, no need to restart"
		return
	fi
}

function restartPPM() {
	if docker ps | grep -Eq '(^|\s)ppm($|\s)'; then
		nimbusapp ppm:${PPMVersion} restart
		echo "     PPM:${PPMVersion} already restarted"
		return
	else
		echo "     PPM:${PPMVersion} not running, no need to restart"
		return
	fi
}

function restartRPA() {
	if docker ps | grep -Eq '(^|\s)rpa($|\s)'; then
		nimbusapp rpa:${RPAVersion} restart
		echo "     RPA:${RPAVersion} already restarted"
		return
	else
		echo "     RPA:${RPAVersion} not running, no need to restart"
		return
	fi
}

function restartSonarqube() {
	if docker ps | grep -Eq '(^|\s)sonarqube($|\s)'; then
		nimbusapp sonarqube:${SonarqubeVersion} restart
		echo "     Sonarqube:${SonarqubeVersion} restarted"
		return
	else
		echo "     Sonarqube:${SonarqubeVersion} not running, no need to restart"
		return
	fi
}

function restartSV() {
	if docker ps | grep -Eq '(^|\s)sv($|\s)'; then
		nimbusapp sv:${SVVersion} restart
		echo "     SV:${SVVersion} restarted"
	else
		echo "     SV:${SVVersion} not running, no need to restart"
		return
	fi
}

function restartUFTM() {
	if docker ps | grep -Eq '(^|\s)uft-mobile($|\s)'; then
		nimbusapp uft-mobile:${UFTMVersion} restart
		echo "     UFT Mobile:${UFTMVersion} restarted"
	else
		echo "     UFT Mobile:${UFTMVersion} not running, no need to restart"
		return
	fi
}