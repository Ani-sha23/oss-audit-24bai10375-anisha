#!/bin/bash
# Script 2: Package Inspector

PACKAGE="linux-image-$(uname -r)"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    linux-image*)
        echo "Linux Kernel: Core of the operating system"
        ;;
    apache2)
        echo "Apache: Web server powering the internet"
        ;;
    mysql)
        echo "MySQL: Open-source database system"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
