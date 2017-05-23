#!/bin/bash

SYNTHETICS_DIR=$(pwd)
PROJECT=$(readlink -f Synthetics/Synthetics.uproject)

mono UnrealEngine/Engine/Binaries/DotNET/UnrealBuildTool.exe -makefile -project="$PROJECT" -game -engine
