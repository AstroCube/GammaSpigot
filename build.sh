#!/bin/bash

git submodule update --init && sh buildWaterfall.sh && sh buildBridge.sh && ./remap.sh && ./decompile.sh && ./init.sh && ./newApplyPatches.sh && mvn clean install
