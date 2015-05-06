#!/bin/sh

launchctl setenv PATH /usr/local/bin:$PATH
launchctl setenv HOMEBREW_CASK_OPTS "--appdir=/Applications"
