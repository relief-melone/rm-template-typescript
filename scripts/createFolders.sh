#!/bin/sh

DIR=`dirname $0`

echo "CREATING FOLDERS..."
mkdir -p $DIR/../src/classes
mkdir -p $DIR/../src/configs
mkdir -p $DIR/../src/controllers
mkdir -p $DIR/../src/middleware
mkdir -p $DIR/../src/routes
mkdir -p $DIR/../src/schemas
mkdir -p $DIR/../src/services
mkdir -p $DIR/../src/types

mkdir -p ./test
echo "DONE CREATING FOLDERS"

