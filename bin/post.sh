#!/bin/bash

#Path to your octopress installation
OCTOPATH=`pwd`

#Editor to open the new markdown post in
EDITORAPP=Mou

# Post title
TITLE=$1

if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then
  source "$HOME/.rvm/scripts/rvm"
fi

#Exporting encoding
export 'LC_CTYPE=en_US.UTF-8'

cd $OCTOPATH
#rvm use 1.9.3@octopress
source $OCTOPATH/.rvmrc
OCTOPOST=$(bundle exec rake new_post["$TITLE"]| grep -o 'source/_posts/.*')
open -a "$EDITORAPP" $OCTOPATH/$OCTOPOST
