#!/bin/bash 

# Script 3: Disk and Permission Auditor 

DIRS=("/etc" "/usr/bin" "/tmp")

echo "Directory Audit Report" 
echo "----------------------" 

for DIR in "${DIRS[@]}"; do 
    if [ -d "$DIR" ]; then 
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}') 
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1) 
        echo "$DIR => Permissions: $PERMS | Size: $SIZE" 
    else 
        echo "$DIR does not exist on this system" 
    fi
done

CONFIG_DIR="/etc/firefox"

echo ""
echo "Software Config Directory Check"
echo "-------------------------------"

if [ -d "$CONFIG_DIR" ]; then
    CONFIG_PERMS=$(ls -ld "$CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "$CONFIG_DIR => Permissions: $CONFIG_PERMS"
else
    echo "Notice: $CONFIG_DIR does not exist on this system."
fi