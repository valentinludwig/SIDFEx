#!/bin/bash
###############################################################################################
## Purpose: Set up files and directories needed for using the SIDFEx database
## Author: Valentin Ludwig (valentin.ludwig@awi.de)
## Contact: Valentin Ludwig (valentin.ludwig@awi.de), Helge Goessling (helge.goessling@awi.de)
## Created: 2021-10-27
## Last updated: 2022-03-31
## Execute as /bin/bash setup_sidfex.bash
###############################################################################################

## First, create directory where files will be saved.
SIDFEx_DIRECTORY=$HOME/SIDFEx # set path for SIDFEx directory
if [ -d "$SIDFEx_DIRECTORY" ]; then # checkl if directory already exists
    echo "$SIDFEx_DIRECTORY exists. If you really want to re-create it, delete it first." # NOtify me if directory exists already
else  # Otherwise, create the directory
	mkdir -p $SIDFEx_DIRECTORY # create directory
    echo "$SIDFEx_DIRECTORY does not exist. I create it." # tell me that you created it
fi

## Then, create a text file where the paths will be saved.
SIDFEx_FILE=$HOME/.SIDFEx # variable for filename
if [ -f "$SIDFEx_FILE" ]; then # check if file aready exists
    echo "$SIDFEx_FILE exists. If you really want to re-create it, delete it first." # if yes, tell me
else # if file does not exist, tell me and create the file
    echo "$SIDFEx_FILE does not exist. I create it and add the file paths." # notificatioon
	touch $SIDFEx_FILE # create a file ~/.SIDFEx in your home dir
	echo 'data.path.fcst = "~/SIDFEx/fcst"'>>$SIDFEx_FILE # add the line data.path.fcst = "~/SIDFEx/fcst" to ~/.SIDFEx
	echo 'data.path.obs = "~/SIDFEx/obs"'>>$SIDFEx_FILE # add the line data.path.obs = "~/SIDFEx/obs" to ~/.SIDFEx
	echo 'indexTable.path.in = "~/SIDFEx/index"'>>$SIDFEx_FILE # add the lines indexTable.path.in = "~/SIDFEx/index" to ~/.SIDFEx
fi
## 
