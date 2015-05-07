#!/bin/sh

LOG="/Users/kata/log/`date "+%Y%m%d"`.log"

brew doctor >> ${LOG} 2>&1
if [ $? -ne 0 ]; then
	brew update >> ${LOG} 2>&1
	brew-file update >> ${LOG} 2>&1
	brew-file cask_upgrade -C >> ${LOG} 2>&1
fi
