#!/bin/bash

sudo apt-get update

git clone -b 4.15 git@github.com:civilmaps/UnrealEngine.git

cd UnrealEngine
./Setup.sh
./GenerateProjectFiles.sh
make
cd ..
