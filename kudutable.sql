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
