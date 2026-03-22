#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/home" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        echo "$DIR => Size: $SIZE | Permissions: $PERMS | Owner: $OWNER"
    else
        echo "$DIR does not exist"
    fi
done

echo "----------------------"
echo "Audit Complete"
