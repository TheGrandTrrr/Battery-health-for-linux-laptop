#!/bin/bash
set -e

echo " Installing Battery health script ... "
if [[ $EUID -ne 0 ]]; then
	echo "Run as root. (sudo ./install.sh)"
	exit 1
fi

cp "bthlt" "/usr/local/bin"

chmod +x "/usr/local/bin/bthlt"

echo "Script was installed"
echo "Run command  'bthlt' to use a script"

