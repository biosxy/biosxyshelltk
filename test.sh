#! /usr/bin/env bash
# coding: utf-8  
# author: kim 
# copytights 2019 KimBioInfoStudio all rights reserved.


./logging.sh -v 
./logging.sh -h 
./logging.sh -l fatal -m "this is a fatal!"
sleep 1
./logging.sh -l error -m "this is a error!"
sleep 1 
./logging.sh -l warn -m "this is a warn!"
sleep 1 
./logging.sh -l info -m "this is a info"
sleep 1
./logging.sh -l debug -m "this is a debug"
