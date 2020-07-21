CREATE EXTERNAL TABLE IF NOT EXISTS hvitemprice ( 
  upc STRING,
  originstore STRING,
  updatedate STRING,
  longdescription STRING,
  itemdescription STRING,
  brandname STRING,
  displayimage STRING, 
  price STRING,
  msrp STRING,
  tpr STRING
) 
STORED AS AVRO
LOCATION '/tmp/itemprice/';

select upc, originstore, updatedate, brandname, price, itemdescription
from hvitemprice
