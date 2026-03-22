#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/boot" "/lib/modules" "/usr/src" "/var/log")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

# Kernel config check
CONFIG="/boot"

if [ -d "$CONFIG" ]; then
    echo "Kernel config directory exists"
    ls -ld $CONFIG
fi
