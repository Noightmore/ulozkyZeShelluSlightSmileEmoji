#!/bin/bash

echo "Tyto soubory jsou scripty:"
for soubor in $(ls $1)
do
    if  head -1 "$soubor" 2> /dev/null | grep "^#!/bin/bas" > /dev/null 
    then
            echo $soubor
    fi
    
done