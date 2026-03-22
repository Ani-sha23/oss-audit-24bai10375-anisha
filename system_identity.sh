#!/bin/bash
# Script 1: System Identity Report
# Author: Anisha Garg

STUDENT_NAME="Anisha Garg"
SOFTWARE="Linux Kernel"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(uname -o)

echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software       : $SOFTWARE"
echo "Distribution   : $DISTRO"
echo "Kernel Version : $KERNEL"
echo "User           : $USER_NAME"
echo "Home Directory : $HOME_DIR"
echo "Uptime         : $UPTIME"
echo "Date & Time    : $DATE"
echo "License        : GPL v2 (Open Source)"
