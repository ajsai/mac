#!/bin/bash

for file in `ls defaultsData`; do
    echo $file
done

read -p "Input defaults file name: " afterFile
type=`echo $afterFile | cut -d '.' -f 1 | cut -d '-' -f 1`
num=`echo $afterFile | cut -d '.' -f 1 | cut -d '-' -f 3`
beforeFile=$type-list-`expr $num - 1`.txt
diff defaultsData/$beforeFile defaultsData/$afterFile

