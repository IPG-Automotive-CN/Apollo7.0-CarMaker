#!/bin/sh
 
SourcePath="."
DestPath="/home/yil/Documents/temp"
#mkdir backup directory
[ ! -d $DestPath ] && mkdir -p $DestPath
 
Func_CpFiles()
{
        for FileList in $(find $SourcePath -name "*.proto");do
                #mkdir 
                [ ! -d ${DestPath}$(dirname $FileList) ] && mkdir -p ${DestPath}$(dirname $FileList)
                #copy
                cp -rf $FileList ${DestPath}$(dirname $FileList) 
        done
}
 
Func_CpFiles