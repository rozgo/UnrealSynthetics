#!/bin/bash

SYNTHETICS_DIR=$(pwd)

rsync \
    -avz \
    --exclude-from 'UpdateUnrealEngineExclude.txt' \
    -e "ssh -F $SYNTHETICS_DIR/.ssh/config -p 2222" \
    --progress  \
    unreal@138.68.247.3:/home/unreal/UnrealSynthetics/UnrealEngine/ \
    UnrealEngine/

cd UnrealEngine
./Setup.sh
cd ..


