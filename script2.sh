#!/bin/bash 

# Script 2: FOSS Package Inspector 

# Set your chosen software here
PACKAGE="firefox"   # e.g. httpd, mysql, vlc, firefox 

# Check if package is installed 
if rpm -q $PACKAGE &>/dev/null; then 
    echo "$PACKAGE is installed."
    rpm -qi $PACKAGE | grep -E 'Version|License|Summary' 
else 
    echo "$PACKAGE is NOT installed." 
fi 

# Case statement that prints a one-line 
# philosophy note about the package based on its name 
case $PACKAGE in 
    httpd)  
        echo "Apache: the web server that built the open internet" 
        ;; 
    mysql)  
        echo "MySQL: open source at the heart of millions of apps" 
        ;; 
    firefox)
        echo "Firefox: protecting the internet as a global public resource"
        ;;
    vlc)
        echo "VLC: the free and open source multimedia player that plays everything"
        ;;
    git)
        echo "Git: distributed version control that revolutionized collaboration"
        ;;
    python3)
        echo "Python: empowering developers with readable and versatile code"
        ;;
    *)
        echo "$PACKAGE: an essential piece of the open-source ecosystem"
        ;;
esac