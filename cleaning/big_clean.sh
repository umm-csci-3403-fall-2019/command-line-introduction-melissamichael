#!/usr/bin/env bash

TAR_NAME=$1
SCRATCH=$2

tar zxf "$TAR_NAME" --directory "$SCRATCH"

#gives all files containing text "DELETE ME!"
DEL_FILES=$(grep -lr "DELETE ME!" "$SCRATCH") 

HERE=$(pwd)

cd "$SCRATCH" || exit


for file in $DEL_FILES
do	

	rm "$file"
done

#cd "$HERE" || exit


#tar zcf "cleaned_$TAR_NAME" "$SCRATCH/$(basename $1 .tgz)"
tar zcf "$HERE/cleaned_$TAR_NAME" $(basename $TAR_NAME .tgz)
