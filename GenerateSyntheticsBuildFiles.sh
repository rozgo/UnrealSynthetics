#!/bin/bash

SYNTHETICS_DIR=$(pwd)
PROJECT=$(readlink -f Synthetics/Synthetics.uproject)

cd UnrealEngine
./GenerateProjectFiles.sh -project $PROJECT -game -engine
cd $SYNTHETICS_DIR


