#!/bin/bash

git submodule update --init && ./buildWaterfall.sh && ./buildBridge.sh && ./remap.sh && ./decompile.sh && ./init.sh && ./newApplyPatches.sh && mvn clean install
