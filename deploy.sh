#!/bin/bash

# Copy artifacts
cd ~/.m2/repository
cd org/
cp -R bukkit/ /repository/SpigotMC/org/
cp -R spigotmc/ /repository/SpigotMC/org/

# Remove remote files
find /repository/SpigotMC/ -type f -name '*_remote*' -delete

# Finish
echo "Artifacts Deployed to https://maven.notfab.net/SpigotMC/"