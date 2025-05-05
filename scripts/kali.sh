#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh
export DEBIAN_FRONTEND=noninteractive
# Update the container and install packages
apt-get update && apt-get upgrade -y
grep -vE '^\s*#|^\s*$' ./kali.packages | xargs apt-get install -y