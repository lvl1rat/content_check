#!/bin/bash

while getopts 'iu' OPTION; do
  case "$OPTION" in
	i)
		echo
		echo "---Installing Content_Check---"
		echo
		echo "Copying archives..."
		cp content_check.sh ~/.content_check.sh
		echo "Setting up shortcut..." 
		echo "alias content_check='~/.content_check.sh'" >> ~/.bashrc
		echo "Setting up permissions..."
		chmod 555 ~/.content_check.sh
		source ~/.bashrc
		echo
		echo "-------Setup Finished.-------"
		echo
		echo "See README"
		echo
	;;
	u)
		echo
		echo "---Removing Content-Check and all dependencies---"
		echo
		unalias content_check
		rm -f ~/.content_check.sh
		echo
		echo "---------------Unistall Finished.---------------"
		echo
	;;
  esac
done
shift "$(($OPTIND -1))"
