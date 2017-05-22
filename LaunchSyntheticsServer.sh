#!/bin/bash

SYNTHETICS_DIR=$(pwd)
PROJECT=$(readlink -f Synthetics/Synthetics.uproject)

cd UnrealEngine/Engine/Binaries/Linux/
./UE4Editor -project $PROJECT -run -nullrhi -unattended
cd $SYNTHETICS_DIR



