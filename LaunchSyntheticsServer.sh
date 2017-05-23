#!/bin/bash

DEPS=0

if [ $DEPS -eq 1 ]
then

sudo apt-get update
sudo apt-get install libpangocairo-1.0-0
sudo apt-get install libnss3
sudo apt-get install libgconf-2-4
sudo apt-get install libxi6
sudo apt-get install libxcursor1
sudo apt-get install libxss1
sudo apt-get install libxcomposite1
sudo apt-get install libasound2
sudo apt-get install libxdamage1
sudo apt-get install libxtst6
sudo apt-get install libatk1.0-0
sudo apt-get install libxrandr2

else

SYNTHETICS_DIR=$(pwd)
PROJECT=$(readlink -f Synthetics/Synthetics.uproject)

cd UnrealEngine/Engine/Binaries/Linux/
./UE4Editor -project $PROJECT -game -nullrhi -unattended
cd $SYNTHETICS_DIR

fi




