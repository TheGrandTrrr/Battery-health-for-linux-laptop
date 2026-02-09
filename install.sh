#!/bin/bash

set -e

if [[ $EUID -ne 0 ]]; then
  echo "Run as root. (sudo ./install.sh)"
  exit 1
fi

echo "==== Battery Health Monitor installer ===="
echo ""
echo "Choose a verison you like"
echo ""
echo "    1) Only text"
echo "    2) Text + picture"
echo "    3) Stop installation"
echo ""
echo -n "Write a number with a version you pick:     "
read choise

case $choise in
1)
  echo "Downloading text version of a programm."

  cp "versions/bthlt" "/usr/local/bin"

  chmod +x "/usr/local/bin/bthlt"

  echo "Script was installed"
  echo ""
  echo "Run command  'bthlt' to use a script"
  ;;
2)
  echo "Dowloading full version of a programm."

  cp "versions/bthlt_b" "/usr/local/bin/bthlt"

  chmod +x "/usr/local/bin/bthlt"

  echo "Script was installed"
  echo ""
  echo "Run command  'bthlt' to use a script"
  ;;
3)
  echo "Stopping installation..."
  exit 1
  ;;
*)
  echo "Wrong choise. Exiting an installation script..."
  exit 1
  ;;

esac
