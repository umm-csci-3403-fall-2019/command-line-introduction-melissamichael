!#/usr/bin/env bash

TAR_NAME=$1
SCRATCH=$2

tar zxf "$TAR_NAME" --directory "$SCRATCH"

cd $SCRATCH 

grep 
