#!/bin/bash 
# Script 1: System Identity Report 
# Author: Amar Dixit | Course: Open Source Software 

# --- Variables ---
STUDENT_NAME="Amar Dixit" 
SOFTWARE_CHOICE="Linux" 

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami) 

# --- Display ---
echo "================================" 
echo "  Open Source Audit — $STUDENT_NAME"
echo "================================" 
echo "Kernel  : $KERNEL" 
echo "User    : $USER_NAME"
DISTRO=$(grep '^PRETTY_NAME' /etc/os-release | cut -d '=' -f 2 | tr -d '"')
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")

# Displaying the remaining requirements
echo "Distro  : $DISTRO"
echo "Home    : $HOME"
echo "Date    : $CURRENT_DATE"
echo "================================" 
echo "License : Mozilla Firefox is distributed under the Mozilla Public License."