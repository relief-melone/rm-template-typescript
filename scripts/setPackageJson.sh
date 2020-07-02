#!/bin/sh

read -p "Do you want to init your package.json (dependencies will remain untouched)? (Y/n)  " $INIT_NPM

if [[ $INIT_NPM != "n" ]]; then
  npm init
fi

