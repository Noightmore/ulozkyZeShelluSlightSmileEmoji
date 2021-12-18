#!/bin/bash
# nejlepe funguji licha cisla

whiteSpaces() {
  for ((i=0; i<$1; i++)); 
  do
    echo -n " "
  done 
}

foliage() {
    l=$1
    for ((i=0; i<l; i++)); 
    do
        if [ "$i" -eq 0 ] || [ "$i" -eq $((l - 1)) ];
        then
            echo -n "*"
        elif [ "$i" -gt 0 ] && [ "$i" -lt $((l/2)) ];
        then
            if [ $(( ( RANDOM % 10 )  + 1 )) -lt 2 ];
            then
                echo -n "o"
            else
                 echo -n "/"
            fi
            
        elif [ "$i" -lt $((l - 1)) ] && [ "$i" -gt $((l/2)) ];
        then
              if [ $(( ( RANDOM % 10 )  + 1 )) -lt 2 ];
            then
                echo -n "o"
            else
                echo -n "\\"
            fi
        elif [ "$i" -eq $((l/2)) ];
        then
            echo -n "|"
        fi
    done
    echo ""
}

displayTree() {
    local rows=$1
    local columns=$2

    for (( r=1; r <= "$rows"; r++ ));
     do
      s=$(( (((columns-1) * (r-1)/(rows-1) + 1)/2)*2 +1 ))
      whiteSpaces $(((columns-s)/2))
      foliage $s
    done
}

if [ $# -eq 2 ]; then
    displayTree "$1" "$2"
else
    echo "Usage: $0 rows columns"
fi
