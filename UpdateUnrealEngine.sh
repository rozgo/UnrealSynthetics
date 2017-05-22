#!/bin/bash

rsync \
    -avz \
    --exclude-from 'UpdateUnrealEngineExclude.txt' \
    -e "ssh -F .ssh/Config -p 2222" \
    --progress  \
    unreal@138.68.247.3:/home/unreal/UnrealSynthetics/UnrealEngine/ \
    UnrealEngine/

cd UnrealEngine
./Setup.sh
cd ..


