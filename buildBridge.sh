#!/bin/bash

git clone https://github.com/SeocraftNetwork/Spigot-Bungee-Bridge
cd Spigot-Bungee-Bridge
mvn clean install:install-file -DgroupId=net.seocraft -DartifactId=waterfall-chat -Dversion=1.8 -Dpackaging=jar -Dfile=${HOME}/.m2/repository/net/seocraft/waterfall-chat/1.8/waterfall-chat-1.8.jar