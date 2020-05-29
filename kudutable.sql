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
  price STRING
 PRIMARY KEY (uuid) ) 
PARTITION BY HASH PARTITIONS 4 
STORED AS KUDU TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');
