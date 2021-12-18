#!/bin/bash

for file1 in $(find $1 -type l); do
    re=$(readlink -f $file1)
    echo "vlastnikem souboru kam symlink: $file1 odkazuje - $re - je uzivatel $(ls -l  $re | cut -d" " -f3)"
done
# find $1 -xtype l

