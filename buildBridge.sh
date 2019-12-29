#!/bin/bash

git clone https://github.com/SeocraftNetwork/Spigot-Bungee-Bridge
cd Spigot-Bungee-Bridge
mvn clean install:install-file -DgroupId=net.seocraft -DartifactId=waterfall-chat -Dversion=1.8 -Dpackaging=jar -Dfile=../Waterfall/Waterfall-Proxy/chat/target/waterfall-chat-1.8.jar && mvn install