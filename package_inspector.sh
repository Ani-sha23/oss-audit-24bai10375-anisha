#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="bash"

echo "Checking if $PACKAGE is installed..."

if command -v $PACKAGE >/dev/null 2>&1; then
    echo "$PACKAGE is installed."
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    bash)
        echo "Bash: The default shell used in most Linux systems."
        ;;
    git)
        echo "Git: Version control system for developers."
        ;;
    *)
        echo "General open-source software package."
        ;;
esac
