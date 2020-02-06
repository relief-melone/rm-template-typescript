#!/bin/sh

read -p "Enter new Remote Repo Url:   " REPO_URL

rm -rf ./.git
git init
git remote add origin $REPO_URL

read -p "Push to master and create new init Branch? (Y/n)  " $PUSH_TO_MASTER

if [[ $PUSH_TO_MASTER != "n" ]]; then
  git add .
  git commit -m "commit from template"
  git push -u origin master
  git checkout -b init
fi

