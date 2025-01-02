#!/bin/bash

# Check if .bashrc exists
if [ -f "$HOME/.bashrc" ]; then
  # Append new environment variables to .bashrc
  echo "export HELLO=$(hostname)" >> "$HOME/.bashrc"
  echo "export LOCAL=$(whoami)" >> "$HOME/.bashrc"
 
  # Source .bashrc to apply the changes immediatly
  source ~/.bashrc

  # Open another terminal
  gnome-terminal 

  echo "New environment variables have been added. A new terminal has been opened."
else
  echo ".bashrc file does not exist in the user's home directory."
fi
