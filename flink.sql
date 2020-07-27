show catalogs;

use catalog registry;

show tables;

describe itemprice;

select * from itemprice
where originstore = 'kroger';

select upc,updatedate,itemdescription,brandname,CAST(price as float) as price, UUID() as uuid
from itemprice
where originstore = 'walmart';


select upc,updatedate,itemdescription,brandname,CAST(price as float) as price, UUID() as uuid
from itemprice
where originstore = 'kroger';

insert into krogerprices
select upc,updatedate,itemdescription,brandname,CAST(price as float) as price, UUID() as uuid
from itemprice
where originstore = 'kroger';

insert into walmartprices
select upc,updatedate,itemdescription,brandname,CAST(price as float) as price, UUID() as uuid
from itemprice
where originstore = 'walmart';


