FROM mongo

COPY 01-products.json /01-products.json
COPY 02-discounts.json /02-discounts.json
COPY mongo_import.sh /mongo_import.sh

CMD sh mongo_import.sh


