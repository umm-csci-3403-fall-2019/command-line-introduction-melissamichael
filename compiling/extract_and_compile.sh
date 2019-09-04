#!/usr/bin/env bash

NUM=$1
DIR_NAME=$2

# SCRATCH=$(mktemp --directory $DIR_NAME)

# echo $SCRATCH

tar zxf NthPrime.tgz  --directory "$DIR_NAME"

cd "$DIR_NAME"/NthPrime || exit

gcc -o NthPrime main.c nth_prime.c

./NthPrime "$NUM"

# rm -rf "$SCRATCH"
