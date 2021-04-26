#!/bin/bash

git submodule update --init && ./remap.sh && ./decompile.sh && ./init.sh && ./newApplyPatches.sh && mvn clean install:install-file -DgroupId=me.fixeddev -DartifactId=Spigot-Bungee-Bridge -Dversion=1.8-SNAPSHOT -Dpackaging=jar -Dfile=Spigot-Bungee-Bridge/target/Spigot-BungeeBridge-1.8-SNAPSHOT.jar && mvn install