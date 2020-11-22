#!/bin/sh

filecount=`find defaultsData/ -type f -name 'current*' | wc -l | tr -d '[:space:]'`
mkdir -p defaultsData
defaults read > defaultsData/global-list-${filecount}.txt
defaults -currentHost read > defaultsData/currentHost-list-${filecount}.txt

