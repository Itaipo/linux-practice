#!/bin/bash
#
#
read -p "give depth" depth
user=$(ls -ld "$1" | awk '{print $3}')
find "$1" -maxdepth $depth ! -user $user -exec chown $user {} \;



