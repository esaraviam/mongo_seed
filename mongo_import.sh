#!/bin/bash
FILES=$(ls //*.json | sort -n -t _ -k 2)

for AFILE in 01-products.json 02-discounts.json
do
    echo -e "[$(date)] Processing \t$AFILE"
    COLLECTION=`echo $AFILE | sed -n 's/.*\-\(.*\).json/\1/p'`
    mongoimport --host mongodb --port 27017 --db desafio_walmart --db desafio_walmart --collection ${COLLECTION} --type json --file ${AFILE} --jsonArray
    echo -e "[$(date)] Done \t\t$AFILE"
done
