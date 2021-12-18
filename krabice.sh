#!/bin/bash
 
 vyska=$1
 delka=$2
 
 box=""
 
 function main(){
     for (( i=0; i < vyska; i++ ))
     do
         if [ "$i" -eq 0 ] || [ "$i" -eq $((vyska - 1)) ];
         then
             drawEndLine
         else
             drawLine
         fi
         box+=$'\n'
     done
 
 }
 
 function drawEndLine(){
     for (( j=0; j < delka; j++ ))
         do
             if [ "$j" -eq 0 ] || [ "$j" -eq $((delka - 1)) ];
             then
                 box+="."
             else
                 box+="-"
             fi
         done
 }
 
 function drawLine(){
     for (( k=0; k < delka; k++ ))
     do
         if [ "$k" -eq 0 ] || [ "$k" -eq $((delka - 1)) ];
         then
             box+="|"
         else
             filling
         fi
     done
 }
 
 function filling(){
     if [ "$i" -lt $((vyska/3)) ];
     then
         box+=" "
     elif [ "$i" -lt $(((4*vyska)/9)) ] && [ "$i" -gt $(((2*vyska)/9)) ];
     then
         if [ $(( ( RANDOM % 10 )  + 1 )) -lt 4 ];
         then
             box+="o"
         else
              box+=" "
         fi
     else
         if [ $(( ( RANDOM % 10 )  + 1 )) -lt 7 ];
         then
             box+="o"
         else
             box+=" "
         fi
     fi
 }
 
 main
 printf %s "$box"
