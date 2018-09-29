#!/bin/bash
# GIT
GIT_PROMPT="C:\Program Files\Git\etc\profile.d"

if [ -d "$GIT_PROMPT" ];
then
  cp git-prompt.sh /c/Program\ Files/Git/etc/profile.d/git-prompt.sh  
else
  echo "$GIT_PROMPT does not exist"
fi

cp .kdiff3rc ~/.kdiff3rc
cp .gitconfig ~/.gitconfig