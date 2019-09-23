#!/usr/bin/env bash
# coding: utf-8  
# author: kim 
# copytights 2019 KimBioInfoStudio all rights reserved.



## some configure
VERSION="0.0.2 alpha"


# version funcation
version(){
	echo -e "version: $VERSION"
	echo -e "we just start our job no so long"
	echo -e "and the tools still in a early stage of develop life"
	echo -e "so just for PLAY ONLY not for PRODUCTIONS"
}

help(){
	echo -e "========================================="
    echo -e "               biosxytk                  "
    echo -e "-----------------------------------------"
	echo -e "ARGS	TYPE	DESC"
	echo -e "  -h	    	Print This Help Info"
	echo -e "  -v	    	Print Version Info"
	echo -e "  -l	str		Input Log Level"
	echo -e "  -m	str 	Input Message"
	echo -e "eg."
	echo -e "$0 -v"
	echo -e "$0 -h"
	echo -e "$0 -l error -m \"This is an error mesage!\""
	echo -e "-----------------------------------------"
}

# main funcation
if [ $# -gt 0 ];then
	while getopts "vhl:m:" opts
		do  
			case $opts in 
				v) 
					version
					exit 0 
					;;
				h)
					help
					exit 0
					;;
				l)
					log_level=$OPTARG
					;;
				m)
					message=$OPTARG
				;;
				?)
					echo -e "\033	version
					exit 0 
					;;[31m[ ERROR ]\033[0m $(date -d "now" +"%Y-%m-%d %H:%M:%S") Unkown arguments!"
					exit 1
					;;
			esac
		done
else
	help 
	exit 1
fi

# main funcation
case $log_level in 
	debug)
		echo -e "\033[36m[ DEBUG ]\033[0m $(date -d "now" +"%Y-%m-%d %H:%M:%S") $message"
		exit 0 
		;;
	info)
		echo -e "\033[32m[ INFO  ]\033[0m $(date -d "now" +"%Y-%m-%d %H:%M:%S") $message"
		exit 0
		;;
	warn)
		echo -e "\033[33m[ WARN  ]\033[0m $(date -d "now" +"%Y-%m-%d %H:%M:%S") $message"
		exit 0
		;;
	error)
		echo -e "\033[31m[ ERROR ]\033[0m $(date -d "now" +"%Y-%m-%d %H:%M:%S") $message"
		exit 0
		;;
	fatal)
		echo -e "\033[5;31m[ FATAL ]\033[0m $(date -d "now" +"%Y-%m-%d %H:%M:%S") $message"
		exit 0
		;;
	?)
		echo -e   "\033[31m[ ERROR ]\033[0m $(date -d "now" +"%Y-%m-%d %H:%M:%S") Unkown loglevel! Pls check and try again"
		exit 1

esac