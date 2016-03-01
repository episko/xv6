#!/bin/sh

# Exit script immediately on first error
set -e

sudo apt-get update -y
sudo apt-get install -y qemu-system-x86 gdb

echo "set auto-load safe-path /" > /home/vagrant/.gdbinit

