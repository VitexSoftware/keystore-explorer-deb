#!/bin/bash

REPO="https://github.com/kaikramer/keystore-explorer.git"

if [ -d "keystore-explorer" ]; then
    cd keystore-explorer
    git fetch origin master
    git reset --hard FETCH_HEAD
    git clean -df
else
    git clone $REPO
    cd keystore-explorer
fi

cd kse
ant jar
ant resources

cd ../../debian
./deb-package.sh


