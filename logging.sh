#!/usr/bin/env bash
# coding: utf-8  
# author: kim 
# copytights 2019 KimBioInfoStudio all rights reserved.



## some configure
VERSION="0.0.2 alpha"


# version funcation
version(){
	echo -e "version: $VERSION"
	echo -e "we just start our job no so long,"
	echo -e "and the tools still in a early stage of develop life,"
	echo -e "so just for PLAY ONLY not for PRODUCTIONS."
}

# main funcation
main(){
    nowtime=$(date -d "now" +"%Y-%m-%d %H:%M:%S")

	case $1 in 
		debug)
			echo -e "\033[36m[ DEBUG ]\033[0m $nowtime $2"
			;;
		info)
			echo -e "\033[32m[ INFO  ]\033[0m $nowtime $2"
			;;

		warn)
			echo -e "\033[33m[ WARN  ]\033[0m $nowtime $2"
			;;
		error)
			echo -e "\033[31m[ ERROR ]\033[0m  $nowtime $2"
			;;
		fatal)
			echo -e "\033[5;31m[ FATAL ]\033[0m  $nowtime $2"
			;;
		?)
			msg="Unkown loglevel! Pls check and try again"
			echo -e "\033[31m[ ERROR ]\033[0m $nowtime $msg"
	esac
}

# get opt funcation
get_options(){

	
	
}

main $1 $2