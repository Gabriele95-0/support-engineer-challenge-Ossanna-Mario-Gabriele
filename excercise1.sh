#!/bin/bash

NEW_STRING=$1
OLD_STRING=$2
DIRECTORY=$3


if [ $# -ne 3 ]; then
    echo "usage:"
    echo "./sost_string.sh  new_string old_string directory"
    exit 1
fi

echo "Stringa da sostituire: $NEW_STRING"
echo "Stringa in cui sostituire: $OLD_STRING"
echo "Directory: $DIRECTORY"


## Verifico se è una direcory

if [ -d "$DIRECTORY" ]; then
    FILES=($(ls $DIRECTORY))
else
    echo "$DIRECTORY is not a directory!"
    exit 1
fi

##Ciclo per tutti i file

for FILE in "${FILES[@]}"
do
    ## Verifico che non sia una directory
    ## Verificare che sia un file testuale
    if [ ! -d "$FILE" ]; then
        echo "$FILE"
        ##Rimpiazza e riscrive il file
        sed -i "s/${OLD_STRING}\/${NEW_STRING}/g" $FILE
    fi

done

