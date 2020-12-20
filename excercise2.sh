#!/bin/bash

echo "Directory: $1"

FILES=($(ls $1))

i=0
for FILE in "${FILES[@]}"
do
    FILE="$1/$FILE"
    if [ ! -d "$1/$FILE" ]; then
	CONTENUTO=($(awk '$1 ~ /^#!\/(.+)/g { print $0 }' ${FILE}))
	if [ "$CONTENUTO" != '#!' ] && [ "$CONTENUTO" != '' ]; then
		echo "$i  $CONTENUTO"
	    
	fi
    fi

    

    CONTENUTO=""

    i=$(($i + 1))
done
