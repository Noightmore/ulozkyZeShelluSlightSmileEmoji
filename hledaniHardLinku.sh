#!/bin/bash

jedna=0
dva=0

echo "Stejne hardlinky"
for soubor in $(ls -i $1 )
do
    [[ $soubor =~ ^-?[0-9]+$ ]] && jedna=soubor
    if [ $jedna -eq $dva ];
    then
        ls -i | grep $dva
    fi
done

# asi ne no

