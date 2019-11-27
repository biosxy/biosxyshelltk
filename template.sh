#!/usr/bin/env bash
# coding: utf-8
# author: kim
# copyrights 2019 KimBioInfoStduio all rights reserved.



## some configure
VERSION="0.0.2 alpha"

## version funcation
version(){
    echo -e "version: $VERSION"
    echo -e "we just start our job no so long,"
    echo -e "and the tools still in a early stage of develop life,"
    echo -e "so just for PLAY ONLY not for PRODUCTIONS."
}

## help funcation
help(){
    echo -e "========================================="
    echo -e "               biosxytk                  "
    echo -e "-----------------------------------------"
    echo -e "ARGS   TYPE    DESC"
    echo -e "  -h           Print This Help Info"
    echo -e "  -v           Print Version Info"
    echo -e "  -f   int     Input An Int for foo func"
    echo -e "  -b   str     Input A Str for bar func"
    echo -e "eg."
    echo -e "$0 -v "
    echo -e "$0 -h "
    echo -e "$0 -f 10 -b hello_sxy"
    echo -e "==========================================="
    exit 0
    
    
}

## foo funcation
foo(){
    echo -e "[ INFO ] This is foo funcation"
    echo -e "[ INFO ] Get f int: $fooint"
    # do something else
}

## bar funation
bar(){
    echo -e "[ INFO ] This is bar funcation"
    echo -e "[ INFO ] Get b str: $barstr"
    
    
}

## main funcation


if [ $# -gt 0 ];then
    while getopts "hvf:b:" args;
    do
        case $args in
            h)
                help
                exit 0
            ;;
            v)
                version
                exit 0
            ;;
            f)
            fooint=$OPTARG;;
            b)
            barstr=$OPTARG;;
            ?)
                echo -e "[ ERROR ] Umm, Unknown arguments!"
                exit 1;;
        esac
    done
    foo
    bar
    exit 0
else
    help
    exit 0
fi
exit 0


