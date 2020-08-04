CREATE EXTERNAL TABLE hvitemprice ( upc STRING, originstore STRING, updatedate STRING, longdescription STRING, itemdescription STRING, brandname STRING, displayimage STRING,  price STRING, msrp STRING, tpr STRING)
STORED AS AVRO
LOCATION '/tmp/itemprice/itemprice/'
