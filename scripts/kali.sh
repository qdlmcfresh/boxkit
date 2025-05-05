#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
apt update && apt upgrade -y
grep -v '^#' ./kali.packages | xargs apt install -y


