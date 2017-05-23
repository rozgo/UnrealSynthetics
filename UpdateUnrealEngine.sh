#!/bin/bash

sudo apt-get update

SYNTHETICS_DIR=$(pwd)

chmod 400 $SYNTHETICS_DIR/.ssh/civilmaps_rsa
ssh-add $SYNTHETICS_DIR/.ssh/civilmaps_rsa

rsync \
    -avz \
    --exclude-from 'UpdateUnrealEngineExclude.txt' \
    -e "ssh -F $SYNTHETICS_DIR/.ssh/config -p 2222" \
    --progress  \
    unreal@138.68.228.35:/home/unreal/UnrealSynthetics/UnrealEngine/ \
    UnrealEngine/

cd UnrealEngine
./Setup.sh
./GenerateProjectFiles.sh
make
cd ..
