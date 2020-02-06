#!/bin/sh

DIR=`dirname $0`

echo $DIR

$DIR/createFolders.sh
$DIR/setRemoteUrl.sh
$DIR/setPackageJson.sh