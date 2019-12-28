#!/bin/bash

git submodule update --init && ./buildBridge.sh && ./remap.sh && ./decompile.sh && ./init.sh && ./newApplyPatches.sh && mvn clean install
