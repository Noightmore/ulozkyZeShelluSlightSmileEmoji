#!/bin/bash

for soubor1 in $(ls $1/*); do
for soubor2 in $(ls $2/*); do
    s1=$(sha1sum "$soubor1" | cut -d" " -f1 2> /dev/null)
    s2=$(sha1sum "$soubor2" | cut -d" " -f1 2> /dev/null)
    if [ "$s1" == "$s2"  ]; then 
        echo "jsou stejne"
    fi
done; done 