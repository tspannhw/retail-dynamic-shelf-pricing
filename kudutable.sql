  "longDescription" : "Eggo Homestyle Waffles 10 Count",
  "brandName" : "Eggo",
  "displayImage" : "https://www.kroger.com/product/images/small/left/0003800040260",
  "price" : "2.59",
  "msrp" : "2.59",
  "tpr" : "0",
  "update_dt" : "20200716165641",
  "upc" : "0003800040260",
  "itemDescription" : "Eggo Homestyle Waffles 10 Count",
  "origin_store" : "kroger"
  
CREATE TABLE prices
(
  upc STRING,
  origin_store STRING,
  longDescription STRING,
  itemDescription STRING,
  brandName STRING,
  displayImage STRING, 
  price STRING,
  msrp STRING,
  tpr STRING,
  update_dt STRING,
PRIMARY KEY (upc, origin_store) ) 
PARTITION BY HASH PARTITIONS 4 
STORED AS KUDU TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');

CREATE TABLE itemprice
(
       item_id INT,
    price FLOAT,
   created_on TIMESTAMP,
    updated_on TIMESTAMP,	
PRIMARY KEY (item_id) ) 
PARTITION BY HASH PARTITIONS 4 
STORED AS KUDU TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');

CREATE TABLE shelfprice 
(
uuid STRING, 
	systemtime STRING,  
	ipaddress STRING, 
	host STRING, 
	endtime STRING, 
	runtime STRING, 
	starttime STRING, 
	cputemp STRING, 
	diskfree STRING, 
	memory DOUBLE, 
  price STRING,
 PRIMARY KEY (uuid) ) 
PARTITION BY HASH PARTITIONS 4 
STORED AS KUDU TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');
