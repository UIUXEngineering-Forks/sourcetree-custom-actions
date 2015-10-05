#!/bin/sh

#  Open_WebStorm.sh
#  
#
#  Created by Jerry Orta on 8/22/15.
#
PROJECT_PATH="$1"
FILE_PATH="$2"
open -a "WebStorm 11 EAP" $PROJECT_PATH $PROJECT_PATH/$FILE_PATH

#/Applications/WebStorm.app/Contents/MacOS/webstorm $PROJECT_PATH --line 1 $PROJECT_PATH/$FILE_PATH