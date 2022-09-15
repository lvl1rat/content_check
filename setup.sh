#!/bin/bash

echo
echo "---Installing Content_Check---"
echo
echo "Copying archives..."
cp content_check.sh ~/.content_check.sh
echo "Setting up shortcut..." 
echo "alias content_check='~/.content_check.sh'" >> ~/.bash_aliases
source ~/.bash_aliases
echo "Setting up permissions"
chmod 555 ~/.content_check.sh
echo
echo "-------Setup Finished.-------"
echo
echo "See README"
echo
