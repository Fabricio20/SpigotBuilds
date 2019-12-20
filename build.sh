#!/bin/bash

if [ "$1" = "" ]; then
    echo "Missing version parameter"
    exit 1
fi

declare -A VERSION="$1"

echo "Building SpigotMC $VERSION"

# Clean
rm -rf work/

# Setup
mkdir work
cp *.sh work/
cd work/
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar -O BuildTools.jar

# Permissions
chmod +x BuildTools.jar
chmod +x *.sh

# Build & Deploy
java -jar BuildTools.jar --rev $VERSION
./deploy.sh